
.. only:: html

    .. math::
        \renewenvironment{equation*}
        {\begin{equation}\begin{aligned}}
        {\end{aligned}\end{equation}}
        \renewcommand{\gg}{>\!\!>}
        \renewcommand{\ll}{<\!\!<}
        \newcommand{\I}{\mathrm{i}}
        \newcommand{\D}{\mathrm{d}}
        \renewcommand{\C}{\mathrm{C}}
        \newcommand{\dt}{\frac{\D}{\D t}}
        \newcommand{\E}{\mathrm{e}}
        \renewcommand{\bm}{\boldsymbol}

.. note::
    Garnet K L Chan, et al. JCP 145, 014102 (2016)

矩阵乘积算符, 矩阵乘积态, 和从头算密度矩阵重整化群算法
=======================================================

摘要
----

目前的从头算密度矩阵重整化群 (DMRG) 算法采用两种表面上不同的语言: 一种是旧的重整化群和重整化算符的语言, 而另一种近期的语言是矩阵乘积态和矩阵乘积算符. 同样的算法可以表现得极其不同, 如果采用这两种不同的语言来表述.

在这个工作, 我们细致描述在不同上下文这两种语言的翻译问题. 首先, 我们描述如何使用基于矩阵乘积算符的代码高效实现从头算 DMRG 扫描, 以及它和原始的重整化算符实现的等价性. 其次我们描述如何实现一般的矩阵乘积算符/矩阵乘积态代数, 在一个纯基于重整化算符的代码中. 最后, 我们讨论由矩阵乘积算符语言对从头算 DMRG 扫描的两种改进: 哈密顿量压缩, 和一个算符表示的求和, 从而允许完美的并行计算. 这里描述的连接和对应关系提供了对过去和未来发展的连接, 并且对于高效实现持续的演进的从头算 DMRG 和相关算法是重要的.

I. 简介
-------

按照现代的 MPO/MPS 说法, 重整化的算符仅仅是对应于算符 (MPO) 对左矢和右矢态 (MPS) 的部分迹的中间计算产物, 当在一个扫描中包括连续的轨道时. 在一个期望值计算中 (或者优化), 只有这些 MPO 的部分迹是需要的, 而显式的 MPO 本身永远不需要出现. 因此, 原始的从头算 DMRG 的实现, 聚焦于重整化的算符的计算, 并没有按照显式 MPO 的结构, 而是按照重整化算符和矩阵乘积态的结构. 我们把原始的实现称为 "纯基于重整化算符的" DMRG 实现.

II. MPO 和 MPS 语言的 DMRG 算法
-------------------------------

A. 重整化群语言的 DMRG
^^^^^^^^^^^^^^^^^^^^^^

DMRG 扫描的目的是, 计算或者最小化 DMRG 变分波函数的能量. 对于问题中的 :math:`K` 个轨道中的每一个, 都有与之相关联的变分参数 (重整化的波函数), 因此, 扫描包含迭代地求解一系列分别和每个轨道相关联的基态问题, 每次求解一个. [这里是说变分问题有 :math:`K` 个参数要进行优化, 每次对每一个参数求导, 使之最小化. 不断迭代直到能量对于所有参数都是最小的. ] 为了开始这个过程, 我们选择一个轨道序列, 用来挨个遍历这些轨道. 即将这些轨道映射到一个有 :math:`K` 个位点的一维网格. 从左到右的扫描就会包含 :math:`K` 个步骤. 在第 :math:`k` 步, 我们可以认为轨道被分为两个集合, 左轨道块 :math:`L_k` 和右轨道块 :math:`R_k`. [ 因为在每一步, 这种左右的区分都是不一样的, 所以 :math:`L,R` 具有下标 :math:`k`. ] 它们设定了一个希尔伯特空间及其算符的张量乘积结构. 和左右块相联系的, 是左右重整化态 (基组), 和左右重整化的算符. 其中后者被用作重建所有 :math:`K` 轨道的哈密顿量的算符基组. 一个适当的哈密顿量的左右分解 (分解为所谓的通常的和补充的算符) 是高效实现从头算 DMRG 算法的关键一步.

对于扫描中的 :math:`K` 步的每一步, 三个操作被执行:

1. 分块. 这个操作更新左和右重整化的基组和算符的集合, 将在 :math:`k - 1` 位点的重整化表示, 转换为在位点 :math:`k` 的 "分块的" 表示;
2. 求解. 计算在位点 :math:`k` 的 (基态) 重整化波函数, 在左和右重整化基组的乘积 (直积) 基组;
3. 截断. 它将 "分块的" 基组和算符转换为在位点 :math:`k` 的重整化的表示.

上述操作, 以及与之相联系的归一化的量, 是原始的纯基于重整化算符的从头算 DMRG 算法. **所有这些同样的步骤和量也会在高效的 "基于 MPO 的" DMRG 实现中出现.**

为了实现翻译, 我们将会重点考虑:

(i)   重整化的左右基组和重整化的波函数, 和 MPS 中的张量的关系;
(ii)  左右重整化的算符和哈密顿量 MPO 中的张量的关系;
(iii) DMRG 能量最优化的高效实现和 MPS 和 MPO 的期待值求解, 和使用常规和互补算符, 将 DMRG 扫描算法组织为分块, 求解和截断之间的关系.

B. 矩阵乘积态
^^^^^^^^^^^^^

矩阵乘积态 (MPS) 是定义 DMRG 的变分空间的波函数表示. [也就是说, 矩阵乘积态是一种特殊的态. 如果没有说一定要将态表示成矩阵乘积, 那么变分空间可能很大. 但是规定了矩阵乘积, 那么就相当于确定了函数形式. 函数中的待定参数成为需要进行变分优化的参数. ] 在一个由 :math:`K` 个轨道的正交基组构成的福克空间内, 电子波函数在占据数表象中写为

.. math::
    |\Psi\rangle = \sum_{n_1 \cdots n_K} \Psi^{n_1 n_2 \cdots n_K} |n_1 n_2 \cdots n_K \rangle,

其中 :math:`|n_1n_2\cdots n_K \rangle` 是福克空间中的占据数表象的基组态. [就是用来展开的基组], 自旋指标被省略了. 对于给定的粒子数 :math:`N`, 有以下条件

.. math::
    \Psi^{n_1 n_2 \cdots n_K} = \begin{cases} \Psi^{n_1 n_2 \cdots n_K} & \sum_{k=1}^K n_k = N, \\ 0 & \text{otherwise.} \end{cases}

在矩阵乘积态, 对一个给定的基组态, 波函数振幅写成矩阵的乘积, 

.. math::
    \Psi^{n_1n_2\cdots n_K} = \sum_{\{\alpha_k\}} A_{\alpha_1}^{n_1}[1] A_{\alpha_1\alpha_2}^{n_2}[2] \cdots A_{\alpha_{K-1}}^{n_K}[K],
    :label: deq3

其中, :math:`A^{n_k}[k]` 是一个 :math:`M\times M` 矩阵 (或者说, 如果将 :math:`n_k \in {0,1}` 指标也计算在内 [这个指标表示占据还是没有占据], 那么 :math:`A[k]` 是一个 :math:`2\times M \times M` 张量). 而最左边和最右边的矩阵是 :math:`1\times M` 和 :math:`M \times 1` 的矢量, 从而保证矩阵乘积最终算出的结果是标量振幅 :math:`\Psi^{n_1n_2\cdots n_K}`. 当维度 :math:`M`, 常被称为键维度或者重整化态数目, 增加的时候, 表示 :eq:`deq3` 变得越来越灵活. 这里为简单起见, 我们假定所有 :math:`A^{n_k}[k]` 都是实数.

对于 MPS 采用图形标记是十分有用的. 在这个标记, 一般的波函数振幅表示为具有 :math:`K` 个指标的张量 [一个极高维张量, 分量指数级地多], 而 MPS 表示则是一个 2-指标 和 3-指标 的张量的集合的连接, 每个张量对应于一个位点. 张量之间的缩并表示求和, 如图 1 所示.

.. tikz::
    \node[left] at (4, 0) {$\Psi^{n_1n_2\cdots n_K} \equiv$};
    \draw[line width=5pt] (5, -1) -- (11, -1);
    \draw (5, -1) -- (5, 0) node[above] {$n_1$};
    \draw (6, -1) -- (6, 0) node[above] {$n_2$};
    \draw (7, -1) -- (7, 0);
    \draw (8, -1) -- (8, 0) node[above] {$\cdots$};
    \draw (9, -1) -- (9, 0) node[above] {$\cdots$};
    \draw (10, -1) -- (10, 0);
    \draw (11, -1) -- (11, 0) node[above] {$n_K$};
    \node[left] at (0, -1) {(i)};
    \node[left] at (0, -3) {(ii)};
    \node[left] at (4, -2) {$\sum_{\{\alpha_k\}} A_{\alpha_1}^{n_1}[1] A_{\alpha_1\alpha_2}^{n_2}[2] \cdots A_{\alpha_{K-1}}^{n_K}[K] \equiv$};
    \fill (5, -3) circle (0.2) node[below right] {$\alpha_1$};
    \fill (6, -3) circle (0.2) node[below right] {$\alpha_2$};
    \fill (7, -3) circle (0.2) node[below right] {$\cdots$};
    \fill (8, -3) circle (0.2);
    \fill (9, -3) circle (0.2) node[below right] {$\cdots$};
    \fill (10, -3) circle (0.2) node[below right] {$\alpha_{K-1}$};
    \fill (11, -3) circle (0.2);
    \draw (5, -3) -- (5, -2) node[above] {$n_1$};
    \draw (6, -3) -- (6, -2) node[above] {$n_2$};
    \draw (7, -3) -- (7, -2);
    \draw (8, -3) -- (8, -2) node[above] {$\cdots$};
    \draw (9, -3) -- (9, -2) node[above] {$\cdots$};
    \draw (10, -3) -- (10, -2);
    \draw (11, -3) -- (11, -2) node[above] {$n_K$};
    \draw (5, -3) -- (11, -3);

注意在这个表示中, 存在一个非唯一性. 即我们总可以对两个相邻的矩阵进行重定义 [这里相邻指的是在 :eq:`deq3` 的序列中相邻]

.. math::
    A^{n_k}[k] \to&\ A^{n_k}[k]G, \\
    A^{n_{k+1}}[k+1] \to&\ G^{-1} A^{n_{k+1}}[k+1],

其中 :math:`G` 是一个可逆 :math:`M\times M` "规范" 矩阵, 而重定义后这两个矩阵的 **乘积** 不变. 这个冗余性可以通过对矩阵施加附加限制来部分地移除, 比如左正交条件 :math:`\sum_{n_k} A^{n_k T}A^{n_k} = 1` [这里的 1 是单位矩阵, 而不是数] 和右正交条件 :math:`\sum_{n_k} A^{n_k}A^{n_k T} = 1`. 应用到所有张量, 这分别导致 :math:`MPS` 的左和右正则形式.

DMRG 的扫描算法采用混合正则形式. 在这个情况下, 在扫描的第 :math:`k` 步, 所有在位点 :math:`k` 左边的张量都是左正则形式, 在位点 :math:`k` 右边的张量都是右正则形式. 然后 MPS 就可以表示为

.. math::
    \Psi^{n_1n_2\cdots n_K} = \sum_{\{\alpha_k\}} L_{\alpha_1}^{n_1}[1] L_{\alpha_1\alpha_2}^{n_2}[2] \cdots
        C_{\alpha_{k-1}\alpha_k}^{n_k}[k] \cdots R_{\alpha_{K-1}}^{n_K}[K],
    
其中我们通过符号 :math:`L, C, R` 强调了不同张量的规范的选择. :math:`C^{n_k}[k]` 称为 DMRG 重整化的波函数.

MPS 中的矩阵定义了一个递归构造的多体重整化基组态集合. 这些精确地就是在 DMRG 扫描中构建的左和右重整化基组. 在这个上下文, 这些矩阵有时也称为重整化矩阵. 例如, 如果我们考虑在位点 :math:`k` 的一个二分, 并考虑由位点 :math:`1\cdots k` 组成的左块, 我们得到左重整化的基

.. math::
    |l_{\alpha_k}\rangle = \sum_{n_1\cdots n_k} \Big( A^{n_1}[1] A^{n_2}[2] \cdots A^{n_k}[k] \Big)_{\alpha_k} | n_1 \cdots n_k \rangle

而从由位点 :math:`k+1\to K` 组成的右块, 我们得到右重整化基

.. math::
    |r_{\alpha_k}\rangle = \sum_{n_{k+1}\cdots n_K} \Big( A^{n_{k+1}}[k+1] A^{n_{k+2}}[k + 2] \cdots A^{n_K}[K] \Big)_{\alpha_k} | n_{k+1} \cdots n_K \rangle.

左和右重整化基的图形表示见图 2.

.. tikz::
    \node[left] at (4, 0) {$|l_{\alpha_k}\rangle = $};
    \draw (5, -1) -- (9.5, -1) node[right] {$\alpha_k$};
    \draw (5, -1) -- (5, 0) node[above] {$|n_1\rangle$};
    \draw (6, -1) -- (6, 0) node[above] {$|n_2\rangle$};
    \draw (7, -1) -- (7, 0);
    \draw (8, -1) -- (8, 0) node[above] {$\cdots$};
    \draw (9, -1) -- (9, 0) node[above] {$|n_k\rangle$};
    \fill (5, -1) circle (0.2);
    \fill (6, -1) circle (0.2);
    \fill (7, -1) circle (0.2);
    \fill (8, -1) circle (0.2);
    \fill (9, -1) circle (0.2);
    \begin{scope}[shift={(0, -2)}]
        \node[left] at (4, 0) {$|r_{\alpha_k}\rangle = $};
        \draw (5.5, -1)  node[left] {$\alpha_k$} -- (10, -1);
        \draw (6, -1) -- (6, 0) node[above] {$|n_{k+1}\rangle$};
        \draw (7, -1) -- (7, 0) node[above] {$|n_{k+2}\rangle$};
        \draw (8, -1) -- (8, 0);
        \draw (9, -1) -- (9, 0) node[above] {$\cdots$};
        \draw (10, -1) -- (10, 0) node[above] {$|n_K\rangle$};
        \fill (6, -1) circle (0.2);
        \fill (7, -1) circle (0.2);
        \fill (8, -1) circle (0.2);
        \fill (9, -1) circle (0.2);
        \fill (10, -1) circle (0.2);
    \end{scope}

注意, 重整化的态是对在任意位点 :math:`k` 的二分而定义的. 从位点 :math:`1\cdots K` 不断进行二分构建了重整化的态, 这和一个 DMRG 扫描中对它们的构建是同样的递归方式. 特别地, 在位点 :math:`k+1` 的重整化态可以由在位点 :math:`k` 的重整化态显式定义, 通过重整化矩阵 :math:`A^{n_{k+1}}[k]` [疑问?? 这里为什么是 [k] 而不是 [k+1]], 例如, 对于左基

.. math::
    | l_{\alpha_{k+1}} \rangle = \sum_{a_kn_{k+1}} A_{\alpha_k \alpha_{k+1}}^{n_{k+1}} |l_{\alpha_k}n_{k+1}\rangle

对于右基的情况类似. 上述转换精确地就是在 DMRG 扫描中在步骤 :math:`k+1` 的对态的分块和截断: 分块即对重整化基空间的延展, :math:`\{ l_{\alpha_k} \rangle \} \to \{ l_{\alpha_k} n_{k+1} \rangle \}`, 而截断即做投影 :math:`\{ l_{\alpha_k} n_{k+1} \rangle \} \to \{ l_{\alpha_{k+1}} \rangle \}`.

在 DMRG 扫描中, 为了接续确定张量 :math:`A^{n_k}[k]`, 在位点 :math:`k` 需要被优化的张量 (:math:`C^{n_k}[k]`) 被以混合正则规范表示. 在这个规范, MPS 按重整化的态展开的项写出

.. math::
    |\Psi\rangle = \sum_{\alpha_{k-1}n_k\alpha_k} C_{\alpha_{k-1}\alpha_k}^{n_k} |l_{\alpha_{k-1}}n_k r_{\alpha_k}\rangle

因此系数 :math:`C_{\alpha_{k-1}\alpha_k}^{n_k}` 即波函数在 DMRG 重整化的空间中的系数. 我们也可以将 MPS 更紧凑地按位点 :math:`k` 的左重整化的态展开, :math:`\{|l_{\alpha_k}\rangle\}` (而不是分块的基组 :math:`\{|l_{\alpha_{k-1}}n_k\rangle\}`), 这给出更简单的形式

.. math::
    |\Psi\rangle = \sum_{\alpha_k} | l_{\alpha_k} r_{\alpha_k} \rangle s_{\alpha_k}.

这意味着, MPS 对应于一个波函数, 它的 Schmidt 分解, 对于在任意位点 :math:`k` 的二分, 包含至多 :math:`M` 个奇异值 :math:`s_{\alpha_k}`. [疑问?? 这里实际将原来的 DMRG 正则形式转换为更紧凑地形式的过程中, 需要做一次额外的截断. 而这个截断在原始 DMRG 算法中是没有的. 所以似乎这段讨论对于原始 DMRG 算法并不适用, 因此对于原始 DMRG 算法, 奇异值可以多于键维度 :math:`M` (因为展开是在最后一步截断之前). 而实际上 MPS 的实现并没有限制此处到底是采取更紧凑的形式还是 DMRG 正则形式, 所以这段反而说明了不能建立严格的一一对应关系. 解答: 上述论述不正确. DMRG 中实际的最大键维度就是 :math:`M`. 后面有类似的讨论说明, 矩阵相乘并不代表截断. 截断操作在把波函数写成矩阵乘积形式时就已经完成了. 因此不存在额外的截断. 那么如何理解超块哈密顿量似乎是使用了 :math:`M^2 \times M^2` 尺寸的矩阵呢? 这可以从后面的 图 6 来看, 因为超块实际要计算的是期望值, 存在两个波函数. 但是实际上这里产生 :math:`M^2` 的原因是因为存在左右两块. 在图 6 中只画出了左边的部分. 图 6 中上下的关系如果先上后下似乎也没有关系. 总之是因为存在左右两部分所以导致了 :math:`M^2`. 而 Davidson 算法中, 求特征值转化为了持续 :math:`H\Psi` 操作. 因此上下两个 :math:`\Psi` 这一点并不重要. 至于左右的部分, 如果左右同时考虑会多出一个 :math:`M` 的复杂度 (Zgid thesis, P31, Eq. (2.37)). 而如果先左后右, 其中左的部分像图 6 那样, 那么就得到正确的复杂度. ]

综上所述, 很明显, 在以下两种工作方式之间并没有计算上的区别, 一种是在 DMRG 扫描的重整化的表示 (左, 右重整化基组和重整化的波函数). 另一种是其背后的矩阵乘积态: 由于其中一个集合可以以另一个集合来定义, 两种量总是会在任何 DMRG 实现中, 同时出现.

C. 矩阵乘积算符
^^^^^^^^^^^^^^^

现在我们考虑矩阵乘积算符的公式, 强调它和上述矩阵乘积态的分析的相似处. 一个矩阵乘积算符 (MPO) 是矩阵乘积表示在算符空间的推广. 让我们首先定义一个算符基组, 它由和一个给定自旋-轨道位点相联系的算符张成, 例如 :math:`\{ \hat{z} \} = \{ 1, a, a^\dagger, a^\dagger a \}`. 一个一般的算符可以写成展开式

.. math::
    \hat{O} = \sum_{\{ \hat{z} \}} O^{z_1z_2\cdots z_K} \hat{z}_1 \hat{z}_2 \cdots \hat{z}_K.

我们引入一个矩阵乘积算符表示, 作为元素 :math:`O^{z_1z_2\cdots z_K}` 的一种表示

.. math::
    O^{z_1z_2\cdots z_K} = \sum_{\{ \beta_k \}} W_{\beta_1}^{z_1} [1] W_{\beta_1\beta_2}^{z_2} [2] \cdots W_{\beta_K}^{z_K} [K].

注意 :math:`W^{z_k}[k]` 仅仅是标量 [疑问?? 这里其实是矩阵, 而不是标量. 结合上下文, 这里应该是要强调这些 :math:`W` 矩阵的分量是可以对易的. ] 算符 [的性质] (例如, 表示费米子之间不可对易的特性) 包含在算符序列 :math:`\hat{z}_1\hat{z}_2\cdots \hat{z}_K` 中. 另外, 上式的分解不是唯一的, 而是包含和 MPS 情形一样的 "规范" 冗余性.

定义一个矩阵乘积算符形式, 其中出现的矩阵是以算符为值的 (即矩阵元是算符), 将是方便的. 这可以通过将算符 :math:`\hat{z}_k` 和对应的张量 :math:`W^{z_k}[k]` 分到同一组, 来定义以算符为值的矩阵 :math:`\hat{W}[k]`

.. math::
    \hat{W}_{\beta_{k-1}\beta_k}[k] = \sum_{z_k} W_{\beta_{k-1}\beta_k}^{z_k}[k]\hat{z}_k.

完整的算符 :math:`\hat{O}` 便成为以算符为值的矩阵的乘积

.. math::
    \hat{O} = \hat{W}[1]\hat{W}[2]\hat{W}[K].
    :label: deq15

MPO 可以表示为图形形式. 这里, 更约定俗成的方式是将算符基在每个位点写为 :math:`\{ \hat{z} \} = \{ |n\rangle\langle n'| \}`, [注意, 这里原来 :math:`\hat{z}` 表象的基组时一系列算符. 而后面转换成的 :math:`n` 基组, 并不是把其中一个 :math:`\hat{z}` 变成一组 :math:`n`, 而是把所有的 :math:`\hat{z}` 作为一个基组整体, 转换为另一个由量子数 :math:`n,n'` 标记的基组整体. 这么做的道理是, 一个一般算符, 既可以表示为一组基底算符 :math:`\hat{z}` 的各种顺序叠加或者说线性组合, 也可以在某个通常的态表象表示为一个矩阵. 确定了表象例如粒子数表象 :math:`|n\rangle` 之后, 任意算符都可以表示为矩阵, 它有 :math:`N \times N` 个分量. 每个分量对应于其中一个确定了 :math:`n, n'` 的基算符 :math:`|n\rangle\langle n'|`.] 从而

.. math::
    \hat{O} = \sum_{\{n_k n'_k \} }O_{n'_1n'_2\cdots n'_K}^{n_1n_2\cdots n_K} |n_1n_2\cdots n_K\rangle \langle n'_1n'_2\cdots n'_K|

算符矩阵元的 MPO 表示是

.. math::
    O_{n'_1n'_2\cdots n'_K}{n_1n_2\cdots n_K} = \sum_{\{\beta_k\}} W_{\beta_1}^{n_1n'_1}[1] W_{\beta_1\beta_2}^{n_2n'_2}[2] \cdots
        W_{\beta_{K-1}}^{n_Kn'_K}[K].

一个一般的算符表示为一个具有 :math:`K` 个上指标和 :math:`K` 个下指标的张量. MPO 画为一个 3-指标 和 4-指标 张量的连接的集合, 每个张量都和一个位点相联系. 注意在这个形式中, 费米子算符的不可对易性质隐含在每个位点的张量 :math:`W_{\beta_{k-1}\beta_k}^{n_k n'_k}[k]` 的矩阵元的值中 [也就是说, 算符的不可对易性通过张量以 :math:`n` 指标的矩阵的不可对易性体现. ]

和 MPS 的情形类似, MPO 张量基于一个位点的二分定义多体算符的集合. 例如, 对于一个分割形成的包含位点 :math:`1\cdots k` 的左块, 我们定义对应的左算符 :math:`\hat{O}_{\beta_k}^L`

.. math::
    \hat{O}_{\beta_k}^L = \Big( \hat{W}[1] \hat{W}[2] \cdots \hat{W}[k] \Big)_{\beta_k}

而对于包含位点 :math:`k+1 \cdots K` 的右块, 我们定义右算符的集合 :math:`\hat{O}_{\beta_k}^R`

.. math::
    \hat{O}_{\beta_k}^R = \Big( \hat{W}[k+1] \hat{W}[k+2]\cdots \hat{W}[K]\Big)_{\beta_k}

利用左和右算符的集合, 对于任意分割的完整算符可以写成

.. math::
    \hat{O} = \sum_{\beta_k} \hat{O}_{\beta_k}^L \hat{O}_{\beta_k}^R.
    :label: deq20

注意, MPO 的键维度, 对于在位点 :math:`k` 的分割, 等于基于 :math:`\beta` 的求和中的项的数目.

对于上述的一个算符在位点 :math:`k` 的左右分解, 和在一个 DMRG 扫描中在第 :math:`k` 步的对一个算符的左右分解是完全同构的. 特别地, 重整化的左块算符 :math:`\bm{O}_{\beta_k}^L` 和重整化的右块算符 :math:`\bm{O}_{\beta_k}^R`, 在第 :math:`k` 步, 对应于 :math:`\hat{O}_{\beta_k}^L` 和 :math:`\hat{O}_{\beta_k}^R` 在左和右重整化基组的投影

.. math::
    [\bm{O}_{\beta_k}^L]_{\alpha_k \alpha'_k} =&\ \langle l_{\alpha_k} | \hat{O}_{\beta_k}^L | l_{\alpha'_k} \rangle, \\
    [\bm{O}_{\beta_k}^R]_{\alpha_k \alpha'_k} =&\ \langle r_{\alpha_k} | \hat{O}_{\beta_k}^R | r_{\alpha'_k} \rangle
    :label: deq21

这些重整化的左和右块算符, 当然, 是在纯基于重整化算符的 DMRG 实现中的主要计算中间量, 并且在一个基于 MPO 的实现中扮演同样的角色. 而一个算符的左右分解和重整化的左块和右块算符之间的关系, 在图 4 中显示. 我们将在 II E 重新回到他们在高效计算中扮演的角色的讨论.

.. tikz::
    \node[left] at (-2, 0) {$\hat{O} = $};
    \fill (0, 0) circle (0.2);
    \fill (1, 0) circle (0.2);
    \fill (2, 0) circle (0.2);
    \fill (3, 0) circle (0.2);
    \draw (0, 0) -- (3.5, 0) node[right] {$\beta_k$};
    \draw (0, -0.5) node[below] {$\langle n'_1|$} -- (0, 0.5) node[above] {$|n_1\rangle$};
    \draw (1, -0.5) node[below] {$\langle n'_2|$} -- (1, 0.5) node[above] {$|n_2\rangle$};
    \draw (2, -0.5) node[below] {$\cdots$} -- (2, 0.5) node[above] {$\cdots$};
    \draw (3, -0.5) node[below] {$\langle n'_k|$} -- (3, 0.5) node[above] {$|n_k\rangle$};
    \draw [decorate,decoration={brace,amplitude=10pt}] (3.5, -1.3) -- (0, -1.3) node[midway, below, yshift=-10pt]
        {$\sum_{\beta_k} \hat{O}_{\beta_k}^L$};
    \node[below] at (5, -2) {$\otimes$};
    \begin{scope}[shift={(6, 0)}]
        \fill (0, 0) circle (0.2);
        \fill (1, 0) circle (0.2);
        \fill (2, 0) circle (0.2);
        \draw (-0.5, 0) node[left] {$\beta_k$} -- (2, 0) ;
        \draw (0, -0.5) node[below] {$\langle n'_{k+1}|$} -- (0, 0.5) node[above] {$|n_{k+1}\rangle$};
        \draw (1, -0.5) node[below] {$\cdots$} -- (1, 0.5) node[above] {$\cdots$};
        \draw (2, -0.5) node[below] {$\langle n'_K|$} -- (2, 0.5) node[above] {$|n_K\rangle$};
    \draw [decorate,decoration={brace,amplitude=10pt}] (2, -1.3) -- (-0.5, -1.3) node[midway, below, yshift=-10pt]
        {$\hat{O}_{\beta_k}^R$};
    \end{scope}

.. tikz::
    \draw (0, 1) -- (3.6, 1) node[right] {$\alpha_k$};
    \draw (0, 0) -- (3.6, 0) node[right] {$\beta_k$};
    \draw (0, -1) -- (3.6, -1) node[right] {$\alpha'_k$};
    \draw (8, 1) -- (5.4, 1) node[left] {$\alpha_k$};
    \draw (8, 0) -- (5.4, 0) node[left] {$\beta_k$};
    \draw (8, -1) -- (5.4, -1) node[left] {$\alpha'_k$};
    \foreach \x in {0,...,3,6,7,8} {
        \draw (\x, 1) -- (\x, -1);
        \foreach \y in {1,0, -1} {
            \fill (\x, \y) circle (0.2);
        }
    }
    \node[below] at (1.5, -2) {$[\bm{O}_{\beta_k}^L]_{\alpha_k\alpha'_k}$};
    \node[below] at (6.5, -2) {$[\bm{O}_{\beta_k}^R]_{\alpha_k\alpha'_k}$};

对于一个给定的分割, 左和右算符显式地和在相邻分割的左和右算符相联系. 例如, 对左算符, 我们有

.. math::
    \hat{O}^L_{\beta_k} = \sum_{\beta_{k-1}} \hat{O}_{\beta_{k-1}}^L \hat{W}_{\beta_{k-1}\beta_k}[k],

其中, 我们可以将上式解释为一个矢量-矩阵乘积, 其中矢量是以算符为值的行矢量 :math:`\hat{O}^L` 而矩阵是以算符为值的矩阵 :math:`\hat{W}[k]`. [这里按照这个解释 :math:`\beta` 就是矩阵或者矢量的分量指标. ] 类似地, 对于右算符, 我们有

.. math::
    \hat{O}_{\beta_{k-1}}^R = \sum_{\beta_k} \hat{W}_{\beta_{k-1}\beta_k}[k] \hat{O}_{\beta_k}^R
    :label: deq23

它可以被视为矩阵-矢量乘积. 以上两式显式定义了将一个包含许多位点的块, 例如 :math:`1\cdots k-1`, 和一个相邻的块, 例如包含位点 :math:`1\cdots k` 的块, 相联系的递推规则. 这个过程递推地构建左和右算符, 在接续的块上. 这和 DMRG 扫描中逐位点的的分块过程是同构的. 唯一的区别是 上式中的算符 :math:`\hat{O}^R_{\beta_k}` 替换为了它们的矩阵表示 :math:`\bm{O}_{\beta_k}^R`. 因此我们将这些递推规则称为 "分块规则". 正如将在 II E 节提到的, 为了高效计算特征值, 我们应该事实上采用重整化算符 (即算符的矩阵表示) 正如在 DMRG 扫描中的那样. 而不是裸算符本身, 在分块过程中.

通常, 为了解释的目的, 以稍微不同的形式写出 :eq:`deq20` 中算符 :math:`\hat{O}` 的左右分解是方便的

.. math::
    \hat{O} = \hat{O}^{L_k} \otimes \hat{1}^{R_k} + \hat{1}^{L_k} \otimes \hat{O}^{R_k} + \sum_{\beta_k} \hat{o}_{\beta_k}^{L_k}
        \hat{o}_{\beta_k}^{R_k}.
    :label: deq24

我们引入了三种左和右算符项: 恒等算符 (:math:`\hat{1}^{L_k}` 或 :math:`\hat{1}^{R_k}`), 限制于作用于左或右块内部的位点的算符 :math:`\hat{O}` (:math:`\hat{O}^{L_k}` 或者 :math:`\hat{O}^{R_k}`), 以及表示在分块 :math:`k` 中表示左和右位点相互作用的项 (分别是 :math:`\hat{o}_{\beta_k}^{L_k}, \hat{o}_{\beta_k}^{R_k}`). [这里暗示了不存在和当前块所包含节点毫无关系的节点之间相互作用的项] 既然存在 3 种项, 那么在分块规则中出现的矩阵和矢量就有 :math:`(3\times 3)` 和 :math:`(3\times 1)` (或者 :math:`(1\times 3)`) 的分块结构 [这里是说分块结构, 而不是表示矩阵本身只有 3 个矩阵元]. 例如, :eq:`deq23` 成为

.. math::
    \begin{pmatrix} \hat{O}^{R_k} \\ \hat{o}^{R_k}_{\beta_k} \\ \hat{1}^{R_k} \end{pmatrix}
        = \begin{pmatrix} \hat{1}^k & \hat{C}^k & \hat{O}^k \\ 0 & \hat{A}^k & \hat{B}^k \\ 0&0& \hat{1}^k \end{pmatrix}
          \begin{pmatrix} \hat{O}^{R_{k+1}} \\ \hat{o}^{R_{k+1}}_{\beta_{k+1}} \\ \hat{1}^{R_{k+1}}\end{pmatrix}
    :label: deq25

[疑问?? 以上是原始的式子, 但是似乎是不正确的. 注意 :eq:`deq23` 本身描述的是 :math:`[k-1] = k [ k ]`, 而上式是 :math:`[k] = k [ k + 1]`, 很明显不一致. 关键问题在于, 按定义 :math:`L_k, R_k` 是围绕 :math:`k` 点的二分, 而 :math:`L_k` 包括位点 :math:`k`, :math:`R_k` 不包括位点 :math:`k`. 改写后如下]

.. math::
    \begin{pmatrix} \hat{O}^{R_{k-1}} \\ \hat{o}^{R_{k-1}}_{\beta_{k-1}} \\ \hat{1}^{R_{k-1}} \end{pmatrix}
        = \begin{pmatrix} \hat{1}^k & \hat{C}^k & \hat{O}^k \\ 0 & \hat{A}^k & \hat{B}^k \\ 0&0& \hat{1}^k \end{pmatrix}
          \begin{pmatrix} \hat{O}^{R_k} \\ \hat{o}^{R_k}_{\beta_k} \\ \hat{1}^{R_k}\end{pmatrix}

其中 :math:`\hat{O}^k` 的上标表示算符作用于位点 :math:`k`.

[注意, 上式的分块结构我们只需要解释 :math:`0` 和 :math:`1` 的项, 其他项都是一般形式的待定系数. 首先, :math:`\hat{O}^{R_{k+1}}` 为只包含 :math:`>k+1` 位点之间相互作用的算符, 而 :math:`\hat{O}^{R_{k}}` 为只包含 :math:`>k` 位点之间相互作用的算符, :math:`>k+1` 当然满足 :math:`>k`, 因此这个算符 (作为最小的集合) 应该直接拓展. 第二行, :math:`\hat{o}^{R_k}_{\beta_k}` 为包含 :math:`\leq k` 位点和 :math:`>k` 位点之间相互作用的算符, 而 :math:`\hat{O}^{R_{k+1}}` 为只包含 :math:`>k+1` 位点之间相互作用的算符, 它们之间没有任何联系, 因此第二行第一列矩阵元为 0. 第三行恒等元有两个零很好理解. 但是 :math:`\hat{o}^{R_{k+1}}_{\beta_{k+1}}` 是包含 :math:`\leq k+1` 位点和 :math:`>k+1` 位点之间相互作用的算符, 它既可能是 :math:`k` 位点和 :math:`>k+1` 位点之间相互作用, 因此应该归到等号左边的 :math:`\hat{O}^{R_k}`, 也可能是 :math:`<k` 位点和 :math:`>k+1` 位点之间相互作用. 因此具体操作的时候, 对这些算符的分块规则还要依据具体相互作用的项涉及的位点逐项处理, 而不能仅依据这里的 3 类写出统一的公式. ]

综上所述, 我们发现, 我们发现在 DMRG 扫描中通过分块规则构建左右算符分解, 和构建显式的 MPO 所需的操作是同构的; 唯一的不同是显式算符被算符矩阵取代, 这对于期望值的高效计算是必要的.

D. 量子化学哈密顿量的 MPO 表示
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

基于前面阐述的标准 DMRG 算法中从头算哈密顿量的高效左右分解和分块规则, 以及它们和 MPO 张量 :math:`\hat{W}[k]` 的同构性, 我们现在可以容易地识别量子化学哈密顿量的高效 MPO 表示.

从头算哈密顿量写为

.. math::
    \hat{H} = \sum_{pq} t_{pq} a_p^\dagger a_q + \frac{1}{2} \sum_{pqrs} v_{pqrs} a_p^\dagger a_q^\dagger a_r a_s

其中省略了自旋指标, 并且 :math:`v_{pqrs} = \langle pq|sr \rangle = v_{qpsr}`. 指标的求和并没有限制, 因此, 对一个有 :math:`K` 个位点的系统, 指标从 :math:`1\cdots K`.

为了得到 MPO 表示, 我们首先确认哈密顿量的左右分解, [在位点 :math:`k` 进行左右分解. 注意 :math:`H` 如果写成矩阵现在是 :math:`2^K \times 2^K` 分量的. ] 即

.. math::
    \hat{H} = \hat{H}^{L_k} \otimes \hat{1}^{R_k} + \hat{1}^{L_k} \otimes \hat{H}^{R_k} + \sum_{\alpha_k} \hat{h}_{\alpha_k}^{L_k}
        \hat{h}_{\alpha_k}^{R_k}

[疑问?? 为什么这里的 :math:`\alpha_k` 指标到后面没有了? 这里的 :math:`\alpha_k` 和算符的不可对易性无关. 因此不是物理指标. 但是它表示的是物理指标之间的联系. 可以理解为, 物理指标被强行分为两个子空间. 这两个子空间之间的联系由 :math:`\alpha` 指标表示. 如果两个算符都理解为在全物理指标空间作用, 即写成完整矩阵形式, 那么这里只需要算符相乘, 而不需要任何的附加的 :math:`\alpha` 指标. 也就是说, 当 :math:`\alpha` 存在时, 所联系的两个算符都是在子空间表示. 结合 GKL MPS 讲座理解, 这里的 :math:`\alpha` 是键指标, 键指标表示在做左右分解的时候, 所需求和的项数. 所以这里的 :math:`\alpha` 指标在后面对应于 :math:`pq` 指标的求和. 它们都代表了求和的项数, 也就是键指标的取值个数. ]

其中左右哈密顿量显式写出是

.. math::
    \hat{H}^{L_k} =&\ \sum_{pq\in L_k} t_{pq} a_p^\dagger a_q + \frac{1}{2} \sum_{pqrs\in L_k} v_{pqrs} a_p^\dagger a_q^\dagger a_r a_s, \\
    \hat{H}^{R_k} =&\ \sum_{pq\in R_k} t_{pq} a_p^\dagger a_q + \frac{1}{2} \sum_{pqrs\in R_k} v_{pqrs} a_p^\dagger a_q^\dagger a_r a_s,

其中 :math:`L_k` 包括指标 :math:`1\cdots k` (左边的位点形成的块), 而 :math:`R_k` 包括指标 :math:`k+1 \cdots K`.

算符 :math:`\hat{h}_{\alpha_k}^{L_k}` 和 :math:`\hat{h}_{\alpha_k}^{R_k}` 描述左块和右块位点之间的相互作用. 尽管这些算符并没有唯一确定 (只有 :math:`\sum_{\alpha_k} \hat{h}_{\alpha_k}^{L_k} \hat{h}_{\alpha_k}^{R_k}` 需要保持不变), 标准从头算 DMRG 中对量子化学哈密顿量的左右分解提供了一个高效的和方便的集合. 在这个选择下, 这其中的一些算符是与电子积分相联系的 (辅助算符), 而另一些算符不是 (常规算符). 采用引用 6(2002) 和 7(2004) 的标记 (参见上述引用的附录) 我们可以写下哈密顿量的常规/辅助算符分解

.. math::
    \hat{H} =&\ \hat{H}^{L_k} \otimes \hat{1}^{R_k} + \hat{1}^{L_k} \otimes \hat{H}^{R_k} \\
        &\ + \frac{1}{2} \Big( \sum_{p\in L_k} a_p^\dagger \hat{S}_p^{R_k} + h.c. + \sum_{p\in R_k} a_p^\dagger \hat{S}_p^{L_k} + h.c. \Big) \\
        &\ + \frac{1}{2} \Big( \sum_{pq\in L_k} \hat{A}_{pq}^{L_k} \hat{P}_{pq}^{R_k} + h.c. \Big) \\
        &\ - \frac{1}{2} \Big( \sum_{pq\in L_k} \hat{B}_{pq}^{L_k} \hat{Q}_{pq}^{R_k} + h.c. \Big)
    :label: deq30

其中各种算符定义如下

.. math::
    \hat{S}_p^{L_k/R_k} =&\ \sum_{q\in L_k/R_k} t_{pq}a_q + \sum_{qrs \in L_k/R_k} w_{pqrs} a_q^\dagger a_r a_s \\
    \hat{A}_{pq} =&\ a_p^\dagger a_q^\dagger, \\
    \hat{B}_{pq} =&\ a_p^\dagger a_q, \\
    \hat{P}_{pq}^{R_k} =&\ \sum_{rs\in R_k} v_{pqrs} a_r a_s, \\
    \hat{Q}_{pq}^{R_k} =&\ \sum_{rs \in R_k} \frac{1}{2} x_{prqs} a_r^\dagger a_s = \sum_{rs \in R_k} w_{prqs} a_r^\dagger a_s,

其中

.. math::
    w_{pqrs} =&\ v_{pqrs} - v_{qprs} = v_{pqrs} - v_{pqsr},  \\
    x_{pqrs} =&\ v_{pqrs} - v_{qprs} - v_{pqsr} + v_{qpsr} = 2 w_{pqrs}

[这里的关键是将指标 :math:`pqrs` 按照所属左块还是右块进行分类. 首先考虑第一项动能项. 只有两个指标 :math:`pq`. 如果 :math:`pq` 全部属于左边或全部属于右边, 则已经包含在 :math:`1\otimes` 的形式之内, 不需再考虑. 而一左一右的情况, 对动能项, 这成为上面定义的 :math:`S` 算符的一部分. 注意 :math:`H` 展开式第二项前面有 :math:`1/2`, 而原始展开式没有这个系数. 实际上 :math:`(a_p^\dagger a_q)^\dagger = a_q^\dagger a_p`, 相当于 :math:`p,q` 的左右归属交换. 因此第二行第一项是 :math:`p` 左 :math:`q` 右, 而第三项是 :math:`p` 右 :math:`q` 左, 两个厄米共轭则重复了一次, 然后和前面系数 :math:`1/2` 抵消, 刚好等于原始的动能项. ]

[再看双电子积分部分. 先考虑 :math:`pqrs` 中有一个在左, 三个在右的情况. 这些项为 (利用费米子反对易关系 :math:`\{ a_p^\dagger, a_q^\dagger \} = 0`)]

.. math::
    &\ \frac{1}{2}\sum_{p\in L, qrs \in R} v_{pqrs} a_p^\dagger a_q^\dagger a_r a_s
    + \frac{1}{2}\sum_{q\in L, prs \in R} v_{pqrs} a_p^\dagger a_q^\dagger a_r a_s
    + \frac{1}{2}\sum_{r\in L, pqs \in R} v_{pqrs} a_p^\dagger a_q^\dagger a_r a_s
    + \frac{1}{2}\sum_{s\in L, pqr \in R} v_{pqrs} a_p^\dagger a_q^\dagger a_r a_s \\
    =&\ \Big( \frac{1}{2}\sum_{p\in L, qrs \in R} v_{pqrs} a_p^\dagger a_q^\dagger a_r a_s
    + \frac{1}{2}\sum_{q\in L, prs \in R} v_{pqrs} a_p^\dagger a_q^\dagger a_r a_s \Big) + h.c. \\
    =&\ \Big( \frac{1}{2}\sum_{p\in L, qrs \in R} v_{pqrs} a_p^\dagger a_q^\dagger a_r a_s
    - \frac{1}{2}\sum_{q\in L, prs \in R} v_{pqrs} a_q^\dagger a_p^\dagger a_r a_s \Big) + h.c. \\
    =&\ \Big( \frac{1}{2}\sum_{p\in L, qrs \in R} v_{pqrs} a_p^\dagger a_q^\dagger a_r a_s
    - \frac{1}{2}\sum_{p\in L, qrs \in R} v_{qprs} a_p^\dagger a_q^\dagger a_r a_s \Big) + h.c. \\
    =&\ \frac{1}{2}\sum_{p\in L, qrs \in R} (v_{pqrs} - v_{qprs}) a_p^\dagger a_q^\dagger a_r a_s + h.c.

[ 而令最后一个等式括号中的为 :math:`w`. 这就解释了 :math:`S` 项的定义. 然后考虑如果是两个产生算符同时在左或同时在右的情况. 一共两种情况: 两个产生在左, 两个湮灭在右. 或者两个产生在右, 两个湮灭在左. 而第二种情况是第一种情况的共轭. 因此解释了第三行. 最后一种情况是, 一个产生在左, 一个产生在右. 如下 (注意, 如果交换的两个基元算符, 一个产生一个湮灭, 而且还是同一个位点, 则不反对易. 但是如果这两个基元算符一个在左, 一个在右, 则一定不是同一个位点, 一定反对易.) ]

.. math::
    &\ \frac{1}{2}\sum_{pr\in L, qs \in R} v_{pqrs} a_p^\dagger a_q^\dagger a_r a_s
    + \frac{1}{2}\sum_{ps\in L, qr \in R} v_{pqrs} a_p^\dagger a_q^\dagger a_r a_s
    + \frac{1}{2}\sum_{qr\in L, ps \in R} v_{pqrs} a_p^\dagger a_q^\dagger a_r a_s
    + \frac{1}{2}\sum_{qs\in L, pr \in R} v_{pqrs} a_p^\dagger a_q^\dagger a_r a_s \\
    =&\ - \frac{1}{2}\sum_{pr\in L, qs \in R} v_{pqrs} a_p^\dagger a_r a_q^\dagger  a_s
    + \frac{1}{2}\sum_{ps\in L, qr \in R} v_{pqrs} a_p^\dagger a_s a_q^\dagger a_r
    + \frac{1}{2}\sum_{qr\in L, ps \in R} v_{pqrs} a_p^\dagger a_s a_q^\dagger a_r
    - \frac{1}{2}\sum_{qs\in L, pr \in R} v_{pqrs} a_p^\dagger a_r a_q^\dagger  a_s \\
    =&\ - \frac{1}{2}\sum_{pq\in L, rs \in R} v_{prqs} a_p^\dagger a_q a_r^\dagger  a_s
    + \frac{1}{2}\sum_{pq\in L, rs \in R} v_{prsq} a_p^\dagger a_q a_r^\dagger a_s
    + \frac{1}{2}\sum_{rs\in L, pq \in R} v_{prsq} a_p^\dagger a_q a_r^\dagger a_s
    - \frac{1}{2}\sum_{pq\in L, sr \in R} v_{sqrp} a_s^\dagger a_r a_q^\dagger  a_p \\
    =&\ - \frac{1}{2}\sum_{pq\in L, rs \in R} v_{prqs} a_p^\dagger a_q a_r^\dagger  a_s
    + \frac{1}{2}\sum_{pq\in L, rs \in R} v_{prsq} a_p^\dagger a_q a_r^\dagger a_s
    + \frac{1}{2}\sum_{rs\in L, pq \in R} v_{prsq} a_r^\dagger a_s a_p^\dagger a_q
    - \frac{1}{2}\sum_{pq\in L, sr \in R} v_{sqrp} a_q^\dagger a_p a_s^\dagger a_r  \\
    =&\ - \frac{1}{2}\sum_{pq\in L, rs \in R} v_{prqs} a_p^\dagger a_q a_r^\dagger  a_s
    + \frac{1}{2}\sum_{pq\in L, rs \in R} v_{prsq} a_p^\dagger a_q a_r^\dagger a_s
    + \frac{1}{2}\sum_{pq\in L, rs \in R} v_{rpqs} a_p^\dagger a_q a_r^\dagger a_s
    - \frac{1}{2}\sum_{pq\in L, sr \in R} v_{rpsq} a_p^\dagger a_q a_r^\dagger a_s

[其中]

.. math::
    - v_{prqs} + v_{prsq} + v_{rpqs} - v_{rpsq} = v_{prsq} - v_{prqs} - v_{rpsq} + v_{rpqs} = w_{prsq} + w_{rpqs} = 2 w_{prsq} = x_{prsq}

[而按照 :math:`w` 定义, :math:`w_{prqs} = -w_{prsq}`. 因此这解释了 :math:`H` 最后一行前面的负号. 注意上面的计算也是列出了一个产生在左, 一个产生在右的所有情况. 其厄米共轭也是属于一个产生在左, 一个产生在右的情况, 因此 :math:`H` 最后一行加上厄米共轭, 等于多算了一次, 这解释了 :math:`Q` 的定义中多出的 :math:`\frac{1}{2}`.]

在上面的公式中, 双指标辅助算符被选择为仅定义在右块的位点. 为了效率的考虑, 也可能采用其他的分解方式, 其中辅助算符的集合可能同时定义在左块和右块. 例如, 在一个 DMRG 扫描中, 当用于二分的位点 :math:`k` 从 :math:`1` 移到 :math:`K`, 块 :math:`L_k` 的尺寸会增加, 那么在对常规/辅助双指标算符的求和中, 项的数目也会增加. 因此, 对于 :math:`k>K/2`, 高效的 DMRG 扫描实现会切换到一个双指标辅助算符选择为定义在左块位点的表示. [疑问?? 如果求和时针对左块, 当移到右边时, 确实左块的尺寸增加了, 可以通过左右交换来减少求和尺寸. 但是在 :math:`S,P,Q` 算符的定义中, 存在对另一块的求和. 当左右交换后, 这些对另一块的求和的项数也会增加. 为什么不关心这里求和项数的增加? 似乎是因为这些求和可以通过递推从而每次只需要更新一点点? ] 此外, 可以利用费米子对称性 (例如 :math:`B_{pq} = -B^\dagger_{qp}` , 对 :math:`p>q`).

从对 :math:`pq` 两个指标的求和可以看出, 很明显, :eq:`deq30` 中出现的项的数目是 :math:`O(K^2)`, 因此哈密顿量的 MPO 表示中总的键维度是 :math:`O(K^2)`. 在键维度 :math:`O(K^2)` 中的常数因子依赖于分解常规和辅助算符的特定选择, 以及积分如何分布. 在附录中一些例子被显式算出. 例如, 图 10 显示可以通过在中间节点 :math:`k = K/2` 时的左右辅助算符之间切换来最小化键维度, 正如上面讨论的那样.

在之前解释过, MPO 的矩阵 :math:`\hat{W}[k]` 编码了将某个二分的左/右算符带到相邻位点的二分的分块规则. 对于上述的常规/辅助算符的选择, 分块规则可以在原始的 DMRG 量子化学算法描述中找到, 例如可以参考引用 7 附录中的 (A1) - (A10) 式, 从那些规则我们可以读出 :eq:`deq25` 中的 :math:`\hat{A}, \hat{B}, \hat{C}`. 例如, 从前一个二分中构建算符 :math:`\hat{P}_{pq}^{R_k}` 的规则, 在引用 7 (A7) 式给出 [疑问?? 这里后面结合引用 7 再仔细推导一下. 下面的式子中 :math:`v` 写成了 :math:`w` 但是结合前面 :math:`P` 的定义和引用中的式子可以知道这里实际是 :math:`v`. 另外结合 :eq:`deq25` 的修正知下式中关于 :math:`k, k + 1` 的递推关系也有问题. 修正后为]

.. math::
    \hat{P}_{pq}^{R_{k-1}} = \hat{1}^k \otimes \hat{P}_{pq}^{R_k} + \hat{P}_{pq}^k \otimes \hat{1}^{R_k}
        + \sum_{s \in R_k} v_{pqrs} a_k \otimes a_s

[]

其中我们采用了如下事实, 联系 :math:`R_k` 和 :math:`R_{k+1}` 的额外位点具有指标 :math:`k`, [疑问?? 实际上应该是 联系 :math:`R_{k-1}` 和 :math:`R_k` 的额外位点具有指标 :math:`k`] 而 :math:`\hat{1}^k, \hat{P}_{pq}^k, a_k` 表示在位点 :math:`k` 定义的对应算符. 上式的分块规则对应于 :eq:`deq25` 中的矩阵-矢量乘积

.. math::
    \begin{pmatrix} \vdots \\ \vdots \\ \hat{P}_{pq}^{R_k} \\ \vdots \end{pmatrix}
        = \begin{pmatrix} \vdots & \vdots & \vdots & \vdots \\ \vdots & \vdots & \vdots & \vdots \\ \vdots & \hat{A}_0 & \hat{A}_1 & \hat{B} \\
            \vdots & \vdots & \vdots & \vdots \end{pmatrix}
            \begin{pmatrix} \vdots \\ a_n \\ \hat{P}_{pq}^{R_{k+1}} \\ 1 \end{pmatrix}
    :label: deq37

其中对应关系为 :math:`\hat{A} = (\hat{A}_0, \hat{A}_1), \hat{o}_{\alpha_{k+1}}^{R_{k+1}} = (a_n, \hat{P}_{pq}^{R_{k+1}}).` :math:`\hat{A}_0` 具有元素 :math:`[\hat{A}_0]_{pq,s} = v_{pqks} a_k`, :math:`\hat{A}_1` 是单位矩阵, 而 :math:`\hat{B}` 是对角矩阵, 对角元是 :math:`\hat{P}_{pq}^k`.

[上式也有类似地递推指标问题. 修正后为]

.. math::
    \begin{pmatrix} \vdots \\ \vdots \\ \hat{P}_{pq}^{R_{k-1}} \\ \vdots \end{pmatrix}
        = \begin{pmatrix} \vdots & \vdots & \vdots & \vdots \\ \vdots & \vdots & \vdots & \vdots \\ \vdots & \hat{A}_0 & \hat{A}_1 & \hat{B} \\
            \vdots & \vdots & \vdots & \vdots \end{pmatrix}
            \begin{pmatrix} \vdots \\ a_s \\ \hat{P}_{pq}^{R_k} \\ \hat{1}^{R_k} \end{pmatrix}

[其中对应关系为 :math:`\hat{A} = (\hat{A}_0, \hat{A}_1), \hat{o}_{\alpha_k}^{R_k} = (a_s, \hat{P}_{pq}^{R_k}).` :math:`\hat{A}_0` 具有元素 :math:`[\hat{A}_0]_{pq,s} = v_{pqks} a_k`, :math:`\hat{A}_1` 是单位矩阵, 而 :math:`\hat{B}` 是对角矩阵, 对角元是 :math:`\hat{P}_{pq}^k`.]

在原始 DMRG 算法中使用的算符的分块规则因此显式地执行了 MPO 中 :math:`\hat{W}[k]` 的矩阵-矢量乘法, 以一种逐元素的方式.

最后, 我们指出, Keller 等人在引用 64 中采用的方法, 称为 **分支-分支-合并** 或者 **分支-合并-合并** 操作, 目的是重复利用共同的中间算符, 分别和在 **右** 或 **左** 块中使用 :math:`\hat{P}` 和 :math:`\hat{Q}` 辅助算符是完全等价的. 特别地, 在引用 64 的图 2 和 3, 两个指标在左, 一个指标在位点 :math:`k`, 一个指标在右的双电子积分, 都收集在 MPO 矩阵 :math:`\hat{W}[k]`, 和 :eq:`deq37` 类似.

E. 期望值的高效实现
^^^^^^^^^^^^^^^^^^^

到目前为止, 我们建立了 MPO/MPS 语言和在基于纯重整化算符的 DMRG 实现中的重整化态和重整化算符之间的对应关系. 现在我们讨论如何在一个基于 MPO 的 DMRG 实现中高效地计算期望值 (例如能量). 这里存在两个问题: 如何利用 MPO 张量的结构和稀疏性, 以及在 MPO 和 MPS 中执行缩并的顺序. 事实上, 这两个方面都在原始 DMRG 扫描算法中得到了处理, 通过使用逐元素的分块操作, 分隔分块和截断步骤, 以及通过构建 II C 中提到的重整化的算符为计算的中间结果. 现在我们讨论这些零散组件如何在一个基于 MPO 的期望值计算中出现.

为了显示为什么 MPO 的稀疏性是重要的, 我们首先观察到量子化学 DMRG 扫描算法用于计算 (或最小化) 能量的代价是 :math:`O(K^4)`, 这似乎是很显然的因为哈密顿量有 :math:`O(K^4)` 个费米子的项. 但是, 如果我们尝试重建哈密顿算符 :math:`\hat{H}` 从它的 :math:`\hat{W}[k]` MPO 乘积 :eq:`deq15`, 使用密集矩阵代数, 形式上我们需要 :math:`O(K^5)` 操作, 正如首先在引用 62 中提到的. 这是因为, 在 :eq:`deq15` 一共需要执行 :math:`O(K)` 个矩阵矢量乘积计算. [这里两边是矢量, 而中间都是矩阵. 最好的求值方式是从左边出发, 首先是矢量乘矩阵得矢量. 因此一直是矢量矩阵相乘, 最后一步是矢量乘矢量. 如果从中间开始计算则会遇到矩阵乘矩阵, 会增加不必要的复杂度. ]. 这里的矢量矩阵乘积是具有维数 :math:`O(K^2) \times O(K^2)` 的 :math:`\hat{W}[k]` 矩阵 和 具有维数 :math:`K^2 \times 1` 的边界 :math:`\hat{W}` 矢量 (:math:`\hat{W}[1]` 和 :math:`\hat{W}[K]`). [前面解释了为什么算符的键维度是 :math:`O(K^2)`. ]

产生错误的复杂度 :math:`O(K^5)` 的原因是上面的讨论忽略了 :math:`\hat{W}` 包含许多零元素的事实. 为了显式地看到这一点, 我们考虑决定更新 :math:`\hat{W}` 的 :math:`\hat{P}_{pq}` 元素的 :eq:`deq37` 式. 这里, 用矩阵 :math:`\hat{A}_1` 和 :math:`\hat{B}` 乘以列矢量形式上需要 :math:`O(K^4)` 复杂度, 而这需要对所有 :math:`\hat{W}[k]` 矩阵重复 :math:`O(K)` 次, 因此导致了错误的 :math:`O(K^5)` 复杂度. 但是, :math:`\hat{A}_1` 和 :math:`\hat{B}` 矩阵事实上是 **对角** 矩阵, 因此可以以 :math:`O(K^3)` 的复杂度完成所有 :math:`\hat{W}` 矩阵中的相乘 [也就是说, 降低了两个指数级复杂度, 反而成为了不是最耗时的. ] 在 :eq:`deq37` 中主要的耗时是在 :math:`\hat{A}_0` 矩阵 (具有维度 :math:`O(K^2 \times K)`) 和 :math:`O(K)` 个 :math:`a_s` 算符的相乘. 这对于一个单一的乘法是 :math:`O(K^3)` 耗时, 而对于所有 :math:`\hat{W}` 矩阵是 :math:`O(K^4)` 的耗时, 因此导致了正确的时间代价.

同时注意到, 在 :math:`\hat{W}` 的不同元素中, 存在许多对称性. 例如, 尽管 :math:`a_p^\dagger` 和 :math:`a_p` 都作为 :math:`\hat{W}` 的元素出现, 它们事实上由厄米共轭相联系 (对其他元素例如 :math:`a_p^\dagger, a_q^\dagger, a_p a_q` 和 :math:`a_p^\dagger a_q` 的 :math:`p>q` 和 :math:`p<q` 分量也是类似). 这些元素可能在一个 MPO 实现中被分别操作和乘积. 但是, 这样的对称性和关系可以进一步被利用来减少构建 :math:`\hat{H}` 以及存储 :math:`MPO` 的常数复杂度.

在原始 DMRG 算法中分块的显式算法是 :math:`\hat{W}` 的乘积的逐元素的表达式, 并且已经采用了稀疏性和元素间的对称性, 因此导致了对 :math:`\hat{H}` 的高效操作. 为了在基于 MPO 的实现中高效地执行分块, 同样的逐元素的策略应该被使用. 在实践中, 这可以通过存储附加的元信息记录非零矩阵元和它们该如何相乘来实现. 已经有这样做的例子, 例如, MPSXX 和 QC-MAQUIS.

现在我们考虑将哈密顿量 MPO 和左右矢 MPS 来缩并来计算能量, :math:`E = \langle \Psi |\hat{H} | \Psi \rangle`. 由于 :math:`|\Psi\rangle` 是一个 MPS, 而 :math:`\hat{H}` 是一个 MPO, 我们可以想象首先计算 :math:`\hat{H}|\Psi\rangle` (得到一个新的 MPS) 在将它和左矢进行缩并之前. 但是, 非常容易看到, 这再一次导致了错误的时间复杂度, 因为中间量 :math:`\hat{H}|\Psi\rangle` 现在是一个具有非常大键维度 :math:`O(MK^2)` 的 MPS, 需要大量的存储空间. [疑问?? 这里不太明白这个复杂度是怎么来的. 解释: 这个复杂度是这样. 首先, :math:`\Psi` 是一个 MPS, 尽管按图形全部缩并它应该是一个标量, 但是事实上在算法中, 波函数总是表示为一个矢量, 不断截断到目标键维度. 因此 :math:`\Psi` 是一个 :math:`O(M)` 尺寸的矢量. 算符的键维度是 :math:`O(K^2)`, 这等价于说, :math:`\hat{H}` 的表达式中是对 :math:`O(K^2)` 个项求和, 其中每个算符又表示在 :math:`O(M) \times O(M)` 的矩阵空间. 将这些算符挨个作用到 :math:`\Psi` 上, 得到 :math:`O(K^2)` 个 :math:`O(M)` 的矢量, 因此空间复杂度是 :math:`O(MK^2)`. 但事实上这么解释可能不正确. 因为所谓键维度只是存在于算符和波函数的中间表示, 并不能说明波函数或算符的最终大小. 最终大小应该和图形表示一样等于 1. 实际上这里由于图 5 中纵线表示的是 :math:`n` 指标, 每个 :math:`n` 表示占据或者不占据, 因此只能取两个值. 所需的存储空间应该是 :math:`O(2^K)`. ] 事实上, 我们应该将 MPS 左矢和右矢和 MPO 张量逐位点进行缩并, 从 :math:`1 \cdots K`. **这精确对应着在一个扫描中的分块和截断中重整化算符的递归构造** (见图 5).

.. tikz::
    \foreach \x in {0,...,6} {
        \fill (\x, 0) circle (0.2);
        \fill (\x,  1.5) circle (0.2);
        \fill (\x, -1.5) circle (0.2);
        \draw (\x, 1.5) -- (\x, 0.8);
        \draw (\x, -1.5) -- (\x, -0.8);
        \draw (\x, 0.4) -- (\x, -0.4);
    }
    \draw (0, 1.5) -- (6, 1.5);
    \draw (0, 0) -- (6, 0);
    \draw (0, -1.5) -- (6, -1.5);
    \draw[line width=2pt, ->] (7, 1) -- (7, 0.3);
    \draw[line width=2pt, ->] (7, -0.3) -- (7, -1);
    \draw[white] (8, 0) -- (8, 1);
    \node at (0, -2) {(i)};
    \begin{scope}[shift={(0, -5)}]
    \foreach \x in {0,1.2,2.4,4.8, 6} {
        \fill (\x, 0) circle (0.2);
        \fill (\x,  1.5) circle (0.2);
        \fill (\x, -1.5) circle (0.2);
        \draw (\x, 1.5) -- (\x, -1.5);
    }
    \foreach \y in {1.5, 0, -1.5} {
        \draw (0, \y) -- (0.5, \y);
        \draw (6, \y) -- (5.5, \y);
        \foreach \x in {1.2,2.4,4.8}
            \draw (\x - 0.5, \y) -- (\x + 0.5, \y);
    }
    \node at (3.6, 0) {$\cdots$};
    \draw[line width=2pt, ->] (0.6, -2.0) -- (1.8, -2.0);
    \draw[line width=2pt, ->] (3.6, -2.0) -- (4.8, -2.0);
    \node at (0, -2.5) {(ii)};
    \end{scope}

为了显示这个递归构造如何自然产生, 我们首先定义一个位点 :math:`k` 上的部分期望值, 作为一个矩阵 :math:`E[k]` (有时称为传递算符) [这实际上就是把波函数和算符的 MPS/MPO 表示式合并在一起写, 而都只取其中第 :math:`k` 项. :math:`\gamma` 指标是三重指标的复合, 说明正如上图所示, 这里下面的式子就是上面图形中 (ii) 的中间的一段. 注意, 在端点位点的 :math:`E[1]` 和 :math:`E[K]` 的定义会与下面的式子有所不同. ]

.. math::
    E[k]_{\gamma_{k-1}, \gamma_k} = \sum_{n_k, n'_k} \Big\langle n_k \Big| A_{\alpha_{k-1}\alpha_k}^{n_k} \hat{W}_{\beta_{k-1}\beta_k}[k]
        A_{\alpha'_{k-1}\alpha'_k}^{n'_k} \Big| n'_k \Big\rangle

其中复合指标 :math:`(\gamma_{k-1}, \gamma_k) \equiv (\alpha_{k-1}\alpha'_{k-1}\beta_{k-1}, \alpha_k\alpha'_k\beta_k)`. 能量期望值可以写成

.. math::
    E = E[1]E[2] \cdots E[K],

其中 :math:`E[k]` 是一个 :math:`O(M^2K^2)\times O(M^2K^2)` 的矩阵, 而 :math:`E[1]` 和 :math:`E[K]` 分别是 :math:`1\times O(M^2K^2)` 和 :math:`O(M^2K^2)\times 1` 的矢量. 图形化地, 我们将能量期望值的计算显示在图 5.

当执行能量计算时, 我们很自然地将矩阵从左边或从右边开始乘在一起. 从左边或者从右边一直乘到位点 :math:`k` 分别定义了左和右算符矩阵表示, 即

.. math::
    [\bm{O}_{\beta_k}^L]_{\alpha_k \alpha'_k} = (E[1] E[2] \cdots E[k])_{\gamma_k}, \\
    [\bm{O}_{\beta_k}^R]_{\alpha_k \alpha'_k} = (E[k+1] E[k+2] \cdots E[K])_{\gamma_k},

其中 :math:`\alpha_k, \alpha'_k` 表示重整化算符矩阵的矩阵指标, 而不同的重整化算符则由 :math:`\beta_k` 指标来标记. (参见 :eq:`deq21`). [这里说 :math:`\beta_k` 指标表示算符的种类, 其实和之前用 :math:`\hat{z}` 表示算符的思路是类似的. 实际上在算符种类的空间没有进行截断操作, 所以 :math:`\beta_k` 指标是累积的. ] :math:`\bm{O}_{\beta_k}^L` 和 :math:`\bm{O}_{\beta_k}^R` 当然就是和出现在位点 :math:`k` 的左右哈密顿量分解中的左右重整化算符一样的算符, 是出现在 DMRG 扫描中的标准中间量.

构建重整化算符的复杂度是怎样的? 一个直接的 :math:`K` 个 :math:`E[k]` 矩阵的相乘 [中的每一步, 一共 :math:`K` 步] 是将 :math:`O(M^2K^2) \times O(M^2K^2)` 矩阵乘以 :math:`O(M^2K^2)` 长度的矢量. 将这个重复 :math:`K` 次似乎需要 :math:`O(M^4K^5)` 复杂度, 这比从头算 DMRG 算法的复杂度要高. 但是, 在标准 DMRG 扫描的实现中 (见第 II 节), 重整化算符是按照两步构造的: 首先是分块, 然后是截断. 这等价于注意到 :math:`E[k]` 本身是由张量缩并表示的, 因此我们可以通过两小步来执行两个 :math:`E[k]` 矩阵的相乘 (图 6). 这将 :math:`K` 个 :math:`E[k]` 矩阵的相乘 (以及构建重整化的算符) 的复杂度降低到了 :math:`O(M^3K^3) + O(M^2K^5)`. [具体复杂度见图后面解释. 注意所谓的截断其实在 MPS/MPO 的情况就是矩阵相乘, 因此无法说截断后某些指标会消失] 这是最低的代价, 如果我们假设 :math:`E[k]` 矩阵是密集的. 这也是求一个键维度为 :math:`O(K^2)` 的 MPO 和键维度为 :math:`O(M)` 的 MPS [疑问?? 这里原文是 :math:`O(M^2)`, 似乎是印刷错误] 的最一般的代价. 但是, [关于算符的, 忽略上述复杂度的 :math:`M` 部分] :math:`O(K^5)` 的高复杂度再一次 (和引用 62 说明的一样) 因为我们还没有考虑 :math:`E[k]` 矩阵的稀疏性. [考虑了之后, 就可以修正为 :math:`O(k^4)`. ] 通过使用逐元素的分块规则 (如下面的两式), 我们可以显式地执行逐元素的 :math:`E[k]` 矩阵相乘, 并考虑到合适的稀疏性, 以及 :math:`E[k]` 的元素的对称性. 例如, 对于 :math:`\bm{O}^{R_k}` 的 :math:`\bm{P}_{pq}` 元素的分块对应于 [下式右边 :math:`\otimes` 右边矩阵都是 :math:`M\times M`, 左边都是 :math:`2\times 2`. 疑问?? 这个式子似乎有印刷错误, :math:`w_{pqks}` 应该是 :math:`v_{pqks}`, 而 :math:`n\in R_{k+1}` 应该是 :math:`s \in R_{k+1}`. 注意两个 :math:`\bm{a}` 算符 (矩阵), 由于 :math:`k` 是固定, :math:`\bm{a}_k` 应该只是在自己位点的子空间表示, :math:`\bm{a}_s` 则按照前面所有的分块操作截断到 :math:`M\times M` 的尺寸. :math:`\otimes` 之后的空间大小是 :math:`2M \times 2M`, 如果一个位点的态空间大小是 2. 注意这里是从右边开始的分块, 原来的块是 :math:`R_k`, 扩增后的块是 :math:`R_{k-1}`, 按照 :eq:`deq23`, 对应的 :math:`W` 的下标是 :math:`\beta_{k-1}\beta_k`, 对应位点 :math:`k`. 以下是修正后的式子. ]

.. math::
    \bm{P}_{pq}^{R_{k-1}} = \bm{1}^k \otimes \bm{P}_{pq}^{R_k} + \bm{P}_{pq}^k \otimes \bm{1}^{R_k}
        + \sum_{s \in R_k} v_{pqks} \bm{a}_k \otimes \bm{a}_s

截断对应于 [疑问?? 这个式子也有不少打字错误, 求和指标正确, 但位于位点 :math:`k` 的 :math:`A` 矩阵的下标应该是 :math:`k-1,k`. 右边的 :math:`\bm{P}` 矩阵指标少了撇号, 已修复,  左箭头实际是等于. 因为截断的内涵已经体现在矩阵相乘的矩阵乘积态表示中.  以下是修正后的式子. ]

.. math::
    [\bm{P}_{pq}^{R_{k-1}}]_{\alpha_{k-1}, \alpha'_{k-1}} \leftarrow \sum_{n_k \alpha_k, n'_k \alpha'_k} A^{n_k}_{\alpha_{k-1}\alpha_k}
        [\bm{P}_{pq}^{R_{k-1}}]_{n_k \alpha_k, n'_k \alpha'_k} A^{n'_k}_{\alpha'_{k-1}\alpha'_k}

考虑逐元素的分块和截断步骤最终导致正确的复杂度 :math:`O(M^3K^3) + O(M^2K^4)` (这就是原始 DMRG 量子化学算法的复杂度). 总之, 这允许一个基于 MPO 的 DMRG 实现来重现和纯基于重整化算符的实现一样的复杂度, 尽管本质上它们是完全相同的一套计算方法.

图 6:

.. tikz::
    \fill (0, 0) circle (0.2);
    \fill (1.5, 0) circle (0.2);
    \fill (1.5, 1.5) circle (0.2);
    \fill (1.5, -1.5) circle (0.2);
    \draw (0.5, 1.5) node[above] {$\alpha$} arc (90:180:0.5);
    \draw (0.5, -1.5) node[below] {$\alpha$} arc (270:180:0.5);
    \draw (0, 1) -- (0, -1);
    \draw (0, 0) -- (0.5, 0) node[below] {$\beta$};
    \draw (1, 1.5) node[above] {$\alpha$} -- (2, 1.5) node[right] {$\alpha$};
    \draw (1, -1.5) node[below] {$\alpha$} -- (2, -1.5) node[right] {$\alpha$};
    \draw (1, 0) node[below] {$\beta$} -- (2, 0) node[right] {$\beta$};
    \draw (1.5, 1.5) -- (1.5, 1) node[right] {$n$};
    \draw (1.5, 0.5) node[right] {$n$} -- (1.5, -0.5) node[right] {$n$};
    \draw (1.5, -1.5) -- (1.5, -1) node[right] {$n$};
    \node at (3, 0.5) {(i)};
    \draw [->,line width=2pt] (2.8, 0) -- (3.2, 0);
    \begin{scope}[shift={(4, 0)}]
        \fill (0, 0) circle (0.2);
        \fill (1.5, 0) circle (0.2);
        \fill (1.5, 1.5) circle (0.2);
        \fill (1.5, -1.5) circle (0.2);
        \draw (0.5, 1.5) node[above] {$\alpha$} arc (90:180:0.5);
        \draw (0.5, -1.5) node[below] {$\alpha$} arc (270:180:0.5);
        \draw (0, 1) -- (0, -1);
        \draw (1, 1.5) node[above] {$\alpha$} -- (2, 1.5) node[right] {$\alpha$};
        \draw (1, -1.5) node[below] {$\alpha$} -- (2, -1.5) node[right] {$\alpha$};
        \draw (0, 0) -- (2, 0) node[right] {$\beta$};
        \draw (1.5, 1.5) -- (1.5, 1) node[right] {$n$};
        \draw (1.5, 0.5) node[right] {$n$} -- (1.5, -0.5) node[right] {$n$};
        \draw (1.5, -1.5) -- (1.5, -1) node[right] {$n$};
        \node at (3, 0.5) {(ii)};
        \draw [->,line width=2pt] (2.8, 0) -- (3.2, 0);
    \end{scope}
    \begin{scope}[shift={(8, 0)}]
        \fill (0, 0) circle (0.2);
        \fill (1.5, 0) circle (0.2);
        \fill (1.5, 1.5) circle (0.2);
        \fill (1.5, -1.5) circle (0.2);
        \draw (0.5, 1.5) arc (90:180:0.5);
        \draw (0.5, -1.5) arc (270:180:0.5);
        \draw (0, 1) -- (0, -1);
        \draw (0.5, 1.5) -- (2, 1.5) node[right] {$\alpha$};
        \draw (0.5, -1.5) -- (2, -1.5) node[right] {$\alpha$};
        \draw (0, 0) -- (2, 0) node[right] {$\beta$};
        \draw (1.5, 1.5) -- (1.5, -1.5);
        \draw [->,line width=2pt] (2.8, 0) -- (3.2, 0);
    \end{scope}

[复杂度的具体计算: 上图中, :math:`\alpha` 指标是 MPS 的键维度, 这个维度是 :math:`M`. :math:`\beta` 指标是 MPO 的键维度, 这个维度是 :math:`K^2`. :math:`n` 是物理指标, 每个物理指标对应仅一个位点, 因此其维度为 2, 在计算复杂度时 :math:`n` 指标的缩并可以忽略. 第一步分块操作, 是第一个图左边的张量和第二个图中间的张量的缩并. 缩并的是 :math:`\beta` 指标, 自由指标是 :math:`\alpha, \alpha, \beta, n, n`. 因此复杂度是 :math:`\alpha^2\beta^2 = M^2K^4`. 但是由于文章中解释的原因, 由于算符矩阵的稀疏性, 可以去掉一个 :math:`K` 的复杂度, 因此这一步对于量子化学哈密顿量的实际复杂度是 :math:`M^2K^3`. 第二步截断操作, 是将第二图分别和右上张量和右下张量缩并. 可以先和右上张量缩并. 这是 :math:`\alpha^2\beta n^2` 和 :math:`\alpha^2n` 缩并, 缩并指标是  :math:`\alpha n`, 因此复杂度是 :math:`\alpha^3\beta = M^3K^2`. 再将结果和右下张量缩并, 这是 :math:`\alpha^2\beta n` 和 :math:`\alpha^2n`, 缩并指标是  :math:`\alpha n`, 因此复杂度还是 :math:`\alpha^3\beta = M^3K^2`. 两步操作总的复杂度是 :math:`O(M^2K^3) + O(M^3K^2)`. 但由于这两步操作只是行进了一个位点, 一次扫描中需要处理 :math:`K` 个位点, 因此 DMRG 算法总的复杂度是 :math:`O(M^2K^4) + O(M^3K^3)`. ]

III. 在基于重整化算符实现中的 MPS 和 MPO 代数
---------------------------------------------

在第 II 节, 我们重点考察了在一个基于 MPO 的 DMRG 实现中期望值的高效计算, 和在纯基于重整化算符的实现中的计算之间的关系. 我们发现存在一个自然的方式来在基于 MPO 的实现中达到同样的复杂度, 即将标准 DMRG 扫描中的计算映射到基于 MPO 的语言.

期望值是 DMRG 扫描算法的自然目标. 矩阵乘积算符和矩阵乘积态的代数是对期望值的拓展, 但是, 更多一般的 MPO-MPS 操作出现在一系列算法的上下文中. 例如, 以一个最大允许的键维度 :math:`M` 来时间演化一个 MPS, 这包括重复下面的操作序列, 对每个时间步:

1. :math:`|\Psi(t)\rangle(t)[M]\rangle \to \E^{-\I \epsilon \hat{H}} |\Psi(t)[M]\rangle \equiv |\Psi(t+\epsilon)[M']\rangle` (演化),
2. :math:`||\Psi(t+\epsilon)[M']\rangle \to |\Psi(t+\epsilon)[M]\rangle` (压缩).

一个重要问题是, 这种包含更一般的 MPO/MPS 代数的算法, 是否能被一个纯基于重整化算符的 DMRG 实现支持, 其中这个实现中只会出现重整化算符. 答案是, **任何** MPO/MPS 操作, 只要它的最终结果是标量或者 MPS, 事实上都可以很容易地在一个纯扫描实现中实现, 而不需要任何大量努力. 例如考虑上面的时间演化方程. 第一步是一个 MPO :math:`\times` MPS 的乘积, 它不是标准 DMRG 扫描的一部分. 但是, 两步的结合 (包括压缩) **是** 扫描计算的形式, 因为压缩对应于最大化重叠 (即期望值) :math:`\langle \Phi[M]|\E^{-\I \epsilon \hat{H}}|\Psi[M]\rangle` 关于 :math:`\langle \Phi |`. 事实上, 甚至可以得到完整的 MPS :math:`\E^{-\I \epsilon \hat{H}}|\Psi[M]\rangle` 而不做任何压缩, 通过简单地要求, 在重叠最大化的扫描中, :math:`\langle \Phi |` 的键维度保持为 :math:`M\times D`, 其中 :math:`D` 是 MPO :math:`\E^{-\I \epsilon \hat{H}}` 的键维度 (因此不会有压缩发生).

为计算矩阵乘积算符的乘积对矩阵乘积态的作用, 只需要多次应用上述过程. 例如, 为了得到 :math:`\langle \Psi |\hat{O} \hat{O} | \Psi\rangle`, 我们首先最大化重叠 :math:`\langle \Phi | \hat{O} | \Psi \rangle` 来决定 :math:`\langle \Phi |` 然后计算重叠 :math:`\langle \Psi | \hat{O} | \Phi \rangle`.

只有最终计算结果是 MPO 本身的算法 (而这在绝对零度计算中是罕见的) 需要在重整化算符计算之外完整实现 MPO 功能. 按照上面描述的方式实现一般的 MPO/MPS 代数可以通过在基于重整化算符的 DMRG 代码中更新一个简单的界面. 例如, 这可以在 BLOCK 代码中的 MPO/MPS 实现中找到, 它被用在 DMRG 响应和微扰计算中.

IV. 通过矩阵乘积算符改进 DMRG
-----------------------------

A. 哈密顿量压缩
^^^^^^^^^^^^^^^

在这一节, 我们关注在实现类似 DMRG 算法时, 由矩阵乘积算符引出的一些新观点.

最简单的观察是, 可以以和压缩 MPS 一样的方法, 也可以压缩 MPO. 从而, 在所有出现了, 例如, 算符的算法中, 都可以利用同样的算符的压缩版本来执行近似的计算. 在某些情况下, 这可以导致非常可观的时间节省. 例如, 对两点相互作用 (可以写成 D 个指数的和的形式), 例如 :math:`\sum_{ij} V_{ij} n_i n_j` 其中 :math:`V_{ij} = \sum_\lambda \exp(\lambda|i-j|)`, 那么 MPO 可以严格限制为具有键维度 :math:`D`. 这意味着, 例如, 当在一个一维系统中使用短程 (例如, 指数的和) 相互作用中进行 DMRG 计算时, 可以以与系统长度线性关系的复杂度来进行计算.

一般地, MPO 的唯一压缩方式需要选择规范约定. 一个特别简单的方式来进行压缩是从一个在每个位点 :math:`i` 进行的哈密顿量的左右分解

.. math::
    \hat{H} = \hat{H}^{L_k} \otimes \hat{1}^{R_k} + \hat{1}^{L_k} \otimes \hat{H}^{R_k} + \sum_{\alpha_k,\beta_k} h_{\alpha_k, \beta_k}
        \hat{h}^{L_k}_{\alpha_k} \hat{h}^{R_k}_{\beta_k}.

[和 :eq:`deq24` 进行比较, 这里求和的下标变为了两个. 而 :eq:`deq24` 中只有一个下标代表键维度. 这可以这么理解. 原来的 :math:`\beta_k` 代表这里 :math:`\alpha, \beta` 的复合. 那么复合拆开以后, 求和下标变成两个, 振幅 :math:`h` 下标变为两个, 这些都很好理解. 按理说两个 :math:`\hat{h}` 也应该各自具有 :math:`\alpha` 和 :math:`\beta` 两个下标才行, 但事实上它们都分别具有 :math:`\alpha` 或 :math:`\beta` 其中一个指标. 这里的原因在于, 本来这一部分描述的是不同块之间相互作用. 但是我可以把所有左块的产生或湮灭算符都移到算符序列的左边, 而所有右块的单个位点的算符都移到算符序列的右边. 这样属于左块和右块的算符就可以独立用下标索引. 每个独立下标 (分解后的下标) 标记一个特定的产生湮灭算符序列. 这意味着, 通常在左块产生或湮灭粒子的数量, 必须和右块产生或湮灭粒子的数量匹配. 这就是说, 不可能说对于特定的左块序列, 右块的可能只有一种. 一定有多种, 也就是说这个指标的分解一定不是平凡的. 也就是说, 在右块特定位置产生一个粒子, 在左块可以在多个可能的位置进行湮灭. 这对应于 :math:`\beta` 的一种取值, 可以有多种 :math:`\alpha` 的取值. 另外, 由于数量匹配, 要保持粒子数守恒, 这就是后面说的由于量子数对称性, :math:`h_{\alpha,\beta}` 矩阵是块对角的. ]

在上式中, 算符 :math:`\hat{h}^{L_k}` 和 :math:`\hat{h}^{R_k}` 是纯费米子算符 (常规算符) 并且没有任何附加的单或双粒子积分; 对应的单双粒子积分存储在矩阵 :math:`h_{\alpha_k,\beta_k}`. 例如, 仅考虑哈密顿量的单粒子部分, 上式的相互作用部分成为

.. math::
    \sum_{\alpha_k,\beta_k} h_{\alpha_k, \beta_k} \hat{h}^{L_k}_{\alpha_k} \hat{h}^{R_k}_{\beta_k}
        \to \sum_{p\in L_k, q\in R_k} t_{pq} (a_p^\dagger a_q + h.c.).

然后, 我们可以简单地通过考虑矩阵 :math:`h_{\alpha_k, \beta_k}` 的奇异值分解来压缩 MPO, 即 :math:`h = U\lambda V^\dagger`, 定义左右算符为 :math:`\hat{L_k}U` 和 :math:`V^\dagger \hat{h}^{R_k}`, 并忽略较小的特征值. (注意, 由于量子数对称性, :math:`h_{\alpha_k, \beta_k}` 是块对角的, 因此奇异值分解可以在独立的块中进行. )

哈密顿量的左右分解变为

.. math::
    \hat{H} = \hat{H}^{L_k} \otimes \hat{1}^{R_k} + \hat{1}^{L_k} \otimes \hat{H}^{R_k} +  \sum_i \lambda_i
        \bigg( \sum_{\alpha_k} \hat{h}_{\alpha_k}^{L_k} U_{\alpha_k i} \bigg)
        \bigg( \sum_{\beta_k} V_{i\beta_k}^\dagger \hat{h}_{\beta_k}^{R_k} \bigg),

[注意上式和不压缩的版本比, 只是将下标从 :math:`\beta_k` 改成了 :math:`i`. 但是实际上存在一个算符的变换.] 而在 :eq:`deq25` 中 :math:`\hat{W}[k]` 矩阵中对应的变换为

.. math::
    \hat{O}^k &\to& \hat{O}^k, \\
    \hat{A} &\to& V_{k-1}^\dagger \hat{A}V_k, \\
    \hat{B} &\to& V_{k-1}^\dagger \hat{B}, \\
    \hat{C} &\to& \hat{C} V_k

[注意这里之所以存在这些变换, 是因为原来的 :math:`\hat{W}[k]` 矩阵代表某一个特定位点对应的算符, 而这些算符是在原来的算符表象. :eq:`deq25` 右边的 :math:`\hat{O}^R`, :math:`\hat{o}^R` 分别对应于现在的 :math:`\hat{H}^R, \hat{h}^R`, 其中 :math:`\hat{h}^R` 是按照每个位点的变换矩阵变换后的. 因此在推到下一个位点时, 如果涉及 :math:`\hat{h}^R`, 则需要先在原位点变换回原来表象, 然后做算符直积, 然后再变到目标表象. 对于上标为 :math:`R` 的算符, 所涉及的只是 :math:`V` 矩阵, 如果是考虑上标为 :math:`L` 的算符, 则涉及 :math:`U` 矩阵. ]

注意这里的左右分解和标准 DMRG 表象具有完全一样的求和结构, 只是所需求和的指标数目更少, 由于较小的奇异值 :math:`\lambda_i` 被截断了. 从而, 包含在左右分解求和中进行并行化的标准 DMRG 并行策略 (见第 IV C 节) 仍然可以不加修改地使用在压缩后的表象.

为了在从头算量子化学上下文中展示这个压缩, 我们实现了上述方法来计算 20 个等间隔氢原子的线性链在最小 STO-3G 基组. 图 7 显示的是用 :math:`M = 1000` 的 DMRG 计算的在不同键长的能量精确值. 图 8 显示采用近似的压缩的 MPO, 对应于不同截断阈值的 [能量] 误差. 图 9 显示不同 MPO 键维度对应的误差, 对于不同的间隔 :math:`R = 1.0 \AA, 2.0 \AA, 3.6 \AA`. 我们发现能量误差和截断阈值成正比. 注意以我们选择的规范, 在这个系统 MPO 的完整键维度从 43 084 (键长 :math:`1.0 \AA`) 到 15 096 (键长 :math:`3.6 \AA`). 但是, 为了得到误差 :math:`10^{-6} E_h`, 使用小于 200 的 MPO 键维度就足够了. 由于在 DMRG 扫描中每一步的耗时正比于 MPO 的键维度, 这是一个 100 因子的时间节省.



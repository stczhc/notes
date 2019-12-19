
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
    \Psi\rangle = \sum_{\alpha_{k-1}n_k\alpha_k} C_{\alpha_{k-1}\alpha_k}^{n_k} |l_{\alpha_{k-1}}n_k r_{\alpha_k}\rangle

因此系数 :math:`C_{\alpha_{k-1}\alpha_k}^{n_k}` 即波函数在 DMRG 重整化的空间中的系数. 我们也可以将 MPS 更紧凑地按位点 :math:`k` 的左重整化的态展开, :math:`\{|l_{\alpha_k}\rangle\}` (而不是分块的基组 :math:`\{|l_{\alpha_{k-1}}n_k\rangle\}`), 这给出更简单的形式

.. math::
    |\Psi\rangle = \sum_{\alpha_k} | l_{\alpha_k} r_{\alpha_k} \rangle s_{\alpha_k}.

这意味着, MPS 对应于一个波函数, 它的 Schmidt 分解, 对于在任意位点 :math:`k` 的二分, 包含至多 :math:`M` 个奇异值 :math:`s_{\alpha_k}`. [疑问?? 这里实际将原来的 DMRG 正则形式转换为更紧凑地形式的过程中, 需要做一次额外的截断. 而这个截断在原始 DMRG 算法中是没有的. 所以似乎这段讨论对于原始 DMRG 算法并不适用, 因此对于原始 DMRG 算法, 奇异值可以多于键维度 :math:`M` (因为展开是在最后一步截断之前). 而实际上 MPS 的实现并没有限制此处到底是采取更紧凑的形式还是 DMRG 正则形式, 所以这段反而说明了不能建立严格的一一对应关系. ]

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

我们引入了三种左和右算符项: 恒等算符 (:math:`\hat{1}^{L_k}` 或 :math:`\hat{1}^{R_k}`), 限制于作用于左或右块内部的位点的算符 :math:`\hat{O}` (:math:`\hat{O}^{L_k}` 或者 :math:`\hat{O}^{R_k}`), 以及表示在分块 :math:`k` 中表示左和右位点相互作用的项 (分别是 :math:`\hat{o}_{\beta_k}^{L_k}, \hat{o}_{\beta_k}^{R_k}`). [这里暗示了不存在和当前块所包含节点毫无关系的节点之间相互作用的项] 既然存在 3 种项, 那么在分块规则中出现的矩阵和矢量就有 :math:`(3\times 3)` 和 :math:`(3\times 1)` (或者 :math:`(1\times 3)`) 的分块结构 [这里是说分块结构, 而不是表示矩阵本身只有 3 个矩阵元]. 例如, :eq:`deq23` 成为

.. math::
    \begin{pmatrix} \hat{O}^{R_k} \\ \hat{o}^{R_k}_{\beta_k} \\ \hat{1}^{R_k} \end{pmatrix}
        = \begin{pmatrix} \hat{1}^k & \hat{C}^k & \hat{O}^k \\ 0 & \hat{A}^k & \hat{B}^k \\ 0&0& \hat{1}^k \end{pmatrix}
          \begin{pmatrix} \hat{O}^{R_{k+1}} \\ \hat{o}^{R_{k+1}}_{\beta_{k+1}} \\ \hat{1}^{R_{k+1}}\end{pmatrix}

其中 :math:`\hat{O}^k` 的上标表示算符作用于位点 :math:`k`.

[注意, 上式的分块结构我们只需要解释 :math:`0` 和 :math:`1` 的项, 其他项都是一般形式的待定系数. 首先, :math:`\hat{O}^{R_{k+1}}` 为只包含 :math:`>k+1` 位点之间相互作用的算符, 而 :math:`\hat{O}^{R_{k}}` 为只包含 :math:`>k` 位点之间相互作用的算符, :math:`>k+1` 当然满足 :math:`>k`, 因此这个算符 (作为最小的集合) 应该直接拓展. 第二行, :math:`\hat{o}^{R_k}_{\beta_k}` 为包含 :math:`\leq k` 位点和 :math:`>k` 位点之间相互作用的算符, 而 :math:`\hat{O}^{R_{k+1}}` 为只包含 :math:`>k+1` 位点之间相互作用的算符, 它们之间没有任何联系, 因此第二行第一列矩阵元为 0. 第三行恒等元有两个零很好理解. 但是 :math:`\hat{o}^{R_{k+1}}_{\beta_{k+1}}` 是包含 :math:`\leq k+1` 位点和 :math:`>k+1` 位点之间相互作用的算符, 它既可能是 :math:`k` 位点和 :math:`>k+1` 位点之间相互作用, 因此应该归到等号左边的 :math:`\hat{O}^{R_k}`, 也可能是 :math:`<k` 位点和 :math:`>k+1` 位点之间相互作用. 因此具体操作的时候, 对这些算符的分块规则还要依据具体相互作用的项涉及的位点逐项处理, 而不能仅依据这里的 3 类写出统一的公式. ]

综上所述, 我们发现, 我们发现在 DMRG 扫描中通过分块规则构建左右算符分解, 和构建显式的 MPO 所需的操作是同构的; 唯一的不同是显式算符被算符矩阵取代, 这对于期望值的高效计算是必要的.

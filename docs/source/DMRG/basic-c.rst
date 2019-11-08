
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
    Garnet Chan Lecture. https://www.youtube.com/watch?time_continue=3664&v=Q8bFmV6tHBs

张量网络态初步1
===============

一些有用的综述文章:

* Schollwoeck, https://arxiv.org/abs/1008.3477
* Orus, https://arxiv.org/abs/1306.2164

首先将讨论研究张量网络的动机. 先介绍张量网络的图形表示. 第一部分将讨论最简单的张量网络态, 矩阵乘积态. 以及对这些态可能进行的操作, 即矩阵态的代数, 或者说如何计算这些态, 如何用这些态构建算法.

动机
----

狄拉克曾指出, 我们已经知道量子力学的方程, 它们足够精确并可以预言大部分化学和物理, 但是求解方程更困难一些. 为什么求解困难? 考虑量子力学的基本变量, 波函数. 不论什么系统, 多电子系统, 多自旋系统, 多粒子占据数系统, 波函数是极高维度的对象. 仅仅写下而不是决定波函数, 就有指数复杂度. 如果承认这一点, 那么这个理论很难起到作用. 解决之道是, 这个复杂度并不总是存在. 自然并不探索所有的可能性 (对于一个特定哈密顿量, 在低能量尺度). 物理的量子态有一些特殊结构, 从而指数复杂度并不存在. 系统对某种微扰的响应相对来说是局部的. 数学地, 自然是局部的, 基态具有低纠缠. 可以严格证明, 在一维有带隙的系统, 对于没有真正长程相互作用的哈密顿量, 系统必须具有低纠缠. 对于无带隙系统, 对此的修正并不是很大. 对二维或三维系统, 不严格的分析指出上述结论也成立 (在大部分情况).

描述低纠缠态的语言是张量网络. 不同的张量网络反应纠缠的几何. 最简单的是矩阵乘积态. 除此之外, 张量乘积态, 特别地, PEPS, 是对矩阵乘积态的推广. 它可以描述多维系统的纠缠. 最后 MERA 可以处理无带隙和临界系统.

图形语言
--------

1 波函数
^^^^^^^^

波函数

.. math::
    |\Psi\rangle = \sum_{n_1n_2n_3} \Psi^{n_1n_2n_3} |n_1n_2n_3\rangle

其中 :math:`|n_1n_2n_3\rangle` 代表用于展开的基态, 如果是一个三粒子的态, 采用粒子数表象, 那么 :math:`|n\rangle=\{ |0\rangle, |1\rangle \}`. 或者如果是自旋系统, 比如 1/2 自旋系统, :math:`|n\rangle = \{ |\uparrow\rangle, |\downarrow\rangle \}`.

因此一般的波函数表示为一组数字 :math:`\Psi^{n_1n_2n_3}`. 这组数被称为张量. 并不限制这组数有任何数学性质. 图形表示为

.. tikz::
    \draw[line width=5pt] (-2, 0) -- (2, 0);
    \draw[line width=1pt] (-2, 0) -- (-2, 1) node[above] {$n_1$};
    \draw[line width=1pt] (0, 0) -- (0, 1) node[above] {$n_2$};
    \draw[line width=1pt] (2, 0) -- (2, 1) node[above] {$n_3$};
    \node[right] at (2, 1) {\small 物理指标};
    \node[right] at (2, 0) {\small 粗线=单一张量};

2 算符
^^^^^^

一个一般的算符可以类似写为

.. math::
    \hat{O} = \sum_{nn'} O_{n_1'n_2'n_3'}^{n_1n_2n_3} |n_1n_2n_3\rangle\langle n_1'n_2'n_3'|

代数形式

.. math::
    O_{n_1'n_2'n_3'}^{n_1n_2n_3}

图形表示为

.. tikz::
    \draw[line width=5pt] (-2, 0) -- (2, 0);
    \draw[line width=1pt] (-2, 0) -- (-2, 0.5) node[above] {$n_1$};
    \draw[line width=1pt] (0, 0) -- (0, 0.5) node[above] {$n_2$};
    \draw[line width=1pt] (2, 0) -- (2, 0.5) node[above] {$n_3$};
    \draw[line width=1pt] (-2, 0) -- (-2, -0.5) node[below] {$n'_1$};
    \draw[line width=1pt] (0, 0) -- (0, -0.5) node[below] {$n'_2$};
    \draw[line width=1pt] (2, 0) -- (2, -0.5) node[below] {$n'_3$};

如果这里的 :math:`n_1, n_2, n_3` 是表示粒子数表象系统, 那么如果有 100 个粒子, 就会有 100 个变量 :math:`n_1, \cdots, n_{100}`.

3 重叠积分和期望值
^^^^^^^^^^^^^^^^^^

两个态之间的重叠积分可以写为两个态的振幅 (amplitude) 的点乘积.

.. math::
    \langle \Psi | \Phi \rangle = \sum_n \Psi_{n_1n_2n_3} \Phi^{n_1n_2n_3}

图形表示为

.. tikz::
    \draw[line width=5pt] (-2, 0) -- (2, 0) node[right] {$|\Phi\rangle$};
    \draw[line width=5pt] (-2, 1) -- (2, 1) node[right] {$|\Psi\rangle$};
    \draw[line width=1pt] (-2, 0) -- (-2, 1);
    \draw[line width=1pt] (0, 0) -- (0, 1);
    \draw[line width=1pt] (2, 0) -- (2, 1);

期望值可以写为 (这里视频中有一个撇号的打字错误[??])

.. math::
    \langle \Psi | O | \Phi \rangle = \sum_{n,n'} \Psi_{n_1n_2n_3} O_{n_1'n_2'n_3'}^{n_1n_2n_3} \Phi^{n_1'n_2'n_3'}

图形表示为

.. tikz::
    \draw[line width=5pt] (-2, 0) -- (2, 0) node[right] {$|\Phi\rangle$};
    \draw[line width=5pt] (-2, 0.75) -- (2, 0.75) node[right] {$O$};
    \draw[line width=5pt] (-2, 1.5) -- (2, 1.5) node[right] {$|\Psi\rangle$};
    \draw[line width=1pt] (-2, 0) -- (-2, 1.5);
    \draw[line width=1pt] (0, 0) -- (0, 1.5);
    \draw[line width=1pt] (2, 0) -- (2, 1.5);

到目前为止都是一般的态, 没有讨论低纠缠态.

低纠缠态
--------

说一个态是低纠缠态的意思是什么? 考虑一个可分为两部分的系统, 比如有两个自旋 (这里是说, 两个自旋态在空间上处于两个隔离的位点, 每个位点可以取不同自旋). 无纠缠时

.. math::
    \Psi^{n_1n_2} = A^{n_1}A^{n_2}

这意味着概率振幅可以因子分解. 对分开的子系统 1 和子系统 2 的局部测量可以独立地进行, 完全不相关. (经典的 local realism 定域实在性). 如果存在纠缠, 那么振幅不会完全分解. 但如果我们认为这里的 :math:`\Psi^{n_1n_2}` 是一个矩阵, 那么我们总可以把一个矩阵分为简单的对象. 因此一个纠缠态可以表示为

.. math::
    \Psi^{n_1n_2} = \sum_i A^{n_1}_iA^{n_2}_i

因此, 如果上述求和只有一项, 那么无纠缠. 如果只有少数几个求和项, 那么就是低纠缠的情况. 这里的求和指标产生纠缠.

矩阵乘积态
----------

对一个一般系统, 矩阵乘积态是把系统的波函数振幅写为每个子系统波函数振幅的乘积的和. 对一个有 :math:`l` 自旋位点的系统, 即 (这里视频中最后一个 :math:`i` 指标打字错误 [??])

.. math::
    \Psi^{n_1n_2n_3\cdots n_l} = \sum_{i} A_{i_1}^{n_1}A_{i_1i_2}^{n_2}A_{i_2i_3}^{n_3}\cdots A_{i_{l-1}}^{n_l}

由于 :math:`i` 指标代表纠缠, 因此这里的纠缠只发生在 :math:`A^{n_1}` 和 :math:`A^{n_2}`, 或者 :math:`A^{n_2}` 和 :math:`A^{n_3}` (即总是相邻的) 之间. 因此这是一个一维的纠缠结构. 注意每个 :math:`A` 不代表同一矩阵变量. 这就是为什么矩阵乘积态对于一维系统是理想的.

这里额外引入的指标 :math:`i` 被称为 (bond 或 auxiliary dimension 键维度) :math:`M` 或 :math:`D` 或 :math:`\chi`. 这里的键是指化学键的键. 第一个和最后一个张量 (其实是矩阵) 比其他张量少一个键指标. 因此这里的表示对应于开放边界系统. 如果是环系统则没有这个指标差别.

注意这里没有第三位点和第一位点之间的纠缠. 但因为存在第一第二位点, 第二第三位点的纠缠, 因此在这个表示中第一第三位点还是可以有一些间接的纠缠. 因此完全可以说, 在这个表示中, 第一第三位点之间的纠缠是更少的. 对于基组变换, 纠缠不能保持不变. 但这里的关键点是, 对于物理的态, 如果采用局域的基组, 那么基态应该具有低纠缠.

如果忽略表示矩阵分量的指标, 对于取特定的 :math:`n_1n_2n_3\cdots n_l` 值的振幅, 我们可以写为

.. math::
    \Psi^{n_1n_2n_3\cdots n_l} = \bm{A}^{n_1} \bm{A}^{n_2}\cdots  \bm{A}^{n_l}

因此我们说振幅是通过矩阵乘积得到的. 这里, 如果每个位点的性质是一样的, 那么所有的 :math:`\bm{A}` 确实代表同一矩阵, 当 :math:`n_1 = 0` 时 :math:`\bm{A}^0` 代表一个特定矩阵, 当 :math:`n_1 = 1` 时 :math:`\bm{A}^1` 代表另一个特定矩阵. 但是如果每个位点不同, 那么除了上述因为 :math:`n_1, n_2` 取值不同而造成的矩阵不同之外, :math:`\bm{A}^{n_1}, \bm{A}^{n_2}` 符号本身也代表两个不同矩阵. 在这种情况下, 如果 :math:`i` 可以取足够多的值, 那么上述表示不存在任何近似, 因为我们总可以通过矩阵奇异值分解来把一个一般的振幅写成上述形式. 图形表示为

.. tikz::
    \draw[line width=5pt] (-2, 0) -- (2, 0);
    \draw[line width=1pt] (-2, 0) -- (-2, 1) node[above] {$n_1$};
    \draw[line width=1pt] (0, 0) -- (0, 1) node[above] {$n_2$};
    \draw[line width=1pt] (2, 0) -- (2, 1) node[above] {$n_3$};
    \node[right] at (-0.5, 2) {\small 一般的态};
    \node[right] at (2.3, 0) {$=$};
    \draw[line width=1pt] (4, 0) -- (8, 0);
    \fill (4, 0) circle (0.2);
    \fill (6, 0) circle (0.2);
    \fill (8, 0) circle (0.2);
    \node[below] at (5, 0) {$i_1$};
    \node[below] at (7, 0) {$i_2$};
    \node[right] at (5.5, 2) {\small 矩阵乘积态 (MPS)};
    \draw[line width=1pt] (4, 0) -- (4, 1) node[above] {$n_1$};
    \draw[line width=1pt] (6, 0) -- (6, 1) node[above] {$n_2$};
    \draw[line width=1pt] (8, 0) -- (8, 1) node[above] {$n_3$};

这个表示不是唯一的. 比如一个张量表示为两个矩阵乘积, 如果第一个矩阵乘以 2 第二个矩阵除以 2, 那么就可以得到一个不同的表示. 或者对第一个矩阵乘以一个矩阵 X , 第二个矩阵乘以 X 的逆矩阵, 那么也可以得到不同的表示.

矩阵乘积态的规范
----------------

MPS 不是唯一的: 它们可以确定到相差一个以键指标为指标的规范矩阵, 满足

.. math::
    \bm{G} \bm{G}^{-1} = \bm{1}

图形表示为

.. tikz::
    \draw[line width=1pt] (-0.5, 0.3) node[below] {$i$} -- (3.5, 0.3) node[below] {$j$};
    \filldraw [fill=black!20!green!20, draw=black, rotate around={45:(0.3, 0.3)}] (0, 0) rectangle (0.6, 0.6);
    \filldraw [fill=black!20!blue!20, draw=black, rotate around={45:(2.3, 0.3)}] (2, 0) rectangle (2.6, 0.6);
    \node at (0.3, 0.3) {$G$};
    \node at (2.3, 0.3) {$G^{-1}$};
    \node[right] at (4.0, 0.3) {$= \delta_{ij}$};

上述图形中 :math:`G` 和 :math:`G^{-1}` 抵消, 最后图形等价于一条线, 一条线也就是单位矩阵.

对于一个一般的态, 我们可以插入任意的规范矩阵

.. tikz::
    \draw[line width=1pt] (0, 0) -- (4, 0);
    \fill (4, 0) circle (0.2);
    \fill (2, 0) circle (0.2);
    \fill (0, 0) circle (0.2);
    \draw[line width=1pt] (0, 0) -- (0, 1);
    \draw[line width=1pt] (2, 0) -- (2, 1);
    \draw[line width=1pt] (4, 0) -- (4, 1);
    \node at (6, 0) {$=$};
    \draw[line width=1pt] (8, 0) -- (14, 0);
    \fill (8, 0) circle (0.2);
    \fill (12, 0) circle (0.2);
    \fill (14, 0) circle (0.2);
    \draw[line width=1pt] (8, 0) -- (8, 1);
    \draw[line width=1pt] (12, 0) -- (12, 1);
    \draw[line width=1pt] (14, 0) -- (14, 1);
    \filldraw [fill=black!20!green!20, draw=black, rotate around={45:(9, 0)}] (8.7, -0.3) rectangle (9.3, 0.3);
    \filldraw [fill=black!20!blue!20, draw=black, rotate around={45:(11, 0)}] (10.7, -0.3) rectangle (11.3, 0.3);
    \draw[line width=1pt,->] (8.5, 0) ++ (45:0.5) arc (45:135:0.5);
    \draw[line width=1pt,->] (11.5, 0) ++ (135:0.5) arc (135:45:0.5);
    \node at (10, 1) {插入规范矩阵};

得到对原来的态的一个不同的矩阵乘积态表示

.. tikz::
    \draw[line width=1pt] (0, 0) -- (4, 0);
    \draw[line width=1pt] (0, 0) -- (0, 1);
    \draw[line width=1pt] (2, 0) -- (2, 1);
    \draw[line width=1pt] (4, 0) -- (4, 1);
    \filldraw [fill=black!20!green!20, draw=black] (0, 0) circle (0.2);
    \filldraw [fill=black!20!blue!20, draw=black] (2, 0) circle (0.2);
    \fill (4, 0) circle (0.2);

例子: 矩阵乘积态缩并
--------------------

计算一个重叠积分 :math:`\langle \Psi|\Phi\rangle`. 图形表示为

.. tikz::
    \draw[line width=1pt] (0, 0) -- (2, 0);
    \draw[line width=1pt] (0, 1) -- (2, 1);
    \draw[line width=1pt] (0, 0) -- (0, 1);
    \draw[line width=1pt] (1, 0) -- (1, 1);
    \draw[line width=1pt] (2, 0) -- (2, 1);
    \filldraw [fill=black!40, draw=black] (0, 0) circle (0.2);
    \filldraw [fill=black!40, draw=black] (1, 0) circle (0.2);
    \filldraw [fill=black!40, draw=black] (2, 0) circle (0.2);
    \filldraw [fill=black!40, draw=black] (0, 1) circle (0.2);
    \filldraw [fill=black!40, draw=black] (1, 1) circle (0.2);
    \filldraw [fill=black!40, draw=black] (2, 1) circle (0.2);
    \node[left] at (0, 0.5) {``$d$"};
    \node[above] at (0.5, 0) {``$M$"};

其中对于计算需要关注的问题是, 给定图中的各个张量, 即圆圈, 求这个图形的值, 即一个数. 为了高效地缩并, 需要采取特殊的顺序.

第一步缩并左侧的两个张量 (复杂度是 :math:`M^2d`). 每个缩并的指标算一次复杂度, 每个自由指标算一次复杂度. 最后的复杂度是所有指标复杂度的乘积.

.. tikz::
    \draw[line width=1pt] (0, 0) -- (1, 0);
    \draw[line width=1pt] (0, 1) -- (1, 1);
    \draw[line width=1pt] (0, 0) -- (0, 1);
    \filldraw [fill=black!40, draw=black] (0, 0) circle (0.2);
    \filldraw [fill=black!40, draw=black] (0, 1) circle (0.2);
    \node[left] at (0, 0.5) {``$d$"};
    \node[above] at (0.5, 0) {``$M$"};

第二步缩并复杂度是 :math:`M^3d`, 图形表示如下

.. tikz::
    \draw[line width=1pt] (0, 0) -- (0.8, 0);
    \draw[line width=1pt] (0, 1) -- (1.8, 1);
    \draw[line width=1pt] (0, 0) -- (0, 1);
    \draw[line width=1pt] (1, 0.5) -- (1, 1);
    \filldraw [fill=black!40, draw=black] (0, 0) circle (0.2);
    \filldraw [fill=black!40, draw=black] (1, 1) circle (0.2);
    \filldraw [fill=black!40, draw=black] (0, 1) circle (0.2);

第三步缩并复杂度也是 :math:`M^3d`, 图形表示如下

.. tikz::
    \draw[line width=1pt] (0, 0) -- (1.8, 0);
    \draw[line width=1pt] (0, 1) -- (1.8, 1);
    \draw[line width=1pt] (0, 0) -- (0, 1);
    \draw[line width=1pt] (1, 0) -- (1, 1);
    \filldraw [fill=black!40, draw=black] (0, 0) circle (0.2);
    \filldraw [fill=black!40, draw=black] (1, 1) circle (0.2);
    \filldraw [fill=black!40, draw=black] (0, 1) circle (0.2);
    \filldraw [fill=black!40, draw=black] (1, 1) circle (0.2);

总共的 MPS 重叠积分计算复杂度是 :math:`O(M^3dL)` 其中 :math:`L` 是位点数, 也就是图中圆圈的数目. :math:`d` 是物理指标的维数, 对于自旋系统 :math:`d = 2`. :math:`M` 是键维度, 它可以相对而言非常大.

从一般态构造矩阵乘积态
----------------------

考虑矩阵的奇异值分解 (singular value decomposition, SVD). 对于两个位点的波函数振幅, 它看上去像一个矩阵. 其 SVD 写为

.. math::
    \Psi^{nm} = \sum_i L_i^n \sigma_i R_i^m

其中 :math:`\sigma_i` 称为奇异值. :math:`L, R` 分别称为左, 右奇异矢量. 它们满足正交条件 (:math:`LL^T = 1`, 注意下面的分量表示, 如果是常规矩阵乘积, 那么缩并的指标应该一个在上一个在下, 但是下面两个指标都在上, 因此是矩阵和自身转置的乘积)

.. math::
    \sum_n L_i^n L_j^n = \delta_{ij},\quad \sum_n R_i^n R_j^n = \delta_{ij}

图形表示为

.. tikz::
    \draw[line width=5pt] (0, 0) -- (1, 0);
    \draw[line width=1pt] (0, 0) -- (0, 1);
    \draw[line width=1pt] (1, 0) -- (1, 1);
    \node at (2, 0) {$=$};
    \draw[line width=1pt] (3, 0) -- (5, 0);
    \draw[line width=1pt] (3, 0) -- (3, 1);
    \draw[line width=1pt] (5, 0) -- (5, 1);
    \filldraw [fill=black!40, draw=black] (3, 0) circle (0.2);
    \filldraw [fill=black!40, draw=black] (5, 0) circle (0.2);
    \filldraw [fill=black!20!yellow!20, draw=black, rotate around={45:(4, 0)}] (3.8, -0.2) rectangle (4.2, 0.2);

其中黄色菱形代表奇异值. 正交条件可以写为

.. tikz::
    \draw[line width=1pt] (0, 0) -- (0, 1);
    \draw[line width=1pt] (0, 1) -- (1, 1) node[right] {$i$};
    \draw[line width=1pt] (0, 0) -- (1, 0) node[right] {$j$};
    \filldraw [fill=black!40, draw=black] (0, 0) circle (0.2);
    \filldraw [fill=black!40, draw=black] (0, 1) circle (0.2);
    \node at (2, 0) {$= \delta_{ij}$};

以及

.. tikz::
    \draw[line width=1pt] (0, 0) -- (0, 1);
    \draw[line width=1pt] (0, 1) -- (-1, 1) node[left] {$i$};
    \draw[line width=1pt] (0, 0) -- (-1, 0) node[left] {$j$};
    \filldraw [fill=black!40, draw=black] (0, 0) circle (0.2);
    \filldraw [fill=black!40, draw=black] (0, 1) circle (0.2);
    \node at (1, 0) {$=\delta_{ij}$};

对于一个一般的态, 比如有三个指标, 可以先把右边两个指标看成一个总体指标, 然后按照上面的规则, 把态写成两个矩阵的乘积. 然后再把右边的矩阵进一步展开.

常用正则形式
------------

Vidal 形式

.. tikz::
    \draw[line width=5pt] (0, 0) -- (2, 0);
    \draw[line width=1pt] (0, 0) -- (0, 1);
    \draw[line width=1pt] (1, 0) -- (1, 1);
    \draw[line width=1pt] (2, 0) -- (2, 1);
    \node at (3, 0) {$=$};
    \draw[line width=1pt] (4, 0) -- (8, 0);
    \draw[line width=1pt] (4, 0) -- (4, 1);
    \draw[line width=1pt] (6, 0) -- (6, 1);
    \draw[line width=1pt] (8, 0) -- (8, 1);
    \filldraw [fill=black!40, draw=black] (4, 0) circle (0.2);
    \filldraw [fill=black!40, draw=black] (6, 0) circle (0.2);
    \filldraw [fill=black!40, draw=black] (8, 0) circle (0.2);
    \filldraw [fill=black!20!yellow!20, draw=black, rotate around={45:(5, 0)}] (4.8, -0.2) rectangle (5.2, 0.2);
    \filldraw [fill=black!20!yellow!20, draw=black, rotate around={45:(7, 0)}] (6.8, -0.2) rectangle (7.2, 0.2);

不同的正则形式意味着, 把奇异值吸收到附近张量的不同方式.

左正则形式
^^^^^^^^^^

注意这里的箭头不表示先按照 Vidal 形式 做分解, 然后完成吸收操作. 实际情况是, 先确定吸收方式, 然后在做第一步分解的时候, 顺便吸收到右边, 因此, 第一步 SVD 分解后, 左张量是满足正则条件的, 而右张量 (包括位点 2 和 3) 由于吸收了奇异值而不再满足. 这时再做第二步分解, 第二步分解的对象是已经吸收了的. 因此一定可以得到左边是正则的, 这也就表示第二步得到的左张量仍然是正则的 (包括位点 2). 位点三其实相当于吸收了所有步造成的非正则性.

.. tikz::
    \draw[line width=1pt] (0, 0) -- (4, 0);
    \draw[line width=1pt] (0, 0) -- (0, 1);
    \draw[line width=1pt] (2, 0) -- (2, 1);
    \draw[line width=1pt] (4, 0) -- (4, 1);
    \filldraw [fill=black!40, draw=black] (0, 0) circle (0.2) node {1};
    \filldraw [fill=black!40, draw=black] (2, 0) circle (0.2) node {2};
    \filldraw [fill=black!40, draw=black] (4, 0) circle (0.2) node {3};
    \draw[line width=1pt,->] (1.5, 0) ++ (135:0.5) arc (135:45:0.5);
    \draw[line width=1pt,->] (3.5, 0) ++ (135:0.5) arc (135:45:0.5);
    \filldraw [fill=black!20!yellow!20, draw=black, rotate around={45:(1, 0)}] (0.8, -0.2) rectangle (1.2, 0.2);
    \filldraw [fill=black!20!yellow!20, draw=black, rotate around={45:(3, 0)}] (2.8, -0.2) rectangle (3.2, 0.2);

在这个形式, 所有张量从 **左边** 和自己缩并都得到单位矩阵

.. tikz::
    \draw[line width=1pt] (0, 0) -- (0, 1);
    \draw[line width=1pt] (0, 1) -- (1, 1) node[right] {$i$};
    \draw[line width=1pt] (0, 0) -- (1, 0) node[right] {$j$};
    \filldraw [fill=black!40, draw=black] (0, 0) circle (0.2) node {1};
    \filldraw [fill=black!40, draw=black] (0, 1) circle (0.2) node {1};
    \node[right] at (2, 0) {$= \delta_{ij}$};
    \begin{scope}[shift={(5, 0)}]
        \draw[line width=1pt] (0, 0) -- (-1, 0) -- (-1, 1) -- (0, 1);
        \draw[line width=1pt] (0, 0) -- (0, 1);
        \draw[line width=1pt] (0, 1) -- (1, 1) node[right] {$i$};
        \draw[line width=1pt] (0, 0) -- (1, 0) node[right] {$j$};
        \filldraw [fill=black!40, draw=black] (0, 0) circle (0.2) node {2};
        \filldraw [fill=black!40, draw=black] (0, 1) circle (0.2) node {2};
        \node[right] at (2, 0) {$= \delta_{ij}, \quad\text{etc}$};
    \end{scope}

右正则形式
^^^^^^^^^^

.. tikz::
    \draw[line width=1pt] (0, 0) -- (4, 0);
    \draw[line width=1pt] (0, 0) -- (0, 1);
    \draw[line width=1pt] (2, 0) -- (2, 1);
    \draw[line width=1pt] (4, 0) -- (4, 1);
    \filldraw [fill=black!40, draw=black] (0, 0) circle (0.2) node {1};
    \filldraw [fill=black!40, draw=black] (2, 0) circle (0.2) node {2};
    \filldraw [fill=black!40, draw=black] (4, 0) circle (0.2) node {3};
    \draw[line width=1pt,<-] (0.5, 0) ++ (135:0.5) arc (135:45:0.5);
    \draw[line width=1pt,<-] (2.5, 0) ++ (135:0.5) arc (135:45:0.5);
    \filldraw [fill=black!20!yellow!20, draw=black, rotate around={45:(1, 0)}] (0.8, -0.2) rectangle (1.2, 0.2);
    \filldraw [fill=black!20!yellow!20, draw=black, rotate around={45:(3, 0)}] (2.8, -0.2) rectangle (3.2, 0.2);

在这个形式, 所有张量从 **右边** 和自己缩并都得到单位矩阵

.. tikz::
    \draw[line width=1pt] (0, 0) -- (0, 1);
    \draw[line width=1pt] (0, 1) -- (-1, 1) node[left] {$i$};
    \draw[line width=1pt] (0, 0) -- (-1, 0) node[left] {$j$};
    \filldraw [fill=black!40, draw=black] (0, 0) circle (0.2) node {3};
    \filldraw [fill=black!40, draw=black] (0, 1) circle (0.2) node {3};
    \node[right] at (1, 0) {$= \delta_{ij}$};
    \begin{scope}[shift={(5, 0)}]
        \draw[line width=1pt] (0, 0) -- (1, 0) -- (1, 1) -- (0, 1);
        \draw[line width=1pt] (0, 0) -- (0, 1);
        \draw[line width=1pt] (0, 1) -- (-1, 1) node[left] {$i$};
        \draw[line width=1pt] (0, 0) -- (-1, 0) node[left] {$j$};
        \filldraw [fill=black!40, draw=black] (0, 0) circle (0.2) node {2};
        \filldraw [fill=black!40, draw=black] (0, 1) circle (0.2) node {2};
        \node[right] at (2, 0) {$= \delta_{ij}, \quad\text{etc}$};
    \end{scope}

混合正则形式
^^^^^^^^^^^^

例如, 关于位点 2 的混合正则形式, 也称为 DMRG 形式. 这里似乎应该是把所有奇异值吸收到位点 2, 才能保证左边和右边都是正则的. 但是视频中的箭头并不是这么画的. [疑问??]

.. tikz::
    \draw[line width=1pt] (0, 0) -- (4, 0);
    \draw[line width=1pt] (0, 0) -- (0, 1);
    \draw[line width=1pt] (2, 0) -- (2, 1);
    \draw[line width=1pt] (4, 0) -- (4, 1);
    \filldraw [fill=black!40, draw=black] (0, 0) circle (0.2) node {1};
    \filldraw [fill=black!40, draw=black] (2, 0) circle (0.2) node {2};
    \filldraw [fill=black!40, draw=black] (4, 0) circle (0.2) node {3};
    \draw[line width=1pt,->] (1.5, 0) ++ (135:0.5) arc (135:45:0.5);
    \draw[line width=1pt,<-] (2.5, 0) ++ (135:0.5) arc (135:45:0.5);
    \filldraw [fill=black!20!yellow!20, draw=black, rotate around={45:(1, 0)}] (0.8, -0.2) rectangle (1.2, 0.2);
    \filldraw [fill=black!20!yellow!20, draw=black, rotate around={45:(3, 0)}] (2.8, -0.2) rectangle (3.2, 0.2);

在这个形式, 在这个位点左边的所有张量是正交的, 在这个位点右边的所有张量也是正交的.

.. tikz::
    \draw[line width=1pt] (0, 0) -- (0, 1);
    \draw[line width=1pt] (0, 1) -- (1, 1) node[right] {$i$};
    \draw[line width=1pt] (0, 0) -- (1, 0) node[right] {$j$};
    \filldraw [fill=black!40, draw=black] (0, 0) circle (0.2) node {1};
    \filldraw [fill=black!40, draw=black] (0, 1) circle (0.2) node {1};
    \node[right] at (2, 0) {$= \delta_{ij}$};
    \begin{scope}[shift={(5, 0)}]
        \draw[line width=1pt] (0, 0) -- (0, 1);
        \draw[line width=1pt] (0, 1) -- (-1, 1) node[left] {$i$};
        \draw[line width=1pt] (0, 0) -- (-1, 0) node[left] {$j$};
        \filldraw [fill=black!40, draw=black] (0, 0) circle (0.2) node {3};
        \filldraw [fill=black!40, draw=black] (0, 1) circle (0.2) node {3};
        \node[right] at (1, 0) {$= \delta_{ij}$};
    \end{scope}

矩阵乘积算符
------------

一个一般的作用于 :math:`l` 个位点的算符可以写为

.. math::
    O_{n_1'n_2'\cdots n_l'}^{n_1n_2\cdots n_l} = \sum_{i, i'} W^{n_1n_1'}_{i_1} W^{n_2n_2'}_{i_1i_2} \cdots W^{n_ln_l'}_{i_{l-1}}

其中每一个张量 :math:`W` 都有对应左矢和右矢的物理指标. 图形表示为

.. tikz::
    \draw[line width=5pt] (0, 0) -- (2, 0);
    \draw[line width=1pt] (0, 0) -- (0, 1);
    \draw[line width=1pt] (1, 0) -- (1, 1);
    \draw[line width=1pt] (2, 0) -- (2, 1);
    \draw[line width=1pt] (0, 0) -- (0, -1);
    \draw[line width=1pt] (1, 0) -- (1, -1);
    \draw[line width=1pt] (2, 0) -- (2, -1);
    \node at (3, 0) {$=$};
    \draw[line width=1pt] (4, 0) -- (6, 0);
    \draw[line width=1pt] (4, 0) -- (4, 1);
    \draw[line width=1pt] (6, 0) -- (6, 1);
    \draw[line width=1pt] (5, 0) -- (5, 1);
    \draw[line width=1pt] (4, 0) -- (4, -1);
    \draw[line width=1pt] (6, 0) -- (6, -1);
    \draw[line width=1pt] (5, 0) -- (5, -1);
    \filldraw [fill=black!40, draw=black] (4, 0) circle (0.2);
    \filldraw [fill=black!40, draw=black] (5, 0) circle (0.2);
    \filldraw [fill=black!40, draw=black] (6, 0) circle (0.2);

这称为矩阵乘积算符 (MPO).

典型的矩阵乘积算符
^^^^^^^^^^^^^^^^^^

态的纠缠是比较自然的概念. 对于算符则不是那么明显. 因此这里举例说明什么是算符的纠缠. 以海森堡哈密顿量为例

.. math::
    H = \sum_{\langle i j \rangle} S_i \cdot S_j

其中 :math:`\langle i j \rangle` 表示相邻的位点. 下面考虑的问题是, 作为一个 MPO 它的键维度是多少? 图形表示为

.. tikz::
    \draw[line width=1pt] (4, 0) -- (7, 0);
    \draw[line width=1pt] (4, -1) -- (4, 1);
    \draw[line width=1pt] (5, -1) -- (5, 1);
    \draw[line width=1pt] (6, -1) -- (6, 1);
    \draw[line width=1pt] (7, -1) -- (7, 1);
    \filldraw [fill=black!40, draw=black] (4, 0) circle (0.2);
    \filldraw [fill=black!40, draw=black] (5, 0) circle (0.2);
    \filldraw [fill=black!40, draw=black] (6, 0) circle (0.2);
    \filldraw [fill=black!40, draw=black] (7, 0) circle (0.2);
    \draw[line width=1pt,dashed] (5.5, -1) -- (5.5, 1);
    \node[below] at (4.5, -1) {$L$};
    \node[below] at (6.5, -1) {$R$};

考虑中间那个线的键维度. 它把系统分为两部分. 这个键把两部分的算符连接起来. 按照这种将算符分为两部分的方法, 哈密顿量可以写为

.. math::
    H = H_L \otimes \bm{1}_R + \bm{1}_L \otimes H_R + \sum_{\alpha =x,y,z} S_2^\alpha \cdot S_3^\alpha

因此这是五项的和, 每项是一个乘积. 因此中间的键的键维度是 5.

如果一个哈密顿量, 仅仅包含两项, 一项作用于位点 1, 第二项作用于位点 2, 那么键维度就是 2.

矩阵乘积算符作用于矩阵乘积态
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

图形表示为

.. tikz::
    \draw[line width=1pt] (0, 2) -- (2, 2);
    \draw[line width=1pt] (0, 1.6) -- (0, 2.5);
    \draw[line width=1pt] (1, 1.6) -- (1, 2.5);
    \draw[line width=1pt] (2, 1.6) -- (2, 2.5);
    \draw[line width=1pt] (0, 1) -- (2, 1);
    \draw[line width=1pt] (0, 1.4) -- (0, 1);
    \draw[line width=1pt] (1, 1.4) -- (1, 1);
    \draw[line width=1pt] (2, 1.4) -- (2, 1);
    \filldraw [fill=black!40, draw=black] (0, 1) circle (0.2);
    \filldraw [fill=black!40, draw=black] (1, 1) circle (0.2);
    \filldraw [fill=black!40, draw=black] (2, 1) circle (0.2);
    \filldraw [fill=black!40, draw=black] (0, 2) circle (0.2);
    \filldraw [fill=black!40, draw=black] (1, 2) circle (0.2);
    \filldraw [fill=black!40, draw=black] (2, 2) circle (0.2);
    \node[left] at (-0.2, 1) {MPS};
    \node[left] at (-0.2, 2) {MPO};
    \node[above] at (0.5, 1) {$M_1$};
    \node[above] at (0.5, 2) {$M_2$};
    \node at (3, 1.5) {$=$};
    \begin{scope}[shift={(5, 0)}]
        \draw[line width=1pt] (0, 2) -- (2, 2);
        \draw[line width=1pt] (0, 1) -- (0, 2.5);
        \draw[line width=1pt] (1, 1) -- (1, 2.5);
        \draw[line width=1pt] (2, 1) -- (2, 2.5);
        \draw[line width=1pt] (0, 1) -- (2, 1);
        \filldraw [fill=black!40, draw=black] (0, 1) circle (0.2);
        \filldraw [fill=black!40, draw=black] (1, 1) circle (0.2);
        \filldraw [fill=black!40, draw=black] (2, 1) circle (0.2);
        \filldraw [fill=black!40, draw=black] (0, 2) circle (0.2);
        \filldraw [fill=black!40, draw=black] (1, 2) circle (0.2);
        \filldraw [fill=black!40, draw=black] (2, 2) circle (0.2);
    \end{scope}
    \node at (3, -0.5) {$=$};
    \begin{scope}[shift={(5, -2)}]
        \draw[line width=1pt] (0, 1) -- (0, 1.5);
        \draw[line width=1pt] (1, 1) -- (1, 1.5);
        \draw[line width=1pt] (2, 1) -- (2, 1.5);
        \draw[line width=1pt] (0, 1) -- (2, 1);
        \filldraw [fill=black!40, draw=black] (0, 1) circle (0.2);
        \filldraw [fill=black!40, draw=black] (1, 1) circle (0.2);
        \filldraw [fill=black!40, draw=black] (2, 1) circle (0.2);
        \node[right] at (2.3, 1) {MPS};
        \draw[->] (0.5, 0.5) -- (0.5, 0.8);
        \node[below] at (0.5, 0.5) {$M_1\times M_2$};
    \end{scope}

即, 矩阵乘积算符作用于矩阵乘积态, 得到的新的矩阵乘积态的键维度是原来的算符和态的键维度的乘积.

矩阵乘积态压缩
--------------

由于许多操作会提升键维度, 因此需要以较低的键维度对 MPS 做近似, 称为压缩.

SVD
^^^

SVD 压缩是将一般的 MPS 写成 Vidal 规范形式, 然后每个键都包含奇异值. 取有限个奇异值. 假设原来有 :math:`M_1` 个奇异值, 当只取 :math:`M_2` 个奇异值时, 就把键维度从 :math:`M_1` 改成了 :math:`M_2`. 在这种方式中, 每个位点都独立压缩, 它的压缩方式和其他位点的新信息无关. 因此这称为局域更新, 不是最优的.

变分压缩
^^^^^^^^

假设 :math:`\Psi` 是原来的 MPS, :math:`\Phi` 是新的 MPS, 则需要求解以下最小值问题 (其中等号不是指两边的量相等. 而是因为我们不关心等号两边的量, 而只关心在 :math:`\Phi` 取何值时那个量最小. 等号表示得到这个最小值时的 :math:`\Phi` 值是相等的[??])

.. math::
    \min_{\Phi} \langle \Psi - \Phi | \Psi - \Phi \rangle = \min_{\Phi}  [-2\langle \Phi|\Psi\rangle + \langle \Phi|\Phi\rangle]

图形表示为要最小化下面这个线性项和二次项之和, 因为变量是 :math:`\Phi` (用浅色表示), 因此这里的线性和二次都是相对于这一项而言的.

.. tikz::
    \node[left] at (0, 1.5) {-2};
    \draw[line width=1pt] (0, 2) -- (2, 2);
    \draw[line width=1pt] (0, 1) -- (2, 1);
    \draw[line width=1pt] (0, 2) -- (0, 1);
    \draw[line width=1pt] (1, 2) -- (1, 1);
    \draw[line width=1pt] (2, 2) -- (2, 1);
    \filldraw [fill=black!20, draw=black] (0, 1) circle (0.2) node {\small 1};
    \filldraw [fill=black!20, draw=black] (1, 1) circle (0.2) node {\small 2};
    \filldraw [fill=black!20, draw=black] (2, 1) circle (0.2) node {\small 3};
    \filldraw [fill=black!40, draw=black] (0, 2) circle (0.2);
    \filldraw [fill=black!40, draw=black] (1, 2) circle (0.2);
    \filldraw [fill=black!40, draw=black] (2, 2) circle (0.2);
    \begin{scope}[shift={(5, 0)}]
        \draw[line width=1pt] (0, 2) -- (2, 2);
        \draw[line width=1pt] (0, 1) -- (2, 1);
        \draw[line width=1pt] (0, 2) -- (0, 1);
        \draw[line width=1pt] (1, 2) -- (1, 1);
        \draw[line width=1pt] (2, 2) -- (2, 1);
        \filldraw [fill=black!20, draw=black] (0, 1) circle (0.2) node {\small 1};
        \filldraw [fill=black!20, draw=black] (1, 1) circle (0.2) node {\small 2};
        \filldraw [fill=black!20, draw=black] (2, 1) circle (0.2) node {\small 3};
        \filldraw [fill=black!20, draw=black] (0, 2) circle (0.2) node {\small 1};
        \filldraw [fill=black!20, draw=black] (1, 2) circle (0.2) node {\small 2};
        \filldraw [fill=black!20, draw=black] (2, 2) circle (0.2) node {\small 3};
    \end{scope}

数值上, 为了求解最小化问题, 我们求导数, 然后沿着使导数变小的方向修正自变量.

梯度算法
^^^^^^^^

最小化一个量, 即沿着它的导数, 直到导数消失. 图形表示为

.. tikz::
    \draw[line width=1pt] (0, 2) -- (2, 2);
    \draw[line width=1pt] (0, 1) -- (2, 1);
    \draw[line width=1pt] (0, 2) -- (0, 1);
    \draw[line width=1pt] (1, 2) -- (1, 1);
    \draw[line width=1pt] (2, 2) -- (2, 1);
    \filldraw [fill=black!20, draw=black] (0, 1) circle (0.2) node {\small 1};
    \filldraw [fill=black!20, draw=black] (1, 1) circle (0.2) node {\small 2};
    \filldraw [fill=black!20, draw=black] (2, 1) circle (0.2) node {\small 3};
    \filldraw [fill=black!40, draw=black] (0, 2) circle (0.2);
    \filldraw [fill=black!40, draw=black] (1, 2) circle (0.2);
    \filldraw [fill=black!40, draw=black] (2, 2) circle (0.2);
    \node[right] at (0.25, 0.2) {线性};
    \draw[line width=1pt] (1.5, 0.2) -- (2.1, 0.2);
    \draw[line width=1pt] (1.8, 0.2) -- (1.8, 0.5);
    \filldraw [fill=black!20, draw=black] (1.8, 0.2) circle (0.15) node {\small 2};
    \node[left] at (-0.3, 1.5) {$\frac{\large \partial}{\large \partial\quad}$};
    \draw[line width=1pt] (-0.9, 1.2) -- (-0.3, 1.2);
    \draw[line width=1pt] (-0.6, 1.2) -- (-0.6, 1.5);
    \filldraw [fill=black!20, draw=black] (-0.6, 1.2) circle (0.15) node {\small 2};
    \begin{scope}[shift={(5, 0)}]
        \node[left] at (-1, 1.5) {=};
        \draw[line width=1pt] (0, 2) -- (2, 2);
        \draw[line width=1pt] (0, 1) -- (0.8, 1);
        \draw[line width=1pt] (2, 1) -- (1.2, 1);
        \draw[line width=1pt] (0, 2) -- (0, 1);
        \draw[line width=1pt] (1, 2) -- (1, 1.2);
        \draw[line width=1pt] (2, 2) -- (2, 1);
        \filldraw [fill=black!20, draw=black] (0, 1) circle (0.2) node {\small 1};
        \filldraw [fill=black!20, draw=black] (2, 1) circle (0.2) node {\small 3};
        \filldraw [fill=black!40, draw=black] (0, 2) circle (0.2);
        \filldraw [fill=black!40, draw=black] (1, 2) circle (0.2);
        \filldraw [fill=black!40, draw=black] (2, 2) circle (0.2);
    \end{scope}

类似地对于二次项

.. tikz::
    \draw[line width=1pt] (0, 2) -- (2, 2);
    \draw[line width=1pt] (0, 1) -- (2, 1);
    \draw[line width=1pt] (0, 2) -- (0, 1);
    \draw[line width=1pt] (1, 2) -- (1, 1);
    \draw[line width=1pt] (2, 2) -- (2, 1);
    \filldraw [fill=black!20, draw=black] (0, 1) circle (0.2) node {\small 1};
    \filldraw [fill=black!20, draw=black] (1, 1) circle (0.2) node {\small 2};
    \filldraw [fill=black!20, draw=black] (2, 1) circle (0.2) node {\small 3};
    \filldraw [fill=black!20, draw=black] (0, 2) circle (0.2) node {\small 1};
    \filldraw [fill=black!20, draw=black] (1, 2) circle (0.2) node {\small 2};
    \filldraw [fill=black!20, draw=black] (2, 2) circle (0.2) node {\small 3};
    \node[right] at (0.25, 0.2) {二次};
    \draw[line width=1pt] (1.5, 0.2) -- (2.1, 0.2);
    \draw[line width=1pt] (1.8, 0.2) -- (1.8, 0.5);
    \filldraw [fill=black!20, draw=black] (1.8, 0.2) circle (0.15) node {\small 2};
    \node[left] at (-0.3, 1.5) {$\frac{\large \partial}{\large \partial\quad}$};
    \draw[line width=1pt] (-0.9, 1.2) -- (-0.3, 1.2);
    \draw[line width=1pt] (-0.6, 1.2) -- (-0.6, 1.5);
    \filldraw [fill=black!20, draw=black] (-0.6, 1.2) circle (0.15) node {\small 2};
    \begin{scope}[shift={(5, 0)}]
        \node[left] at (-1, 1.5) {$= 2\times$};
        \draw[line width=1pt] (0, 2) -- (2, 2);
        \draw[line width=1pt] (0, 1) -- (0.8, 1);
        \draw[line width=1pt] (2, 1) -- (1.2, 1);
        \draw[line width=1pt] (0, 2) -- (0, 1);
        \draw[line width=1pt] (1, 2) -- (1, 1.2);
        \draw[line width=1pt] (2, 2) -- (2, 1);
        \filldraw [fill=black!20, draw=black] (0, 1) circle (0.2) node {\small 1};
        \filldraw [fill=black!20, draw=black] (2, 1) circle (0.2) node {\small 3};
        \filldraw [fill=black!20, draw=black] (0, 2) circle (0.2) node {\small 1};
        \filldraw [fill=black!20, draw=black] (1, 2) circle (0.2) node {\small 2};
        \filldraw [fill=black!20, draw=black] (2, 2) circle (0.2) node {\small 3};
    \end{scope}

其中等号右边的量具有三个指标. 因此上述式子的和可以表示为张量 :math:`g[nij]`. 要优化的量 :math:`A_{ij}^n` 也具有三个指标, 可以写为 :math:`a[nij]`. 梯度算法的一步更新就可以写为

.. math::
    a[nij] \to a[nij] + \epsilon g[nij]

扫描算法 (DMRG 方式)
^^^^^^^^^^^^^^^^^^^^

DMRG 基于下述观察: 显式地对这个梯度求值, 然后更新直到收敛, 并不是必要的, 如果采用混合正则形式. 把 :math:`A_{ij}^n` 看成一个矢量 :math:`a[nij]`, 即假定所有指标扁平化为一个指标. 那么

.. tikz::
    \draw[line width=1pt] (0, 2) -- (2, 2);
    \draw[line width=1pt] (0, 1) -- (2, 1);
    \draw[line width=1pt] (0, 2) -- (0, 1);
    \draw[line width=1pt] (1, 2) -- (1, 1);
    \draw[line width=1pt] (2, 2) -- (2, 1);
    \filldraw [fill=black!20, draw=black] (0, 1) circle (0.2) node {\small 1};
    \filldraw [fill=black!20!purple!20, draw=black] (1, 1) circle (0.2) node {\small 2};
    \filldraw [fill=black!20, draw=black] (2, 1) circle (0.2) node {\small 3};
    \filldraw [fill=black!40, draw=black] (0, 2) circle (0.2);
    \filldraw [fill=black!40, draw=black] (1, 2) circle (0.2);
    \filldraw [fill=black!40, draw=black] (2, 2) circle (0.2);
    \begin{scope}[shift={(6, 0)}]
        \node[left] at (0, 1.5) {$=b^T a$ 其中 $b^T=$};
        \draw[line width=1pt] (0, 2) -- (2, 2);
        \draw[line width=1pt] (0, 1) -- (0.8, 1);
        \draw[line width=1pt] (2, 1) -- (1.2, 1);
        \draw[line width=1pt] (0, 2) -- (0, 1);
        \draw[line width=1pt] (1, 2) -- (1, 1.2);
        \draw[line width=1pt] (2, 2) -- (2, 1);
        \filldraw [fill=black!20, draw=black] (0, 1) circle (0.2) node {\small 1};
        \filldraw [fill=black!20, draw=black] (2, 1) circle (0.2) node {\small 3};
        \filldraw [fill=black!40, draw=black] (0, 2) circle (0.2);
        \filldraw [fill=black!40, draw=black] (1, 2) circle (0.2);
        \filldraw [fill=black!40, draw=black] (2, 2) circle (0.2);
    \end{scope}

.. tikz::
    \draw[line width=1pt] (0, 2) -- (2, 2);
    \draw[line width=1pt] (0, 1) -- (2, 1);
    \draw[line width=1pt] (0, 2) -- (0, 1);
    \draw[line width=1pt] (1, 2) -- (1, 1);
    \draw[line width=1pt] (2, 2) -- (2, 1);
    \filldraw [fill=black!20, draw=black] (0, 1) circle (0.2) node {\small 1};
    \filldraw [fill=black!20!purple!20, draw=black] (1, 1) circle (0.2) node {\small 2};
    \filldraw [fill=black!20, draw=black] (2, 1) circle (0.2) node {\small 3};
    \filldraw [fill=black!20, draw=black] (0, 2) circle (0.2) node {\small 1};
    \filldraw [fill=black!20!purple!20, draw=black] (1, 2) circle (0.2) node {\small 2};
    \filldraw [fill=black!20, draw=black] (2, 2) circle (0.2) node {\small 3};
    \begin{scope}[shift={(6.5, 0)}]
        \node[left] at (0, 1.5) {$= a^TMa$ 其中 $M=$};
        \draw[line width=1pt] (0, 1) -- (0.8, 1);
        \draw[line width=1pt] (2, 1) -- (1.2, 1);
        \draw[line width=1pt] (0, 2) -- (0.8, 2);
        \draw[line width=1pt] (2, 2) -- (1.2, 2);
        \draw[line width=1pt] (0, 2) -- (0, 1);
        \draw[line width=1pt] (1, 1.8) -- (1, 1.2);
        \draw[line width=1pt] (2, 2) -- (2, 1);
        \filldraw [fill=black!20, draw=black] (0, 1) circle (0.2) node {\small 1};
        \filldraw [fill=black!20, draw=black] (2, 1) circle (0.2) node {\small 3};
        \filldraw [fill=black!20, draw=black] (0, 2) circle (0.2) node {\small 1};
        \filldraw [fill=black!20, draw=black] (2, 2) circle (0.2) node {\small 3};
    \end{scope}

最小化问题也就可以写为

.. math::
    \min_{a} (a^TMa - b^Ta) \Rightarrow Ma=b

等价于求解关于 :math:`a` 的线性方程组 (最小二乘).

最小化需要依次对每个位点求解 :math:`Ma=b`.

.. tikz::
    \draw[line width=1pt] (0, 1) -- (2, 1);
    \draw[line width=1pt] (0, 2) -- (0, 1);
    \draw[line width=1pt] (1, 2) -- (1, 1);
    \draw[line width=1pt] (2, 2) -- (2, 1);
    \filldraw [fill=black!20!purple!20, draw=black] (0, 1) circle (0.2) node {\small 1};
    \filldraw [fill=black!20, draw=black] (1, 1) circle (0.2) node {\small 2};
    \filldraw [fill=black!20, draw=black] (2, 1) circle (0.2) node {\small 3};
    \begin{scope}[shift={(4, 0)}]
        \node[left] at (0, 1.5) {$M=$};
        \draw[line width=1pt] (2, 1) -- (0.2, 1);
        \draw[line width=1pt] (2, 2) -- (0.2, 2);
        \draw[line width=1pt] (0, 1.8) -- (0, 1.2);
        \draw[line width=1pt] (1, 2) -- (1, 1);
        \draw[line width=1pt] (2, 2) -- (2, 1);
        \filldraw [fill=black!20, draw=black] (1, 1) circle (0.2) node {\small 2};
        \filldraw [fill=black!20, draw=black] (2, 1) circle (0.2) node {\small 3};
        \filldraw [fill=black!20, draw=black] (1, 2) circle (0.2) node {\small 2};
        \filldraw [fill=black!20, draw=black] (2, 2) circle (0.2) node {\small 3};
    \end{scope}
    \begin{scope}[shift={(8, 0)}]
        \node[left] at (0, 1.5) {$b=$};
        \draw[line width=1pt] (0, 2) -- (2, 2);
        \draw[line width=1pt] (2, 1) -- (0.2, 1);
        \draw[line width=1pt] (0, 2) -- (0, 1.2);
        \draw[line width=1pt] (1, 2) -- (1, 1);
        \draw[line width=1pt] (2, 2) -- (2, 1);
        \filldraw [fill=black!20, draw=black] (1, 1) circle (0.2) node {\small 2};
        \filldraw [fill=black!20, draw=black] (2, 1) circle (0.2) node {\small 3};
        \filldraw [fill=black!40, draw=black] (0, 2) circle (0.2);
        \filldraw [fill=black!40, draw=black] (1, 2) circle (0.2);
        \filldraw [fill=black!40, draw=black] (2, 2) circle (0.2);
    \end{scope}

到第二步时, 注意标为红色的节点表示采用了之前更新过的张量. 因此每个位点的压缩是相互依赖的.


.. tikz::
    \draw[line width=1pt] (0, 1) -- (2, 1);
    \draw[line width=1pt] (0, 2) -- (0, 1);
    \draw[line width=1pt] (1, 2) -- (1, 1);
    \draw[line width=1pt] (2, 2) -- (2, 1);
    \filldraw [fill=black!20!purple!20, draw=black] (0, 1) circle (0.2) node {\small 1};
    \filldraw [fill=black!20!purple!20, draw=black] (1, 1) circle (0.2) node {\small 2};
    \filldraw [fill=black!20, draw=black] (2, 1) circle (0.2) node {\small 3};
    \begin{scope}[shift={(4, 0)}]
        \node[left] at (0, 1.5) {$M=$};
        \draw[line width=1pt] (0, 1) -- (0.8, 1);
        \draw[line width=1pt] (2, 1) -- (1.2, 1);
        \draw[line width=1pt] (0, 2) -- (0.8, 2);
        \draw[line width=1pt] (2, 2) -- (1.2, 2);
        \draw[line width=1pt] (0, 2) -- (0, 1);
        \draw[line width=1pt] (1, 1.8) -- (1, 1.2);
        \draw[line width=1pt] (2, 2) -- (2, 1);
        \filldraw [fill=black!20!purple!20, draw=black] (0, 1) circle (0.2) node {\small 1};
        \filldraw [fill=black!20, draw=black] (2, 1) circle (0.2) node {\small 3};
        \filldraw [fill=black!20!purple!20, draw=black] (0, 2) circle (0.2) node {\small 1};
        \filldraw [fill=black!20, draw=black] (2, 2) circle (0.2) node {\small 3};
    \end{scope}
    \begin{scope}[shift={(8, 0)}]
        \node[left] at (0, 1.5) {$b=$};
        \draw[line width=1pt] (0, 2) -- (2, 2);
        \draw[line width=1pt] (0, 1) -- (0.8, 1);
        \draw[line width=1pt] (2, 1) -- (1.2, 1);
        \draw[line width=1pt] (0, 2) -- (0, 1);
        \draw[line width=1pt] (1, 2) -- (1, 1.2);
        \draw[line width=1pt] (2, 2) -- (2, 1);
        \filldraw [fill=black!20!purple!20, draw=black] (0, 1) circle (0.2) node {\small 1};
        \filldraw [fill=black!20, draw=black] (2, 1) circle (0.2) node {\small 3};
        \filldraw [fill=black!40, draw=black] (0, 2) circle (0.2);
        \filldraw [fill=black!40, draw=black] (1, 2) circle (0.2);
        \filldraw [fill=black!40, draw=black] (2, 2) circle (0.2);
    \end{scope}

第三步为

.. tikz::
    \draw[line width=1pt] (0, 1) -- (2, 1);
    \draw[line width=1pt] (0, 2) -- (0, 1);
    \draw[line width=1pt] (1, 2) -- (1, 1);
    \draw[line width=1pt] (2, 2) -- (2, 1);
    \filldraw [fill=black!20!purple!20, draw=black] (0, 1) circle (0.2) node {\small 1};
    \filldraw [fill=black!20!purple!20, draw=black] (1, 1) circle (0.2) node {\small 2};
    \filldraw [fill=black!20!purple!20, draw=black] (2, 1) circle (0.2) node {\small 3};
    \begin{scope}[shift={(4, 0)}]
        \node[left] at (0, 1.5) {$M=$};
        \draw[line width=1pt] (1.8, 1) -- (0, 1);
        \draw[line width=1pt] (1.8, 2) -- (0, 2);
        \draw[line width=1pt] (2, 1.8) -- (2, 1.2);
        \draw[line width=1pt] (1, 2) -- (1, 1);
        \draw[line width=1pt] (0, 2) -- (0, 1);
        \filldraw [fill=black!20!purple!20, draw=black] (1, 1) circle (0.2) node {\small 2};
        \filldraw [fill=black!20!purple!20, draw=black] (0, 1) circle (0.2) node {\small 1};
        \filldraw [fill=black!20!purple!20, draw=black] (1, 2) circle (0.2) node {\small 2};
        \filldraw [fill=black!20!purple!20, draw=black] (0, 2) circle (0.2) node {\small 1};
    \end{scope}
    \begin{scope}[shift={(8, 0)}]
        \node[left] at (0, 1.5) {$b=$};
        \draw[line width=1pt] (0, 2) -- (2, 2);
        \draw[line width=1pt] (1.8, 1) -- (0, 1);
        \draw[line width=1pt] (2, 2) -- (2, 1.2);
        \draw[line width=1pt] (1, 2) -- (1, 1);
        \draw[line width=1pt] (0, 2) -- (0, 1);
        \filldraw [fill=black!20!purple!20, draw=black] (1, 1) circle (0.2) node {\small 2};
        \filldraw [fill=black!20!purple!20, draw=black] (0, 1) circle (0.2) node {\small 1};
        \filldraw [fill=black!40, draw=black] (0, 2) circle (0.2);
        \filldraw [fill=black!40, draw=black] (1, 2) circle (0.2);
        \filldraw [fill=black!40, draw=black] (2, 2) circle (0.2);
    \end{scope}

而在混合正则形式, 根本不需要求解线性方程, :math:`Ma=b \Rightarrow a = b`. 如果在位点 1 选择关于位点 1 的混合正则形式, 那么按照之前的正交条件, 位点 1 的 :math:`M` 就直接是 :math:`\delta_{ij}` 其中 :math:`ij` 分别代表三个被压缩的指标. :math:`M` 中一共 6 个指标.

SVD 和变分压缩的比较
^^^^^^^^^^^^^^^^^^^^

在变分算法中, 每个位点的优化依赖于所有其他位点. 即采用 "完全的环境". SVD 压缩称为局域更新. 不是很理想但是速度快. 对于矩阵乘积态, 上述两种方式的复杂度是完全一样的, 仅仅是迭代数的不同. 对一般的张量网络, (例如 PEPS), 完全环境可能需要更多资源来计算, 或者需要进一步的近似.


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

张量网络态初步2
===============

能量优化
--------

.. math::
    \min_{\Psi} [\langle \Psi|H|\Psi \rangle - E \langle \Psi|\Psi\rangle ]

注意这里优化是优化能量 :math:`\langle \Psi|H|\Psi \rangle`, 参数 :math:`E` 相当于拉格朗日乘子, 附加条件是归一化条件 :math:`\langle\Psi|\Psi\rangle = 1`. 这是双线性形式, 和压缩问题类似. 解决此问题的常用算法:

- DMRG: 全环境的变分扫描
- imag. TEBD: 局域更新, 虚时时间演化 + SVD 压缩

DMRG 能量优化
^^^^^^^^^^^^^

将下式对第二位点求导, 并令这个导数为零

.. math::
    \langle \Psi|H|\Psi \rangle - E \langle \Psi|\Psi\rangle

图形表示为 (两边都是二次, 所以消去系数 2)

.. tikz::
    \draw[line width=1pt] (0, 0) -- (0.8, 0);
    \draw[line width=1pt] (1.2, 0) -- (2, 0);
    \draw[line width=1pt] (0, 1) -- (2, 1);
    \draw[line width=1pt] (0, 2) -- (2, 2);
    \draw[line width=1pt] (0, 2) -- (0, 0);
    \draw[line width=1pt] (1, 2) -- (1, 0.2);
    \draw[line width=1pt] (2, 2) -- (2, 0);
    \filldraw [fill=black!20, draw=black] (0, 2) circle (0.2) node {\small 1};
    \filldraw [fill=black!20!purple!20, draw=black] (1, 2) circle (0.2) node {\small 2};
    \filldraw [fill=black!20, draw=black] (2, 2) circle (0.2) node {\small 3};
    \filldraw [fill=black!20, draw=black] (0, 0) circle (0.2) node {\small 1};
    \filldraw [fill=black!20, draw=black] (2, 0) circle (0.2) node {\small 3};
    \filldraw [fill=black!40, draw=black] (0, 1) circle (0.2);
    \filldraw [fill=black!40, draw=black] (1, 1) circle (0.2);
    \filldraw [fill=black!40, draw=black] (2, 1) circle (0.2);
    \begin{scope}[shift={(4, 0)}]
        \node[left] at (-0.4, 1) {$-E$};
        \draw[line width=1pt] (2, 1.5) -- (0, 1.5);
        \draw[line width=1pt] (2, 0.5) -- (1.2, 0.5);
        \draw[line width=1pt] (0.8, 0.5) -- (0, 0.5);
        \draw[line width=1pt] (2, 1.5) -- (2, 0.5);
        \draw[line width=1pt] (1, 1.5) -- (1, 0.7);
        \draw[line width=1pt] (0, 1.5) -- (0, 0.5);
        \filldraw [fill=black!20, draw=black] (2, 1.5) circle (0.2) node {\small 3};
        \filldraw [fill=black!20!purple!20, draw=black] (1, 1.5) circle (0.2) node {\small 2};
        \filldraw [fill=black!20, draw=black] (0, 1.5) circle (0.2) node {\small 1};
        \filldraw [fill=black!20, draw=black] (2, 0.5) circle (0.2) node {\small 3};
        \filldraw [fill=black!20, draw=black] (0, 0.5) circle (0.2) node {\small 1};
        \node[left] at (4, 1) {$=0$};
    \end{scope}

在上式中, 各出现两个 1 位点和 3 位点. 如果采用混合正则形式, 两对 1, 3 位点得到单位矩阵. 按照之前的惯例, 位点 2 表示为矢量 :math:`a`, 于是问题变为对每个位点的特征值问题

.. math::
    Ha = Ea

其中 :math:`H` 是 DMRG 的超块哈密顿量

.. tikz::
    \node[left] at (-0.4, 1) {$H=$};
    \draw[line width=1pt] (0, 0) -- (0.8, 0);
    \draw[line width=1pt] (1.2, 0) -- (2, 0);
    \draw[line width=1pt] (0, 1) -- (2, 1);
    \draw[line width=1pt] (0, 2) -- (0.8, 2);
    \draw[line width=1pt] (1.2, 2) -- (2, 2);
    \draw[line width=1pt] (0, 2) -- (0, 0);
    \draw[line width=1pt] (1, 2) -- (1, 0.2);
    \draw[line width=1pt] (2, 2) -- (2, 0);
    \filldraw [fill=black!20, draw=black] (0, 2) circle (0.2) node {\small 1};
    \filldraw [fill=black!20, draw=black] (2, 2) circle (0.2) node {\small 3};
    \filldraw [fill=black!20, draw=black] (0, 0) circle (0.2) node {\small 1};
    \filldraw [fill=black!20, draw=black] (2, 0) circle (0.2) node {\small 3};
    \filldraw [fill=black!40, draw=black] (0, 1) circle (0.2);
    \filldraw [fill=black!40, draw=black] (1, 1) circle (0.2);
    \filldraw [fill=black!40, draw=black] (2, 1) circle (0.2);

时间演化
--------

实数时间演化

.. math::
    |\Psi(\delta t)\rangle = \exp(-\I H \delta t) |\Psi(0)\rangle

虚数时间演化: 将 :math:`\I` 改为 1. 在长时间, 演化会将态带到基态. 如何用矩阵乘积态做时间演化? 简单来说就是把时间演化算符作用到矩阵乘积态上, 得到新的矩阵乘积态. 新的矩阵乘积态会有更大的键维度或者更大的纠缠. 然后可以做一个压缩来控制纠缠的生长.

图形表示为

.. tikz::
    \node[left] at (-0.4, 1) {$1-\mathrm{i}H\delta t = $};
    \draw[line width=1pt] (0, 1) -- (2, 1);
    \draw[line width=1pt] (0, 1.5) -- (0, 0.5);
    \draw[line width=1pt] (1, 1.5) -- (1, 0.5);
    \draw[line width=1pt] (2, 1.5) -- (2, 0.5);
    \filldraw [fill=black!40, draw=black] (0, 1) circle (0.2);
    \filldraw [fill=black!40, draw=black] (1, 1) circle (0.2);
    \filldraw [fill=black!40, draw=black] (2, 1) circle (0.2);

这个算符作用到矩阵乘积态上, 然后经过压缩得到新的态, 然后重复这个过程.

短程 H: Trotter 形式
^^^^^^^^^^^^^^^^^^^^

考虑如下哈密顿量, 注意求和不再只是对临近位点

.. math::
    H = \sum_{ij} S_i \cdot S_j

利用 Trotter 分解, 多个项和的指数等于这些项各自的指数的乘积, 加上一个小的误差项.

.. math::
    \E^{-\delta H} = \E^{-\delta S_1 \cdot S_2} \E^{-\delta S_2 \cdot S_3} \cdots + O(\delta^2)

因此可以对每一对键进行演化

奇偶演化
^^^^^^^^

可以先对偶数键演化, 1-2, 3-4, 5-6. 然后对奇数键演化, 2-3, 4-5 ... 经过这两种演化相当于对整个哈密顿量进行了一次演化. 图形表示为

.. tikz::
    \draw[line width=1pt] (0, 0) -- (6, 0);
    \draw[line width=1pt] (0, 0) -- (0, 4);
    \draw[line width=1pt] (2, 0) -- (2, 4);
    \draw[line width=1pt] (4, 0) -- (4, 4);
    \draw[line width=1pt] (6, 0) -- (6, 4);
    \draw[line width=1pt] (0, 1) -- (2, 1);
    \draw[line width=1pt] (4, 1) -- (6, 1);
    \draw[line width=1pt] (2, 2) -- (4, 2);
    \draw[line width=1pt] (0, 3) -- (2, 3);
    \draw[line width=1pt] (4, 3) -- (6, 3);
    \filldraw [fill=black!40, draw=black] (0, 1) circle (0.2);
    \filldraw [fill=black!40, draw=black] (2, 1) circle (0.2);
    \filldraw [fill=black!40, draw=black] (4, 1) circle (0.2);
    \filldraw [fill=black!40, draw=black] (6, 1) circle (0.2);
    \filldraw [fill=black!40, draw=black] (2, 2) circle (0.2);
    \filldraw [fill=black!40, draw=black] (4, 2) circle (0.2);
    \filldraw [fill=black!40, draw=black] (0, 3) circle (0.2);
    \filldraw [fill=black!40, draw=black] (2, 3) circle (0.2);
    \filldraw [fill=black!40, draw=black] (4, 3) circle (0.2);
    \filldraw [fill=black!40, draw=black] (6, 3) circle (0.2);
    \filldraw [fill=black!20!red!20, draw=black] (0, 0) circle (0.2);
    \filldraw [fill=black!20!red!20, draw=black] (2, 0) circle (0.2);
    \filldraw [fill=black!20!red!20, draw=black] (4, 0) circle (0.2);
    \filldraw [fill=black!20!red!20, draw=black] (6, 0) circle (0.2);
    \filldraw [fill=black!20!yellow!20, draw=black, rotate around={45:(1, 0)}] (0.8, -0.2) rectangle (1.2, 0.2);
    \filldraw [fill=black!20!yellow!20, draw=black, rotate around={45:(3, 0)}] (2.8, -0.2) rectangle (3.2, 0.2);
    \filldraw [fill=black!20!yellow!20, draw=black, rotate around={45:(5, 0)}] (4.8, -0.2) rectangle (5.2, 0.2);
    \node[right] at (8, 1) {$\mathrm{e}^{-\delta S_1\cdot S_2}\mathrm{e}^{-\delta S_3\cdot S_4}$};
    \node[right] at (8, 2) {$\mathrm{e}^{-\delta S_2\cdot S_3}$};
    \node[right] at (8, 3) {$\mathrm{e}^{-\delta S_1\cdot S_2}\mathrm{e}^{-\delta S_3\cdot S_4}$};

时间演化块截断
^^^^^^^^^^^^^^

奇偶演化很容易和 SVD 压缩结合: TEBD (time-evolving block decimation). 每次时间演化将会提升键维度, 而这些提升是对于不相连的键. 因此 SCD 压缩可以独立作用于每一个键. 图形表示为

.. tikz::
    \draw[line width=1pt] (-2, 0) -- (8, 0);
    \draw[line width=1pt] (0, 0) -- (0, 2);
    \draw[line width=1pt] (2, 0) -- (2, 2);
    \draw[line width=1pt] (4, 0) -- (4, 2);
    \draw[line width=1pt] (6, 0) -- (6, 2);
    \draw[line width=1pt] (4, 1) -- (6, 1);
    \draw[line width=1pt] (0, 1) -- (2, 1);
    \filldraw [fill=black!40, draw=black] (0, 1) circle (0.2);
    \filldraw [fill=black!40, draw=black] (2, 1) circle (0.2);
    \filldraw [fill=black!40, draw=black] (4, 1) circle (0.2);
    \filldraw [fill=black!40, draw=black] (6, 1) circle (0.2);
    \filldraw [fill=black!20!red!20, draw=black] (0, 0) circle (0.2);
    \filldraw [fill=black!20!red!20, draw=black] (2, 0) circle (0.2);
    \filldraw [fill=black!20!red!20, draw=black] (4, 0) circle (0.2);
    \filldraw [fill=black!20!red!20, draw=black] (6, 0) circle (0.2);
    \filldraw [fill=black!20!yellow!20, draw=black, rotate around={45:(-1,0)}] (-1.2, -0.2) rectangle (-0.8, 0.2);
    \filldraw [fill=black!20!yellow!20, draw=black, rotate around={45:(1, 0)}] (0.8, -0.2) rectangle (1.2, 0.2);
    \filldraw [fill=black!20!yellow!20, draw=black, rotate around={45:(3, 0)}] (2.8, -0.2) rectangle (3.2, 0.2);
    \filldraw [fill=black!20!yellow!20, draw=black, rotate around={45:(5, 0)}] (4.8, -0.2) rectangle (5.2, 0.2);
    \filldraw [fill=black!20!yellow!20, draw=black, rotate around={45:(7, 0)}] (6.8, -0.2) rectangle (7.2, 0.2);
    \begin{scope}[shift={(0, -3)}]
        \node at (0, 2) {$\downarrow$};
        \node[left] at (-2.4, 0) {SVD};
        \draw[line width=1pt] (-2, 0) -- (4, 0);
        \draw[line width=1pt] (0, 0) -- (0, 1);
        \draw[line width=1pt] (2, 0) -- (2, 1);
        \filldraw [fill=black!20!red!20, draw=black] (-0.3, -0.3) rectangle (2.3, 0.3);
        \filldraw [fill=black!20!yellow!20, draw=black, rotate around={45:(-1,0)}] (-1.2, -0.2) rectangle (-0.8, 0.2);
        \filldraw [fill=black!20!yellow!20, draw=black, rotate around={45:(3, 0)}] (2.8, -0.2) rectangle (3.2, 0.2);
    \end{scope}
    \begin{scope}[shift={(0, -6)}]
        \node at (0, 2) {$\downarrow$};
        \draw[line width=1pt] (-2, 0) -- (8, 0);
        \draw[line width=1pt] (0, 0) -- (0, 1);
        \draw[line width=1pt] (2, 0) -- (2, 1);
        \draw[line width=1pt] (4, 0) -- (4, 1);
        \draw[line width=1pt] (6, 0) -- (6, 1);
        \filldraw [fill=black!20!red!50, draw=black] (0, 0) circle (0.2);
        \filldraw [fill=black!20!red!50, draw=black] (2, 0) circle (0.2);
        \filldraw [fill=black!20!red!20, draw=black] (4, 0) circle (0.2);
        \filldraw [fill=black!20!red!20, draw=black] (6, 0) circle (0.2);
        \filldraw [fill=black!20!yellow!20, draw=black, rotate around={45:(-1,0)}] (-1.2, -0.2) rectangle (-0.8, 0.2);
        \filldraw [fill=black!20!red!50, draw=black, rotate around={45:(1, 0)}] (0.8, -0.2) rectangle (1.2, 0.2);
        \filldraw [fill=black!20!yellow!20, draw=black, rotate around={45:(3, 0)}] (2.8, -0.2) rectangle (3.2, 0.2);
        \filldraw [fill=black!20!yellow!20, draw=black, rotate around={45:(5, 0)}] (4.8, -0.2) rectangle (5.2, 0.2);
        \filldraw [fill=black!20!yellow!20, draw=black, rotate around={45:(7, 0)}] (6.8, -0.2) rectangle (7.2, 0.2);
    \end{scope}

周期和无限矩阵乘积态
--------------------

MPS 可以容易地延展到 PBC 和热力学极限.

- 有限 MPS (OBC)
- 周期 MPS
- 无限 MPS

TEBD 可以很容易拓展到无限情形 (i-TEBD).

对称性
------

给定全局对称性群, 局域位点基组可以用群的不可约表示标记. 用来标记区分不同不可约表示的数叫做 **量子数**.

- U(1): 位点基组用整数 :math:`n` (粒子数) 标记: :math:`|n\rangle`. :math:`n = 0,1,2, \cdots`.

- SU(2) 对称性 - 位点基组用 :math:`j, m` (自旋量子数) 标记 :math:`|jm\rangle`.

和好量子数相关联的总态

.. math::
    |\Psi\rangle = |\Psi(n,j,m,\cdots)\rangle

这些是和基组变换相关联的对称性. 如果用图形表示, 物理指标永远都是画成竖线. 这些量子数是和物理指标相关联的. 另一个问题是, 键维度有没有任何变换性质. 简单的答案是, 键指标永远可以用物理指标位点的对称标记来标记. 现在键维度可以有比物理指标更多的自由度. 物理指标比如自旋只有两个自由度. 键维度则可以很大. 因此, 完全可能有额外的量子数和键维度关联. 这些额外的量子数并不能直接从物理指标看出. 那些就是拓扑量子数.

矩阵乘积态和对称性
^^^^^^^^^^^^^^^^^^

以粒子数对称性为例. 图形表示为

.. tikz::
    \draw[line width=1pt] (0, 0) -- (2, 0);
    \draw[line width=1pt] (1, 0) -- (1, 1) node[right] {用整数 $q_n$ 标记};
    \node[below] at (0.5, 0) {$q_i$};
    \node[below] at (1.5, 0) {$q_j$};
    \filldraw [fill=black!40, draw=black] (1, 0) circle (0.2);

MPS: 阿贝尔对称性是完全可以定义的, 每个张量满足规则

.. math::
    \sum q_{\mathrm{in}} = \sum q_{\mathrm{out}}

可以选择不同约定

.. tikz::
    \draw[line width=1pt,->] (0, 0) -- (0.8, 0);
    \draw[line width=1pt,->] (1.2, 0) -- (2, 0);
    \draw[line width=1pt,<-] (1, 0.2) -- (1, 1) node[right] {$q_n$ };
    \node[below] at (0.5, 0) {$q_i$};
    \node[below] at (1.5, 0) {$q_j$};
    \filldraw [fill=black!40, draw=black] (1, 0) circle (0.2);
    \node at (1, -0.7) {$q_i+q_n=q_j$};

.. tikz::
    \draw[line width=1pt,<-] (0, 0) -- (0.8, 0);
    \draw[line width=1pt,<-] (1.2, 0) -- (2, 0);
    \draw[line width=1pt,<-] (1, 0.2) -- (1, 1) node[right] {$q_n$ };
    \node[below] at (0.5, 0) {$q_i$};
    \node[below] at (1.5, 0) {$q_j$};
    \filldraw [fill=black!40, draw=black] (1, 0) circle (0.2);
    \node at (1, -0.7) {$q_j+q_n=q_i$};

当一个张量没有箭头从它流出, 他给出总的态量子数.

.. tikz::
    \draw[line width=1pt,->] (0, 0) -- (0.8, 0);
    \draw[line width=1pt,<-] (1.2, 0) -- (2, 0);
    \draw[line width=1pt,<-] (1, 0.2) -- (1, 1) node[right] {$q_n$ };
    \node[below] at (0.5, 0) {$q_i$};
    \node[below] at (1.5, 0) {$q_j$};
    \filldraw [fill=black!40, draw=black] (1, 0) circle (0.2);
    \node at (1, -0.7) {$Q=q_n+ q_i+q_j$};

PEPS 和 MERA
------------

在 MPS, 由于是 1 维的, 纠缠是 :math:`O(1)` 和所考虑的区域的尺寸无关. 这是面积定律的例子. 1 维的表面积是常数. 对 2D PEPS (Projected Entangled Pair States), 纠缠是 :math:`O(L)`. PEPS 生成满足面积定律的纠缠在任何维度.

PEPS 缩并
^^^^^^^^^

PEPS 和 MPS 相似. 但是因为存在圈, 所以需要进一步近似. 直接的缩并会导致指标的维度指数增长 (因为指标数量线性增长). 解决方法是, 把指标通过等度规变换 (isometry) 或者称为重整化降低 (近似地). 图形表示为在图形中插入三角形, 将两个指标缩成一个指标. 这样对每一对张量进行缩并将可以在一个维度把指标数降低一倍. 再从另一个维度插入三角形. 最终整个 2D 网格缩并为原来的 1/4. 这称为张量重整化.

从重整化群构建张量网络
----------------------

重正化群 (RG) 可以用来构建量子态的表示. 量子态的块扩张和截断过程就是等度规变换的网络.

幺正矩阵 (unitary matrix) 是方阵, 满足 :math:`U^\dagger U = UU^\dagger = I`.

等度规矩阵 (isometric matrix) 不是方阵, 如果将较大的指标缩并, 满足 :math:`W^\dagger W = I`, 如果反向缩并 :math:`WW^\dagger = P`, 其中 :math:`P` 是投影算符, 满足 :math:`P^2 = P`.

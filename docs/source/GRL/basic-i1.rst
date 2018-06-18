
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
        \renewcommand{\bm}{\mathbf}

.. note::
    微分几何入门与广义相对论 (上册, 第二版), 梁灿彬, 2006.

第一章 拓扑空间简介
-------------------

第一节 集论初步
^^^^^^^^^^^^^^^

[定义1] 若集合 :math:`A` 的每一元素都属于 集合 :math:`X`, 就说 :math:`A` 是 :math:`X` 的子集 (subset), 记作 :math:`A \subset X`.

[定义1] :math:`A` 称为 :math:`X` 的真子集 (proper subset), 若 :math:`A \subset X` 且 :math:`A \neq X`. 

注意更通常的记号和这里不一样. 通常的记号: 子集记为 :math:`A \subseteq X`, 真子集记为 :math:`A \subset X`.

[定义6] 映射 :math:`f:X \to Y` 叫一一的 (one-to-one), 若任一 :math:`y\in Y` 有不多于一个逆像(可以没有).

[定义6] 映射 :math:`f:X \to Y` 叫到上的 (onto), 若任一 :math:`y\in Y` 都有逆像(可多于一个).

[注5] 可定义任一子集 :math:`B \subset Y` 在 :math:`f` 下的 "逆像" :math:`f^{-1}[B]` 为

.. math:: f^{-1}[B] := \{ x \in X | f(x) \in B \} \subset X

[定义8] 设 :math:`X,Y,Z` 为集合, :math:`f:X\to Y` 和 :math:`g:Y\to Z` 为映射, 则 :math:`f` 和 :math:`g` 的复合映射 :math:`g\circ f` 是从 :math:`X` 到 :math:`Z` 的映射, 定义为

.. math:: (g\circ f)(x) := g(f(x)) \in Z\quad \forall x \in X

第二节 拓扑空间
^^^^^^^^^^^^^^^

[定义1] 非空集合 :math:`X` 的一个拓扑 (topology) :math:`\mathscr{T}` 是 :math:`X` 的若干子集的集合, 满足
 (a) :math:`X, \varnothing \in \mathscr{T}`.
 (b) 若 :math:`O_i \in \mathscr{T}`, :math:`i = 1,2,\cdots, n`, 则 :math:`\bigcap_{i=1}^n O_i \in \mathscr{T}`.
 (c) 若 :math:`O_{\alpha} \in \mathscr{T} \forall \alpha`, 则 :math:`\bigcup_{\alpha}O_{\alpha} \in \mathscr{T}`.

[定义2] 指定了拓扑 :math:`\mathscr{T}` 的集合 :math:`X` 称为 **拓扑空间** (topological space). 拓扑空间 :math:`X` 的子集 :math:`O` 称为 **开子集**, 若 :math:`O\in\mathscr{T}`.

[例3] 设 :math:`X = \mathbb{R}^n`, 则 :math:`\mathscr{T}_u := \{ \text{空集或} \mathbb{R}^n \text{中能表为开球之并的子集}\}` 称为 :math:`\mathbb{R}^n` 的 **通常拓扑** , 其中, **开球** (open ball) 定义为

.. math:: B(x_0,r) := \{ x \in \mathbb{R}^n | |x-x_0| < r\}

[例5] 设 :math:`(X, \mathscr{T})` 是拓扑空间, :math:`A` 为 :math:`X` 的任一非空子集. 使 :math:`A` 成为拓扑空间的 **诱导拓扑** :math:`\mathscr{S}` 定义为

.. math:: \mathscr{S} := \{ V \subset A | \exists O \in \mathscr{T} \text{s.t.} V=A\cap O \}

:math:`(A, \mathscr{S})` 称为 :math:`(X, \mathscr{T})` 的 **拓扑子空间** (topological subspace).

[定义3a] 设 :math:`(X, \mathscr{T})` 和 :math:`(Y, \mathscr{S})` 为拓扑空间. 映射 :math:`f:X\to Y` 称为 **连续的** (continuous), 若 :math:`f^{-1}[O]\in\mathscr{T}\quad \forall O \in \mathscr{S}`.

[定义4] 拓扑空间 :math:`(X, \mathscr{T})` 和 :math:`(Y, \mathscr{S})` 称为 **互相同胚** (homeomorphic to each other), 若存在映射 :math:`f:X\to Y`, 满足 (a) :math:`f` 是一一到上的; (b) :math:`f` 及 :math:`f^{-1}` 都连续. 这样的 :math:`f` 称为从 :math:`(X, \mathscr{T})` 到 :math:`(Y, \mathscr{S})` 的 **同胚映射**, 简称 **同胚** (homeomorphism).

普通函数 :math:`y=f(x)` 的连续性和可微性用 :math:`\C^r` 表示, 其中 :math:`r` 为非负整数, :math:`\C^0` 代表连续, :math:`\C^r` 代表 :math:`r` 阶导数存在并连续,  :math:`\C^{\infty}` 表示任意阶导数存在并连续 [称为 **光滑** (smooth)].

[定义5(点的邻域)] :math:`N\subset X` 称为 :math:`x\in X` 的一个 **邻域** (neighborhood), 若 :math:`\exists O\in\mathscr{T}` 使 :math:`x \in O\subset N`. 自身是开集的邻域称为 **开邻域**.

[定义5'(子集的邻域)] :math:`N\subset X` 称为 :math:`A\subset X` 的一个 **邻域**, 若 :math:`\exists O\in\mathscr{T}` 使 :math:`A\subset O\subset N`.

[定理1-2-1] :math:`A\subset X` 是开集, 当且仅当 :math:`A` 是 :math:`x` 的邻域 :math:`\forall x\in A`.

[定义6] :math:`C\subset X` 叫 **闭集** (closed set), 若 :math:`-C \in \mathscr{T}`. 

[定义7] 拓扑空间 :math:`(X, \mathscr{T})` 称为 **连通的** (connected), 若它除 :math:`X` 和 :math:`\varnothing` 外没有既开又闭的子集. 

[定义11] :math:`X` 的开子集的集合 :math:`\{ O_{\alpha}\}` 叫 :math:`A\subset X` 的一个 **开覆盖** (open cover), 若 :math:`A \subset \cup_{\alpha} O_{\alpha}`. 也可说 :math:`\{ O_{\alpha} \}` 覆盖 :math:`A`.


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
        \newcommand{\xtensor}[3]{{#1}#2 {\vphantom{#1}}#3}
        \renewcommand{\bm}{\mathbf}

.. note::
    微分几何入门与广义相对论 (上册, 第二版), 梁灿彬, 2006.

第三章 黎曼 (内禀) 曲率张量
---------------------------

第一节 导数算符
^^^^^^^^^^^^^^^

[定义1] 以 :math:`\mathscr{F}_M(k,l)` 代表流形 :math:`M` 上全体 :math:`\C^\infty` 的 :math:`(k, l)` 型张量场的集合 [函数 :math:`f` 可看作 (0, 0) 型张量场(标量场), 故 :math:`\mathscr{F}_M(0,0) \equiv \mathscr{F}_M`]. 映射 :math:`\nabla : \mathscr{F}_M(k, l) \to \mathscr{F}_M(k, l + 1)` 称为 :math:`M` 上的 **(无挠)导数算符** (derivative operator), 若它满足如下条件:

(a) 具有线性性:

.. math::
    \nabla_a\big(\alpha\xtensor{T}{^{b_1\cdots b_k}}{_{c_1\cdots c_l}}+\beta\xtensor{S}{^{b_1\cdots b_k}}{_{c_1\cdots c_l}} \big) = \alpha \nabla_a\xtensor{T}{^{b_1\cdots b_k}}{_{c_1\cdots c_l}} + \beta \nabla_a \xtensor{S}{^{b_1\cdots b_k}}{_{c_1\cdots c_l}} \\
    \forall\ \xtensor{T}{^{b_1\cdots b_k}}{_{c_1\cdots c_l}},\ \xtensor{S}{^{b_1\cdots b_k}}{_{c_1\cdots c_l}} \in
        \mathscr{F}_M(k, l),\quad \alpha,\beta \in \mathbb{R}

(b) 满足莱布尼兹 (Leibnitz) 律:

.. math:: \nabla_a\big(\xtensor{T}{^{b_1\cdots b_k}}{_{c_1\cdots c_l}}\xtensor{S}{^{d_1\cdots d_{k'}}}{_{e_1\cdots e_{l'}}}\big) = \xtensor{T}{^{b_1\cdots b_k}}{_{c_1\cdots c_l}}\nabla_a\xtensor{S}{^{d_1\cdots d_{k'}}}{_{e_1\cdots e_{l'}}} + \xtensor{S}{^{d_1\cdots d_{k'}}}{_{e_1\cdots e_{l'}}}\nabla_a\xtensor{T}{^{b_1\cdots b_k}}{_{c_1\cdots c_l}} \\
    \forall\ \xtensor{T}{^{b_1\cdots b_k}}{_{c_1\cdots c_l}}, \in
        \mathscr{F}_M(k, l),\quad \xtensor{S}{^{d_1\cdots d_{k'}}}{_{e_1\cdots e_{l'}}} \in
        \mathscr{F}_M(k', l')

(c) 与缩并可交换顺序;
(d) :math:`v(f) =v^a\nabla_a f,\quad\forall f\in \mathscr{F}_M,\ v\in \mathscr{F}_M(1,0)`;
(e) 具有无挠(torsion free) 性: :math:`\nabla_a\nabla_bf = \nabla_b\nabla_a f,\quad\forall f \in \mathscr{F}_M`.

[注1] 由条件 (c) 可得到 :math:`\nabla_a \big(v^b\omega_b \big) = v^b\nabla_a\omega_b + \omega_b\nabla_av^b`. 设 :math:`\nabla_a` 是任一导数算符, 则由条件 (d) 易证 :math:`\nabla_a f = (\D f)_a,\quad\forall f \in \mathscr{F}_M`, 其中 :math:`(\D f)_a` 是函数 :math:`f` 生成的对偶矢量场 :math:`\D f` 的抽象指标表示. 这就说明, 如果只是作用于一个标量场, 任何导数算符 :math:`\nabla_a` 得到的结果都是一样的, 因为 :math:`\D f` 不依赖于导数算符的选择. 即

.. math:: \nabla_a f = \tilde{\nabla}_a f = (\D f)_a,\quad\forall f \in \mathscr{F}_M

可见 :math:`\nabla_a` 与 :math:`\tilde{\nabla}_a` 的不同只能体现在对非(0,0)型张量场的作用上.

[定理3-1-2] 设 :math:`p\in M,\quad\omega_b,\ \omega'_b\in\mathscr{F}_M(0, 1)` 满足 :math:`\omega'_b|_p = \omega_b|_p`, 则

.. math:: \big[ \big( \tilde{\nabla}_a - \nabla_a \big) \omega'_b \big]_p = \big[ \big( \tilde{\nabla}_a - \nabla_a \big) \omega_b \big]_p

[证明] 只需证明

.. math:: \big[ \nabla_a \big(\omega'_b-\omega_b \big)\big]_p = \big[ \tilde{\nabla}_a \big(\omega'_b-\omega_b \big)\big]_p

设 :math:`\Omega_b \equiv \omega'_b - \omega_b`. 选坐标系 :math:`\{ x^\mu \}` 使其坐标域包含 :math:`p`, 则 :math:`\omega'_b|_p = \omega_b|_p` 导致 :math:`\Omega_\mu(p) = 0`, 其中 :math:`\Omega_\mu` 是 :math:`\Omega_b` 的坐标分量. 于是对 :math:`p` 点有

.. math:: \big[ \nabla_a \big(\omega'_b-\omega_b \big)\big]_p =&\ 
    \big[ \nabla_a \Omega_b \big]_p = \big\{ \nabla_a \big[ \Omega_\mu \big( \D x^\mu \big)_b \big] \big\}_p \\
    =&\ \Omega_\mu(p) \big[ \nabla_a  \big( \D x^\mu \big)_b \big]_p 
    +  \big[ \big( \D x^\mu \big)_b \nabla_a \Omega_\mu \big]_p = \big[ \big( \D x^\mu \big)_b \nabla_a \Omega_\mu \big]_p

同理有 :math:`\big[ \tilde{\nabla}_a \big(\omega'_b-\omega_b \big)\big]_p = \big[ \big( \D x^\mu \big)_b \tilde{\nabla}_a \Omega_\mu \big]_p`. 又由于 :math:`\Omega_\mu` 是标量场, :math:`\nabla_a \Omega_\mu = \tilde{\nabla}_a \Omega_\mu = (\D \Omega_\mu)_a`, 得证.

虽然导数 :math:`\big[ \nabla_a\omega_b\big]_p` 和 :math:`\big[ \tilde{\nabla}_a\omega_b\big]_p` 依赖于 :math:`\omega_b` 在 :math:`p` 点的一个邻域内的值, 然而 [定理3-1-2] 表明 :math:`\big[ \big( \tilde{\nabla}_a - \nabla_a \big) \omega_b \big]_p` 只依赖于 :math:`\omega_b` 在 :math:`p` 点的值, 这说明 :math:`\tilde{\nabla}_a - \nabla_a` 是把 :math:`p` 点的对偶矢量 :math:`\omega_b|_p` 变为 :math:`p` 点的(0,2)型张量 :math:`\big[ \big( \tilde{\nabla}_a - \nabla_a \big) \omega_b \big]_p` 的线性映射. 因为 :math:`p` 点可任选, 所以 :math:`M` 上两个导数算符 :math:`\nabla_a` 和 :math:`\tilde{\nabla}_a` 在对 :math:`\omega_b` 的作用上的差别体现为 :math:`M` 上的一个 (1,2) 型张量场 :math:`\xtensor{C}{^c}{_{ab}}`, 即

[定理3-1-3] 

.. math:: 
    \nabla_a\omega_b = \tilde{\nabla}_a\omega_b - \xtensor{C}{^c}{_{ab}}\omega_c,\quad \forall \omega_b \in \mathscr{F}_M(0, 1).
    :label: cabc

[定理3-1-4] :math:`\nabla_a` 的无挠性导致张量场 :math:`\xtensor{C}{^c}{_{ab}}` 的如下对称性: :math:`\xtensor{C}{^c}{_{ab}}=\xtensor{C}{^c}{_{ba}}`.

[证明] 令 :math:`\omega_b = \nabla_b f = \tilde{\nabla}_b f`, 其中 :math:`f \in \mathscr{F}_M`. 则 :math:`\nabla_a\nabla_b f = \tilde{\nabla}_a\tilde{\nabla}_b f - \xtensor{C}{^c}{_{ab}} \nabla_c f`. 交换指标 :math:`a, b` 得 :math:`\nabla_b\nabla_a f = \tilde{\nabla}_b\tilde{\nabla}_a f - \xtensor{C}{^c}{_{ba}} \nabla_c f`. 于是 :math:`\xtensor{C}{^c}{_{ab}} \nabla_c f = \xtensor{C}{^c}{_{ba}} \nabla_c f \Rightarrow \xtensor{C}{^c}{_{ab}} = \xtensor{C}{^c}{_{ba}}`. 注意 :math:`f` 取为所有坐标基底, :math:`\nabla_b f = (\D f)_b` 可以得到所有对偶坐标基矢. 于是 :math:`\nabla_b f` 可以代表任意对偶坐标基矢. 

[定理3-1-5] :math:`\nabla_a v^b = \tilde{\nabla}_a v^b + \xtensor{C}{^b}{_{ac}}v^c,\quad \forall v^b \in \mathscr{F}_M(1,0)`.

[证明] 设 :math:`\omega_b` 为 :math:`M` 上任意对偶矢量场, 则

.. math:: \nabla_a \big(\omega_b v^b\big) = \omega_b \nabla_a v^b + v^b\nabla_a \omega_b 
    =&\ \omega_b \nabla_a v^b + v^b \big( \tilde{\nabla}_a \omega_b - \xtensor{C}{^c}{_{ab}}\omega_c \big) \\
    \tilde{\nabla}_a \big(\omega_b v^b\big) = &\ \omega_b \tilde{\nabla}_a v^b + v^b \tilde{\nabla}_a \omega_b

比较上面两式. 由于 :math:`\omega_b v^b` 是标量场, 所以 :math:`\nabla_a \big(\omega_b v^b\big) = \tilde{\nabla}_a \big(\omega_b v^b\big)`, 即它们左边相减为零. 右边相减得

.. math:: 
    \omega_b \nabla_a v^b - \omega_b \tilde{\nabla}_a v^b - v^b \xtensor{C}{^c}{_{ab}}\omega_c = 0 \\
    \omega_b \nabla_a v^b = \omega_b \tilde{\nabla}_a v^b + v^b \xtensor{C}{^c}{_{ab}}\omega_c
        = \omega_b \tilde{\nabla}_a v^b + \omega_b \xtensor{C}{^b}{_{ac}} v^c

考虑 :math:`\omega_b` 是任意的, 因此得证.

[定理3-1-6]

.. math:: \nabla_a \xtensor{T}{^{b_1\cdots b_k}}{_{c_1\cdots c_l}} = 
    \tilde{\nabla}_a \xtensor{T}{^{b_1\cdots b_k}}{_{c_1\cdots c_l}} + \sum_{i = 1}^k \xtensor{C}{^{b_i}}{_{ad}}
        \xtensor{T}{^{b_1\cdots d \cdots b_k}}{_{c_1\cdots c_l}} - \sum_{j = 1}^k \xtensor{C}{^{d}}{_{ac_j}}
        \xtensor{T}{^{b_1\cdots b_k}}{_{c_1\cdots d\cdots c_l}} \\
        \forall \xtensor{T}{^{b_1\cdots b_k}}{_{c_1\cdots c_l}} \in \mathscr{F}_M(k,l).

设 :math:`\{ x^\mu \}` 是 :math:`M` 的一个坐标系, 其坐标基底和对偶坐标基底分别为 :math:`\big\{ \big(\partial/\partial x^\mu \big)^a \big\}` 和 :math:`\big\{ \big(\D x^\mu \big)_a \big\}`. 在坐标域 :math:`O` 上定义映射 :math:`\partial_a : \mathscr{F}_O(k, l) \to \mathscr{F}_O(k, l+1)` 如下 [仅以 :math:`\xtensor{T}{^b}{_c} \in \mathscr{F}_O(1, 1)` 为例写出]:

.. math:: \partial_a \xtensor{T}{^b}{_c} := \big(\D x^\mu\big)_a \big( \partial/\partial x^\nu \big)^b 
    \big(\D x^\sigma\big)_c \partial_\mu \xtensor{T}{^\nu}{_\sigma}

其中 :math:`\xtensor{T}{^\nu}{_\sigma}` 是 :math:`\xtensor{T}{^b}{_c}` 在该坐标系的分量, :math:`\partial_\mu` 是对坐标 :math:`x^\mu` 求偏导数的符号 :math:`\partial/\partial x^\mu` 的简写. 不难验证 :math:`\partial_a` 满足 [定义1] 的5个条件, 可见 :math:`\partial_a` 是 :math:`O` 上的一个导数算符, 称为该坐标系的 **普通导数** (ordinary derivative) **算符**. 由此易见:

(1) 任一坐标系的 :math:`\partial_a` 作用于该系的任一坐标基矢和任一对偶坐标基矢结果为零(相当于对常数求导), 即

.. math:: \partial_a\big(\partial/\partial x^\nu \big)^b = 0,\quad \partial_a \big(\D x^\nu \big)_b = 0

(2) :math:`\partial_a` 满足比定义1条件(e)强得多的条件,即

.. math:: \partial_a\partial_b \xtensor{T}{^{\cdots}}{_{\cdots}} = \partial_b\partial_a \xtensor{T}{^{\cdots}}{_{\cdots}}

其中 :math:`\xtensor{T}{^{\cdots}}{_{\cdots}}` 是任意型张量场.

:math:`\partial_a` 虽可看作 :math:`\nabla_a` 的特例, 但其定义依赖于坐标系. 我们把与坐标系无关的那些 :math:`\nabla_a` 称为 **协变导数** (covariant derivative) **算符**, :math:`\partial_a` 不在此列.

[定义2] 设 :math:`\partial_a` 是 :math:`(M, \nabla_a)` 上任给的坐标系的普通导数算符, 则体现 :math:`\nabla_a` 与 :math:`\partial_a` 的差别的张量场 :math:`\xtensor{C}{^c}{_{ab}}` 称为 :math:`\nabla_a` 在该坐标系的 **克氏符** (Christoffel symbol), 记作 :math:`\xtensor{\Gamma}{^c}{_{ab}}`.

[注3] 一般书强调克氏符不是张量. 克氏符是依赖于坐标系的张量(坐标系改变时张量本身要变). 设 :math:`v^b` 是矢量场, 则 :math:`\partial_a v^b` 也是坐标系依赖的张量场. 把 :math:`\partial_a v^b` 在 :math:`\partial_a` 所在坐标系展开

.. math:: \partial_a v^b = (\D x^\mu )_a (\partial/\partial x^\nu)^b \xtensor{v}{^\nu}{_{,\mu}},\quad
    \xtensor{v}{^\nu}{_{,\mu}} \equiv \partial_\mu v^\nu \equiv \partial v^\nu / \partial x^\mu

其中逗号代表求偏导数. 至于 :math:`\nabla_a v^b`, 则是与坐标系无关的张量, 它在坐标系中的分量通常记为 :math:`\xtensor{v}{^\nu}{_{;\mu}}`, 即 :math:`\nabla_a v^b = \xtensor{v}{^\nu}{_{;\mu}} (\D x^\mu )_a (\partial/\partial x^\nu)^b`, 称为 :math:`v^b` 的协变导数.

.. admonition:: 备注

    注意不能写 :math:`\xtensor{v}{^\nu}{_{;\mu}} = \nabla_\mu v^\nu`, 因为 :math:`v^\nu` 是标量, 用导数作用相当于 :math:`\nabla_\mu v^\nu = \partial_\mu v^\nu`. 表示协变导数的分量只能用分号记号.

[定理3-1-7] :math:`\xtensor{v}{^\nu}{_{;\mu}} = \xtensor{v}{^\nu}{_{,\mu}} + \xtensor{\Gamma}{^\nu}{_{\mu\sigma}}v^\sigma,\quad \omega_{\nu;\mu} = \omega_{\nu,\mu} - \xtensor{\Gamma}{^\sigma}{_{\mu\nu}}\omega_\sigma`.

[定理3-1-9] :math:`[u,v]^a = u^b\nabla_b v^a - v^b\nabla_b u^a`, 其中 :math:`\nabla_b` 是任一无挠导数算符.

[证明] :math:`\forall f \in \mathscr{F}_M` 有

.. math:: [u,v]^a\nabla_a f =&\ u(v(f))-v(u(f) = u^b\nabla_b (v^a \nabla_a f) - v^a\nabla_a (u^b \nabla_b f) \\
    =&\ v^a u^b \nabla_b \nabla_a f + u^b \big(\nabla_b v^a\big) \nabla_a f 
        - v^a u^b \nabla_a \nabla_b f - v^a \big(\nabla_a u^b\big) \nabla_b f \\
    =&\ [ u^b \nabla_b v^a - v^b \nabla_b u^a ] \nabla_a f 

第二节 矢量场沿曲线的导数和平移
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

[定义1] 设 :math:`v^a` 是沿曲线 :math:`C(t)` 的矢量场. :math:`v^a` 称为 **沿** :math:`C(t)` **平移的** [parallelly transported along :math:`C(t)`], 若 :math:`T^b\nabla_b v^a = 0`, 其中 :math:`T^a \equiv (\partial/\partial t)^a` 是曲线的切矢. 

:math:`T^b\nabla_b v^a` 可以解释为矢量场 :math:`v^a` 沿 :math:`T^b` 的导数. 于是定义1可解释为: :math:`v^a` 沿 :math:`C(t)` 平移的充要条件是它沿 :math:`T^b` 的导数为零. 

.. admonition:: 备注

    注意并不是矢量沿曲线切矢分量为零而是矢量沿切矢导数为零. 

[定理3-2-1] 设曲线 :math:`C(t)` 位于坐标系 :math:`\{ x^\mu \}` 的坐标域内, 曲线的参数式为 :math:`x^\mu(t)`. 令 :math:`T^a \equiv (\partial/\partial t)^a`, 则沿 :math:`C(t)` 的矢量场 :math:`v^a` 满足

.. math:: T^b\nabla_b v^a = \big(\partial/\partial x^\mu\big)^a  \big(\D v^\mu / \D t + 
    \xtensor{\Gamma}{^\mu}{_{\nu\sigma}}T^\nu v^\sigma \big)

[定理3-2-2] 曲线上一点 :math:`C(t_0)` 及该点的一个矢量决定唯一的沿曲线平移的矢量场.

设 :math:`p, q \in M`, 则 :math:`V_p` 和 :math:`V_q` 是两个矢量空间. :math:`\nabla_a` 的存在使原来毫无联系的 :math:`V_p` 与 :math:`V_q` 发生了某种联系(虽然曲线依赖), 因此也把 :math:`\nabla_a` 叫做 **联络** (connection).

为使平移概念与欧氏空间中熟知的平移一致, 应补充以下要求: 设 :math:`u^a, v^a` 为沿 :math:`C(t)` 平移的矢量场, 则 :math:`u^av_a (\equiv g_{ab}u^av^b)` 在 :math:`C(t)` 上是常数(两个矢量平移时 "内积" 不变). 设 :math:`T^a` 为曲线 :math:`C(t)` 的切矢, 则这一要求等价于

.. math:: T^c\nabla_c\big( g_{ab}u^av^b \big) = g_{ab}u^aT^c\nabla_c v^b + g_{ab}v^bT^c\nabla_c u^a + u^av^bT^c\nabla_c g_{ab} = u^av^bT^c\nabla_c g_{ab}

要求 :math:`g_{ab}u^av^b` 在 :math:`C(t)` 上是常数, 相当于要求它沿曲线求导为零. 即 :math:`T^c\nabla_c\big( g_{ab}u^av^b \big) = 0`. 又由于要求 :math:`u^a, v^a` 沿 :math:`C(t)` 平移, 因此 :math:`T^c\nabla_c v^b = T^c\nabla_c u^b = 0`. 因此 :math:`u^av^bT^c\nabla_c g_{ab} = 0`. 上式对所有曲线以及沿它平移的任意两个矢量场 :math:`u^a, v^a` 成立的充要条件为 :math:`\nabla_cg_{ab} = 0`. 没有度规时, :math:`\nabla_c` 的选择非常任意. 指定度规后, 选 :math:`\nabla_c` 时就需要满足附加要求 :math:`\nabla_c g_{ab}`.

[定理3-2-3] 流形 :math:`M` 上选定度规场 :math:`g_{ab}` 后, 存在唯一的 :math:`\nabla_a` 使 :math:`\nabla_a g_{bc} = 0`.

[证明] 设 :math:`\tilde{\nabla}_a` 为任一导数算符, 欲求适当的 :math:`\xtensor{C}{^c}{_{ab}}` 使它与 :math:`\tilde{\nabla}_a` 决定的 :math:`\nabla_a` 满足 :math:`\nabla_ag_{bc} = 0`. 有

.. math:: \nabla_ag_{bc} = \tilde{\nabla}_ag_{bc} - \xtensor{C}{^d}{_{ac}}g_{bd} - \xtensor{C}{^d}{_{ab}}g_{dc}
    = \tilde{\nabla}_ag_{bc} - C_{bac} - C_{cab}

故由 :math:`\nabla_ag_{bc} = 0` 并调换 :math:`a, b, c` 顺序得

.. math::  \color{red}{C_{bac}} \color{green} {+ C_{cab}} = \tilde{\nabla}_ag_{bc},\quad
           \color{blue}{C_{abc}} \color{green}{+ C_{cba}} = \tilde{\nabla}_bg_{ac},\quad
           \color{blue}{C_{acb}} \color{red}{+C_{bca}} = \tilde{\nabla}_cg_{ab}

前两式相加减去最后一式, 并利用 :math:`C_{cab} = C_{cba}`, 得

.. math:: 2C_{cab} =&\ \tilde{\nabla}_ag_{bc} + \tilde{\nabla}_bg_{ac} - \tilde{\nabla}_cg_{ab} \\
        \xtensor{C}{^c}{_{ab}} =&\ \frac{1}{2} g^{cd} \big( \tilde{\nabla}_ag_{bd} + \tilde{\nabla}_bg_{ad} - \tilde{\nabla}_dg_{ab} \big)
    :label: gabtoc

这 :math:`\xtensor{C}{^c}{_{ab}}` 与 :math:`\tilde{\nabla}_a` 结合而得的 :math:`\nabla_a` 便是方程 :math:`\nabla_ag_{bc} = 0` 的解, 这必定是唯一解. 因若 :math:`\nabla'_a` 也满足 :math:`\nabla'_ag_{bc} = 0`, 把 :math:`\nabla'_a` 作为 :eq:`gabtoc` 中的 :math:`\tilde{\nabla}_a` 便知反映 :math:`\nabla_a` 与 :math:`\nabla'_a` 差别的 :math:`\xtensor{C}{^c}{_{ab}}` 为零. 满足 :math:`\nabla_ag_{bc} = 0` 的 :math:`\nabla_a` 称为 **与** :math:`g_{bc}` **适配的导数算符**.

设 :math:`\nabla_a` 与 :math:`g_{bc}` 相适配, 取 :math:`\tilde{\nabla}_a` 为任一坐标系的 :math:`\partial_a`, 则该坐标系的克氏符 :math:`\xtensor{\Gamma}{^c}{_{ab}}` 在该系的分量 :math:`\xtensor{\Gamma}{^\sigma}{_{\mu\nu}}` 的表达式为

.. math:: \xtensor{\Gamma}{^\sigma}{_{\mu\nu}} = \frac{1}{2}g^{\sigma\rho} \big( g_{\nu\rho,\mu} + g_{\mu\rho,\nu} - g_{\mu\nu,\rho} \big)

[定理3-2-4] 设 :math:`v^a` 是 :math:`(M,\nabla_a)` 的曲线 :math:`C(t)` 上的矢量场, :math:`T^b` 是 :math:`C(t)` 的切矢, :math:`p, q` 是 :math:`C(t)` 上的邻点, 则

.. math:: T^b\nabla_b v^a|_p = \lim_{\Delta t \to 0} \frac{1}{\Delta t} \big( \tilde{v}^a|_p - v^a |_p\big)

其中 :math:`\Delta t\equiv t(q) - t(p), \tilde{v}^a|_p` 是 :math:`v^a|_q` 沿 :math:`C(t)` 平移至 :math:`p` 点的结果.

第三节 测地线
^^^^^^^^^^^^^

[定义1] :math:`(M, \nabla_a)` 上的曲线 :math:`\gamma(t)` 叫 **测地线** (geodesic), 若其切矢 :math:`T^a` 满足 :math:`T^b\nabla_bT^a = 0`.

[注1] (1) 可见测地线的充要条件是其切矢沿线平移. (2) :math:`T^b\nabla_bT^a = 0` 称为 **测地线方程**.

设测地线 :math:`\gamma(t)` 位于某坐标系的坐标域内, 则有

.. math:: \frac{\D T^\mu}{\D t} + \xtensor{\Gamma}{^\mu}{_{\nu\sigma}} T^\nu T^\sigma = 0,\quad \mu = 1,\cdots, n

设 :math:`x^\nu = x^\nu (t)` 是测地线 :math:`\gamma(t)` 的参数式, 则 :math:`T^\mu = \D x^\mu/\D t`, 故上式可改写为

.. math:: \frac{\D^2 x^\mu}{\D t^2} + \xtensor{\Gamma}{^\mu}{_{\nu\sigma}} \frac{\D x^\nu}{\D t}\frac{\D x^\sigma}{\D t} = 0,\quad \mu = 1,\cdots, n

这就是测地线方程的坐标分量表达式.

[例1] 欧(闵)氏度规在笛卡儿(洛伦兹)系的克氏符为零, 测地线方程的通解为 :math:`x^\mu(t) = a^\mu t + b^\mu` (其中 :math:`a^\mu, b^\mu` 是常数). 可见测地线可看作欧氏空间直线概念向广义黎曼空间的推广. 

[定理3-3-1] 设 :math:`\gamma(t)` 为测地线, 则其重参数化 :math:`\gamma'(t')[=\gamma(t)]` 的切矢 :math:`T'^a` 满足

.. math:: T'^b\nabla_bT'^a = \alpha T'^a

其中 :math:`\alpha` 为 :math:`\gamma(t)` 上的某个函数.

[定理3-3-2] 设曲线 :math:`\gamma(t)` 的切矢 :math:`T^a` 满足 :math:`T^b\nabla_b T^a = \alpha T^a`, 其中 :math:`\alpha` 为 :math:`\gamma(t)` 上的函数, 则存在 :math:`t'=t'(t)` 使得 :math:`\gamma'(t') [=\gamma(t)]` 为测地线.

[定义2] 能使曲线成为测地线的参数叫该曲线的 **仿射参数** (affine parameter).

[定理3-3-3] 若 :math:`t` 是某测地线的仿射参数, 则该线的任一参数 :math:`t'` 是仿射参数的充要条件为 :math:`t' = at+b` (其中 :math:`a, b` 为常数且 :math:`a \neq 0`).

[定理3-3-4] 流形 :math:`M` 的一点 :math:`p` 及 :math:`p` 点的一个矢量 :math:`v^a` 决定唯一的测地线 :math:`\gamma(t)`, 满足 (1) :math:`\gamma(0) = p`; (2) :math:`\gamma(t)` 在 :math:`p` 点的切矢等于 :math:`v^a`.

因为切矢 :math:`T^a` 沿测地线平移, 而平移矢量的自我 "内积" :math:`g_{ab}T^aT^b` 为常数, 所以 :math:`g_{ab}T^aT^b` 沿测地线不变号, 这表明在 :math:`g_{ab}` 为洛伦兹的情况下测地线总可分为类时、类空和类光三大类.

[定理3-3-5] 测地线的线长参数必为仿射参数.

[定理3-3-6] 设 :math:`g_{ab}` 是流形 :math:`M` 上的洛伦兹度规场, :math:`p, q \in M`, 则 :math:`p, q` 间的光滑类空 (类时) 曲线为测地线当且仅当其线长取极值. 本定理也适用于 :math:`g_{ab}` 为正定度规的情况[这时曲线的定语 "类空(类时)" 略去].

闵氏时空的类时测地线是最长类时线. 任意时空中类时测地线长为极大的充要条件是线上不存在共轭点对.

第四节 黎曼曲率张量
^^^^^^^^^^^^^^^^^^^

把算符 :math:`\nabla_a\nabla_b - \nabla_b\nabla_a` 称为导数算符 :math:`\nabla_a` 的对易子, 则 :math:`\nabla_a` 的无挠性体现为其对易子对函数的作用结果为零. 然而无挠导数算符的对易子对其他型号的张量场的作用结果未必为零, 黎曼曲率张量正是这种非对易性的表现.

[定理3-4-1] 设 :math:`f\in \mathscr{F}_M, \omega_a \in \mathscr{F}_M(0, 1)`, 则

.. math:: \big( \nabla_a\nabla_b - \nabla_b\nabla_a \big)\big(f \omega_c \big) = f \big( \nabla_a\nabla_b - \nabla_b\nabla_a \big) \omega_c

[定理3-4-2] 设 :math:`\omega_c, \omega'_c \in \mathscr{F}_M(0, 1)` 且 :math:`\omega'_c |_p = \omega_c |_p` 则

.. math:: \big[ \big( \nabla_a\nabla_b - \nabla_b\nabla_a \big) \omega'_c \big] \big\rvert_p =
    \big[ \big( \nabla_a\nabla_b - \nabla_b\nabla_a \big) \omega_c \big] \big\rvert_p

定理3-4-2 表明 :math:`\nabla_a\nabla_b - \nabla_b\nabla_a` 是把 :math:`p` 点的对偶矢量 :math:`\omega_c|_p` 变为 :math:`p` 点的 (0,3) 型张量 :math:`\big[ \big( \nabla_a\nabla_b - \nabla_b\nabla_a \big) \omega_c \big] \big\rvert_p` 的线性映射, 做法是: 把 :math:`\omega_c|_p` 任意延拓而得一个定义于 :math:`p` 点某邻域的对偶矢量场 :math:`\omega_c`, 求出 :math:`\big( \nabla_a\nabla_b - \nabla_b\nabla_a \big) \omega_c`, 再取其在 :math:`p` 点的值便得映射的像. 定理3-4-2保证这个像与延拓方式无关. 于是 :math:`\nabla_a\nabla_b - \nabla_b\nabla_a` 对应于 :math:`p` 点的一个 (1,3) 型张量, 叫 **黎曼曲率张量** (Riemann curvature tensor), 记作 :math:`\xtensor{R}{_{abc}}{^d}`. 又因 :math:`p` 点任意, 故 :math:`\xtensor{R}{_{abc}}{^d}` 是张量场. 于是有

[定义1] 导数算符 :math:`\nabla_a` 的 **黎曼曲率张量场** :math:`\xtensor{R}{_{abc}}{^d}` 由下式定义

.. math:: \big( \nabla_a\nabla_b - \nabla_b\nabla_a \big) \omega_c = \xtensor{R}{_{abc}}{^d}\omega_d,\quad
    \forall \omega_c \in \mathscr{F}_M(0, 1).

黎曼张量场为零的度规称为 **平直度规** (flat metric). 下面证明欧氏和闵氏度规都是平直度规.

[定理3-4-3] 欧氏空间 :math:`(\mathbb{R}^n, \delta_{ab})` 和闵氏空间 :math:`(\mathbb{R}^n, \eta_{ab})` 的黎曼曲率张量场为零.

[证明] 欧(闵)氏空间任一笛卡儿(洛伦兹)系的普通导数算符 :math:`\partial_a` 是与 :math:`\delta_{bc}` 适配的那个特定的导数算符. 而

.. math:: \big( \partial_a\partial_b - \partial_b\partial_a \big) \omega_c =
    \big( x^\mu \big)_a \big( x^\nu \big)_b \big( x^\sigma \big)_c  \big( \partial_\mu\partial_\nu\omega_\sigma - \partial_\nu\partial_mu\omega_\sigma \big) = 0, \quad \forall \omega_c

故 :math:`\partial_a` 的 :math:`\xtensor{R}{_{abc}}{^d}` 为零. 因此欧氏空间和闵氏空间都称为 **平直空间** (flat space).

[定理3-4-4] :math:`\big( \nabla_a\nabla_b - \nabla_b\nabla_a \big)v^c = -\xtensor{R}{_{abd}}{^c}v^d,\quad\forall v^c \in \mathscr{F}_M(1,0)`.

[证明] :math:`\forall \omega_c \in \mathscr{F}_M(0, 1)`, 有 :math:`v^c\omega_c \in \mathscr{F}_M`. 由无挠性条件得

.. math:: \big( \nabla_a\nabla_b - \nabla_b\nabla_a \big)\big(v^c\omega_c\big) =
    v^c \nabla_a\nabla_b \omega_c + \omega_c \nabla_a\nabla_b v^c - v^c \nabla_b\nabla_a \omega_c - \omega_c \nabla_b\nabla_a v^c

从而

.. math:: \omega_c \big( \nabla_a\nabla_b - \nabla_b\nabla_a \big)v^c = -v^c \big( \nabla_a\nabla_b - \nabla_b\nabla_a \big) \omega_c = -v^c \xtensor{R}{_{abc}}{^d}\omega_d = -\omega_c \xtensor{R}{_{abd}}{^c} v^d

[定理3-4-5] :math:`\forall \xtensor{T}{^{c_1\cdots c_k}}{_{d_1\cdots d^l}} \in \mathscr{F}_M(k, l)` 有

.. math:: \big( \nabla_a\nabla_b - \nabla_b\nabla_a \big) \xtensor{T}{^{c_1\cdots c_k}}{_{d_1\cdots d^l}}
    = -\sum_{i = 1}^k \xtensor{R}{_{abe}}{^{c_i}} \xtensor{T}{^{c_1\cdots e\cdots c_k}}{_{d_1\cdots d^l}}
    +\sum_{j = 1}^l \xtensor{R}{_{abd_j}}{^e} \xtensor{T}{^{c_1\cdots c_k}}{_{d_1\cdots e \cdots d^l}}

[定理3-4-6] 黎曼曲率张量有以下性质:

(1) :math:`\xtensor{R}{_{abc}}{^d} = - \xtensor{R}{_{bac}}{^d}`;
(2) **循环** (cyclic) **恒等式** :math:`\xtensor{R}{_{[abc]}}{^d} = 0`;
(3) **比安基** (Bianchi) **恒等式** :math:`\nabla_{[a}\xtensor{R}{_{bc]d}}{^e} = 0`;

若 :math:`M` 上有度规场 :math:`g_{ab}` 且 :math:`\nabla_ag_{bc} = 0`, 则可定义 :math:`R_{abcd} \equiv g_{de}\xtensor{R}{_{abc}}{^e}`, 且 :math:`R_{abcd}` 还满足

(4) :math:`R_{abcd} = -R_{abdc}`;
(5) :math:`R_{abcd} = R_{cdab}`.

[证明]

(1) 由定义显见.
(2) 因 :math:`\xtensor{R}{_{[abc]}}{^d}\omega_d = \nabla_{[a}\nabla_b\omega_{c]} - \nabla_{[b}\nabla_a\omega_{c]} = 2\nabla_{[a}\nabla_b\omega_{c]}`, 注意, :math:`[abc]` 是 :math:`abc` 轮换加上正负号求和. 而 :math:`[bac]` 是同样一堆数求和, 只不过加的正负号相反. 故只需证 :math:`\nabla_{[a}\nabla_b\omega_{c]} = 0, \quad \forall \omega_c \in \mathscr{F}_M(0,1)`. 由 :eq:`cabc` (令其 :math:`\tilde{\nabla}_a = \partial_a`) 得

.. math::
    \nabla_{a}\nabla_b\omega_{c} =&\ \partial_a \big( \nabla_b\omega_c \big) - \xtensor{\Gamma}{^d}{_{ac}}\nabla_b\omega_d
         - \xtensor{\Gamma}{^d}{_{ab}}\nabla_d\omega_c \\
         =&\ \partial_a \big( \partial_b\omega_c -\xtensor{\Gamma}{^d}{_{bc}}\omega_d \big) - \xtensor{\Gamma}{^d}{_{ac}}\nabla_b\omega_d - \xtensor{\Gamma}{^d}{_{ab}}\nabla_d\omega_c \\
         =&\ \partial_a \partial_b\omega_c - \xtensor{\Gamma}{^d}{_{bc}}\partial_a\omega_d
            - \omega_d\partial_a\xtensor{\Gamma}{^d}{_{bc}} - \xtensor{\Gamma}{^d}{_{ac}}\nabla_b\omega_d - \xtensor{\Gamma}{^d}{_{ab}}\nabla_d\omega_c

于是

.. math:: 
    \nabla_{[a}\nabla_b\omega_{c]} = \partial_{[a} \partial_b\omega_{c]} - \xtensor{\Gamma}{^d}{_{[bc}}\partial_{a]}\omega_d - \omega_d\partial_{[a}\xtensor{\Gamma}{^d}{_{bc]}} - \xtensor{\Gamma}{^d}{_{[ac}}\nabla_{b]}\omega_d - \xtensor{\Gamma}{^d}{_{[ab}}\nabla_{|d|}\omega_{c]}

由于 :math:`\partial_a\partial_b\omega_c = \partial_b\partial_a\omega_c` 和 :math:`\xtensor{\Gamma}{^d}{_{bc}} = \xtensor{\Gamma}{^d}{_{cb}}`, 由定理 2-6-2(c) 知上式右边每项都为零.

(3) 只需证 :math:`\omega_e \nabla_{[a}\xtensor{R}{_{bc]d}}{^e} = 0,\quad\forall \omega_e \in \mathscr{F}_M(0, 1)`, 而

.. math:: \omega_e \nabla_a\xtensor{R}{_{bcd}}{^e} =&\ \nabla_a\big( \xtensor{R}{_{bcd}}{^e} \omega_e \big)
    - \xtensor{R}{_{bcd}}{^e} \nabla_a \omega_e \\
    =&\ \nabla_a \big( \nabla_b\nabla_c \omega_d - \nabla_c\nabla_b\omega_d \big) - \xtensor{R}{_{bcd}}{^e} \nabla_a \omega_e

于是

.. math:: 
    \omega_e \nabla_{[a}\xtensor{R}{_{bc]d}}{^e} =&\ \nabla_{[a} \nabla_b\nabla_{c]} \omega_d - \nabla_{[a}\nabla_c\nabla_{b]}\omega_d - \xtensor{R}{_{[bc|d|}}{^e} \nabla_{a]} \omega_e \\
    =&\ \nabla_{[a} \nabla_b\nabla_{c]} \omega_d - \nabla_{[b}\nabla_a\nabla_{c]}\omega_d - \xtensor{R}{_{[bc|d|}}{^e} \nabla_{a]} \omega_e

其中

.. math:: 
    \nabla_a \nabla_b\nabla_{c} \omega_d - \nabla_{b}\nabla_a\nabla_{c}\omega_d
    = \big( \nabla_a \nabla_b - \nabla_b \nabla_a \big) \nabla_{c} \omega_d
    = \xtensor{R}{_{abc}}{^e} \nabla_e \omega_d + \xtensor{R}{_{abd}}{^e} \nabla_c \omega_e

由性质 (2) 知上式右边第一项反称化之后为零. 因此

.. math:: 
    \nabla_{[a} \nabla_b\nabla_{c]} \omega_d - \nabla_{[b}\nabla_a\nabla_{c]}\omega_d = \xtensor{R}{_{[ab|d|}}{^e} \nabla_{c]} \omega_e = \xtensor{R}{_{[bc|d|}}{^e} \nabla_{a]} \omega_e

于是 :math:`\omega_e \nabla_{[a}\xtensor{R}{_{bc]d}}{^e} = \xtensor{R}{_{[bc|d|}}{^e} \nabla_{a]} \omega_e- \xtensor{R}{_{[bc|d|}}{^e} \nabla_{a]} \omega_e = 0`.

(4) 由 :math:`\nabla_ag_{cd} = 0` 得

.. math:: 0= \big( \nabla_a\nabla_b - \nabla_b \nabla_a \big) g_{cd} = \xtensor{R}{_{abc}}{^e} g_{ed} + \xtensor{R}{_{abd}}{^e} g_{ce} = R_{abcd} + R_{abdc}

(5) 习题.

[注1] 设 :math:`\mathrm{dim} M = n`, 则 :math:`\xtensor{R}{_{abc}}{^d}` 的独立分量数仅为 :math:`N=n^2(n^2-1)/12`. 张量 :math:`R_{abcd}` 与 :math:`g^{ab}` 缩并的六个可能的迹只有一个独立, 可取 :math:`g^{bd}R_{abcd} = \xtensor{R}{_{abc}}{^b}`, 记作 :math:`R_{ac}`, 称为 **里奇张量** (Ricci tensor). 为定义里奇张量无需借用度规, 因为 :math:`R_{ac} \equiv \xtensor{R}{_{abc}}{^b}`. :math:`R_{ac}` 还可借度规求迹, 即 :math:`R= g^{ac}R_{ac}` 称为 **标量曲率** (scalar curvature). 易证 :math:`R_{ac} = R_{ca}`.

[定义2] 对维数 :math:`n \geqslant 3` 的广义黎曼空间, **外尔张量** (Weyl tensor) :math:`C_{abcd}` 由下式定义

.. math:: C_{abcd} := R_{abcd} - \frac{2}{n - 2} \big( g_{a[c} R_{d]b} - g_{b[c} R_{d]a} \big)
    +\frac{2}{(n-1)(n-2)} Rg_{a[c}g_{d]b}

[定理3-4-7] 外尔张量有以下性质

(1) :math:`C_{abcd} = -C_{bacd} = -C_{abdc} = C_{cdab},\quad C_{[abc]d} = 0`.
(2) :math:`C_{abcd}` 的各种迹都为零, 例如 :math:`g^{ac}C_{abcd} = 0`.

[定义3] 广义黎曼空间的 **爱因斯坦张量** :math:`G_{ab}` 由下式定义

.. math:: G_{ab} := R_{ab} - \frac{1}{2}R g_{ab}

[定理3-4-8] :math:`\nabla^aG_{ab} = 0` (其中 :math:`\nabla^a G_{ab} \equiv g^{ac}\nabla_c G_{ab}`)

[证明] 由比安基恒等式及性质曲率张量 (1) 有

.. math:: \nabla_a \xtensor{R}{_{bcd}}{^e} + \nabla_c \xtensor{R}{_{abd}}{^e} + \nabla_b \xtensor{R}{_{cad}}{^e} = 0

指标 :math:`a` 同 :math:`e` 缩并得

.. math:: \nabla_a \xtensor{R}{_{bcd}}{^a} - \nabla_c R_{bd} + \nabla_b R_{cd} = 0

以 :math:`g^{bd}` 作用得

.. math:: \nabla_a \xtensor{R}{_c}{^a} - \nabla_c R + \nabla_b \xtensor{R}{_c}{^b} = 2\nabla_a \xtensor{R}{_c}{^a} - \nabla_c R = 0
    :label: gab-prove

故 :math:`\nabla^a G_{ab} = \nabla^a R_{ab} - \frac{1}{2}g_{ab}\nabla^a R = \nabla_a \xtensor{R}{_b}{^a} - \frac{1}{2}\nabla_b R = 0`, 其中第二步用到 :math:`R_{ab} = R_{ba}`, 第三步用到 :eq:`gab-prove`.

常见的问题是已知 :math:`g_{ab}` 欲求 :math:`\xtensor{R}{_{abc}}{^d}`. 任选坐标系后, 度规分量 :math:`g_{\mu\nu}` 便是已知量, 满足 :math:`\nabla_a g_{bc} = 0` 的联络 :math:`\nabla_a` 在此坐标系下的体现就是它在该系的克氏符

.. math:: \xtensor{\Gamma}{^\sigma}{_{\mu\nu}} = \frac{1}{2}g^{\sigma\rho}
    \big( g_{\rho\mu,\nu} + g_{\nu\rho,\mu} - g_{\mu\nu,\rho} \big)

:math:`\xtensor{\Gamma}{^\sigma}{_{\mu\nu}}` 有三个具体指标, 分量中有 :math:`n^2(n+1)/2` 个独立 (当 :math:`n=4` 时有40个数独立). 计算的第一步就是从已知的 :math:`g_{\mu\nu}` 求出全部非零的 :math:`\xtensor{\Gamma}{^\sigma}{_{\mu\nu}}`.

由黎曼张量定义有 :math:`\xtensor{R}{_{abc}}{^d}\omega_d = 2\nabla_{[a}\nabla_{b]}\omega_c`. 其中

.. math:: 
    \nabla_{a}\nabla_{b}\omega_c =&\ \nabla_{a} \big( \partial_b\omega_c - \xtensor{\Gamma}{^d}{_{bc}}\omega_d \big) \\
        =&\ \partial_a\partial_b \omega_c  - \xtensor{\Gamma}{^d}{_{ac}}\partial_b\omega_d
            - \xtensor{\Gamma}{^d}{_{ab}}\partial_d\omega_c - \partial_a \big(\xtensor{\Gamma}{^d}{_{bc}}\omega_d \big)
            + \xtensor{\Gamma}{^e}{_{ab}}\xtensor{\Gamma}{^d}{_{ec}}\omega_d
            + \xtensor{\Gamma}{^e}{_{ac}}\xtensor{\Gamma}{^d}{_{be}}\omega_d

注意到 :math:`\partial_{[a}\partial_{b]}\omega_c = 0, \quad \xtensor{\Gamma}{^d}{_{[ab]}} = \xtensor{\Gamma}{^d}{_{[(ab)]}} = 0`, 得

.. math:: \xtensor{R}{_{abc}}{^d}\omega_d =&\ 2 \big[ - \xtensor{\Gamma}{^d}{_{c[a}}\partial_{b]}\omega_d
            - \partial_{[a} \big(\xtensor{\Gamma}{^d}{_{b]c}}\omega_d \big)
            + \xtensor{\Gamma}{^e}{_{c[a}}\xtensor{\Gamma}{^d}{_{b]e}}\omega_d \big] \\
    =&\ 2 \big( {\color{green}{- \xtensor{\Gamma}{^d}{_{c[a}}\partial_{b]}\omega_d
            - \xtensor{\Gamma}{^d}{_{c[b}} \partial_{a]} \omega_d }}
            -  \omega_d\partial_{[a} \xtensor{\Gamma}{^d}{_{b]c}}
            + \xtensor{\Gamma}{^e}{_{c[a}}\xtensor{\Gamma}{^d}{_{b]e}}\omega_d \big) \\
    =&\ -2  \omega_d\partial_{[a} \xtensor{\Gamma}{^d}{_{b]c}} + 2 \xtensor{\Gamma}{^e}{_{c[a}}\xtensor{\Gamma}{^d}{_{b]e}}\omega_d

因此

.. math:: \xtensor{R}{_{abc}}{^d} = -2\partial_{[a} \xtensor{\Gamma}{^d}{_{b]c}} + 2 \xtensor{\Gamma}{^e}{_{c[a}}\xtensor{\Gamma}{^d}{_{b]e}}

其坐标分量为

.. math:: \xtensor{R}{_{\mu\nu\sigma}}{^\rho} = \xtensor{\Gamma}{^\rho}{_{\mu\sigma,\nu}}
    - \xtensor{\Gamma}{^\rho}{_{\nu\sigma,\mu}} + \xtensor{\Gamma}{^\lambda}{_{\sigma\mu}} \xtensor{\Gamma}{^\rho}{_{\nu\lambda}} - \xtensor{\Gamma}{^\lambda}{_{\sigma\nu}} \xtensor{\Gamma}{^\rho}{_{\mu\lambda}}

由上式又可得到里奇张量的坐标分量表达式

.. math:: R_{\mu\sigma} = \xtensor{R}{_{\mu\nu\sigma}}{^\nu}
    = \xtensor{\Gamma}{^\nu}{_{\mu\sigma,\nu}}
    - \xtensor{\Gamma}{^\nu}{_{\nu\sigma,\mu}} + \xtensor{\Gamma}{^\lambda}{_{\sigma\mu}} \xtensor{\Gamma}{^\nu}{_{\nu\lambda}} - \xtensor{\Gamma}{^\lambda}{_{\sigma\nu}} \xtensor{\Gamma}{^\nu}{_{\mu\lambda}}

第五节 内禀曲率和外曲率
^^^^^^^^^^^^^^^^^^^^^^^

把流形镶进高一维流形所定义的曲率叫 "外曲率". 黎曼张量是内禀曲率, 它反映流形 :math:`M` 在指定联络 :math:`\nabla_a` 后的 "内禀弯曲性". 一般而言, :math:`(M, g_{ab})` 中凡是只由 :math:`g_{ab}` 决定的性质都称为 :math:`(M, g_{ab})` 的 **内禀** (intrinsic) **性质**.

"内禀弯曲性" 的 "弯曲" 一词反映的是以下三个等价性质, 具有这些性质的广义黎曼空间叫弯曲空间.

(1) 导数算符的非对易性, 即 :math:`\big( \nabla_a\nabla_b - \nabla_b\nabla_a \big)\omega_c = \xtensor{R}{_{abc}}{^d}\omega_d,\quad\forall \omega_d \in \mathscr{F}_M(0, 1)`.
(2) 矢量平移的曲线依赖性.
(3) 存在初始平行后来不平行的测地线.
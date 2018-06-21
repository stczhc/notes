
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

第四章 李导数、Killing 场和超曲面
---------------------------------

第一节 流形间的映射
^^^^^^^^^^^^^^^^^^^

设 :math:`M, N` 为流形 (维数可以不同), :math:`\phi: M\to N` 为光滑映射. 以 :math:`\mathscr{F}_M` 和 :math:`\mathscr{F}_N` 分别代表 :math:`M` 和 :math:`N` 上光滑函数的集合, :math:`\mathscr{F}_M(k, l)` 和 :math:`\mathscr{F}_N(k, l)` 分别代表 :math:`M` 和 :math:`N` 上光滑 :math:`(k, l)` 型张量场的集合. :math:`\phi` 自然诱导出一系列映射如下:

[定义1] **拉回** (pull back) **映射** :math:`\phi^* : \mathscr{F}_N \to \mathscr{F}_M` 定义为

.. math:: 
    (\phi^* f)| _p := f|_{\phi(p)},\quad \forall f\in \mathscr{F}_N, \ p \in M

即 :math:`\phi^* f = f\circ \phi`. 由定义1 不难证明:

(1) :math:`\phi^* : \mathscr{F}_N \to \mathscr{F}_M` 是线性映射, 即

.. math:: 
    \phi^*(\alpha f + \beta g) = \alpha\phi^*(f) + \beta\phi^*(g),\quad\forall f,g\in\mathscr{F}_N,\quad \alpha,\beta \in \mathbb{R}.

(2) :math:`\phi^*(fg) = \phi^*(f)\phi^*(g),\quad\forall f,g\in \mathscr{F}_N`.

[定义2] 对 :math:`M` 中任一点 :math:`p` 可定义 **推前** (push forward) **映射** :math:`\phi_* : V_p \to V_{\phi(p)}` 如下: :math:`\forall v^a\in V_p`, 定义其像为 :math:`\phi_* v^a \in V_{\phi(p)}` 为

.. math:: (\phi_* v)(f) := v(\phi^* f),\quad \forall f \in \mathscr{F}_N

还应证明 (习题) 这样定义的 :math:`\phi_* v^a` 确是 :math:`\phi(p)` 点的矢量. 许多文献也把 :math:`\phi_*` 称为 :math:`\phi` 的 **切映射**.

[定理4-1-1] :math:`\phi_* : V_p \to V_{\phi(p)}` 是线性映射, 即

.. math:: 
    \phi_* (\alpha u^a + \beta v^a) = \alpha \phi_* u^a + \beta \phi_* v^a,\quad\forall u^a, v^a \in V_p,\ \alpha,\beta\in \mathbb{R}

[定理4-1-2] 设 :math:`C(t)` 是 :math:`M` 中的曲线, :math:`T^a` 为曲线在 :math:`C(t_0)` 点的切矢, 则 :math:`\phi_* T^a \in V_{\phi(C(t_0))}` 是曲线 :math:`\phi(C(t))` 在 :math:`\phi(C(t_0))` 点的切矢 (曲线切矢的像是曲线像的切矢).

[定义3] 拉回映射可按如下方式延拓至 :math:`\phi^* : \mathscr{F}_N(0, l) \to \mathscr{F}_M(0, l)`: :math:`\forall T \in \mathscr{F}_N(0, l)`, 定义 :math:`\phi^* T \in \mathscr{F}_M(0, l)` 为

.. math:: 
    (\phi^* T)_{a_1\cdots a_l}| _p (v_1)^{a_1}\cdots (v_l)^{a_l} := T_{a_1\cdots a_l}| _{\phi(p)}
        (\phi_* v_1)^{a_1} \cdots (\phi_* v_l)^{a_l},\quad \forall p\in M,\ v_1,\cdots v_l \in V_p

[定义4] :math:`\forall p \in M`, 推前映射 :math:`\phi_*` 可按如下方式延拓至 :math:`\phi_* : \mathscr{T}_{V_p}(k, 0) \to \mathscr{T}_{V_{\phi(p)}}(k, 0)`: :math:`\forall T \in \mathscr{T}_{V_p}(k, 0)`, 其像 :math:`\phi_* T \in \mathscr{T}_{V_{\phi(p)}}(k, 0)` 由下式定义:

.. math:: 
    (\phi_* T)^{a_1\cdots a_k}(\omega^1)_{a_1}\cdots (\omega^k)_{a_k} := T^{a_1\cdots a_k}
        (\phi^*\omega^1)_{a_1}\cdots (\phi^*\omega^k)_{a_k}, \forall \omega^1,\cdots, \omega^k \in V^*_{\phi(p)}

其中 :math:`(\phi^* \omega)_a` 定义为 :math:`(\phi^*\omega)_av^a := \omega_a (\phi_* v)^a,\quad\forall v^a\in V_p`. (注意这其实是单个点版本的 :math:`\phi^*`, 说明它是逐点定义的, 可以对两个张量变换, 但是同样也可以对两个张量场变换. 而 :math:`\phi_*` 只能逐点变换).

对于微分同胚映射 :math:`\phi:M\to N` 存在两种观点: (1) **主动观点** (active viewpoint), 它如实地认为 :math:`\phi` 是点的变换 [把 :math:`p` 变为 :math:`\phi(p)`] 以及由此导致的张量变换 [把 :math:`p` 点的张量 :math:`T` 变为 :math:`\phi(p)` 点的张量 :math:`\phi_* T`]; (2) **被动观点** (passive viewpoint), 它认为点 :math:`p` 及其上的所有张量 :math:`T` 都没变, :math:`\phi : M\to N` 的后果是坐标系有了变换 (从 :math:`\{ x^\mu \}` 变为 :math:`\{ x'^\mu \}`). 这两种观点是等价的. 下面的定理可以看作等价性的某种表现.

[定理4-1-3] :math:`\xtensor{(\phi_* T)}{^{\mu_1\cdots \mu_k}}{_{\nu_1\cdots \nu_l}} |_{\phi(p)} = \xtensor{{T'}}{^{\mu_1\cdots \mu_k}}{_{\nu_1\cdots \nu_l}} |_p,\quad \forall T\in \mathscr{T}_M(k, l)`. 式中左边是新点 :math:`\phi(p)` 的新张量 :math:`\phi_* T` 在老坐标系 :math:`\{ y^\mu \}` 的分量, 右边是老点 :math:`p` 的老张量 :math:`T` 在新坐标系的分量.

第二节 李导数
^^^^^^^^^^^^^

[定义1]

.. math:: \mathscr{L}_v \xtensor{T}{^{a_1\cdots a_k}}{_{b_1\cdots b_l}} := \lim_{t\to 0} \frac{1}{t}
    \big( \phi^*_t \xtensor{T}{^{a_1\cdots a_k}}{_{b_1\cdots b_l}} - \xtensor{T}{^{a_1\cdots a_k}}{_{b_1\cdots b_l}} \big)

称为张量场 :math:`\xtensor{T}{^{a_1\cdots a_k}}{_{b_1\cdots b_l}}` 沿矢量场 :math:`v^a` 的 **李导数** (Lie derivative), 其中 :math:`\phi` 是光滑矢量场 :math:`v^a` 给出的一个单参微分同胚群.

[注1] 因 :math:`\phi^*_t` 为线性映射, 故李导数是由 :math:`\mathscr{F}_M(k, l)` 到 :math:`\mathscr{F}_M(k, l)` 的线性映射. :math:`\mathscr{L}_v` 同缩并可交换顺序.

[定理4-2-1] :math:`\mathscr{L}_v f = v(f),\quad\forall f \in \mathscr{F}`.

[证明] :math:`\forall p\in M`, 设 :math:`C(t)` 是 :math:`\phi` 过 :math:`p` 点的轨道, :math:`p=C(0)`, 则 :math:`\phi_t(p) = C(t)` 且 :math:`v^a|_p \equiv (\partial/\partial t)^a|_p` 是 :math:`C(t)` 在 :math:`p` 点的切矢, 故

.. math:: 
    \mathscr{L}_v f| _p =&\ \lim_{t \to 0}\frac{1}{t} \big(\phi^*_t f - f\big)\big|_p = 
        \lim_{t\to 0} \frac{1}{t} \big[ f\big( \phi_t(p)\big) - f(p) \big] \\
        =&\ \lim_{t \to 0}\frac{1}{t} \big[ f(C(t)) - f(C(0)) \big] = \frac{\D}{\D t} (f\circ C)| _{t=0} = v(f)|_p

求李导数时总要给定矢量场 :math:`v^a`, 可以选定它的积分曲线为 :math:`x^1` 坐标线( :math:`t` 充当 :math:`x^1`), 再相当任意地选定另一组与这组曲线横截 (即交点上两线切矢不平行) 的曲线作为 :math:`x^2` 坐标线, 这样得到的坐标系称为矢量场 :math:`v^a` 的 **适配坐标系** (adapted coordinate system). 以上讨论可推广至任意维流形.

[定理4-2-2] 张量场 :math:`\xtensor{T}{^{a_1\cdots a_k}}{_{b_1\cdots b_l}}` 沿 :math:`v^a` 的李导数在 :math:`v^a` 的适配坐标系的分量

.. math:: 
    \xtensor{\big(\mathscr{L}_v T\big)}{^{\mu_1\cdots\mu_k}}{_{\nu_1\cdots\nu_l}} = \frac{\partial 
        \xtensor{T}{^{\mu_1\cdots\mu_k}}{_{\nu_1\cdots\nu_l}}}{\partial x^1}
    
[注2] 上式左边在坐标变换时满足张量变换律而右边则否, 故不能改写为张量等式.

[证明] 仅以 :math:`n = 2, k = l = 1` 为例 (容易推广至一般情况). 因 :math:`\phi^*_t = (\phi_t)^{-1}_* = \phi_{-t*}`, 李导数定义式在任一坐标系 (现在取适配坐标系) 的分量式为

.. math:: \xtensor{\big(\mathscr{L}_vT\big)}{^\mu}{_\nu}\big\rvert _p = \lim_{t \to 0}
    \frac{1}{t} \big[ \xtensor{\big(\phi_{-t*}T\big)}{^\mu}{_\nu} \big\rvert_p - \xtensor{T}{^\mu}{_\nu}|_p \big],\quad
        \forall p \in M
    :label: liedev-prove

令 :math:`q \equiv \phi_t(p)`, 因导数只涉及 :math:`p` 点附近的情况, 总可认为 :math:`p, q` 点都在同一适配坐标域内. 对 :math:`\phi_{-t}` 而言, :math:`q` 为老点, :math:`p` 为新点, 因此

.. math:: \xtensor{\big(\phi_{-t*}T\big)}{^\mu}{_\nu} \big\rvert_p = \xtensor{{T'}}{^\mu}{_\nu}|_q
    =\left[ \frac{\partial x'^\mu}{\partial x^\rho} \frac{\partial x^\sigma}{\partial x'^\nu} \xtensor{T}{^\rho}{_\sigma} \right]_q

式中 :math:`x^\sigma` 为适配 (老) 坐标, :math:`x'^\mu` 是由 :math:`\phi_{-t}` 诱导的新坐标. 上式右边涉及新老坐标间的偏导数在 :math:`q` 点的值. 由适配坐标的定义知 :math:`x'^1 = x^1 - t, x'^2 = x^2`, 求导得 :math:`\frac{\partial x'^\mu}{\partial x^\rho} = \xtensor{\delta}{^\mu}{_\rho}, \frac{\partial x^\sigma}{\partial x'^\nu} = \xtensor{\delta}{^\sigma}{_\nu}`, 于是 :math:`\xtensor{\big(\phi_{-t*}T\big)}{^\mu}{_\nu} \big\rvert_p = \xtensor{T}{^\mu}{_\nu}|_q`. 代入 :eq:`liedev-prove` 便得 :math:`\xtensor{\big(\mathscr{L}_vT\big)}{^\mu}{_\nu}\big\rvert _p = \partial \xtensor{T}{^\mu}{_\nu}/\partial x^1 |_p`.

由定理4-2-2可知 :math:`\mathscr{L}_v` 满足莱布尼兹律.

[定理4-2-3] :math:`\mathscr{L}_v u^a = [v, u]^a,\quad \forall u^a, v^a \in \mathscr{F}(1, 0)`. 或者, 借助于对易子的表达式有 :math:`\mathscr{L}_v u^a = v^b\nabla_b u^a - u^b\nabla_b v^a`, 其中 :math:`\nabla_a` 为任一无挠导数算符.

[证明] 只须证明它在某一坐标系的分量等式成立. 设 :math:`v^a` 的适配坐标系 :math:`\{ x^\mu \}` 的普通导数算符是 :math:`\partial_a`, 则

.. math:: [v, u]^\mu =&\ (\D x^\mu)_a [v, u]^a = (\D x^\mu)_a \big( v^b\partial_b u^a - u^b \partial_b v^a \big)
    = v^b \partial_b u^\mu \\
    =&\ v(u^\mu) = \partial u^\mu/\partial x^1 = (\mathscr{L}_v u)^\mu

其中第三步是因为 :math:`v^a = (\partial/\partial x^1)^a` 导致 :math:`\partial_b v^a = 0`, 第四步用到导数算符定义的条件(d), 最后一步用到 [定理4-2-2].

[定理4-2-4] :math:`\mathscr{L}_v\omega_a = v^b\nabla_b\omega_a+\omega_b\nabla_a v^b,\quad v^a \in \mathscr{F}(1, 0), \ \omega_a \in \mathscr{F}(0, 1)`, 其中 :math:`\nabla_a` 为任一无挠导数算符. 注意, 这说明李导数的定义并不需要流形上选定特定的导数算符.

[定理4-2-5] :math:`\nabla_a` 为任一导数算符, 有

.. math:: 
    \mathscr{L}_v \xtensor{T}{^{a_1\cdots a_k}}{_{b_1\cdots b_l}} =&\  v^c\nabla_c \xtensor{T}{^{a_1\cdots a_k}}{_{b_1\cdots b_l}} -\sum_{i = 1}^k \xtensor{T}{^{a_1\cdots c\cdots a_k}}{_{b_1\cdots b_l}} \nabla_c v^{a_i}
    + \sum_{j=1}^l \xtensor{T}{^{a_1\cdots a_k}}{_{b_1\cdots c\cdots b_l}} \nabla_{b_j} v^c \\
    &\ \forall T\in \mathscr{F}(k, l),\ v \in \mathscr{F}(1, 0)

第三节 Killing 矢量场
^^^^^^^^^^^^^^^^^^^^^

[定义1] 微分同胚 :math:`\phi: M\to M` 称为 **等度规映射**, 简称 **等度规** (isometry), 若 :math:`\phi^*g_{ab} = g_{ab}`.

如果 :math:`M` 上指定了度规场 :math:`g_{ab}`, 则众多光滑矢量场中可以挑出特殊的一个子类, 其中每个矢量场给出的单参微分同胚群是单参等度规群, 即每个群元 :math:`\phi_t : M \to M` 是 :math:`M` 上的一个等度规映射. 于是有以下定义

[定义2] :math:`(M, g_{ab})` 上的矢量场 :math:`\xi^a` 称为 **Killing 矢量场**, 若它给出的单参微分同胚 (局部) 群是单参等度规 (局部) 群. 等价地, :math:`\xi^a` 称为 Killing 矢量场, 若 :math:`\mathscr{L}_\xi g_{ab} = 0`.

.. admonition:: 备注

    李导数 :math:`\mathscr{L}_\xi g_{ab}` 分子是 :math:`\phi_t^* g_{ab} - g_{ab}` 由于 :math:`\phi_t` 等度规而等于零. 

[定理4-3-1] :math:`\xi^a` 为 Killing 矢量场的充要条件是 :math:`\xi^a` 满足如下的 **Killing 方程**:

.. math:: 
    \nabla_a\xi_b + \nabla_b\xi_a = 0,\quad \text{或} \ \nabla_{(a}\xi_{b)} = 0,\quad \text{或}\ \nabla_a\xi_b = \nabla_{[a}\xi_{b]}.

其中 :math:`\nabla_a` 满足 :math:`\nabla_ag_{bc} = 0`.

[证明] :math:`0 = \mathscr{L}_\xi g_{ab} = \xi^c \nabla_c g_{ab} + g_{cb}\nabla_a \xi^c + g_{ac}\nabla_b\xi^c = \nabla_a\xi_b + \nabla_b\xi_a`.

[定理4-3-2] 若存在坐标系 :math:`\{ x^\mu \}` 使 :math:`g_{ab}` 的全部分量满足 :math:`\partial g_{\mu\nu} /\partial x^1 = 0`, 则 :math:`(\partial/\partial x^1)^a` 是坐标域上的 Killing 矢量场.

[证明] :math:`\{ x^1 \}` 是 :math:`(\partial/\partial x^1)^a` 的适配坐标系. 得 :math:`\big( \mathscr{L}_{\partial/\partial x^1} g \big)_{\mu\nu} = \partial g_{\mu\nu}/\partial x^1 = 0`, 故 :math:`\mathscr{L}_{\partial/\partial x^1} g_{ab} = 0`, 即 :math:`(\partial/\partial x^1)^a` 为 Killing 矢量场.

[定理4-3-3] 设 :math:`\xi^a` 为 Killing 矢量场, :math:`T^a` 为测地线的切矢, 则 :math:`T^a\nabla_a(T^b\xi_b) = 0`, 即 :math:`T^b\xi_b` 在测地线上为常数. 

[证明] :math:`T^a\nabla_a (T^b\xi_b) = \xi_b T^a\nabla_a T^b + T^bT^a\nabla_a \xi_b = 0`, 其中第二步用到测地线定义, 第三步用到 [定理4-3-1] (即 :math:`\nabla_a\xi_b = \nabla_{[a}\xi_{b]}` 及[定理2-6-2(d)]. 由于 :math:`T^bT^a` 是对称的, :math:`ab` 指标既要加反对称又要加对称, 因此为零.

设 :math:`\xi^a, \eta^b` 是 Killing 矢量场, :math:`\alpha, \beta` 是常实数, 则由 Killing 方程的线性性知 :math:`\alpha\xi^a + \beta\eta^a` 也是 Killing 矢量场. 不难看出 :math:`M` 上所有 Killing 矢量场的集合是个矢量空间. 还可证明 (习题) 对易子 :math:`[\xi, \eta]^a` 也是 Killing 矢量场.

[定理4-3-4] :math:`(M, g_{ab})` 上最多有 :math:`n(n + 1)/2` 个独立的 Killing 矢量场 (:math:`n \equiv \mathrm{dim} M`), 即 :math:`M` 上所有 Killing 矢量场的集合 (作为矢量空间) 的维数小于等于 :math:`n(n+1)/2`.

.. admonition:: 备注

    可以理解为, 每次选两个维度, 共有 :math:`n(n - 1) /2` 种选法, 这些构成旋转或者伪旋转. 然后每个坐标自己的平动也算对称变换, 于是 :math:`n(n -1)/2 + n = n(n + 1) /2`.

[注2] (1) 等度规映射可看作一种 "保度规" 的对称变换, 所以一个 Killing 矢量场代表 :math:`(M, g_{ab})` 的一个对称性, 具有 :math:`n(n + 1)/ 2` 个独立 Killing 矢量场的广义黎曼空间 :math:`(M, g_{ab})` 称为最高对称性空间. (2) 寻找 :math:`(M, g_{ab})` 的全体 Killing 矢量场的一般方法是求 Killing 方程的通解.

(1) 2 维欧氏空间 :math:`(\mathbb{R}^2, \delta_{ab})` 有3个独立的 Killing 场, 即 :math:`(\partial/\partial x)^a, \quad(\partial/\partial y)^a` 和 :math:`(\partial/\partial \varphi)^a = -y(\partial/\partial x)^a + x(\partial/\partial y)^a`.
(2) 3 维欧氏空间 :math:`(\mathbb{R}^3, \delta_{ab})` 有6个独立的 Killing 场, 即沿 :math:`x, y, z` 轴的平移不变性 :math:`(\partial/\partial x)^a,\quad (\partial/\partial y)^a,\quad (\partial/\partial z)^a` 和绕 :math:`z, x, y` 轴的旋转不变性 :math:`-y(\partial/\partial x)^a + x(\partial/\partial y)^a, \quad -z(\partial/\partial y)^a + y(\partial/\partial z)^a` 和 :math:`-x(\partial/\partial z)^a + z(\partial/\partial x)^a`.
(3) 2 维闵氏空间 :math:`(\mathbb{R}^2, \eta_{ab})`. 在洛伦兹坐标系 :math:`\{ t, x \}` 中有 :math:`\D s^2 = -\D t^2 + \D x^2`, 故 :math:`(\partial/\partial t)^a` 和 :math:`(\partial/ \partial x)^a` 为 Killing 场. 为求第三个, 用下式定义新坐标 :math:`\psi, \eta`:

.. math:: 
    x = \psi \mathrm{ch} \eta, \quad t = \psi\mathrm{sh} \eta, \quad 0<\psi < \infty, \quad -\infty <\eta < \infty

闵氏线元可用新坐标表为 :math:`\D s^2 = \D \psi^2-\psi^2\D \eta^2`. 上式表明 :math:`\eta_{ab}` 在新坐标系的全体分量与坐标 :math:`\eta` 无关, 故 :math:`(\partial/\partial \eta)^a` 也是 Killing 矢量场 (其积分曲线是双曲线), 它在洛伦兹坐标基底的展开式为

.. math:: 
    (\partial/\partial\eta)^a = t(\partial/\partial x)^a + x (\partial/\partial t)^a

由展开系数与坐标有关可知 :math:`(\partial/\partial\eta)^a` 与前两个 Killing 场独立. :math:`t(\partial/\partial x)^a + x (\partial/\partial t)^a` 叫做 **伪转动** (boost) Killing 矢量场, 表明闵氏度规具有伪转动下的不变性, 对应于洛伦兹变换.

(4) 4 维闵氏空间 :math:`(\mathbb{R}^4, \eta_{ab})`. 因 :math:`n=4`, 故独立的 Killing 场共10个, 分三组:

    (a) 4 个平移 :math:`(\partial/\partial t)^a,\quad (\partial/\partial x)^a,\quad (\partial/\partial y)^a,\quad (\partial/\partial z)^a`.
    (b) 3 个空间转动 :math:`-y(\partial/\partial x)^a + x(\partial/\partial y)^a, \quad -z(\partial/\partial y)^a + y(\partial/\partial z)^a` 和 :math:`-x(\partial/\partial z)^a + z(\partial/\partial x)^a`.
    (c) 3 个伪转动 :math:`t(\partial/\partial x)^a + x (\partial/\partial t)^a,\quad t(\partial/\partial y)^a + y (\partial/\partial t)^a,\quad t(\partial/\partial z)^a + z (\partial/\partial t)^a`.

[定理4-3-5] 设 :math:`\{x, t\}` 是2维闵氏空间 :math:`(\mathbb{R}^2, \eta_{ab})` 的洛伦兹坐标系, :math:`\phi_\lambda : \mathbb{R}^2 \to \mathbb{R}^2` 是伪转动 Killing 场 :math:`\xi^a \equiv t(\partial/\partial x)^a + x (\partial/\partial t)^a` 对应的单参等度规群的一个群元 (即以参数 :math:`\lambda \in \mathbb{R}` 刻画的那个等度规映射), 则由 :math:`\phi_\lambda` 诱导的坐标变换 :math:`\{x, t\} \mapsto \{ x', t' \}` 是洛伦兹变换.

[注3] 本定理表明伪转动和洛伦兹变换是同一变换的两种 (主动与被动) 提法. 类似地, 欧氏空间的转动 Killing 场 :math:`-y(\partial/\partial x)^a + x(\partial/\partial y)^a` 与坐标变换

.. math:: 
    x' = x\cos\alpha - y\sin\alpha, \quad y' = x\sin \alpha + y\cos\alpha

也是同一变换的两种提法.

[证明] 矢量场 :math:`\xi^a \equiv (\partial/\partial \eta)^a` 的积分曲线的参数方程为 :math:`\D x^\mu(\eta)/\D \eta = \xi^\mu (\mu = 0, 1)` 注意到 :math:`\xi^a \equiv t(\partial/\partial x)^a + x (\partial/\partial t)^a`, 便得

.. math:: 
    \frac{\D x(\eta)}{\D \eta} = t(\eta),\quad \frac{\D t(\eta)}{\D \eta} = x(\eta), \quad \forall p \in \mathbb{R}^2

设 :math:`C(\eta)` 是满足 :math:`p = C(0)` 的积分曲线, 即 :math:`x(0) = x_p,\quad t(0) = t_p`, 则不难证明上述方程的特解 [即该线参数式] 为

.. math:: 
    x(\eta) = x_p \mathrm{ch}\eta + t_p \mathrm{sh} \eta, \quad 
    t(\eta) = x_p \mathrm{sh}\eta + t_p \mathrm{ch} \eta.

设 :math:`q\equiv \phi_\lambda (p)`, 则 :math:`q` 就是 :math:`C(\eta)` 上参数值 :math:`\eta = \lambda` 的点, 即 :math:`q = C(\lambda)`, 故由 :math:`\phi_\lambda` 诱导的新坐标 :math:`t'` 和 :math:`x'` 满足

.. math:: x'_p \equiv x_q = x_p \mathrm{ch}\lambda + t_p \mathrm{sh} \lambda, \quad 
    t'_p = t_q = x_p \mathrm{sh}\lambda + t_p \mathrm{ch} \lambda.

因 :math:`p` 点任意, 故可去掉下标 :math:`p` 而写成

.. math:: x' = \mathrm{ch}\lambda (x + t\mathrm{th}\lambda ),\quad
          t' = \mathrm{ch}\lambda (t + x\mathrm{th}\lambda ).
        
令 :math:`v \equiv \mathrm{th} \lambda,\quad \lambda \equiv (1-v^2)^{-1/2} = \mathrm{ch}\lambda`, 则

.. math:: x'=\gamma (x +vt),\quad t' = \gamma (t+vx).

这便是熟知的洛伦兹变换.

[定理4-3-6] 设 :math:`\{ x^\mu \}` 是 :math:`(\mathbb{R}^n, \eta_{ab} )` 的洛伦兹坐标系, 则 :math:`\{ x'^\mu \}` 也是洛伦兹坐标系的充要条件是它由 :math:`\{ x^\mu \}` 通过等度规映射 :math:`\phi:\mathbb{R}^n \to \mathbb{R}^n` 诱导而得.

第四节 超曲面
^^^^^^^^^^^^^

[定义1] 设 :math:`M, S` 为流形, :math:`\mathrm{dim} S \leqslant \mathrm{dim} M \equiv n`. 映射 :math:`\phi : S \to M` 称为 **嵌入** (imbedding), 若 :math:`\phi` 是一一和 :math:`\C^\infty` 的, 而且 :math:`\forall p \in S`, 推前映射 :math:`\phi_* : V_p \to V_{\phi(p)}` 非退化, 即 :math:`\phi_*v^a = 0 \Rightarrow v^a = 0`.

[注1] 嵌入的上述条件使 :math:`S` 的拓扑和流形结构可自然地被带到 :math:`\phi[S]` 上去, 从而使 :math:`\phi : S \to \phi[S]` 成为微分同胚映射.

[定义2] 嵌入 :math:`\phi : S \to M` 称为 :math:`M` 的一个 **嵌入子流形** (imbedded submanifold), 简称 **子流形**. 也常把映射的像 :math:`\phi[S]` 称为嵌入子流形. 若 :math:`\mathrm{dim} S = n -1`, 则 :math:`\phi[S] \subset M` 称为 :math:`M` 的一张 **超曲面** (hypersurface).

设 :math:`\phi[S]` 是 :math:`M` 的超曲面, :math:`q \in \phi[S] \subset M`. 作为 :math:`M` 的一点, :math:`q` 有 :math:`n` 维切空间 :math:`V_q`. 若 :math:`w^a \in V_q` 是过 :math:`q` 且躺在 :math:`\phi[S]` 上的某曲线的切矢 ( "躺在" 是指曲线每点都在 :math:`\phi[S]` 上), 则说 :math:`w^a` 切于 :math:`\phi[S]`. :math:`V_q` 中全体切于 :math:`\phi[S]` 的元素构成的子集记作 :math:`W_q`. 超曲面的定义保证 :math:`W_q` 是 :math:`V_q` 的 :math:`n - 1` 维子空间. **余矢** (covector) 是对偶矢量的别名.

[定义3] 设 :math:`\phi[S]` 是超曲面, :math:`q \in \phi[S]`. 非零对偶矢量 :math:`n_a \in V_q^*` 称为 :math:`\phi[S]` 在 :math:`q` 点的 **法余矢** (normal covector), 若 :math:`n_aw^a = 0,\quad \forall w^a \in W_q`.

[定理4-4-1] 超曲面 :math:`\phi[S]` 上任一点 :math:`q` 必有法余矢 :math:`n_a`. 法余矢不唯一, 但 :math:`q` 点的任意两个法余矢之间只能差一实数因子.

[证明] 设 :math:`\{ (e_2)^a, \cdots, (e_n)^a \}` 为 :math:`W_q` 任一基底, 因 :math:`\mathrm{dim} V_q = n`, :math:`V_q` 必有与 :math:`\{ (e_2)^a, \cdots, (e_n)^a \}` 线性无关的元素, 任取其一并记作 :math:`(e_1)^a`, 则 :math:`\{ (e_\mu)^a | \mu = 1, \cdots, n \}` 为 :math:`V_q` 的基底, 其对偶基底记作 :math:`\{ (e^\mu)_a \}`. 令 :math:`n_a = (e^1)_a`, 则 :math:`n_a(e_\tau)^a = \xtensor{\delta}{^1}{_\tau} = 0\ (\tau = 2, \cdots, n)`, 故 :math:`n_aw^a = 0\quad\forall w^a\in W_q`, 可见 :math:`n_a` 为法余矢. 若存在 :math:`m_a` 满足 :math:`m_a(e_\tau)^a = 0 \ (\tau = 2, \cdots, n)`, 则其在对偶基底 :math:`\{ (e^\mu)_a \}` 的分量 :math:`m_\tau = m_a(e_\tau)^a = 0 \ (\tau = 2, \cdots, n)`, 因而 :math:`m_a = m_1(e^1)_a = m_1n_a`, 即 :math:`m_a` 与 :math:`n_a` 只差一因子 :math:`m_1`.

[注2] 非超曲面的嵌入子流形 (如3维流形中的曲线) 的法余矢没有这样好的唯一性.

[定理4-4-2] 设 :math:`\phi[S]` 是由 :math:`f=\mathrm{const}` 给出的超曲面, 则面上的 :math:`\nabla_a f` 是超曲面的法余矢.

[证明] 只须对任一 :math:`q \in \phi[S]` 证明 :math:`w^a\nabla_a f = 0,\forall w^a \in W_q`. 因 :math:`w^a` 总切于过 :math:`q` 并躺在 :math:`\phi[S]` 上的某曲线 :math:`C(t)`, 故 :math:`w^a\nabla_a f=\frac{\partial}{\partial t}(f) = 0\quad \forall w^a\in W_q`, 最后一步是因 :math:`f` 在 :math:`C(t)` 上为常数.

若 :math:`M` 上有度规, :math:`n^a \equiv g^{ab}n_b \in V_q` 叫超曲面 :math:`\phi[S]` 在 :math:`q` 点的 **法矢** (normal vector).

[定理4-4-3] :math:`n^a\in W_q` 的充要条件为 :math:`n^an_a = 0`.

[定义4] 超曲面叫 **类空的**, 若其法矢处处类时 (:math:`n^an_a <0`); 超曲面叫 **类时的**, 若其法矢处处类空 (:math:`n^an_a>0`); 超曲面叫 **类光的**, 若其法矢处处类光 (:math:`n^an_a = 0`).

若 :math:`n^an_a \neq 0`, 今后谈法矢时都指归一化法矢, 即 :math:`n^an_a = \pm 1`.

[定义5] 设 :math:`\phi[S]` 是流形 :math:`M` 中的嵌入子流形 (不一定是超曲面), :math:`q\in \phi[S]`, :math:`W_q` 是 :math:`q` 点切于 :math:`\phi[S]` 的切空间. :math:`W_q` 的度规 :math:`h_{ab}` 叫做由 :math:`V_q` 的度规 :math:`g_{ab}` 生出的诱导度规 (induced metric), 若

.. math:: 
    h_{ab}{w_1}^a {w_2}^b = g_{ab}{w_1}^a {w_2}^b, \quad \forall {w_1}^a, {w_2}^b \in W_q.

诱导度规 :math:`h_{ab}` 实质上是把 :math:`V_q` 上度规 :math:`g_{ab}` 的作用对象限制于 :math:`W_q` 的结果. 当 :math:`\phi[S]` 为类时或类空超曲面时, 诱导度规 :math:`h_{ab}` 可用其归一化法矢 (:math:`n^an_a =\pm1`) 方便地表为

.. math:: h_{ab} \equiv g_{ab} \mp n_an_b

其中符号 :math:`\mp` 表示 :math:`n^an_a = +1` 时取 :math:`-`, :math:`n^an_a = -1` 时取 :math:`+`. 因为 :math:`\forall {w_1}^a, {w_2}^b \in W_q` 有

.. math:: 
    h_{ab}{w_1}^a{w_2}^b = g_{ab}{w_1}^a{w_2}^b \mp n_a{w_1}^an_b{w_2}^b.

对3维欧氏度规, 球面上归一化法余矢 :math:`n_a = (\D r)_a`.

设 :math:`\phi[S]` 为类时或类空超曲面, :math:`q\in \phi[S]`, 令

.. math:: \xtensor{h}{^a}{_b} \equiv g^{ac}h_{cb} = \xtensor{\delta}{^a}{_b} \mp n^an_b

则 :math:`\forall v^a \in V_q` 有 :math:`\xtensor{h}{^a}{_b} v^b = v^a \mp n^a(n_bv^b)` 或

.. math:: v^a = \xtensor{h}{^a}{_b} v^b \pm n^a(n_bv^b)

上式代表矢量 :math:`v^a` 的一种分解, 其中 :math:`\pm n^a(n_bv^b)` 与法矢 :math:`n^a` 平行, 称为法向分量, :math:`\xtensor{h}{^a}{_b} v^b` 与法矢 :math:`n^a` 垂直[因为 :math:`n_a(\xtensor{h}{^a}{_b} v^b) = n_a\xtensor{\delta}{^a}{_b}v^b \mp n_an^an_bv^b = n_av^a - \mp(\pm 1)n_b v^b = 0`], 称为切向分量 (切于 :math:`\phi[S]` 的分量). :math:`\xtensor{h}{^a}{_b}` 称为从 :math:`V_q` 到 :math:`W_q` 的 **投影映射** (projection map). 

[定理4-4-4] 类光超曲面上的诱导 "度规" 是退化的 (因而没有诱导度规).

[证明] 以 :math:`h_{ab}` 代表诱导 "度规". 超曲面的类光性导致 :math:`n^a \in W_q`. 故 :math:`W_q` 有非零元素 :math:`n^a` 使 :math:`h_{ab}n^aw^b = g_{ab}n^aw^b = 0,\forall w^a\in W_q`. 可见 :math:`h_{ab}` 是 :math:`W_q` 上的退化张量.

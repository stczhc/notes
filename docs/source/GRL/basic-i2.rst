
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

第二章 流形和张量场
-------------------

第一节 微分流形
^^^^^^^^^^^^^^^

[定义1] 拓扑空间 :math:`(M, \mathscr{T})` 称为 :math:`n` **维微分流形** (:math:`n`-dimensional differentiable manifold), 简称 :math:`n` 维流形, 若 :math:`M` 有开覆盖 :math:`\{O_{\alpha}\}`, 即 :math:`M=\bigcup_{\alpha} O_{\alpha}`, 满足

    (a) 对每一 :math:`O_{\alpha}` 存在同胚 :math:`\psi_{\alpha}:O_{\alpha} \to V_{\alpha}` (:math:`V_{\alpha}` 是 :math:`\mathbb{R}^n` 用通常拓扑衡量的开子集)
    (b) 若 :math:`O_{\alpha} \cap O_{\beta} \neq \varnothing`, 则复合映射 :math:`\psi_{\beta} \circ \psi_{\alpha}^{-1}` 是 :math:`\C^{\infty}` (光滑)的. 

[注1] 设 :math:`p\in O_{\alpha}`, 则 :math:`\psi_{\alpha}(p) \in \mathbb{R}^n`, 故 :math:`\psi_{\alpha}(p)` 点有 :math:`n` 个自然坐标. 把这 :math:`n` 个数称为 :math:`p` 点在映射 :math:`\psi_{\alpha}` 下获得的 **坐标** (coordinate). :math:`(O_{\alpha}, \psi_{\alpha})` 构成一个(局域) **坐标系** (coordinate system), 其 **坐标域** (coordinate patch) 为 :math:`O_{\alpha}`.

[定义2] **坐标系** :math:`(O_{\alpha}, \psi_{\alpha})` 又叫 **图** (chart), 满足定义1条件(a), (b) 的全体图的集合 :math:`\{(O_{\alpha}, \psi_{\alpha})\}` 叫 **图册** (atlas). 条件(b) 叫做 **相容性** (compatibility) 条件, 因此一个图册中任意两个图都是相容的. 

[定义3] :math:`f : M\to M'` 称为 :math:`\C^r` **类映射**, 如果 :math:`\forall p\in M`, 映射 :math:`\psi'_{\beta}\circ f \circ \psi_{\alpha}^{-1}` 对应的 :math:`n'` 个 :math:`n` 元函数是 :math:`\C^r` 类的. 

[注2] 由于同一图册中各图相容, 上述定义域坐标系的选择无关.

[定义4] 微分流形 :math:`M` 和 :math:`M'` 称为 **互相微分同胚** (diffeomorphic to each other), 若 :math:`\exists f : M \to M'`, 满足 (a) :math:`f` 是一一到上; (b) :math:`f` 及 :math:`f^{-1}` 是 :math:`\C^{\infty}` 的. 这样的 :math:`f` 称为从 :math:`M` 到 :math:`M'` 的 **微分同胚映射**, 简称 **微分同胚** (diffeomorphism).

[定义5] :math:`f: M\to \mathbb{R}` 称为 :math:`M` **上的函数** (function on :math:`M`) 或 :math:`M` **上的标量场** (scalar field on :math:`M`). 若 :math:`f` 为 :math:`\C^{\infty}` 的, 则称为 :math:`M` **上的光滑函数**. :math:`M` 上全体光滑函数的集合记作 :math:`\mathscr{F}_M`.

第二节 切矢和切矢场
^^^^^^^^^^^^^^^^^^^

[定义1] 实数域上的一个 **矢量空间** (vector space) 是一个集合 :math:`V` 配以两个映射, 即 :math:`V\times V \to V` [叫 **加法** (addition)] 及 :math:`\mathbb{R} \times V \to V` [叫 **数乘** (scalar multiplication)], 满足如下条件:

    (a) 交换律 :math:`v_1 + v_2 = v_2 + v_1,\quad \forall v_1, v_2 \in V`;
    (b) 结合律 :math:`(v_1 + v_2) + v_3 = v_1 + (v_2 + v_3), \quad \forall v_1, v_2, v_3 \in V`;
    (c) 零元 :math:`\exists \underline{0} \in V\quad` s.t. :math:`\quad \underline{0} + v = v, \quad \forall v\in V`;
    (d) 数乘结合律 :math:`\alpha_1(\alpha_2 v) = (\alpha_1\alpha_2)v,\quad \forall v\in V, \quad \alpha_1, \alpha_2 \in \mathbb{R}`;
    (e) 数乘对实数分配律 :math:`(\alpha_1 + \alpha_2)v = \alpha_1 v + \alpha_2 v, \quad \forall v\in V, \quad \alpha_1, \alpha_2 \in \mathbb{R}`;
    (f) 数乘对矢量分配律 :math:`\alpha(v_1+v_2) = \alpha v_1 + \alpha v_2, \quad \forall v_1, v_2 \in V, \quad \alpha \in \mathbb{R}`;
    (g) 数乘单位元 :math:`1\cdot v=v,\quad \forall v\in V`.

[注1] 由此7条可推出 (1) :math:`0\cdot v = \underline{0},` (2) :math:`\forall v\in V, \exists u\in V` 使 :math:`v+u=\underline{0}`. 约定把 :math:`u` 记为 :math:`-v`.

[定义2] 映射 :math:`v: \mathscr{F}_M \to \mathbb{R}` 称为点 :math:`p \in M` 的一个 **矢量** (vector), 若 :math:`\forall f, g \in \mathscr{F}_M, \alpha, \beta \in \mathbb{R}` 有

    (a) 线性性 :math:`v(\alpha f + \beta g) = \alpha v(f) + \beta v(g)`;
    (b) 莱布尼兹律 :math:`v(fg) = f|_p v(g) + g|_p v(f)`, 其中 :math:`f|_p` 代表函数 :math:`f` 在 :math:`p` 点的值, 亦可记作 :math:`f(p)`.

[注2] 因 :math:`f` 和 :math:`g` 是 :math:`M` 上的函数, 故 :math:`fg` 也是 :math:`M` 上的函数, 它在 :math:`M` 的任一点 :math:`p` 的值定义为 :math:`f(p)` 与 :math:`g(p)` 之积. 

设 :math:`(O, \psi)` 是坐标系, 可给 :math:`O` 中任一点 :math:`p` 定义 :math:`n` 个矢量, 记作 :math:`X_{\mu}`, 定义为

.. math:: X_{\mu}(f) := \frac{\partial f(x)}{\partial x^{\mu}} \bigg\rvert_p,\quad \forall f\in \mathscr{F}_M
    :label: xmu

[定理2-2-2] 以 :math:`V_p` 代表 :math:`M` 中 :math:`p` 点所有矢量的集合, 则 :math:`V_p` 是 :math:`n` 维矢量空间 (:math:`n` 是 :math:`M` 的维数), 即 :math:`\mathrm{dim} V_p = \mathrm{dim} M \equiv n`.

[证明]

(A) 按以下三式分别定义加法, 数乘和零元, 不难验证 :math:`V_p` 满足定义1, 故为矢量空间.

    (1) :math:`(v_1 + v_2)(f) := v_1(f) + v_2(f),\quad \forall f\in \mathscr{F}_M,\quad v_1, v_2\in V_p`;
    (2) :math:`(\alpha v)(f) := \alpha\cdot v(f),\quad \forall f\in \mathscr{F}_M,\quad v\in V_p,\quad \alpha\in \mathbb{R}`;
    (3) :math:`\underline{0} \in V_p` 满足 :math:`\underline{0} (f) = 0,\quad \forall f \in \mathscr{F}_M`.

(B) 任选坐标系使坐标域含 :math:`p`, 则 :eq:`xmu` 定义了 :math:`p` 点的 :math:`n` 个矢量 :math:`X_{\mu}, \mu = 1,\cdots, n`. 欲证它们线性独立. 设有 :math:`n` 个实数 :math:`\alpha^{\mu} (\mu = 1,\cdots, n)` 使 :math:`\alpha^{\mu}X_{\mu} = \underline{0}` (采用爱因斯坦求和惯例, 即重复指标代表求和), 根据零元 :math:`\underline{0}` 的定义, 右边作用于 :math:`x^{\nu}` 的结果为

.. math:: \underline{0}(x^{\nu}) = 0

左边作用的结果为

.. math:: \alpha^{\mu} X_{\mu}(x^{\nu}) = \alpha^{\mu} \frac{\partial x^{\nu}}{\partial x^{\mu}}\bigg\rvert_p = \alpha^{\mu} {\delta^{\nu}}_{\mu} = \alpha^{\nu}

可知 :math:`\alpha^{\nu} = 0, \nu = 1,\cdots, n`. 因而 :math:`X_1,\cdots, X_n` 线性独立, 可见 :math:`\mathrm{dim} V_p \geqslant n`.

(C) 需证明 :math:`\forall v\in V_p` 有 :math:`v=v^{\mu} X_{\mu}` 其中 :math:`v^{\mu} = v(x^{\mu})`. 证明略 (较复杂).

[定义3] 坐标域内任一点 :math:`p` 的 :math:`\{X_1,\dots, X_n\}` 称为 :math:`V_p` 的一个 **坐标基底** (coordinate basis), 每个 :math:`X_{\mu}` 称为一个 **坐标基矢** (coordinate basis vector), :math:`v \in V_p` 用 :math:`\{X_\mu\}` 线性表出的系数 :math:`v^{\mu}` 称为 :math:`v` 的 **坐标分量** (coordinate components).

[定理2-2-3] 设 :math:`\{x^\mu\}` 和 :math:`\{x'^\nu\}` 为两个坐标系, 其坐标域的交集非空, :math:`p` 为交集中的一点, :math:`v\in V_p`, :math:`\{v^\mu\}` 和 :math:`\{v'^\nu\}` 是 :math:`v` 在这两个系的坐标分量, 则 (称为矢量的变换式)

.. math:: v'^\nu = \frac{\partial x'^\nu}{\partial x^\mu} \bigg\rvert_p v^\mu

[证明] 先求 :math:`p` 点两组坐标基矢 :math:`\{X_\mu \}` 和 :math:`\{ X'_\nu \}` 的关系. 由定义可知

.. math:: X_{\mu}(f) =\frac{\partial f(x)}{\partial x^\mu} \bigg\rvert_p,\quad 
    X'_{\nu}(f) =\frac{\partial f'(x')}{\partial x'^\nu} \bigg\rvert_p,\quad \forall f \in \mathscr{F}_M

由 :math:`f(x) = f'(x')` 得

.. math:: X_\mu(f) = \frac{\partial f'(x'(x))}{\partial x^\mu} \bigg\rvert_p = \left( 
    \frac{\partial f'(x')}{\partial x'^\nu} \frac{\partial x'^\nu}{\partial x^\mu}\right)\bigg\rvert_p
    = \frac{\partial x'^\nu}{\partial x^\mu}\bigg\rvert_p X'_{\nu}(f),\quad \forall f \in \mathscr{F}_M

即 :math:`X_\mu =  \frac{\partial x'^\nu}{\partial x^\mu}\big\rvert_p X'_{\nu}`. 所以 :math:`v = v^\mu X_\mu = v'^\nu X'_\nu` 可表为

.. math:: v^\mu = \frac{\partial x'^\nu}{\partial x^\mu}\bigg\rvert_p X'_{\nu} = v'^\nu X'_\nu

因 :math:`\{X'_\nu\}` 中的 :math:`n` 个基矢彼此线性独立, 得证. 

[定义4] 设 :math:`I` 为 :math:`\mathbb{R}` 的一个区间, 则 :math:`\C^r` 类映射 :math:`C:I\to M` 称为 :math:`M` 上的一条 :math:`\C^r` 类的 **曲线** (curve). 今后如无声明, 曲线均指光滑(:math:`\C^\infty` 类)曲线. 对任意 :math:`t\in I`, 有唯一的点 :math:`C(t)\in M` 与之对应. :math:`t` 称为曲线的 **参数** (parameter).

[注5] 设 :math:`(O,\psi)` 是坐标系, :math:`C[I]\subset O`, 则 :math:`\psi\circ C` 是从 :math:`I\subset \mathbb{R}` 到 :math:`\mathbb{R}^n` 的映射, 相当于 :math:`n` 个一元函数 :math:`x^\mu = x^\mu(t), \mu =1,\cdots, n`. 这 :math:`n` 个等式称为曲线的 **参数方程** 或 **参数式**.

[定义5] 设 :math:`(O,\psi)` 为坐标系, :math:`x^\mu` 为坐标, 则 :math:`O` 的子集

.. math:: \{ p\in O | x^2(p) = \mathrm{const}, \cdots, x^n(p) =  \mathrm{const} \}

可看成以 :math:`x^1` 为参数的一条曲线(的像)(改变 :math:`x^2,\cdots, x^n` 的常数值则得另一曲线), 叫做 :math:`x^1` **坐标线** (coordinate line), :math:`x^\mu` **坐标线** 可仿此定义.

[定义6] 设 :math:`C(t)` 是流形 :math:`M` 上的 :math:`\C^1` 曲线, 则线上 :math:`C(t_0)` 点的切于 :math:`C(t)` 的 **切矢量** (tangent vector) :math:`T` 是 :math:`C(t_0)` 点的矢量, 它对 :math:`f\in \mathscr{F}_M` 的作用定义为

.. math:: T(f):= \frac{\D (f\circ C)}{\D t} \bigg\rvert_{t_0} = 
    \frac{\D f(C(t))}{\D t} \bigg\rvert_{t_0}
    = \frac{\partial}{\partial t}\bigg\rvert_{C(t_0)} (f),\quad \forall f\in \mathscr{F}_M

[例2] 由 :eq:`xmu` 定义的 :math:`X_\mu` 就是过 :math:`p` 的 :math:`x^\mu` 坐标线的切矢, 故也常记作 :math:`\frac{\partial}{\partial x^{\mu}} \big\rvert_p`.

[定理2-2-4] 设曲线 :math:`C(t)` 在某坐标系中的参数式为 :math:`x^\mu = x^\mu(t)`, 则线上任一点的切矢 :math:`\partial/\partial t` 在该坐标基底的展开式为

.. math:: \frac{\partial }{\partial t} = \frac{\D x^\mu(t)}{\D t} \frac{\partial }{\partial x^\mu}

[定义7] 非零矢量 :math:`v, u \in V_p` 称为 **互相平行的** (parallel), 若 :math:`\exists \alpha\in \mathbb{R}` 使 :math:`v=\alpha u`.

[定理2-2-5] 设曲线 :math:`C':I'\to M` 是 :math:`C:I\to M` 的重参数化, 则两者在任一像点的切矢 :math:`\partial/\partial t` 和 :math:`\partial / \partial t'` 有如下关系

.. math:: \frac{\partial}{\partial t} = \frac{\D t'(t)}{\D t}\frac{\partial }{\partial t'}

其中 :math:`t'(t)` 是由映射 :math:`\alpha : I\to I'` 诱导而得的一元函数, 即 :math:`\alpha(t)`. 该定理表明, 若两条曲线 :math:`C` 和 :math:`C'` 的像相同, 则它们在任一像点的切矢互相平行.

:math:`V_p` 中任一元素可视为过 :math:`p` 的某曲线的切矢, 因此 :math:`p` 点的矢量亦称为 **切矢量** (tangent vector), :math:`v` 称为 :math:`p` 点的 **切空间** (tangent space).

[定义8] 设 :math:`A` 为 :math:`M` 的子集. 若给 :math:`A` 中每点指定一个矢量, 就得到一个定义在 :math:`A` 上的 **矢量场** (vector field).

[定义9] :math:`M` 上的矢量场 :math:`v` 称为 :math:`\C^\infty` **类(光滑)的**, 若 :math:`v` 作用于 :math:`\C^\infty` 类函数的结果为 :math:`\C^\infty` 类函数, 即 :math:`v(f) \in \mathscr{F}_M, \forall f \in \mathscr{F}_M`. :math:`v` 称为 :math:`\C^r` **类的**, 若 :math:`v` 作用于 :math:`\C^\infty` 类函数得 :math:`\C^r` 类函数. 今后如无声明, 矢量场均指光滑 (:math:`\C^\infty`) 矢量场.

[定理2-2-6] :math:`M` 上矢量场 :math:`v` 是 :math:`\C^\infty` (或 :math:`\C^r`) 类的充要条件是它在任一坐标基底的分量 :math:`v^\mu` 为 :math:`\C^\infty` (或 :math:`\C^r`) 类函数.

[定义10] 两个光滑矢量场 :math:`u` 和 :math:`v` 的 **对易子** (commutator) 是一个光滑矢量场 :math:`[u,v]`, 定义为

.. math:: [u,v](f) := u(v(f)) - v(u(f)),\quad \forall f \in \mathscr{F}_M

[定理2-2-7] 设 :math:`\{x^\mu\}` 为任一坐标系, 则 :math:`[\partial/\partial x^\mu,\partial/\partial x^\nu]=0, \mu,\nu = 1,\cdots,n`. 

[定义11] 曲线 :math:`C(t)` 叫矢量场 :math:`v` 的 **积分曲线** (integral curve), 若其上每点的切矢等于该点的 :math:`v` 值.

[定理2-2-8] 设 :math:`v` 是 :math:`M` 上的光滑矢量场, 则 :math:`M` 的任一点 :math:`p` 必有 :math:`v` 的唯一的积分曲线 :math:`C(t)` 经过[满足 :math:`C(0)=p`].

[证明] 任取一坐标系 :math:`\{x^\mu\}`, 坐标域含 :math:`p`. 设待求积分曲线的参数表达式为 :math:`x^\mu = x^\mu(t)`, 则由定理2-2-4 知 :math:`x^\mu(t)` 满足如下的一阶常微分方程组

.. math:: \frac{\D x^\mu(t)}{\D t} = v^\mu\left(x^1(t), \cdots, x^n(t)\right),\quad \mu = 1, \cdots, n

其中 :math:`v^\mu` 是 :math:`v` 在该坐标基底场的分量, 是 :math:`x^1, \cdots, x^n` 的已知函数. 这组方程在给定初始条件 :math:`x^\mu(0)(\mu = 1,\cdots, n)` 下存在唯一解. 初始条件为 :math:`x^\mu(0) = x^\mu |_p`, 故必有唯一解 :math:`x^1(y), \cdots, x^n(t)`, 这 :math:`n` 个函数确定的曲线就是待求的积分曲线. 还应证明所得曲线与所选坐标系无关, 略.

[定义12] 一个 **群** (group) 是一个集合 :math:`G` 配以满足以下条件的映射 :math:`G\times G \to G` (叫 **群乘法**, 元素 :math:`g_1` 和 :math:`g_2` 的乘积记作 :math:`g_1g_2`):

    (a) :math:`(g_1g_2)g_3 = g_1(g_2g_3),\quad \forall g_1, g_2, g_3 \in G`;
    (b) **恒等元** (identity element) :math:`\exists e\in G \quad\text{s.t.}\quad eg=ge=g,\quad \forall g \in G`;
    (c) **逆元** (inverse element) :math:`\forall g \in G, \exists g^{-1} \in G \quad\text{s.t.}\quad g^{-1}g=gg^{-1}=e`.

[定义13] :math:`\C^\infty` 映射 :math:`\phi:\mathbb{R}\times M \to M` 称为 :math:`M` 上的一个 **单参微分同胚群** (one-parameter group of diffeomorphism), 若

    (a) :math:`\phi_t : M\to M` 是微分同胚 :math:`\forall t \in \mathbb{R}`;
    (b) :math:`\phi_t \circ \phi_s = \phi_{t+s},\quad \forall t,s\in \mathbb{R}`.

[注8] 集合 :math:`\{ \phi_t | t\in \mathbb{R} \}` 是以复合映射为乘法的群, 各群元 :math:`\phi_t` 是从 :math:`M` 到 :math:`M` 的微分同胚映射, :math:`\phi_0` 是恒等元. 设 :math:`\phi: \mathbb{R} \times M \to M` 是单参微分同胚群, 则 :math:`\forall p\in M, \phi_p:\mathbb{R} \to M` 是过 :math:`p` 点的一条光滑曲线[满足 :math:`\phi_p(0) = p`], 叫做这个单参微分同胚群过 :math:`p` 点的 **轨道** (orbit). 把这条曲线在点 :math:`\phi_p(0)` 的切矢记作 :math:`v|_p`, 便得 :math:`M` 上的一个光滑矢量场 :math:`v`. 可见 :math:`M` 上的一个单参微分同胚群给出 :math:`M` 上的一个光滑矢量场.

第三节 对偶矢量场
^^^^^^^^^^^^^^^^^

[定义1] 设 :math:`V` 是 :math:`\mathbb{R}` 上的有限维矢量空间. 线性映射 :math:`\omega:V \to \mathbb{R}` 称为 :math:`V` 上的 **对偶矢量** (dual vector). :math:`V` 上全体对偶矢量的集合称为 :math:`V` 的 **对偶空间**, 记作 :math:`V^*`.

[定理2-3-1] :math:`V^*` 是矢量空间, 且 :math:`\mathrm{dim} V^* = \mathrm{dim} V`. 

[证明] 对 :math:`V^*` 定义加法、数乘和零元如下:

.. math::
    (\omega_1 + \omega_2)(v) :=&\ \omega_1(v) + \omega_2(v),\quad \forall \omega_1, \omega_2 \in V^*,v\in V \\
    (\alpha\omega) (v) :=&\ \alpha \cdot \omega(v), \quad \forall \omega\in V^*,v\in V,\alpha \in \mathbb{R} \\
    \underline{0}(v) :=&\ 0 \in \mathbb{R},\quad \forall v \in V.

不难看出这样的 :math:`V^*` 是矢量空间. 设 :math:`\{ e_\mu \}` 是 :math:`V` 的一组基矢, 用下式定义 :math:`V^*` 中的 :math:`n` 个特别元素 :math:`e^{1*}, \cdots, e^{n*}`

.. math:: e^{\mu*}(e_\nu) := \xtensor{\delta}{^\mu}{_\nu},\quad \mu,\nu = 1,\cdots, n.

易证 :math:`e^{1*}, \cdots, e^{n*}` 彼此线性独立 (注意这里虽然得到 :math:`\delta`, 但并不要求所取基组和对偶基组各自有任何正交性. 这个 :math:`\delta` 只会在基组和对偶基组之间作用时出现, 而正交性是一个空间的基组内部的关系). 进一步可证 :math:`V^*` 中任一元素可用 :math:`\{ e^{\mu*} \}` 线性表出

.. math:: \omega=\omega_\mu e^{\mu*},\quad \omega_\mu \equiv \omega(e_\mu),\quad \mu=1,\cdots, n,\quad \forall \omega\in V^*

即 :math:`\{ e^{\mu*} \}` 是 :math:`V^*` 的一个基底, 叫做 :math:`\{ e_\mu \}` 的 **对偶基底**. 由此可知 :math:`\mathrm{dim} V^* = \mathrm{dim} V`.

[复习] 两个矢量空间叫 **同构的** (isomorphic), 若两者间存在一一到上的线性映射 (这种映射称为 **同构映射**). 两矢量空间同构的充要条件是维数相同. 把 :math:`V^*` 的对偶空间记为 :math:`V^{**}`. :math:`V^{**}` 和 :math:`V` 之间存在自然的同构关系 :math:`v\mapsto v^{**}` 定义为 :math:`v^{**}(\omega) := \omega(v) \quad \forall \omega \in V^*, v \in V`.

[定理2-3-2] 若矢量空间 :math:`V` 中有一基底变换 :math:`e'_\mu = \xtensor{A}{^\nu}{_\mu} e_\nu` (:math:`\xtensor{A}{^\nu}{_\mu}` 是新基矢 :math:`e'_\mu` 用原基底展开的第 :math:`\nu` 分量), 以 :math:`\xtensor{A}{^\nu}{_\mu}` 为元素排成的(非退化)方阵记作 :math:`A`, 则相应的对偶基底的变换为

.. math:: e'^{\mu*} = \xtensor{\big( \tilde{A}^{-1} \big)}{_\nu}{^\mu} e^{\nu *} = \xtensor{\left( A^{-1} \right)}{^\mu}{_\nu} e^{\nu *},

其中 :math:`\tilde{A}` 是 :math:`A` 的转置矩阵, :math:`\tilde{A}^{-1}` 是 :math:`\tilde{A}` 之逆.

[证明] 只需证明等式两边作用于 :math:`e'_{\alpha}` 所得结果相同, 证明如下

.. math:: \xtensor{\left( A^{-1} \right)}{^\mu}{_\nu} e^{\nu *}(e'_{\alpha}) =&\ 
    \xtensor{\left( A^{-1} \right)}{^\mu}{_\nu} e^{\nu *}(\xtensor{A}{^\beta}{_\alpha} e_{\beta}) =
    \xtensor{A}{^\beta}{_\alpha} \xtensor{\left( A^{-1} \right)}{^\mu}{_\nu} e^{\nu *}( e_{\beta}) \\
    =&\ \xtensor{A}{^\beta}{_\alpha} \xtensor{\left( A^{-1} \right)}{^\mu}{_\nu} \xtensor{\delta}{^\nu}{_\beta}
    =  \xtensor{\left( A^{-1} \right)}{^\mu}{_\nu} \xtensor{A}{^\nu}{_\alpha} = \xtensor{\delta}{^\mu}{_\alpha} = e'^{\mu*}(e'_{\alpha})

若在 :math:`M` (或 :math:`A \subset M` ) 上每点指定一个对偶矢量, 就得到 :math:`M` (或 :math:`A`) 上的一个 **对偶矢量场**. :math:`M` 上的对偶矢量场 :math:`\omega` 叫做 **光滑的**, 若对所有光滑矢量场 :math:`v`, :math:`\omega(v) \in \mathscr{F}_M`. 设 :math:`f\in \mathscr{F}_M` (:math:`\mathscr{F}_M` 是 :math:`M` 上全体光滑函数的集合), :math:`f` 可自然诱导出 :math:`M` 上的一个对偶矢量场, 记作 :math:`\D f`, 其在 :math:`p` 点的值定义为

.. math:: \D f|_p (v) := v(f) \quad \forall v \in V_p
    :label: dfdef

设 :math:`(O,\psi)` 是一坐标系, :math:`\D x^\mu` 是定义在 :math:`O` 上的对偶矢量场. 设 :math:`p \in O`, :math:`\partial/\partial x^\nu` 是 :math:`V_p` 的第 :math:`\nu` 个坐标基矢, 则由 :eq:`dfdef` 知在 :math:`p` 点有

.. math:: \D x^\mu \left( \frac{\partial}{\partial x^\nu} \right) = \frac{\partial}{\partial x^\nu} (x^\mu) = 
    \xtensor{\delta}{^\mu}{_\nu}

可见 :math:`\{ \D x^\mu \}` 是与坐标基底 :math:`\{ \partial/\partial x^\nu \}` 对应的 **对偶坐标基底**. :math:`O` 上任一对偶矢量场可借 :math:`\{ \D x^\mu \}` 展开

.. math:: \omega = \omega_\mu \D x^\mu, \quad \omega_\mu = \omega (\partial/\partial x^\mu )

[定理2-3-3] 设 :math:`(O,\psi)` 是一坐标系, :math:`f` 是 :math:`O` 上的光滑函数, :math:`f(x)` 是 :math:`f \circ \psi^{-1}` 对应的 :math:`n` 元函数 :math:`f(x^1, \cdots, x^n)` 的简写, 则 :math:`\D f` 可用对偶坐标基底 :math:`\{ \D x^\mu \}` 展开如下

.. math:: \D f = \frac{\partial f(x) }{\partial x^\mu} \D x^\mu,\quad \forall f\in \mathscr{F}_O

[定理2-3-4] 设坐标系 :math:`\{ x^\mu \}` 和 :math:`\{ x'^\nu \}` 的坐标域有交, 则交域中任一点 :math:`p` 的对偶矢量 :math:`\omega` 在两坐标系中的分量 :math:`\omega_\mu` 和 :math:`\omega'_\nu` 的变换关系为

.. math:: \omega'_\nu = \frac{\partial x^\mu}{\partial x'^\nu} \bigg\rvert_p \omega_\mu

第四节 张量场
^^^^^^^^^^^^^

[定义1] 矢量空间 :math:`V` 上的一个 :math:`(k, l)` **型张量** [tensor of type :math:`(k, l)`] 是一个多重线性映射

.. math:: T : \underbrace{V^*\times \cdots \times V^*}_{k\text{个}} \times \underbrace{V\times \cdots \times V}_{l\text{个}} \to \mathbb{R}

今后用 :math:`\mathscr{T}_V(k, l)` 表示 :math:`V` 上全体 :math:`(k, l)` 型张量的集合, 于是 :math:`V=\mathscr{T}_V(1, 0)`, :math:`V^* = \mathscr{T}_V(0, 1)`.

[定义2] :math:`V` 上的 :math:`(k, l)` 和 :math:`(k', l')` 型张量 :math:`T` 和 :math:`T'` 的 **张量积** (tensor product) :math:`T\otimes T'` 是一个 :math:`(k + k', l+ l')` 型张量, 定义如下

.. math:: T\otimes T(\omega^1, \cdots \omega^k, \omega^{k+1}, \cdots \omega^{k + k'};
    v_1, \dots, v_l, v_{l+1}, \dots, v_{l + l'} ) \\
    := T(\omega^1, \cdots \omega^k; v_1, \dots, v_l) T'(\omega^{k+1}, \cdots \omega^{k + k'};
        v_{l+1}, \dots, v_{l + l'} )

其中 :math:`v` 的指标在下, 因为上标记号 :math:`v^\mu` 表示分量, 而这里不表示分量, 所以用下标表示矢量序号, :math:`\omega` 类似. 

[定理2-4-1] :math:`\mathscr{T}_V(k, l)` 是矢量空间, :math:`\mathrm{dim}\mathscr{T}_V(k,l) = n^{k+l}`. 以 :math:`(2,1)` 型张量为例, 任意 :math:`T \in \mathscr{T}_V(2,1)` 可表为

.. math:: T = \xtensor{T}{^{\mu\nu}}{_\sigma} e_{\mu} \otimes e_\nu \otimes e^{\sigma*},\quad
    \xtensor{T}{^{\mu\nu}}{_\sigma} = T(e^{\mu*}, e^{\nu*}; e_\sigma)

其中 :math:`\xtensor{T}{^{\mu\nu}}{_\sigma}` 是张量 :math:`T` 在基底 :math:`\{ e_\mu \otimes e_\nu \otimes e^{\sigma*} \}` 的分量, 简称为 :math:`T` 在基底 :math:`\{ e^\mu \}` 的分量. 

:math:`(1, 1)` 型张量 :math:`T` 的 **缩并** (contraction) 或 **收缩** 记为

.. math:: \C T := \xtensor{T}{^\mu}{_\mu} = T(e^{\mu*}; e_\mu)

再讨论 :math:`(2, 1)` 型张量 :math:`T = T(\cdot, \cdot; \cdot)` 的缩并. 有两种可能的缩并: (1) 第一上槽与下槽的缩并 :math:`\C_1^1 T:= T(e^{\mu*}, \cdot; e_\mu)`; (2) 第二上槽与下槽的缩并 :math:`\C_1^2 T:= T(\cdot, e^{\mu*}; e_\mu)`.

[定义3] :math:`T\in \mathscr{T}_V(k, l)` 的第 :math:`i` 上标 (:math:`i \leqslant k`) 与第 :math:`j` 下标 (:math:`j \leqslant l`) 的 **缩并** 定义为

.. math::
    \C_j^i T := T(\cdot, \cdots, \underset{\displaystyle \underset{\text{第}i\text{上槽}}{\uparrow}}{e^{\mu*}}, \cdot, \cdots; \cdot, \cdots, \underset{\displaystyle \underset{\text{第}j\text{下槽}}{\uparrow}}{e_\mu},\cdot, \cdots) \in \mathscr{T}_V(k - 1, l - 1)

:math:`T` 对 :math:`\omega` (或 :math:`v`) 作用就是先求 :math:`T` 与 :math:`\omega` (或 :math:`v`) 的张量积再缩并.

若选坐标系 :math:`\{ x^\mu \}` 使坐标域含 :math:`p` (:math:`p` 为流形 :math:`M` 中任一点), 则可用坐标基矢 :math:`\partial/ \partial x^\mu` 和对偶坐标基矢 :math:`\D x^\mu` 展开张量 :math:`T \in \mathscr{T}_{V_p} (k, l)`

.. math:: T = \xtensor{T}{^{\mu\nu}}{_\sigma} \frac{\partial}{\partial x^\mu} \otimes 
    \frac{\partial}{\partial x^\nu} \otimes \D x^\sigma,\quad
    \xtensor{T}{^{\mu\nu}}{_\sigma} = T(\D x^\mu, \D x^\nu; \partial/\partial x^\sigma).

若在流形 :math:`M` (或 :math:`A \subset M`) 上每点指定一个 :math:`(k, l)` 形张量, 就得到 :math:`M` (或 :math:`A`) 上的一个 :math:`(k, l)` 型 **张量场**. :math:`M` 上张量场 :math:`T` 称为 **光滑的**, 若对所有光滑对偶矢量场 :math:`\omega^1,\cdots, \omega^k` 及光滑矢量场 :math:`v_1, \dots, v_l` 有 :math:`T(\omega^1,\cdots, \omega^k;v_1, \dots, v_l)\in \mathscr{F}_M`. 今后如无声明, "张量场" 均指光滑 (:math:`\C^\infty`) 张量场. 

[定理2-4-2] :math:`(k, l)` 型张量在两个坐标系中的分量的变换关系为 (简称 **张量变换律**)

.. math:: \xtensor{{T'}}{^{\mu_1\cdots\mu_k}}{_{\nu_1\cdots\nu_l}} = 
    \frac{\partial x'^{\mu_1}}{\partial x^{\rho_1}}\cdots \frac{\partial x^{\sigma_l}}{\partial x'^{\nu_l}}
    \xtensor{T}{^{\rho_1\cdots\rho_k}}{_{\sigma_1\cdots\sigma_l}}

第五节 度规张量场
^^^^^^^^^^^^^^^^^

[定义1] 矢量空间 :math:`V` 上的一个 **度规** (metric) :math:`g` 是 :math:`V` 上的一个对称、非退化的 :math:`(0, 2)` 型张量. 对称是指 :math:`g(v, u)=g(u, v)\quad \forall v,u\in V`, 非退化是指 :math:`g(v,u) = 0 \quad \forall u\in V \Rightarrow v=0\in V`.

[定义2] :math:`v\in V` 的 **长度** (length) 或 **大小** (magnitude) 定义为 :math:`|v|:= \sqrt{|g(v,v)|}`. 矢量 :math:`v, u \in V` 叫 **互相正交的** (orthogonal), 若 :math:`g(v,u)=0`. :math:`V` 的基底 :math:`\{ e_\mu \}` 叫 **正交归一的** (orthonormal), 若任二基矢正交且每一基矢 :math:`e_\mu` 满足 :math:`g(e_\mu, e_\mu) = \pm 1` (不对 :math:`\mu` 求和).

[注2] 定义2 表明度规 :math:`g` 在正交归一基底的分量满足

.. math:: g_{\mu\nu} = \begin{cases} 0, & \quad \mu\neq \nu \\ \pm 1, & \quad \mu = \nu \end{cases}

因此, 度规在正交归一基底的分量排成的矩阵是对角矩阵, 且对角元为 :math:`+1` 或 :math:`-1`.

[定理2-5-1] 任何带度规的矢量空间都有正交归一基底. 度规写成对角矩阵时对角元中 :math:`+1` 和 :math:`-1` 的个数与所选正交归一基底无关.

[定义3] 用正交归一基底写成对角矩阵后, 对角元全为 :math:`+1` 的度规叫 **正定的** (positive definite) 或 **黎曼的** (Riemannian), 对角元全为 :math:`-1` 的度规叫 **负定的** (negative definite), 其他度规叫 **不定的** (indefinite), 只有一个对角元为 :math:`-1` 的不定度规叫 **洛伦兹的** (Lorentzian). 对角元之和叫度规的 **号差** (signature). 相对论中用得最多的是洛伦兹度规和正定度规.

[定义4] 带洛伦兹度规 :math:`g` 的矢量空间 :math:`V` 的元素可分为三类: (1) 满足 :math:`g(v,v)>0` 的 :math:`v` 称为 **类空矢量** (spacelike vector); (2) 满足 :math:`g(v,v) < 0` 的 :math:`v` 称为 **类时矢量** (timelike vector); (3) 满足 :math:`g(v,v) = 0` 的 :math:`v` 称为 **类光矢量** (lightlike vector 或 null vector).

在 :math:`V` 选定度规后就有了一个自然的、与众不同的从 :math:`V` 到 :math:`V^*` 的同构映射, 我们很自然地用这一映射把 :math:`V` 与 :math:`V^*` 认同.

[定义5] :math:`M` 上的对称的、处处非退化的 (0,2) 型张量场称为 **度规张量场**.

[定义6] 若 :math:`\C^1` 曲线 :math:`C(t)` 各点的切矢都类空, 则 :math:`C(t)` 叫 **类空曲线**. 类似地可定义 **类时曲线** 和 **类光曲线**. 设流形 :math:`M` 上有洛伦兹度规场 :math:`g`, 则 :math:`M` 上的类空、类光及类时曲线 :math:`C(t)` 的线长定义为

.. math:: l:= \int \sqrt{|g(T,T)|} \D t, \quad T=\frac{\partial}{\partial t}

线长也可借助于坐标系计算. 元线长

.. math:: \D l = \sqrt{|g_{\mu\nu}\D x^\mu\D x^\nu|} \equiv \sqrt{|\D s^2|}, \quad
    \D s^2 \equiv g_{\mu\nu}\D x^\mu\D x^\nu

记号 :math:`\D s^2` 在微分几何中经常出现, 通常称为 **线元** (line element). 给定线元 (表达式) 相当于给定度规场.

[定义7] 设流形 :math:`M` 上给定度规场 :math:`g`, 则 :math:`(M, g)` 叫 **广义黎曼空间**. 若 :math:`g` 为正定, 叫 **黎曼空间** (Riemannian space). 若 :math:`g` 为洛伦兹, 叫 **伪黎曼空间** (pseudo-Riemannian space), 物理上叫 **时空** (spacetime).

[定义8] 设 :math:`\{ x^\mu \}` 是 :math:`\mathbb{R}^n` 的自然坐标, 在 :math:`\mathbb{R}^n` 上定义度规张量场 :math:`\delta` 为

.. math:: \delta := \delta_{\mu\nu}\D x^\mu \otimes \D x^\nu

则 :math:`(\mathbb{R}^n, \delta)` 称为 :math:`n` **维欧氏空间** (:math:`n`-dimensional Euclidean space), :math:`\delta` 称为 **欧氏度规**. 欧氏度规在自然坐标系的线元表达式应为 :math:`\D s^2 = \delta_{\mu\nu}\D x^\mu \D x^\nu`. 可知自然坐标基底用欧氏度规衡量是正交归一的, 即

.. math:: \delta(\partial/\partial x^\alpha,\partial/\partial x^\beta) = \delta_{\alpha\beta}
    :label: cartesian

但满足 :eq:`cartesian` 的坐标系未必是自然坐标系.

[定义9] :math:`n` 维欧氏空间中满足 :eq:`cartesian` 的坐标系叫 **笛卡儿** (Cartesian) **坐标系** 或 **直角坐标系**. 

极坐标系 :math:`\{ r, \varphi \}` 是2维欧氏空间中非笛卡儿系的一例. 物理书中使用极坐标系时, 相应的基底常用 :math:`\{ \hat{e}_r, \hat{e}_\varphi \}`, 它们是正交归一的, 但却不是极坐标系的坐标基底 :math:`\{ \partial /\partial r, \partial / \partial \varphi \}`, 关键在于 :math:`\partial / \partial \varphi` 不归一, 因 :math:`\delta(\partial / \partial \varphi,\partial / \partial \varphi)=r^2\neq 1`. 实际上, :math:`\hat{e}_\varphi:= r^{-1}\partial / \partial \varphi`.

[定义10] 设 :math:`\{ x^\mu \}` 是 :math:`\mathbb{R}^n` 的自然坐标, 在 :math:`\mathbb{R}^n` 上定义度规张量场 :math:`\eta` 为

.. math:: \eta := \eta_{\mu\nu}\D x^\mu \otimes \D x^\nu,\quad \eta_{\mu\nu} \equiv \begin{cases}
    0,&\quad \mu \neq \nu, \\ -1,&\quad \mu=\nu = 0, \\ +1,&\quad \mu=\nu=1,\cdots, n-1.\end{cases}

则 :math:`(\mathbb{R}^4, \eta)` 称为 :math:`n` **维闵氏** (Minkowski) **空间** (物理上称为 :math:`n` **维闵氏时空**), :math:`\eta` 称为 **闵氏度规**. 闵氏度规在自然坐标系的线元表达式为 :math:`\D s^2 = \eta_{\mu\nu}\D x^\mu \D x^\nu`. 不难证明

.. math:: \eta(\partial/\partial x^\alpha, \partial/\partial x^\beta) = \eta_{\alpha\beta}
    :label: lorenzian

可见自然坐标基底 :math:`\{\partial/\partial x^\mu \}` 用闵氏度规衡量也是正交归一的. 但满足 :eq:`lorenzian` 的却不一定是自然坐标系.

[定义11] :math:`n` 维闵氏空间中满足 :eq:`lorenzian` 的坐标系叫 **洛伦兹** (Lorenzian) **坐标系** 或 **伪笛卡儿** (pseudo-Cartesian) **坐标系**.

第六节 抽象指标记号
^^^^^^^^^^^^^^^^^^^

Penrose 首创 **抽象指标记号** (the abstract index notation), 要点如下

1. :math:`(k, l)` 型张量用带有 :math:`k` 个上标和 :math:`l` 个下标的字母表示, 上下指标为小写拉丁字母, 只表示张量类型, 故称 **抽象指标**.
2. 重复上下抽象指标表示对这两个指标求缩并.
3. 张量积记号省略. 代表张量的字母带着自己的抽象指标可以交换, 张量积顺序的不可交换性体现为 :math:`\omega_a \mu_b \neq \omega_b \mu_a`.
4. 涉及张量的分量时, 相应指标用小写希腊字母 :math:`\mu,\nu,\alpha,\beta` 等, 这种指标称为 **具体指标**. 张量在基矢上的展开式 :math:`T = \xtensor{T}{^{\mu\nu}}{_\sigma} e_\mu \otimes e_\nu \otimes e^{\sigma*}` 现在写成
    
    .. math::  \xtensor{T}{^{ab}}{_c} = \xtensor{T}{^{\mu\nu}}{_\sigma} (e_\mu)^a (e_\nu)^b (e^\sigma)_c,
        \quad \xtensor{T}{^{\mu\nu}}{_\sigma} = \xtensor{T}{^{ab}}{_c} (e^\mu)_a (e^\nu)_b (e_\sigma)^c

5. :math:`\xtensor{T}{^a}{_b}` 作用于矢量 :math:`v^b \in V` 仍为矢量, 记作 :math:`u^a \equiv \xtensor{T}{^a}{_b}v^b \in V`; :math:`\xtensor{T}{^a}{_b}` 作用于对偶矢量 :math:`\omega_a \in V^*` 仍为对偶矢量, 记作 :math:`\mu_b \equiv \xtensor{T}{^a}{_b}\omega_a \in V^*`. 以 :math:`\xtensor{\delta}{^a}{_b}` 代表从 :math:`V` 到 :math:`V` 的恒等映射, 即 :math:`\xtensor{\delta}{^a}{_b}v^b := v^a \forall v^b \in V`, 易见它也是从 :math:`V^*` 到 :math:`V^*` 的恒等映射, 即 :math:`\xtensor{\delta}{^a}{_b}\omega_a = \omega_b \forall \omega_a \in V^*`. :math:`\xtensor{\delta}{^a}{_b}` 与任一张量缩并的结果是把该张量的上标 :math:`b` 换为 :math:`a` (或把下标 :math:`a` 换为 :math:`b`), 例如 :math:`\xtensor{\delta}{^a}{_b}T_{ac} = T_{bc}, \xtensor{\delta}{^a}{_b}\xtensor{T}{^{cb}}{_e} = \xtensor{T}{^{ca}}{_e}`. 设 :math:`\{ (e_\mu)^a \}` 是 :math:`V` 的基底, :math:`\{ (e^\mu)_a \}` 是其对偶基底, 则

    .. math:: (e^\mu)_a(e_\mu)^b = \xtensor{\delta}{^b}{_a}, \quad \xtensor{\delta}{^\mu}{_\nu} \equiv \xtensor{\delta}{^a}{_b} (e^\mu)_a (e_\nu)^b

    注意, 即使是在洛伦兹号差的情况下也有 :math:`\xtensor{\delta}{^0}{_0} = +1`, 因为这个式子表示的是坐标基底和对偶坐标基底的关系, 按照对偶坐标基底的定义而得到 :math:`\delta`, 不需要指定度规. 这与基底的正交归一性无关.

6. 度规记为 :math:`g_{ab}`. 常写 :math:`v_a = g_{ab}v^b`. 由于 :math:`g:V\to V^*` 是同构映射, 其逆映射 :math:`g^{-1}` 自然存在, 为 (2,0) 型张量, 本应记作 :math:`(g^{-1})^{ab}`, 但通常都简记为 :math:`g^{ab}`. 于是 :math:`\omega^a = g^{ab}\omega_b`. 可用 :math:`g_{ab}` 及 :math:`g^{ab}` 对上、下指标分别作 "下降" 和 "上升" 处理. 由于 :math:`\omega^a = g^{ab} \omega_b = g^{ab} (g_{bc}\omega^c),\quad \forall \omega^a \in V`, 故 :math:`g^{ab}g_{bc} = \xtensor{\delta}{^a}{_c}`.

    设 :math:`\{ (e_\mu)^a \}` 是 :math:`V` 的基底, :math:`\{ (e^\mu)_a \}` 是其对偶基底, 以 :math:`g_{\mu\nu}` 和 :math:`g^{\mu\nu}` 分别代表 :math:`g_{ab}` 和 :math:`g^{ab}` 在这一基底的分量, 易证 :math:`g^{\mu\nu}g_{\nu\sigma} = \xtensor{\delta}{^\mu}{_\sigma}`. 不难看出, 用度规及其逆的分量 :math:`g_{\mu\nu}` 及 :math:`g^{\mu\nu}` 可对张量分量的上、下具体指标分别作 "下降" 和 "上升" 处理.

4维闵氏度规在抽象指标记号中应表为

.. math:: \eta_{ab}:=\eta_{\mu\nu}(\D x^\mu)_a (\D x^\nu)_b

在洛伦兹坐标系 :math:`\{t,x,y,z\}` 和球坐标系 :math:`\{t,r,\theta,\varphi\}` 的线元表达式为

.. math:: \D s^2 = -\D t^2 + \D x^2 + \D y^2 + \D z^2 = -\D t^2 + \D r^2 + r^2\big(\D \theta^2 +\sin^2\theta\D \varphi^2\big)

坐标基矢和对偶坐标基矢的关系为

.. math:: g_{ab}(\partial/\partial x^\mu)^b = g_{\mu\nu}(\D x^\nu)_a, \quad g^{ab} (\D x^\mu)_b = g^{\mu\nu} (\partial/\partial x^\nu)^a

当 :math:`g_{ab} = \delta_{ab}` (欧氏度规) 且 :math:`\{ x^\mu \}` 为笛卡儿系时有

.. math:: \delta_{ab} (\partial/\partial x^\mu)^b = (\D x^\mu)_a, \quad \delta^{ab} (\D x^\mu)_b = (\partial/\partial x^\mu)^a

当 :math:`g_{ab} = \eta_{ab}` (以4维闵氏度规为例) 且 :math:`\{ x^\mu \}` 为洛伦兹系时则有

.. math::  \eta_{ab} (\partial/\partial x^0)^b = -(\D x^0)_a,&\quad \eta_{ab} (\partial/\partial x^i)^b = (\D x^i)_a \\
    \quad \eta^{ab} (\D x^0)_b = -(\partial/\partial x^0)^a,&\quad \eta^{ab} (\D x^i)_b = (\partial/\partial x^i)^a

张量的上指标和下指标在文献中又常分别称为 **逆变指标** (contravariant index) 和 **协变指标** (covariant index). 相应地, 矢量 :math:`v^a` 和对偶矢量 :math:`\omega_a` 也分别称为 **逆变矢量** 和 **协变矢量**.

[定义1] :math:`T\in \mathscr{T}_V(0, 2)` 称为 **对称的** (symmetric), 若 :math:`T(u, v) = T(v, u),\quad \forall u,v\in V`. 在抽象指标记号中 :math:`T` 为对称的充要条件是 :math:`T_{ab} = T_{ba}`. 同理, :math:`\xtensor{T}{^a}{_b}=\xtensor{T}{_b}{^a}` 表示降指标后为对称张量的 (1,1) 型张量.

[定义2] (0,2)型张量 :math:`T_{ab}` 的 **对称部分** (记作 :math:`T_{(ab)}`) 和 **反称部分** (记作 :math:`T_{[ab]}`) 分别定义为

.. math:: T_{(ab)} := \frac{1}{2} (T_{ab} + T_{ba}),\quad T_{[ab]} := \frac{1}{2} (T_{ab} - T_{ba})

一般地, :math:`(0, l)` 型张量 :math:`T_{a_1\cdots a_l}` 的对称和反称部分定义为

.. math:: T_{(a_1\cdots a_l)} := \frac{1}{l!}\sum_\pi T_{a_{\pi(1)}\cdots a_{\pi(l)}}\quad
    T_{[a_1\cdots a_l]} := \frac{1}{l!}\sum_\pi \delta_\pi T_{a_{\pi(1)}\cdots a_{\pi(l)}}

其中 :math:`\pi` 代表 :math:`(1,\cdots, l)` 的一种排列, :math:`\pi(1)` 是指 :math:`\pi` 所代表的那种排列中的第1个数字, :math:`\sum_\pi` 代表对各种排列取和, :math:`\delta_\pi \equiv \pm 1` (偶排列取 :math:`+`, 奇排列取 :math:`-`).

[定义3] :math:`T \in \mathscr{T}_V(0, l)` 称为 **全对称的**, 若 :math:`T_{a_1\cdots a_l} = T_{(a_1\cdots a_l)}`; :math:`T` 称为 **全反称的**, 若 :math:`T_{a_1\cdots a_l} = T_{[a_1\cdots a_l]}`.

[定理2-6-1]

(a) 设 :math:`T_{a_1\cdots a_l} = T_{(a_1\cdots a_l)}`, 则 :math:`T_{a_1\cdots a_l} = T_{a_{\pi(1)}\cdots a_{\pi(l)}}` 例如
    
    .. math:: T_{abc} = T_{(abc)} \Rightarrow T_{abc} = T_{acb} = T_{cab} = T_{cba} = T_{bca} = T_{bac}

(b) 设 :math:`T_{a_1\cdots a_l} = T_{[a_1\cdots a_l]}`, 则 :math:`T_{a_1\cdots a_l} = \delta_\pi T_{a_{\pi(1)}\cdots a_{\pi(l)}}` 例如
    
    .. math:: T_{abc} = T_{[abc]} \Rightarrow T_{abc} = -T_{acb} = T_{cab} = -T_{cba} = T_{bca} = -T_{bac}

[定理2-6-2]

(a) 缩并时括号有 "传染性", 即 :math:`T_{[a_1\cdots a_l]}S^{a_1\cdots a_l} = T_{[a_1\cdots a_l]}S^{[a_1\cdots a_l]} = T_{a_1\cdots a_l}S^{[a_1\cdots a_l]}`, 对圆括号亦然.
(b) 括号内的同种子括号可随意增删, 例如 :math:`T_{[[ab]c]} = T_{[abc]}`, 其中 :math:`T_{[[ab]c]} \equiv \frac{1}{2}(T_{[abc]} - T_{[bac]})`.
(c) 括号内加异种子括号得零, 例如 :math:`T_{[(ab)c]} = 0, \quad T_{(a[bcd])} = 0`.
(d) 异种括号缩并得零, 例如 :math:`T^{(abc)}S_{[abc]} = 0`.
(e) :math:`T_{a_1\cdots a_l}=T_{(a_1\cdots a_l)}\Rightarrow T_{[a_1\cdots a_l]} = 0,\quad T_{a_1\cdots a_l}=T_{[a_1\cdots a_l]}\Rightarrow T_{(a_1\cdots a_l)} = 0`.
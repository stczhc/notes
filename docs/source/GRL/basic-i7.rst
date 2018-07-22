
.. only:: html

    .. math::
        \renewenvironment{equation*}
        {\begin{equation}\begin{aligned}}
        {\end{aligned}\end{equation}}
        \renewcommand{\gg}{>\!\!>}
        \renewcommand{\ll}{<\!\!<}
        \newcommand{\I}{\mathrm{i}}
        \newcommand{\D}{\mathrm{d}}
        \newcommand{\DD}{\mathrm{D}}
        \newcommand{\DF}{\mathrm{D}_{\mathrm{F}}}
        \renewcommand{\C}{\mathrm{C}}
        \newcommand{\dt}{\frac{\D}{\D t}}
        \newcommand{\E}{\mathrm{e}}
        \newcommand{\xtensor}[3]{{#1}#2 {\vphantom{#1}}#3}
        \newcommand{\oiint}{{\rlap{\,\subset\!\supset}\iint}}
        \renewcommand{\bm}{\boldsymbol}

.. note::
    微分几何入门与广义相对论 (上册, 第二版), 梁灿彬, 2006.

第七章 广义相对论基础
=====================

第一节 引力与时空几何
---------------------

牛顿引力论的基本方程是反映引力势 :math:`\phi` 和质量密度 :math:`\rho` 的关系的泊松方程 :math:`\nabla^2\phi = 4\pi \rho`, 它有伽利略协变性而没有洛伦兹协变性, 因而应该修改. 从另一角度看, 方程 :math:`\nabla^2\phi = 4\pi \rho` 有如下形式的解

.. math:: 
    \phi(\bm{r}, t) = \iiint \frac{\rho(\bm{r}', t)}{| \bm{r}' - \bm{r} |} \D V'

表明场点 :math:`\bm{r}` 处 :math:`t` 时刻的引力势 :math:`\phi` 由空间各点在 :math:`t` 时刻的质量密度 :math:`\rho` 决定, 这意味着引力场以无限速度传播, 显然与狭义相对论相悖.

有两个重要因素促使爱因斯坦创立广义相对论, 它们是引力的 "普适性 (universality)" 和马赫原理. 我们只介绍前者. 牛顿引力的 "普适性" 可以表述为: 任意两个质点在引力场中的同一点有相同的引力加速度. 引力质量等于惯性质量 :math:`m_{\mathrm{G}} = m_{\mathrm{I}}` 的事实等价于初始位置和速度相同的、除引力外不受力的任何物体在引力场中都 "齐步走". 这种毫无个性的集体行为强烈地暗示着引力是整个时空背景的内禀性质, 与其他力有实质性的差别. 在引力作用下的 "齐步走" 现象分明强烈地暗示着引力本身是一种纯时空效应: 引力就是时空弯曲. 注意到闵氏时空中自由质点的世界线必为测地线的结论, 自然进一步假定弯曲时空中自由质点的世界线也是 (该时空的) 测地线. 设两个自由质点有相同的初始位置和速度, 即它们的世界线相交且在交点处切矢相等. 由于自由质点的世界线为测地线, 而测地线由初始条件 (测地线的出发点及在该点的切矢) 唯一决定 (定理3-3-4), 这两条世界线必然重合. 翻译为物理语言, 就是引力场中两个初始状态相同的自由质点在以后各时刻的状态必然相同, 而这正是 :math:`m_{\mathrm{G}} = m_{\mathrm{I}}` 的等价表述.

广义相对论是独立于狭义相对论框架的物理理论, 狭义相对论框架容不下广义相对论, 容不下引力. 用现代语言来表述, 广义相对论最基本的假设可以归纳为以下三点:

(a) 3维空间中的引力本质上是4维时空的弯曲. 就是说, 当引力存在时, 时空背景不再是闵氏时空 :math:`(\mathbb{R}^4, \eta_{ab})`, 而是某种弯曲时空 :math:`(M, g_{ab})`, 其中 :math:`M` 是某个4维流形, :math:`g_{ab}` 是 :math:`M` 上某个非平直的洛伦兹度规场.

.. admonition:: 备注

    注意这里假设为 "洛伦兹度规场" 决定了度规在局部惯性系的洛伦兹号差, 因此 :math:`g_{ab}` 也就不是完全任意的.

(b) 自由质点的世界线是它所在的弯曲时空 :math:`(M, g_{ab})` 的测地线. 当引力不存在时, 时空背景是闵氏时空 :math:`(\mathbb{R}^4, \eta_{ab})`, 质点的运动方程为 :math:`F^a = U^b \partial_b P^a`, 其中 :math:`\partial_b` 是与闵氏度规 :math:`\eta_{ab}` 相适配的导数算符. 当引力存在时, 一个自然的假设是把上式的 :math:`\partial_b` 改为与弯曲度规 :math:`g_{ab}` 相适配的导数算符 :math:`\nabla_b`, 并认为自由质点所受 4力为零, 于是其运动方程为

.. math:: 
    0 = U^b \nabla_b (mU^a) = mU^b\nabla_b U^a

可见自由质点沿测地线运动. 

(c) 时空的弯曲情况受物质分布的影响, 其间的关系由爱因斯坦方程描述.

第二节 弯曲时空中的物理定律
---------------------------

广义相对论认为一切物理现象不过是物理客体在某种弯曲时空背景 :math:`(M, g_{ab})` 上的演化. 因此, 用广义相对论的观点研究物理, 首先就要找出各种物理客体在给定的弯曲时空背景上的演化方程. 爱因斯坦在创立广义相对论时曾提出如下广义协变性原理: 物理定律的数学表达式在任意坐标变换下形式不变. 然而, 广义协变性原理的这一表述对物理定律并无约束力. 此处介绍一种既能抓住实质又便于应用的如下表述:

**广义协变性原理** (principle of general covariance) 只有时空度规及其派生量才允许以背景几何量的身份出现在物理定律的表达式中.

狭义相对论中用4维语言描述物理客体的做法可以自然推广至广义相对论. 例如, 质点和光子的世界线仍分别是类时和类光曲线 (当然, 这实际上已把 "光速不变原理" 和 "质点必亚光速" 的实质内涵推广到广义相对论); 质点的固有时间仍等于它的世界线长度, 质点的4速 :math:`U^a` 仍定义为其世界线的单位切矢, 4动量仍定义为 :math:`P^a := mU^a` (:math:`m` 为静质量); 质点相对于瞬时观者 :math:`(p, Z^a)` 的能量仍定义为 :math:`E := -P^aZ_a`, 电磁场仍由2形式场 :math:`F_{ab}` 描述. 为了得出这些物理量服从的定律, 在多数情况下只须把狭义相对论相应定律表达式中的所有 :math:`\eta_{ab}` 和 :math:`\partial_a` 分别换为 :math:`g_{ab}` 和 :math:`\nabla_a`. 不妨把这种做法称为 "**最小替换法则**". 以下是使用这个法则的一些例子. 弯曲时空中质点的4加速应定义为

.. math:: 
    A^a := U^b\nabla_b U^a

质点所受4力应定义为

.. math:: 
    F^a := U^b\nabla_b P^a

对于电磁场中的质点, 其运动方程为

.. math:: 
    q\xtensor{F}{^a}{_b}U^b = U^b\nabla_bP^a

电磁场 :math:`F_{ab}` 的运动方程 (弯曲时空的麦氏方程) 应为

.. math:: 
    \nabla^a F_{ab} =&\ -4\pi J_b \\
    \nabla_{[a}F_{bc]} =&\ 0

电磁场的能动张量应表为

.. math:: 
    T_{ab} = \frac{1}{4\pi} \left(F_{ac} \xtensor{F}{_b}{^c} - \frac{1}{4} g_{ab}F_{cd}F^{cd} \right)

此式在弯曲时空中仍成立的另一重要依据是它满足 :math:`\nabla^a T_{ab} = -F_{bc}J^c`, 表明电磁场与带电粒子场的总能量、动量和角动量守恒. 由麦氏方程第二式可得 :math:`\D \bm{F} = 0`, 至少可局域地引入电磁4势 :math:`\bm{A}` 使 :math:`\bm{F} = \D \bm{A}`, 故麦氏方程第一式可表为

.. math:: 
    -4\pi J_b = \nabla^a (\nabla_a A_b - \nabla_b A_a) = \nabla^a\nabla_a A_b - \nabla^a\nabla_b A_a

由于现在 :math:`\nabla_a` 与 :math:`\nabla_b` 有非对易性, 要想利用洛伦兹条件 :math:`\nabla^a A_a = 0` 就要先做如下改写

.. math:: 
    - \nabla^a\nabla_b A_a = -\nabla_b\nabla^a A_a - \xtensor{R}{_b}{^d}A_d = -\xtensor{R}{_b}{^d}A_d

从而

.. math:: 
    \nabla^a\nabla_a A_b - \xtensor{R}{_b}{^d}A_d = -4\pi J_b

第三节 费米移动与无自转观者
---------------------------

[定义1] 设 :math:`G(\tau)` 是时空 :math:`(M, g_{ab})` 中的类时线 (:math:`\tau` 为固有时), :math:`\mathscr{F}_G(k, l)` 代表沿 :math:`G(\tau)` 的光滑 :math:`(k, l)` 型张量场的集合. 映射 :math:`\DF/\D \tau : \mathscr{F}_G(k, l) \to \mathscr{F}_G(k, l)` 称为 :math:`G(\tau)` 上的 **费米-沃克导数算符** (简称费米导数算符), 若它满足如下条件:

(a) 具有线性性;
(b) 满足莱布尼茨律;
(c) 与缩并可交换顺序;
(d) :math:`\frac{\DF f}{\D \tau} = \frac{\D f}{\D \tau} \quad \forall f \in \mathscr{F}_G(0, 0)`;
(e) :math:`\frac{\DF v^a}{\D \tau} = \frac{\DD v^a}{\D \tau} + (A^aZ^b - Z^aA^b)v_b \quad \forall v^a \in \mathscr{F}_G(1, 0)`.

其中 :math:`Z^a \equiv (\partial /\partial \tau)^a` 代表 :math:`G(\tau)` 的4速, :math:`A^a \equiv Z^b \nabla_b Z^a` 代表 :math:`G(\tau)` 的4加速, :math:`\DD v^a /\D \tau` 是沿曲线 :math:`G(\tau)` 的协变导数 :math:`Z^b\nabla_b v^a` 的另一记号 (其中 :math:`\nabla_b` 满足 :math:`\nabla_b g_{ac} = 0`).

[命题7-3-1] 费米导数有以下性质:

(1) 若 :math:`G(\tau)` 是测地线, 则 :math:`\DF v^a / \D \tau = \DD v^a / \D \tau`;
(2) :math:`\DF Z^a / \D \tau = 0`;
(3) 若 :math:`w^a` 是 :math:`G(\tau)` 上的空间矢量场 (对线上各点 :math:`w^aZ_a = 0`), 则

.. math:: 
    \DF w^a /\D \tau = \xtensor{h}{^a}{_b} (\DD w^b /\D \tau)

其中 :math:`h_{ab} = g_{ab} + Z_aZ_b,\ \xtensor{h}{^a}{_b} = g^{ac}h_{cb}` 是 :math:`G(\tau)` 上各点的投影映射. 性质3保证空间矢量场的费米导数仍为空间矢量场.

(4) :math:`\DF g_{ab} /\D \tau = 0`, 等价地有

.. math:: 
    \frac{\DF (g_{ab} v^au^b)}{\D \tau} = g_{ab} v^a \frac{\DF u^b}{\D \tau} + g_{ab} u^b \frac{\DF v^a}{\D \tau}\quad
        \forall v^a,u^b \in \mathscr{F}_G(1,0)

[证明] 性质(4)的证明如下:

.. math:: 
    &\ g_{ab} v^a \frac{\DF u^b}{\D \tau} + g_{ab} u^b \frac{\DF v^a}{\D \tau}
    = v_a \frac{\DF u^a}{\D \tau} + u_a \frac{\DF v^a}{\D \tau}  \\
    =&\ v_a \left( \frac{\DD u^a }{\D \tau} + 2A^{[a}Z^{b]}u_b \right) + u_a \left( \frac{\DD v^a}{\D \tau} + 2A^{[a}Z^{b]}v_b \right) \\
    =&\ v_a \frac{\DD u^a }{\D \tau} + u_a \frac{\DD v^a}{\D \tau} + 4A^{[a}Z^{b]}v_{(a}u_{b)} \\
    =&\ \frac{\DD (v_au^a)}{\D \tau} = \frac{\DF (g_{ab}v^au^b)}{\D \tau}

[定义2] 矢量场 :math:`v^a` 称为沿 :math:`G(\tau)` **费米-沃克移动的** (Fermi-Walker transported), 若 :math:`\frac{\DF v^a}{\D \tau} = 0`. 费米-沃克移动简称 **费移**.

[注2] 费米导数的性质(1)表明沿测地线的费移就是平移; 性质(2)表明 :math:`G(\tau)` 的4速 :math:`Z^a` 总是沿 :math:`G(\tau)` 费移的; 由性质(4)可知

.. math:: 
    \frac{\DF v^a}{\D \tau} = \frac{\DF u^a}{\D \tau} = 0 \quad \Rightarrow \quad \frac{\D (g_{ab}v^au^b)}{\D \tau} = 0

这可简述为 "费移保内积", 与 "平移保内积" 类似.

.. admonition:: 备注

    注意, "保内积" 的数学表达式是内积作为标量, 沿曲线的导数为零, 即是线上的 "守恒量".


[命题7-3-2] :math:`p \in G` 及 :math:`v^a \in V_p` 决定唯一的沿 :math:`G(\tau)` 费移的矢量场.

[注3] (1) 由 :math:`Z^a` 沿 :math:`G(\tau)` 费移及费移保内积可知由空间矢量 :math:`v^a \in V_p` 决定的沿 :math:`G(\tau)` 费移的矢量场 :math:`v^a` 处处与 :math:`Z^a` 垂直, 因而是空间矢量场. (2) 点 :math:`p \in G` 的一个正交归一4标架 (其第零基矢等于 :math:`Z^a|_p`) 的每一基矢依命题7-3-2决定一个沿 :math:`G(\tau)` 费移的矢量场, 且由费移保内积可知这4个矢量场在线上每点正交归一. 可见 :math:`p` 点的一个正交归一4标架决定了 :math:`G(\tau)` 上唯一的正交归一费移4标架场, 其中第零个基矢场就是 :math:`G(\tau)` 的切矢场 :math:`Z^a`.

费移有重要物理意义: 世界线 :math:`G(\tau)` 上的空间矢量场 :math:`w^a` 无空间转动的充要条件是 :math:`w^a` 沿线费移, 即 :math:`\DF w^a /\D \tau = 0` (理由详见命题7-3-6).

闵氏时空中类时测地线 :math:`G(\tau)` 上的空间矢量场 :math:`w^a(\tau)` 称为 **转动的**, 若 :math:`G(\tau)` 上存在空间矢量场 :math:`\omega^a(\tau)` 使

.. math:: 
    \frac{\D w^i(\tau)}{\D \tau} = \xtensor{\varepsilon}{^i}{_{jk}}\omega^jw^k

其中 :math:`w^i, {\color{red}{\omega^j}}` 分别是 :math:`w^a` 和 :math:`\omega^a` 在 :math:`\{ t, x^i \}` 系的 :math:`i, j` 分量. 以 :math:`\Omega_{ab}` 代表 :math:`\omega_a` 在 :math:`W_p` 中的对偶微分形式, 即 :math:`\Omega_{ab} \equiv ({}^*\omega)_{ab} = \omega^c\varepsilon_{cab}` (:math:`\varepsilon_{cab}` 是与 :math:`h_{ab}` 适配的体元), 则称 :math:`\Omega_{ab}` 为 **角速度2形式**, 于是转动条件可改写为

.. math:: 
    \frac{\D w^i}{\D \tau} = -\Omega^{ij}w_j

[定义3] 设 :math:`G(\tau)` 是时空 :math:`(M, g_{ab})` 中任一观者的世界线 (不一定是测地线), :math:`v^a` 是线上的矢量场 (不一定是空间矢量场). 若 :math:`G(\tau)` 上存在2形式场 :math:`\Omega_{ab}` 使

.. math:: 
    \frac{\DD v^a}{\D \tau} = -\Omega^{ab}v_b

就说 :math:`v^a` 经受以 :math:`\Omega_{ab}` 为角速度的 **时空转动**. 若 :math:`\frac{\DD v^a}{\D \tau} = 0`, 就说 :math:`v^a` 无时空转动.

.. admonition:: 备注

    矢量场在线上的情况应该有三种情况, 第一是经受了时空转动, 需要满足上式. 第二是上式右边为零时, 则没有时空转动. 第三是不满足上式, 也不为零, 则矢量场在线上是没有规律的变化 (长度改变).

[命题7-3-3] 设 :math:`G(\tau)` 上矢量场 :math:`v^a, u^a` 经受相同的时空转动 :math:`\Omega_{ab}`, 则 :math:`v^au_a` 在 :math:`G(\tau)` 上为常数.

[证明]

.. math:: 
    \frac{\DD}{\D \tau} (v^au_a) = u_a \frac{\DD v^a}{\D \tau} + v_a \frac{\DD u^a}{\D \tau} =u_a(-\Omega^{ab}v_b) + v_a (-\Omega^{ab}u_b ) = -2\Omega^{ab}v_{(a}u_{b)} = 0

其中最后一步用到 :math:`\Omega_{ab}` 的反称性.

命题7-3-3表明时空转动保持矢量长度 (取 :math:`v^a = {\color{red}{u^a}}` 便可看出), 可见只有长度沿 :math:`G(\tau)` 不变的矢量场 :math:`v^a` 才可能是经受时空转动的矢量场.

[命题7-3-4] :math:`G(\tau)` 的4速 :math:`Z^a` 的时空转动角速度2形式为 :math:`\tilde{\Omega}_{ab} = A_a \wedge Z_b`, 其中 :math:`A^a` 是 :math:`G(\tau)` 的4加速.

[证明] :math:`-\tilde{\Omega}^{ab}Z_b = -(A^aZ^b-Z^aA^b)Z_b = A^a = \DD Z^a /\D \tau`.

从 :math:`\tilde{\Omega}_{ab} = A_a \wedge Z_b` 可知 :math:`\tilde{\Omega}_{ab}` 代表的时空转动发生在 :math:`Z^a \sim A^a` 面内, 它在以 :math:`Z^a` 为 :math:`(e_0)^a` 的正交归一4标架的空间分量 :math:`\tilde{\Omega}_{ij} = 0`. 这样的时空转动称为 **伪转动** (pseudo-rotation). 反之, 只有空间分量 (即 :math:`\Omega_{0i} = 0, i=1,2,3`) 的时空转动 :math:`\Omega_{ab}` 称为(纯) **空间转动**, 在不会混淆时简称 **转动**.

由于 :math:`G(\tau)` 上任一空间矢量场 :math:`w^a` 与 :math:`Z^a` 正交, :math:`Z^a` 经受伪转动 :math:`\tilde{\Omega}_{ab}` 迫使 :math:`w^a` 也经受这样一个伪转动. 下面证明, :math:`w^a` 的时空转动扣除这一必不可免的伪转动后必然是纯空间转动.

[命题7-3-5] 设 :math:`\tilde{\Omega}_{ab}` 是 :math:`G(\tau)` 的4速 :math:`Z^a` 所经受的伪转动, :math:`\Omega_{ab}` 是 :math:`G(\tau)` 上的空间矢量场 :math:`w^a (\neq 0)` 所经受的时空转动, 则 :math:`{\color{red}{\hat{\Omega}_{ab}}} \equiv \Omega_{ab} - \tilde{\Omega}_{ab}` 是纯空间转动 (可以差到一个规范变换).

[命题7-3-6] 观者世界线 :math:`G(\tau)` 上的空间矢量场 :math:`w^a` 无空间转动的充要条件是它沿 :math:`G(\tau)` 费移, 即 :math:`\DF w^a/\D \tau = 0`.

设 :math:`w^a` 有空间转动, 以 :math:`\omega_a` 代表 :math:`\hat{\Omega}_{ab}` 的对偶形式 (在 :math:`p \in G` 的3维空间 :math:`W_p` 内谈对偶), 即 :math:`\hat{\Omega}_{ab} = \omega^c\varepsilon_{cab}`, 其中 :math:`\omega_a` 称为空间矢量场 :math:`w^a` 的 **空间转动角速度** (简称 **角速度**).

.. admonition:: 备注

    这里书上说: 非费移的空间矢量场 :math:`w^a` 可用非零的空间转动角速度 :math:`\omega^a` 描述. 但是如果空间矢量场不费移, 它还可能在线上改变长度, 从而无法谈它的转动角速度.

[命题7-3-7] :math:`G(\tau)` 上任一正交归一的空间3标架场 :math:`\{(e_i)^a\}` 中的3个基矢场有共同的空间转动角速度 :math:`\hat{\Omega}_{ab}` (不再有规范自由性).

闵氏时空的惯性观者是指世界线为测地线 (4加速 :math:`A^a = 0`) 的无自转 (3标架转动角速度 :math:`\omega^a = 0`) 观者. 这是一类最简单的观者. 类似地, 弯曲时空的自由下落 (:math:`A^a = 0`) 无自转 (:math:`\omega^a = 0`) 观者也是一类最简单的观者, 他们对理解等效原理和局部惯性系有重要作用.

第四节 任意观者的固有坐标系
---------------------------

观者的4标架只在观者世界线上有定义. 若要记录发生在世界线附近的事件 (实验结果), 就要设法把这标架向外延伸并形成一个坐标系. 我们当然希望此系的坐标基底在世界线上与该观者的4标架重合. 本节介绍一个满足这一要求的、十分方便的坐标系, 叫做观者的 **固有** (proper) **坐标系**, 它由该观者的两个要素──世界线 :math:`G(\tau)` 及线上的正交归一4标架场决定. 由于我们讨论一般观者, 他可以有任意的4加速 :math:`\tilde{A}^a` 和任意的转动角速度 :math:`\omega^a`. 当然 :math:`\omega^a` 和 :math:`\hat{A}^a` 都是 :math:`G(\tau)` 上的空间矢量场, 即 :math:`\omega^aZ_a = 0` 和 :math:`\hat{A}^aZ_a = 0`. 设 :math:`\mu(s)` 是从 :math:`G(\tau)` 上任一点发出、在 :math:`p` 点与 :math:`G(\tau)` 正交的任一类空测地线, 其中 :math:`s` 是线长参数, 即 :math:`T^a \equiv (\partial/\partial s)^a` 为单位切矢. 令 :math:`q` 为 :math:`G(\tau)` 附近一点, 则总有唯一的上述类空测地线 :math:`\mu(s)` 经过 :math:`q`. 设经过 :math:`q` 的那条类空测地线 :math:`\mu(s)` 发自 :math:`G` 上的 :math:`p` 点且 :math:`p = \mu(0)`. 设 :math:`V_p` 为 :math:`p` 点的切空间, :math:`W_p` 为 :math:`V_p` 中与 :math:`Z^a|_p` 正交的3维子空间, 则 :math:`T^a|_p \in W_p`. 把 :math:`T^a|_p` 简记为 :math:`w^a`, 其在 :math:`(e_i)^a` 的分量记作 :math:`w^i`, 则 :math:`q` 点的4个固有坐标定义为

.. math:: 
    t(q) := \tau_p,\quad x^i(q):= s_qw^i,\quad i=1,2,3.

其中 :math:`\tau_p` 是 :math:`p` (作为 :math:`G` 上一点) 的固有时, :math:`s_q` 是 :math:`\mu(s)` 在 :math:`q` 点的参数值, 亦即 :math:`\mu(s)` 的 :math:`pq` 段的线长.

[命题7-4-1] 固有坐标系在任一点 :math:`p \in G(\tau)` 的坐标基矢与观者 :math:`G(\tau)` 的正交归一4标架一致, 因而度规 :math:`g_{ab}|_p` 在固有坐标系的分量 :math:`g_{\mu\nu}|_p = \eta_{\mu\nu}`.

:math:`g_{\mu\nu}|_p = \eta_{\mu\nu}` 是固有坐标系的一大优点. 当然, 这一简单结果对 :math:`G(\tau)` 外的点未必成立.

[定义1] 设 :math:`\{ t, x^i \}` 是观者 :math:`G` 的固有坐标系, 质点的世界线 (至少一段 :math:`L`) 位于 :math:`G` 的固有坐标域内, 则 :math:`L` 在点 :math:`p\in L` 相对于观者 :math:`G` 的 **3速** :math:`u^a` 和 **3加速** 依次定义为

.. math:: 
    u^a :=&\ [\D x^i (t) / \D t] (\partial/\partial x^i )^a \\
    a^a :=&\ [\D^2 x^i(t) / \D t^2] (\partial/\partial x^i )^a

其中 :math:`x^i(t)` 是 :math:`L` 在固有坐标系中以 :math:`t` 为参数的参数式.

[注1] 若 :math:`p` 是 :math:`L` 与 :math:`G` 线的交点, :math:`L` 在 :math:`p` 点的3速又可定义为 :math:`u^a := \xtensor{h}{^a}{_b}U^b/\gamma`, 与上面的定义等价.

惯性力和科氏力分别起源于观者的轨道运动和自转.

[命题7-4-2] 设观者 :math:`G` 的4加速为 :math:`\hat{A}^a`, 自转角速度 (即其标架转动的角速度) 为 :math:`\omega^a`, 被观测的自由质点 :math:`L` 与 :math:`G` 的世界线交于 :math:`p` 点, :math:`L` 在 :math:`p` 点相对于 :math:`G` 的3速为 :math:`u^a`, 则 :math:`L` 在 :math:`p` 点相对于 :math:`G` 的3加速为

.. math:: 
    a^a \equiv (\D^2 x^i /\D t^2 )(e_i)^a = -\hat{A}^a - 2\xtensor{\varepsilon}{^a}{_{bc}} \omega^bu^c + 2(\hat{A}_bu^b)u^a

其中 :math:`(e_i)^a` 是观者在 :math:`p` 点的正交归一空间3标架, :math:`\hat{\varepsilon}_{abc} \equiv Z^d\varepsilon_{dabc}`, :math:`Z^d` 是 :math:`G` 在 :math:`p` 点的4速, :math:`\varepsilon_{abcd}` 是与时空度规 :math:`g_{ab}` 相适配的体元.

第五节 等效原理与局部惯性系
---------------------------

与闵氏时空惯性观者对应的自然是自由下落 (世界线为测地线) 的无自转观者. 由于 :math:`m_{\mathrm{G}} = m_{\mathrm{I}}`, 根据牛顿力学, 爱因斯坦电梯内的一切 (非引力的) 力学实验都与远离各星球的惯性飞船内的相应实验有相同结果. 

在构思广义相对论的过程中, 爱因斯坦又假设性地把这一原理从力学实验推广到一切物理实验, 即假设自由下落电梯内的一切 (非引力的) 物理实验都与远离星球 (平直时空) 的惯性飞船内的相应实验结果一样, 并由此推出光的引力红移、光在引力场中走曲线等结论. 后人把同 :math:`m_{\mathrm{G}} = m_{\mathrm{I}}` 相应的原理称为 **弱等效原理** (weak equivalence principle, WEP), 把爱因斯坦推广后的原理称为 **爱因斯坦等效原理** (Einstein equivalence principle, EEP).

[命题7-5-1] 设 :math:`G(\tau)` 是弯曲时空的自由下落无自转观者 (爱因斯坦电梯观者), :math:`g_{\mu\nu}` 是度规 :math:`g_{ab}` 在 :math:`G(\tau)` 的固有坐标系的分量, :math:`\xtensor{\Gamma}{^\sigma}{_{\mu\nu}}` 是与 :math:`g_{ab}` 适配的导数算符 :math:`\nabla_a` 在该系的克氏符, 则

.. math:: 
    g_{\mu\nu}| _p = \eta_{\mu\nu},\quad \xtensor{\Gamma}{^\sigma}{_{\mu\nu}}|_p = 0 \ (\sigma, \mu, \nu = 0, 1, 2, 3),\quad \forall p \in G.

由此可见自由下落无自转观者的固有坐标系与闵氏时空的整体惯性 (洛伦兹) 坐标系类似, 因此被称为 **局部惯性系** 或 **局部洛伦兹系** (local Lorentz system, local Lorentz frame). 物理定律在局部洛伦兹坐标系的形式与它在闵氏时空洛伦兹坐标系的形式相同. 选坐标系只能消除 :math:`G(\tau)` 线上的 :math:`\xtensor{\Gamma}{^\sigma}{_{\mu\nu}}` 而不能消除其曲率 (曲率与坐标系无关).

等效原理可分为三个层次, 即弱等效原理 (WEP), 爱因斯坦等效原理 (EEP) 和强等效原理 (strong equivalence principle, SEP), SEP 与 EEP 的区别在于: EEP (及 WEP) 只考虑系统 (如电梯) 所处的外引力场而不考虑系统中的物体所激发的自引力场, 即在引力上只考虑它们的被动方面而忽略其主动方面. 而 SEP 则对主动、被动方面都做考虑. 任何引力理论都满足 WEP. 如果 EEP 成立, 则只有度规理论才可能正确. 进一步的讨论还表明, 广义相对论满足 SEP 而其他已知的度规理论都不满足 (这一讨论还不等于完全严格的证明).

第六节 潮汐力与测地偏离方程
---------------------------

潮汐现象的主要起因是月球, 其次是太阳. 忽略太阳的影响可使问题简化而不影响对实质的理解. 假定地球表面被一层海水所覆盖, 考虑水面上的 :math:`A, B` 两点, 其连线经过地心. 设某一时刻 :math:`A` 点离月球最近, 则 :math:`B` 点离月球最远, :math:`A, B` 点受到的来自月球的引力有所不同, 两点就要相互远离, 于是 :math:`A, B` 附近的海面向外鼓起. 可见海水每天都有两次涨潮和退潮.

潮汐现象是引力场的普遍性质. 我们分别用牛顿引力论和广义相对论对潮汐现象做定量讨论. 先用牛顿引力论. 不失一般性, 仍以地球附近的爱因斯坦电梯为例. 设电梯内处处放有小球. 以 :math:`\bm{r}(t)` 和 :math:`\bm{r}(t) + \bm{\lambda}(t)` 分别代表两个紧邻小球1和2的相对于笛卡儿系坐标原点 :math:`o` 的位矢, 则 :math:`\bm{\lambda}(t)` 是球2相对于1的位矢, 故 :math:`\D^2 \bm{\lambda}/\D t^2` 是球2相对于1的加速度 (**潮汐加速度**). 为计算潮汐加速度, 可借用引力势 :math:`\phi` 和牛顿第二定律写出

.. math:: 
    \frac{\D^2 x^i}{\D t^2} =&\ -\frac{\partial \phi}{\partial x^i} \bigg\rvert_{\bm{r}} \\
    \frac{\D^2 (x^i + \lambda^i)}{\D t^2} =&\ -\frac{\partial \phi}{\partial x^i} \bigg\rvert_{\bm{r} + \bm{\lambda}}
        \approx  -\frac{\partial \phi}{\partial x^i} \bigg\rvert_{\bm{r}} - \bigg( \frac{\partial}{\partial x^j}\frac{\partial \phi}{\partial x^i} \bigg)\bigg\rvert_{\bm{r}} \lambda^j

两式相减得

.. math:: 
    \frac{\D^2 \lambda^i}{\D t^2} = - \frac{\partial^2 \phi}{\partial x^i\partial x^j}\bigg\rvert_{\bm{r}} \lambda^j,\quad
        i =1,2,3

这就是牛顿引力论中潮汐加速度的表达式.

下面再从广义相对论的角度考察潮汐现象. 我们将证明, 潮汐效应起因于时空曲率, 是时空内禀弯曲的必然表现. 每一小球可看作一个自由下落观者, 他们的世界线都是以固有时 :math:`\tau` 为仿射参数的类时测地线. 这些测地线构成时空中某个开域 :math:`U` 上的一个 **测地线汇** (物理上对应于一个自由下落参考系), 测地线的切矢 :math:`Z^a \equiv (\partial/\partial \tau)^a` 是 :math:`U` 上的一个类时矢量场. 令 :math:`\mu_0(s)` 是一条光滑的横向曲线, 则线汇中与 :math:`\mu_0(s)` 相交的每一测地线 :math:`\gamma(\tau)` 可用 :math:`s` 标志, 即可记作 :math:`\gamma_s(\tau)`, 其中 :math:`s` 是该测地线与 :math:`\mu_0(s)` 交点的 :math:`s` 值. 选择各 :math:`\gamma_s(\tau)` 的固有时初始设定使每一 :math:`\gamma_s(\tau)` 与 :math:`\mu_0(s)` 交点的 :math:`\tau` 为零. 给定一条横向曲线 :math:`\mu_0(s)` 就挑出了一个单参测地线族 :math:`\mathscr{S} = \{ \gamma_s(\tau) \}` (线汇中的测地线充满时空中的4维开域 :math:`U`, 而这个单参测地线族只铺出一个2维面 :math:`\mathscr{S}`). 令 :math:`\eta^a \equiv (\partial/\partial s)^a`, 则 :math:`Z^a` 和 :math:`\eta^a` 便是 :math:`\mathscr{S}` 上的坐标基矢场, 因而对易

.. math:: 
    0 = [Z,\eta]^a = Z^b\nabla_b \eta^a - \eta^b \nabla_b Z^a

其中 :math:`\nabla_a` 可为任意导数算符. 选 :math:`\nabla_a` 与时空度规适配, 则

.. math:: 
    Z^b\nabla_b(\eta^a Z_a) =&\ \eta_a Z^b\nabla_bZ_a + Z_a Z^b\nabla_b\eta^a = Z_a Z^b\nabla_b\eta^a \\
        =&\ Z_a\eta^b\nabla_b Z^a = \frac{1}{2} \eta^b \nabla_b (Z_aZ^a) = 0

其中第二步是因为 :math:`Z^a` 是测地线的切矢, 测地线加速度 :math:`Z^b\nabla_bZ_a` 为零. 第三步用到上面的对易子表达式. 第五步用到 :math:`Z_aZ^a = -1` 对各点成立. 这说明 :math:`\eta^a Z_a` 沿任一测地线为常数. 因此, 只要一开始时选 :math:`\mu_0(s)` 使它与所有 :math:`\gamma_s(\tau)` 正交, 则任一 :math:`\mu_\tau(s)` (曲线 :math:`\mu_0(s)` 在 :math:`Z^a` 对应的单参微分同胚 (局部) 群元 :math:`\phi_\tau` 映射下的像) 都与所有 :math:`\gamma_s(\tau)` 正交. 这样选定后, :math:`\eta^a` 可记作空间矢量 :math:`w^a`. 设 :math:`\Delta s` 为小量, 则 :math:`\gamma_0(\tau)` 和 :math:`\gamma_{\Delta s}(\tau)` 可分别看作球1和2的世界线. 把 :math:`\gamma_0(\tau)` 称为 **基准观者** (fiducial observer). 令 :math:`\lambda^a \equiv w^a \Delta s`. 于是 :math:`\tilde{u}^b \equiv Z^a \nabla_a \lambda^b` 便可解释为球2相对于基准观者的3速.

.. admonition:: 备注

    这里关于3速的定义比较特别. 因为先有3位矢 :math:`\lambda^a`, 然后速度是位矢对时间的导数, 即 :math:`Z^a \nabla_a \lambda^b`.

类似地,

.. math:: 
    \tilde{a}^c \equiv Z^a\nabla_a (Z^b\nabla_b \lambda^c)

可解释为球2相对于球1的3加速. 考虑到某个邻近小球的潮汐加速度与球2的潮汐加速度之比是常数 :math:`\Delta \overline{s} /\Delta s`. 于是用 :math:`w^a` 定义适用于单参测地线族内与球1邻近的所有小球的普适量

.. math:: 
    u^b := Z^a\nabla_a w^b, \quad a^c := Z^a \nabla_a u^c = Z^a\nabla_a (Z^b\nabla_b w^c)

:math:`w^a` 称为 **分离矢量** (separation vector) 起着该族的位矢的量度单位的作用. :math:`u^b` 和 :math:`a^c` 分别称为球1测得的 **3速** 和 **3加速** (**潮汐加速度**).

[命题7-6-1] 任一单参类时测地线族内任一基准测地线 :math:`\gamma_0(\tau)` 测得的潮汐加速度与时空的曲率张量有如下关系 [称为 **测地偏离方程** (geodesic deviation equation)]:

.. math:: 
    a^c = -\xtensor{R}{_{abd}}{^c}Z^a w^b Z^d

[证明]

.. math:: 
    a^c =&\ Z^a\nabla_a (Z^b\nabla_b w^c) = Z^a\nabla_a (w^b\nabla_b Z^c)
        = w^b Z^a\nabla_a \nabla_b Z^c + (Z^a\nabla_a w^b) \nabla_b Z^c \\
        =&\ w^b Z^a\nabla_b \nabla_a Z^c - w^b Z^a \xtensor{R}{_{abd}}{^c} Z^d + (Z^a\nabla_a w^b) \nabla_b Z^c \\
        =&\ w^b \nabla_b (Z^a \nabla_a Z^c) - (w^b \nabla_b Z^a) \nabla_a Z^c 
            - w^b Z^a \xtensor{R}{_{abd}}{^c} Z^d + (Z^a\nabla_a w^b) \nabla_b Z^c \\
        =&\ - (Z^b \nabla_b w^a) \nabla_a Z^c - w^b Z^a \xtensor{R}{_{abd}}{^c} Z^d + (Z^a\nabla_a w^b) \nabla_b Z^c \\
        =&\ -w^b Z^a \xtensor{R}{_{abd}}{^c} Z^d

曲率张量非零的一个等价表述就是存在初始平行后来不平行的测地线. 潮汐加速度与黎曼张量直接相联, 不可能通过坐标变换消除. 时空曲率效应只有在足够的时空范围内才可有所显示. 一个没有度规的流形只要有导数算符就可谈及测地线, 照样有测地偏离方程.

[命题7-6-1'] :math:`(M, \nabla_a)` 中任一单参测地线族 :math:`\{ \gamma_s(\lambda) \}` 的测地偏离方程为

.. math:: 
    a^c = -\xtensor{R}{_{abd}}{^c} T^a \eta^b T^d

其中 :math:`\xtensor{R}{_{abd}}{^c}` 是黎曼张量, :math:`T^a \equiv (\partial/\partial \lambda)^a` 是基准测地线 :math:`\gamma_0(\lambda)` 的切矢, :math:`\eta^a` 是 :math:`\gamma_0(\lambda)` 上的分离矢量 (定义如前), :math:`a^c \equiv T^a\nabla_a (T^b\nabla_b)\eta^c`.

第七节 爱因斯坦场方程
---------------------

既然物质分布产生引力, 而引力表现为时空弯曲, 一个自然的猜想是时空曲率要受物质分布的影响. 物质分布由能动张量 :math:`T_{ab}` 描写, 因此应存在一个把时空曲率与 :math:`T_{ab}` 相联系的方程. 测地偏离方程与牛顿引力论的潮汐力表达式的对比提供了寻求 (猜测) 这个方程的重要线索. 于是

.. math:: 
    a^c =&\ a^i \left( \frac{\partial}{\partial x^i} \right)^c = \left( \frac{\partial}{\partial x^i} \right)^c
        \frac{\D^2 w^i}{\D t^2} = -\left( \frac{\partial}{\partial x^i} \right)^cw^j \frac{\partial}{\partial x^j}
        \left( \frac{\partial \phi}{\partial x^i} \right) \\
        =&\ -\left( \frac{\partial}{\partial x^i} \right)^c w^b \partial_b \left( \frac{\partial \phi}{\partial x^i} \right)
        = -w^b \partial_b \left[ \left( \frac{\partial}{\partial x^i} \right)^c \left( \frac{\partial \phi}{\partial x^i} \right) \right] = -w^b \partial_b\partial^c \phi

因此, 上式与测地偏离方程对比暗示如下对应关系

.. math:: 
    \xtensor{R}{_{abd}}{^c}Z^a Z^d \leftrightarrow \partial_b\partial^c \phi

上指标 :math:`c` 与下指标 :math:`b` 缩并得

.. math:: 
    \xtensor{R}{_{abd}}{^b}Z^a Z^d \leftrightarrow \partial_b\partial^b \phi = \nabla^2 \phi = 4\pi \rho = 4\pi T_{ad}Z^aZ^d

满足上式的最简单假设为

.. math:: 
    R_{ab} = 4\pi T_{ab}

然而, 由于 :math:`\nabla^a T_{ab}= 0`, 上式导致 :math:`\nabla^a R_{ab} = 0` 而这将导致物理上难以接受的结论 (可推出 :math:`\nabla_c R = 0`). 定义爱因斯坦张量

.. math:: 
    G_{ab} \equiv R_{ab} -\frac{1}{2} Rg_{ab},\quad \nabla^a G_{ab} = 0

用方程 :math:`G_{ab} = 8\pi T_{ab}` 代替之前的假设, 亦即假定

.. math:: 
    R_{ab} - \frac{1}{2}Rg_{ab} = 8\pi T_{ab}

上式作为描述时空曲率与物质场关系的方程, 后人称之为 **爱因斯坦场方程**, 是广义相对论的一个基本假设.

:math:`T_{ab} = 0` 是一类重要的特殊情况, 这时的爱因斯坦方程成为

.. math:: 
    R_{ab} - \frac{1}{2}Rg_{ab} = 0

叫做 **真空爱因斯坦方程**. 选定坐标系后, 里奇张量的分量 :math:`R_{\mu\nu}` 可由度规分量  :math:`g_{\mu\nu}` 及其偏导数表出, 而且 :math:`R_{\mu\nu}` 对 :math:`g_{\mu\nu}` 的依赖关系是高度非线性的. 闵氏度规自然是方程的解, 但方程的解却可以是弯度规, 一个重要例子是施瓦西在爱因斯坦方程发表不到一年后找到的真空度规.

不难证明 :math:`T_{ab} = 0` 时标量曲率 :math:`R` 为零, 因而真空爱因斯坦方程可简化为

.. math:: 
    R_{ab} = 0

这表明真空度规 (真空爱因斯坦方程的解) :math:`g_{ab}` 的黎曼张量等于其外尔张量, 一般非零. :math:`T_{ab} \neq 0` 的方程称为 **有源爱因斯坦方程**, 它很像闵氏时空的有源麦氏方程, 但有一个重要区别. 求解爱因斯坦方程时应该把描述物质场的量 (对尘埃就是 :math:`U^a` 和 :math:`\rho`) 与 :math:`g_{ab}` 一同作为未知量联立求解. 爱因斯坦方程的非线性性使叠加原理不成立, 这会导致诸多后果. 例如, 方程的两个解之和并非方程的解. 这是与麦氏方程的又一重大区别.

爱因斯坦张量满足 :math:`\nabla^aG_{ab} = 0`, 因此爱因斯坦方程蕴含 :math:`\nabla^aT_{ab} = 0`, 这一方程包含着关于物质运动的大量信息. 由此可知尘埃粒子的世界线为测地线. 可见, 自由粒子世界线为测地线的假设不再是独立假设.

第八节 线性近似和牛顿极限
-------------------------

在大多数情况下引力场很弱, 这时可用近似处理把场方程变为线性方程, 从而使问题大为简化. 在4维语言中, 弱引力场意味着时空度规 :math:`g_{ab}` 接近闵氏度规 :math:`\eta_{ab}`. 用下式定义 :math:`\gamma_{ab}`:

.. math:: 
    g_{ab} = \eta_{ab} + \gamma_{ab}

:math:`\gamma_{ab}` 看作对 :math:`\eta_{ab}` 的一种微扰. 为了方便和避免混淆, 我们约定张量的指标升降一律用 :math:`\eta^{ab}` 和 :math:`\eta_{ab}` 进行, 只有一个例外, 那就是 :math:`g^{ab}`, 它仍代表 :math:`g_{ab}` 的逆而不是 :math:`\eta^{ac}\eta^{bd}g_{cd}`. 在线性近似下不难得知

.. math:: 
    g^{ab} = \eta^{ab} - \gamma^{ab}

设 :math:`\partial_a` 和 :math:`\nabla_a` 分别是与 :math:`\eta_{ab}` 和 :math:`g_{ab}` 适配的导数算符, 则可知 :math:`g_{ab}` 在洛伦兹系的克氏符为

.. math:: 
    \xtensor{\Gamma}{^c}{_{ab}} = \frac{1}{2}g^{cd} (\partial_a g_{bd} + \partial_b g_{ad} -\partial_d g_{ab})

只保留 :math:`\gamma_{ab}` 的1阶项得

.. math:: 
    \xtensor{{\Gamma^{(1)}}}{^c}{_{ab}} = \frac{1}{2}\eta^{cd} (\partial_a \gamma_{bd} + \partial_b \gamma_{ad} -\partial_d \gamma_{ab})

进一步可得 :math:`g_{ab}` 的 (降指标) 黎曼张量的1阶近似 (称为 **线性黎曼张量**)

.. math:: 
    \xtensor{{R^{(1)}}}{}{_{acbd}} = \partial_d \partial_{[a}\gamma_{c]b} - \partial_b \partial_{[a}\gamma_{c]d}

用 :math:`\eta^{cd}` 对上式升指标后缩并可得 :math:`g_{ab}` 的里奇张量的1阶近似 (线性里奇张量)

.. math:: 
    \xtensor{{R^{(1)}}}{}{_{ab}} = \partial^c\partial_{(a}\gamma_{b)c} -\frac{1}{2} \partial^c\partial_c \gamma_{ab} - \frac{1}{2}\partial_a\partial_b \gamma

其中 :math:`\gamma \equiv \xtensor{\gamma}{^a}{_a} = \eta^{ab}\gamma_{ab}`. 由此易得爱因斯坦张量的1阶近似 (称为 **线性爱因斯坦张量**)

.. math:: 
    \xtensor{{G^{(1)}}}{}{_{ab}} =&\ \xtensor{{R^{(1)}}}{}{_{ab}} - \frac{1}{2} \eta_{ab} R^{(1)} \\
    =&\ \partial^c\partial_{(a}\gamma_{b)c} -\frac{1}{2} \partial^c\partial_c \gamma_{ab} - \frac{1}{2}\partial_a\partial_b \gamma
    -\frac{1}{2} \eta_{ab} (\partial^c\partial^d \gamma_{cd} - \partial^c \partial_c \gamma)

于是

.. math:: 
    \partial^c\partial_{(a}\gamma_{b)c} -\frac{1}{2} \partial^c\partial_c \gamma_{ab} - \frac{1}{2}\partial_a\partial_b \gamma
    -\frac{1}{2} \eta_{ab} (\partial^c\partial^d \gamma_{cd} - \partial^c \partial_c \gamma) = 8\pi T_{ab}

称为 **线性爱因斯坦方程** (linearized Einstein equation). 令

.. math:: 
    \overline{\gamma}_{ab} \equiv \gamma_{ab} -\frac{1}{2}\eta_{ab}\gamma

则线性爱因斯坦方程又简化为

.. math:: 
    -\frac{1}{2} \partial^c\partial_c \overline{\gamma}_{ab} + \partial^c \partial_{(a}\overline{\gamma}_{b)c}
    -\frac{1}{2}\eta_{ab} \partial^c\partial^d \overline{\gamma}_{cd} = 8\pi T_{ab}

用 :math:`\partial^b \equiv \eta^{bc}\partial_c` 作用于上式左边, 结果为零, 可见上式保证 :math:`\partial^bT_{ab} = 0`. 它表明线性引力论中的能动张量的散度为零.

:math:`\gamma_{ab}` 的如下变换

.. math:: 
    \tilde{\gamma}_{ab} = \gamma_{ab} +\partial_a \xi_b + \partial_b\xi_a

叫 **线性引力论的规范变换**. 利用线性引力论的 **洛伦兹规范条件** :math:`\partial^b \overline{\gamma}_{ab} = 0`, 线性爱因斯坦方程简化为

.. math:: 
    \partial^c\partial_c \overline{\gamma}_{ab} = -16\pi T_{ab}

下面证明牛顿引力论可以看作广义相对论在弱场低速条件下的极限情况. "弱场低速" 条件保证存在 :math:`\eta_{ab}` 使 :math:`\gamma_{ab} = g_{ab} - \eta_{ab}` 为 "小量", 而且存在 :math:`\eta_{ab}` 的惯性坐标系 :math:`\{ t, x^i \}` 满足:

(1) 引力场源的能动张量 :math:`T_{ab}` 在该系可表为

.. math:: 
    T_{ab} \approx \rho (\D t)_a (\D t)_b

可见, 虽然在广义相对论中物质场的能动张量 :math:`T_{ab}` 的各个分量对时空弯曲都有贡献, 但在牛顿引力论中, 只有质量密度 :math:`\rho` 才对引力场有贡献.

(2) (a) 引力场源低速运动导致时空几何缓慢变化, 故 :math:`\partial \overline{\gamma}_{\mu\nu}/\partial t` 可忽略;
    (b) 物体低速运动导致其4速 :math:`U^a` 近似等于 :math:`\{ t, x^i \}` 系的观者的4速 :math:`Z^a \equiv (\partial/\partial t)^a`, 即 :math:`U^a \approx Z^a`.

利用 :math:`\partial^\sigma\partial_\sigma \overline{\gamma}_{\mu\nu} \approx \nabla^2 \overline{\gamma}_{\mu\nu}`, 可知方程在无限远表现良好的唯一解的 :math:`\overline{\gamma}_{\mu\nu}` 的唯一非零分量为 :math:`\overline{\gamma}_{00}`, 令

.. math:: 
    \phi \equiv -\frac{1}{4} \overline{\gamma}_{00}

并把 :math:`\phi` 解释为牛顿引力势, 则方程 :math:`\nabla^2 \overline{\gamma}_{00} = -16\pi\rho` 便成为牛顿引力论中熟知的泊松方程

.. math:: 
    \nabla^2 \phi = 4\pi \rho

利用

.. math:: 
    \gamma_{ab} = \overline{\gamma}_{ab} - \frac{1}{2} \eta_{ab} \overline{\gamma}

可得

.. math:: 
    \gamma_{ab} = -\phi [4(\D t)_a (\D t)_b + 2\eta_{ab} ]

第九节 引力辐射
---------------

引力场同电磁场的相似之处使人期望广义相对论存在与电磁辐射类似的引力辐射. 真空爱因斯坦方程的线性近似为

.. math:: 
    \partial^c \partial_c \overline{\gamma}_{ab} = -16\pi T_{ab}

其中 :math:`\overline{\gamma}_{ab}` 满足洛伦兹规范条件

.. math:: 
    \partial^a \overline{\gamma}_{ab} = 0

洛伦兹规范条件式并未把 :math:`\overline{\gamma}_{ab}` 完全确定, 因为如果令

.. math:: 
    \gamma'_{ab} = \gamma_{ab} + \partial_a \xi_b +\partial_b\xi_a

其中 :math:`\xi_a` 满足

.. math:: 
    \partial^b\partial_b \xi_a = 0

则 :math:`\overline{\gamma}'_{ab}` 也满足真空爱因斯坦方程的线性近似式和洛伦兹规范条件. 仿照电磁场的做法, 可以利用这一剩余规范自由性选择 :math:`\gamma'_{ab}` 使其在某惯性系 :math:`\{ x^0 \equiv t, x^i \}` 的分量在无源区 (:math:`T_{ab} = 0`) 满足 :math:`\gamma' = 0, \gamma'_{0i} = 0, i = 1,2,3`. 从现在起把满足上述条件的 :math:`\gamma'_{ab}` 简记为 :math:`\gamma_{ab}`. 由 :math:`\gamma = 0` 可知 :math:`\overline{\gamma}_{ab} = \gamma_{ab}`, 于是洛伦兹条件 :math:`\partial^a \gamma_{ab} = 0` 与 :math:`\gamma_{0i} = 0` 结合导致

.. math:: 
    \partial \gamma_{00} /\partial t = 0

从而线性爱因斯坦方程在无源区给出

.. math:: 
    \nabla^2 \gamma_{00} = 0

如果在全时空都无源, 则上述方程在无限远表现良好的解就只能是 :math:`\gamma_{00} = \mathrm{const}`. 可以证明 (习题), 通过进一步的规范变换可把 :math:`\gamma_{00}` 变为零, 同时保留前面所有既得成果. 我们就在这一规范下讨论线性引力论的引力辐射. 单色平面波是真空线性爱因斯坦方程 :math:`\partial^c \partial_c \gamma_{ab}` 的最简单解, 它可表为

.. math:: 
    \gamma_{ab} = H_{ab} \cos (K_\mu x^\mu)

其中 :math:`H_{ab}` 是对称常张量场 ( "常" 是指 :math:`\partial_c H_{ab} = 0`), 代表波的振幅, 亦称 **偏振张量**; :math:`K^\mu` 是常矢量场 :math:`K^a` (4波矢) 的分量, 满足 (来自 :math:`\partial^c \partial_c \gamma_{ab} = 0`)

.. math:: 
    K_\mu K^\mu \equiv \eta_{\mu\nu} K^\mu K^\nu = 0

即 :math:`K^a` 是类光矢量场, 表明引力波同电磁波一样以光速传播. :math:`H_{\mu\nu}` 满足 :math:`H_{i\nu}K^\nu,\quad i =1,2,3;\quad H_{0\nu} = 0,\quad \nu = 0,1,2,3;\quad H \equiv \eta^{\mu\nu}H_{\mu\nu} = 0` 共8个方程, 又由于 :math:`H_{ab}` 作为对称张量至多有10个独立分量, 因此 :math:`H_{ab}` 只有2个独立分量, 它们在物理上代表平面引力波的两种独立偏振态.

在牛顿近似下, 如果系统的质点做变速运动, 它便发射引力波. 与电偶极矩对应的是 **质量偶极矩** (mass dipole moment)

.. math:: 
    \bm{D} = \sum_{\text{质点}\ P} m_P \bm{r}_P

其中 :math:`m_P` 和 :math:`\bm{r}_P` 分别是质点 :math:`P` 的质量和矢径. 由于电偶极辐射的强度正比于电偶极矩对时间的2阶导数的平方, 可以预期由质量偶极矩贡献的引力辐射强度正比于 :math:`\ddot{\bm{D}}^2`. 然而, 由于 :math:`\dot{\bm{D}} =\sum m_P \dot{\bm{r}}_P` 等于系统的总动量 :math:`\bm{p}`, 而由动量守恒律可知 :math:`\dot{\bm{p}} = 0`, 因此 :math:`\ddot{\bm{D}} = 0`, 即引力波中不含对应于电偶极辐射的引力偶极辐射. 根据电磁辐射理论, 磁偶极辐射的强度正比于磁偶极矩对时间的2阶导数的平方. 引力系统与磁偶极矩对应的量为

.. math:: 
    \bm{\mu} = \sum_{\text{质点}\ P} \bm{r}_P \times (m_P \bm{u}_P)

其中 :math:`\bm{u}_P` 是质点 :math:`P` 的速度. 上式右边无非是系统的总角动量. 由角动量守恒律可知 :math:`\dot{\bm{\mu}} = 0`, 因此引力波中也不含对应于磁偶极辐射的引力偶极辐射. 简言之, 引力波中不含偶极辐射. 只有转而研究四极辐射才会得到非零结果.

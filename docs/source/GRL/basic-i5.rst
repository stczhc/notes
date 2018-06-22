
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
        \newcommand{\oiint}{{\iint\!\!\!\!\!\!\!\!\!\!\!\;\subset\!\supset}}
        \renewcommand{\bm}{\boldsymbol}

.. note::
    微分几何入门与广义相对论 (上册, 第二版), 梁灿彬, 2006.

第五章 微分形式及其积分
-----------------------

第一节 微分形式
^^^^^^^^^^^^^^^

[定义1] :math:`\omega_{a_1\cdots a_l} \in \mathscr{T}_V(0, l)` 叫 :math:`V` 上的 :math:`l` **次形式** (简称 :math:`l` **形式**) (:math:`l`-form), 若

.. math:: 
    \bm{\omega} \equiv \omega_{a_1\cdots a_l} = \omega_{[a_1\cdots a_l]}

[定理5-1-1]

(a) :math:`\omega_{a_1\cdots a_l} = \omega_{[a_1\cdots a_l]} \ \Rightarrow \ \text{对任意基底有} \ \omega_{\mu_1\cdots\mu_l} = \omega_{[\mu_1\cdots \mu_l]}`;
(b) 若存在基底使 :math:`\omega_{\mu_1\cdots \mu_l} = \omega_{[\mu_1\cdots \mu_l]}\ \Rightarrow\ \omega_{a_1\cdots a_l} = \omega_{[a_1\cdots a_l]}`.

[定理5-1-2] 设 :math:`\bm{\omega}` 为 :math:`l` 形式, 则 (a) :math:`\omega_{a_1\cdots a_l} = \delta_\pi\omega_{a_{\pi(1)}\cdots a_{\pi(l)}}`, (b) 对任意基底, :math:`\omega_{\mu_1\cdots\mu_l} = \delta_\pi \omega_{\mu_{\pi(1)}\cdots\mu_{\pi(l)}}`.

在 :math:`l` 形式的分量 :math:`\omega_{\mu_1\cdots \mu_l}` 中, 凡有重复具体指标者必为零, 例如

.. math:: 
    \omega_{112} = \omega_{133} = \omega_{212} = 0

:math:`V` 上全体 :math:`l` 形式的集合记作 :math:`\Lambda(l)`. 1 形式其实就是 :math:`V` 上的对偶矢量, 故 :math:`\Lambda(1) = V^*`. 约定把任一实数称为 :math:`V` 上的 **0形式**, 则 :math:`\Lambda(0) = \mathbb{R}`. 容易证明 :math:`\Lambda(l)` 是 :math:`\mathscr{T}_V(0, l)` 的线性子空间.

[定义2] 设 :math:`\bm{\omega}` 和 :math:`\bm{\mu}` 分别是 :math:`l` 形式和 :math:`m` 形式, 则其 **楔形积** (wedge product, 简称 **楔积**) 是按下式定义的 :math:`l+m` 形式:

.. math:: 
    (\omega \wedge \mu)_{a_1\cdots a_l b_1\cdots b_m} := \frac{(l + m)!}{l!m!} \omega_{[a_1\cdots a_l} \mu_{b_1\cdots b_m]}.

或者说, 楔积是满足上式的映射 :math:`\wedge : \Lambda(l) \times \Lambda(m) \to \Lambda(l + m)`. 楔积 :math:`(\omega \wedge \mu)_{a_1\cdots a_l b_1\cdots b_m}` 亦可记作 :math:`\omega_{a_1\cdots a_l} \wedge \mu_{b_1\cdots b_m}`, 也常简记为 :math:`\bm{\omega}\wedge \bm{\mu}`. 由定义可知楔积满足结合律和分配律, 但楔积一般不服从交换律. 设 :math:`\bm{\omega}` 和 :math:`\bm{\mu}` 分别是 :math:`l` 和 :math:`m` 形式, 则

.. math:: 
    \bm{\omega} \wedge \bm{\mu} = (-1)^{lm} \bm{\mu} \wedge \bm{\omega}

[定理5-1-3] 设 :math:`\mathrm{dim} V = n`, 则 :math:`\mathrm{dim} \Lambda(l) = \frac{n!}{l!(n - l)!}`, 若 :math:`l \leqslant n`; :math:`\Lambda(l) = {0}` (只有零元), 若 :math:`l > n`.

[证明] 可证明任一 :math:`l` 形式 :math:`\bm{\omega}` 可展开为

.. math:: 
    \omega_{a_1\cdots a_l} = \sum_{\C} \omega_{\mu_1 \cdots \mu_l} (e^{\mu_1})_{a_1} \wedge \cdots \wedge (e^{\mu_l})_{a_l},
    :label: form-sum-c

其中 :math:`\{ (e^1)_a,\cdots , (e^n)_a \}` 为 :math:`V^*` 的任一基底, :math:`\omega_{\mu_1 \cdots \mu_l}` 是 :math:`\bm{\omega}` 在由这一基底构成的 :math:`\mathscr{T}_V(0, l)` 的基底的分量, 即

.. math:: 
    \omega_{\mu_1\cdots \mu_l} = \omega_{a_1\cdots a_l} (e_{\mu_1})^{a_1}\cdots(e_{\mu_l})^{a_l}

:math:`\sum_{\C}` 表示对 :math:`n` 个数 :math:`(1, \cdots, n)` 中取 :math:`l` 个的各种组合求和, 即 :math:`\Lambda(l)` 的基底中的矢量共 :math:`\C_n^l` 个, 于是得证.

:math:`M` 上光滑的 :math:`l` 形式场称为 :math:`l` **次微分形式场** (differential :math:`l`-form), 也简称作 :math:`l` **形式场** 或 :math:`l` **形式**.

一个重要的特例是 :math:`l = n` 的情况. 因为 :math:`\C_n^l = \C_n^n = 1`, :eq:`form-sum-c` 右边的求和只有一项, 即

.. math:: 
    \omega_{a_1\cdots a_n} = \omega_{1\cdots n} (\D x^1)_{a_1}\wedge \cdots \wedge (\D x^n)_{a_n}

简写为

.. math:: 
    \bm{\omega} = \omega_{1\cdots n} \D x^1 \wedge \cdots \wedge \D x^n

:math:`M` 中任一点 :math:`p` 的所有 :math:`n` 形式的集合是1维矢量空间, 只有一个基矢. 以 :math:`\Lambda_M(l)` 代表 :math:`M` 上全体 :math:`l` 形式场的集合.

[定义3] 流形 :math:`M` 上的 **外微分算符** (exterior differentiation operator) 是一个映射 :math:`\D : \Lambda_M(l) \to \Lambda_M(l + 1)`, 定义为

.. math:: 
    (\D \omega)_{ba_1\cdots a_l} := (l + 1) \nabla_{[b}\omega_{a_1\cdots a_l]}
    :label: domega

其中 :math:`\nabla_b` 可为任一导数算符 (因由 :math:`\xtensor{C}{^c}{_{ab}} = \xtensor{C}{^c}{_{ba}}` 可证对任意 :math:`\nabla_a` 和 :math:`\tilde{\nabla}_a` 有 :math:`\tilde{\nabla}_{[b}\omega_{\cdots]} = \nabla_{[b}\omega_{\cdots]}`. 可见在定义外微分之前无须在 :math:`M` 上指定导数算符 (及任何其他附加结构, 如度规).

[定理5-1-4] 设 :math:`\omega_{a_1\cdots a_l} = \sum_\C \omega_{\mu_1\cdots \mu_l} (\D x^{\mu_1})_{a_1}\wedge \cdots \wedge (\D x^{\mu_l})_{a_l}`, 则

.. math:: 
    (\D \omega)_{ba_1\cdots a_l} = \sum_\C (\D \omega_{\mu_1\cdots \mu_l})_b \wedge (\D x^{\mu_1})_{a_1} \wedge \cdots \wedge
        (\D x^{\mu_l})_{a_l}.

[定理5-1-5] :math:`\D \circ \D = 0`.

[证明] 选任一坐标系的导数算符 :math:`\partial_b` 作为 :eq:`domega` 的 :math:`\nabla_b` 便有

.. math:: 
    [\D (\D \omega)]_{cba_1\cdots a_l} = (l + 2)(l + 1)\partial_{[c}\partial_{[b}\omega_{a_1\cdots a_l]]}
        = (l + 2)(l + 1) \partial_{[[c}\partial_{b]}\omega_{a_1\cdots a_l]} = 0

其中方括号里面可以任意增加和删除方括号, 而两个普通导数算符本来是对称的, 加了方括号之后为零.

[定义4] 设 :math:`\bm{\omega}` 为 :math:`M` 上的 :math:`l` 形式场. :math:`\bm{\omega}` 叫 **闭的** (closed), 若 :math:`\D \bm{\omega} = 0`; :math:`\bm{\omega}` 叫 **恰当的** (exact), 若存在 :math:`l - 1` 形式场 :math:`\bm{\mu}` 使 :math:`\bm{\omega} = \D \bm{\mu}`.

[注1] 定理5-1-5亦可表述为: 若 :math:`\bm{\omega}` 是恰当的, 则 :math:`\bm{\omega}` 是闭的. 然而, 要使逆命题成立则还须对流形 :math:`M` 提出一定要求. 平凡流形 :math:`\mathbb{R}^n` 满足这一要求, 而流形一定局域平凡, 所以对任意流形 :math:`M` 而言, 闭的 :math:`l` 形式场至少是局域恰当的. 就是说, 设 :math:`\bm{\omega}` 是流形 :math:`M` 上的闭的 :math:`l` 形式场, 则 :math:`M` 的任一点 :math:`p` 必有邻域 :math:`N`, 在 :math:`N` 上存在 :math:`l - 1` 形式场 :math:`\bm{\mu}` 使 :math:`\bm{\omega} = \D \bm{\mu}`.

第二节 流形上的积分
^^^^^^^^^^^^^^^^^^^

[定义1] :math:`n` 维流形称为 **可定向的** (orientable), 若其上存在 :math:`\C^0` 且处处非零的 :math:`n` 形式场 :math:`\bm{\varepsilon}`.

[例1] :math:`\mathbb{R}^3` 是可定向流形, 因为其上存在 :math:`\C^\infty` 的 3 形式场 :math:`\bm{\varepsilon} \equiv \D x\wedge \D y \wedge \D z`, 其中 :math:`x, y, z` 为自然坐标.

[例2] 莫比乌斯带 (Mobius strip) 是不可定向流形.

[定义2] 若在 :math:`n` 维可定向流形 :math:`M` 上选定一个 :math:`\C^0` 且处处非零的 :math:`n` 形式场 :math:`\bm{\varepsilon}`, 就说 :math:`M` 是 **定向的** ( "已经定向" 之意). 设 :math:`\bm{\varepsilon}_1` 和 :math:`\bm{\varepsilon}_2` 是两个 :math:`\C^\infty` 且处处非零的 :math:`n` 形式场, 若存在处处为正的函数 :math:`h` 使 :math:`\bm{\varepsilon}_1 = h\bm{\varepsilon}_2`, 就说 :math:`\bm{\varepsilon}_1` 和 :math:`\bm{\varepsilon}_2` 给出 :math:`M` 的同一个 **定向**. 连通流形只能有两种定向. 

[定义3] :math:`M` 上选好以 :math:`\bm{\varepsilon}` 为代表的定向后, 开域 :math:`O\subset M` 上的基底场 :math:`\{ (e_\mu)^a \}` 叫做以 :math:`\bm{\varepsilon}` 衡量为 **右手的** (right handed), 若 :math:`O` 上存在处处为正的函数 :math:`h` 使 :math:`\bm{\varepsilon} = h(e^1)_{a_1} \wedge \cdots \wedge (e^n)_{a_n}`, 其中 :math:`\{ (e^\mu)_a \}` 是 :math:`\{ (e_\mu)^a \}` 的对偶基 (否则称为 **左手的**). 一个坐标系叫 **右(左)手系**, 若其坐标基底是右(左)手的.

[定义4] 设 :math:`(O, \psi)` 是 :math:`n` 维定向流形 :math:`M` 上的右手坐标系, :math:`\bm{\omega}` 是开子集 :math:`G \subset O` 上的连续  :math:`n` 形式场, 则 :math:`\bm{\omega}` 在 :math:`G` 上的 **积分** (integral) 定义为

.. math:: 
    \int_G \bm{\omega} := \int_{\psi[G]} \omega_{1\cdots n} (x^1, \cdots , x^n ) \D x^1\cdots x^n.

上式右边是 :math:`n` 元函数 :math:`\omega_{1\cdots n}(x^1, \cdots , x^n)` 在 :math:`\mathbb{R}^n` 的开子集 :math:`\psi[G]` 上的普通积分, 早已有定义. 为了定义出同一积分, 当 :math:`\{ x^\mu \}` 是左手系时应把 :math:`\int_G \bm{\omega}` 定义为

.. math:: 
    \int_G \bm{\omega} := -\int_{\psi[G]} \omega_{1\cdots n} (x^1,\cdots, x^n) \D x^1 \cdots \D x^n

[定义5] 设 :math:`\mu_{a_1\cdots a_l}` 是 :math:`l` 维子流形 :math:`\phi[S] \subset M` 上的 :math:`l` 形式场. :math:`\phi[S]` (看作脱离 :math:`M` 而独立存在的流形) 上的 :math:`l` 形式场 :math:`\tilde{\mu}_{a_1\cdots a_l}` 称为 :math:`\mu_{a_1\cdots a_l}` 在 :math:`\phi[S]` 上的 **限制** (restriction), 若

.. math:: 
    \tilde{\mu}_{a_1\cdots a_l}| _q (w_1)^{a_1}\cdots (w_l)^{a_l} = \mu_{a_1\cdots a_l}|_q (w_1)^{a_1}\cdots (w_l)^{a_l},\quad
        \forall q\in \phi[S], \quad (w_1)^a, \cdots, (w_l)^a \in W_q

今后凡谈及 :math:`l` 形式场 :math:`\bm{\mu}` 在 :math:`l` 维子流形 :math:`\phi[S]` 上的积分时, 一律理解为 :math:`\bm{\mu}` 的限制 :math:`\tilde{\bm{\mu}}` 的积分, 即总把 :math:`\int_{\phi[S]} \bm{\mu}` 理解为 :math:`\int_{\phi[S]} \tilde{\bm{\mu}}`.

第三节 Stokes 定理
^^^^^^^^^^^^^^^^^^

3 维欧氏空间的 Stokes 定理

.. math:: 
    \iint_S \big(\bm{\nabla} \times \bm{A} \big)\cdot \D \bm{S} = \oint_L \bm{A} \cdot \D \bm{l}

和 Gauss 定理

.. math:: 
    \iiint_V \big( \bm{\nabla}\cdot \bm{A} \big) \D V = \oiint_S \bm{A} \cdot \bm{n} \D S

的共性是反映区域上的积分和它的边界上的积分的联系. 

:math:`n` 维带边流形的最简单例子是

.. math:: 
    \mathbb{R}^{n-} := \{ (x^1, \cdots, x^n ) \in \mathbb{R}^n | x^1 \leqslant 0 \}

其中 :math:`x^1, \cdots, x^n` 是自然坐标. 由 :math:`x^1 = 0` 的所有点组成的子集叫 :math:`\mathbb{R}^{n-}` 的边界, 它本身是个 :math:`n - 1` 维流形 (其实就是 :math:`\mathbb{R}^{n-1}`). 推广至一般情况, :math:`n` **维带边流形** (manifold with boundary) :math:`N` 与 :math:`n` 维流形定义相仿, 只是把该定义中的 :math:`\mathbb{R}^n` 改为 :math:`\mathbb{R}^{n-}`, 即 :math:`N` 的开覆盖 :math:`\{ O_\alpha \}` 的每一元素 :math:`O_\alpha` 都应同胚于 :math:`\mathbb{R}^{n-}` 的一个开子集, :math:`N` 中全体被映到 :math:`x^1 = 0` 处的点组成 :math:`N` 的 **边界**, 记作 :math:`\partial N`. :math:`\partial N` 是 :math:`n - 1` 维流形; :math:`\I(N) \equiv N - \partial N` 是 :math:`n` 维流形. 例如, :math:`\mathbb{R}^3` 中的实心球体 :math:`B` 是3维带边流形, 其边界 (2维球面 :math:`S^2`) 是2维流形, :math:`\I(B)` 则是3维流形. 

[定理5-3-1 (Stokes 定理)] 设 :math:`n` 维定向流形 :math:`M` 的紧致子集 :math:`N` 是个 :math:`n` 维带边流形, :math:`\bm{\omega}` 是 :math:`M` 上的 :math:`n - 1` 形式场 (可微性至少为 :math:`\C^1`), 则

.. math:: 
    \int_{\I(N)} \D \bm{\omega} = \int_{\partial N}\bm{\omega}

[注1] 把 :math:`M` 的定向 :math:`\bm{\varepsilon}` 限制在 :math:`N` 上便得到 :math:`N` 的定向, 仍记作 :math:`\bm{\varepsilon}`, 它在 :math:`N` 的边界 :math:`\partial N` (:math:`M` 中的超曲面) 上自然诱导处一个定向, 记作 :math:`\overline{\bm{\varepsilon}}`, 是 :math:`\overline{\varepsilon}_{a_1\cdots a_{n-1}}` 的简写. 假设坐标系 :math:`\{ x^1,\cdots , x^n\}` 以 :math:`\bm{\varepsilon}` 衡量为右手系, 我们可以这样定义 :math:`\partial N` 的诱导定向, 使坐标系 :math:`\{ x^2,\cdots , x^n\}` 以 :math:`\overline{\bm{\varepsilon}}` 衡量为右手系. [定理5-3-1] 的式子左边是 :math:`n` 形式场 :math:`\D \bm{\omega}` 在 :math:`n` 维流形 :math:`\I(N)` (以 :math:`\bm{\varepsilon}` 为定向) 上的积分, 右边是 :math:`n - 1` 形式场 :math:`\bm{\omega}` 在 :math:`n - 1` 维流形 :math:`\partial N` (以 :math:`\overline{\bm{\varepsilon}}` 为定向) 上的积分. 

第四节 体元
^^^^^^^^^^^

[定义1] :math:`n` 维可定向流形 :math:`M` 上的任一个 :math:`\C^0` 而且处处非零的 :math:`n` 形式场 :math:`\bm{\varepsilon}` 称为一个 **体元** (volume element).

[注1] 对可定向连通流形, 定向只有两个, 而体元有无限多个. 谈及定向流形上的积分和体元时不要求流形上选定度规场, 这时体元的选择十分任意 (只有一个要求, 就是体元与定向之间的乘子为正), 没有一个与众不同的体元. 然而, 如果流形上给定了度规场 :math:`g_{ab}`, 则便存在选择特定体元的自然方法.

对任意度规 :math:`g_{ab}` 的 :math:`n` 维流形有

.. math:: 
    \varepsilon^{a_1\cdots a_n}\varepsilon_{a_1\cdots a_n} = (-1)^s n!(\varepsilon_{1\cdots n})^2

其中 :math:`\varepsilon_{1\cdots n}` 是 :math:`\varepsilon_{a_1\cdots a_n}` 在正交归一基底的分量, :math:`s` 是 :math:`g_{ab}` 在正交归一基底的分量中 :math:`-1` 的个数, 例如正定度规有 :math:`s = 0`, 洛伦兹度规有 :math:`s = -1`. 所谓借用度规选定一个特定的体元, 是指规定体元 :math:`\varepsilon_{a_1\cdots a_n}` 在正交归一基 :math:`\{ (e^\mu)_a \}` 的分量满足如下的简单性要求:

.. math:: 
    \varepsilon_{1\cdots n} = \pm 1

即对正交归一基

.. math:: 
    \varepsilon_{a_1 \cdots a_n} = \pm (e^1)_{a_1} \wedge \cdots \wedge (e^n)_{a_n}
    :label: oneps

这相当于要求

.. math:: 
    \varepsilon^{a_1\cdots a_n}\varepsilon_{a_1\cdots a_n} = (-1)^s n!

满足上式的 :math:`\varepsilon_{a_1\cdots a_n}` 称为 **与度规** :math:`g_{ab}` **相适配 (相容) 的体元**. 上式只把体元确定到差一个负号的程度, 加上 "体元与定向相容" 的要求才确定唯一的体元, 简称 **适配体元**. 于是 :eq:`oneps` 右边的 :math:`+` 和 :math:`-` 号分别对应于右手和左手正交归一基. 对任意带正定度规 :math:`g_{ab}` 的定向流形 :math:`N`, 设 :math:`\bm{\varepsilon}` 为适配体元, 若 :math:`\int_N \bm{\varepsilon}` 存在, 就称它为 :math:`N` 的 (用 :math:`g_{ab}` 衡量的) **体积** (对1,2 维流形又分别叫 **长度** 和 **面积**). 这可看作把 :math:`\bm{\varepsilon}` 称为体元的由来.

[定理5-4-1] 设 :math:`\bm{\varepsilon}` 为适配体元, :math:`\{ (e_\mu)^a \}` 及 :math:`\{ (e^\mu)_a \}` 为基底及其对偶基底, :math:`g` 为 :math:`g_{ab}` 在此基底的分量组成的行列式, :math:`|g|` 为 :math:`g` 的绝对值, 则 (式中 :math:`+` 、 :math:`-` 号分别适用于右手和左手基底)

.. math:: 
    \varepsilon_{a_1\cdots a_n} = \pm \sqrt{|g|} (e^1)_{a_1}\wedge \cdots \wedge (e^n)_{a_n}

[定理5-4-2] 设 :math:`\nabla_a` 和 :math:`\bm{\varepsilon}` 分别是与度规相适配的导数算符和体元, 则

.. math:: 
    \nabla_b\varepsilon_{a_1\cdots a_n} = 0

[证明] 由 :math:`\nabla_bg_{ac} = 0` 及 :math:`\varepsilon^{a_1\cdots a_n}\varepsilon_{a_1\cdots a_n} = (-1)^s n!` 得 :math:`\varepsilon^{a_1\cdots a_n}\nabla_b \varepsilon_{a_1\cdots a_n} = 0`, 于是对任一矢量场 :math:`v^b` 有

.. math:: 
    \varepsilon^{a_1\cdots a_n} v^b \nabla_b \varepsilon_{a_1 \cdots a_n} = 0
    :label: evnbe

因 :math:`M` 中任一点的 :math:`n` 形式的集合是1维矢量空间, 故该点的任意两个 :math:`n` 形式只能差到一个乘子 :math:`h` (对不同点 :math:`h` 可不同), 因此 :math:`v^b\nabla_b \varepsilon_{a_1\cdots a_n} = h\varepsilon_{a_1\cdots a_n}`.  代入 :eq:`evnbe` 便给出 :math:`h = 0`, 所以 :math:`v^b \nabla_b \varepsilon_{a_1 \cdots a_n} = 0`. 因 :math:`v^b` 为任意矢量场, 故 :math:`\nabla_b\varepsilon_{a_1\cdots a_n} = 0`.

[引理5-4-3]

.. math:: 
    \xtensor{\delta}{^{[a_1}}{_{a_1}}\cdots \xtensor{\delta}{^{a_j}}{_{a_j}}\xtensor{\delta}{^{a_{j+1}}}{_{b_{j + 1}}} \cdots \xtensor{\delta}{^{a_n]}}{_{b_n}} = \frac{(n - j)!j!}{n!}\xtensor{\delta}{^{[a_{j+1}}}{_{b_{j + 1}}} \cdots \xtensor{\delta}{^{a_n]}}{_{b_n}}

[定理5-4-4]

(a)

.. math:: 
    \varepsilon^{a_1\cdots a_n}\varepsilon_{b_1\cdots b_n} = (-1)^s n! \xtensor{\delta}{^{[a_1}}{_{b_1}}\cdots \xtensor{\delta}{^{a_n]}}{_{b_n}}

(b)

.. math:: 
    \varepsilon^{a_1\cdots a_ja_{j + 1}\cdots a_n}\varepsilon_{a_1\cdots a_j b_{j+1}\cdots b_n} = (-1)^s (n-j)!j! \xtensor{\delta}{^{[a_{j+1}}}{_{b_{j + 1}}}\cdots \xtensor{\delta}{^{a_n]}}{_{b_n}}

[证明] :math:`\varepsilon^{a_1\cdots a_n}\varepsilon_{b_1\cdots b_n} = \varepsilon^{[a_1\cdots a_n]}\varepsilon_{[b_1\cdots b_n]}` 表明 :math:`\varepsilon^{a_1\cdots a_n}\varepsilon_{b_1\cdots b_n}` 对全部上标和全部下标都为反称. 不难证明这种 :math:`(n, n)` 型张量的集合是1维矢量空间 (矢量空间的维数是指有多少个基底. 一个基底就是实数, 这里是两个实数相乘), 而 :math:`\xtensor{\delta}{^{[a_1}}{_{b_1}}\cdots \xtensor{\delta}{^{a_n]}}{_{b_n}}` 属于这类张量, 故任何这类张量与 :math:`\xtensor{\delta}{^{[a_1}}{_{b_1}}\cdots \xtensor{\delta}{^{a_n]}}{_{b_n}}` 只差一个乘子, 从而 :math:`\varepsilon^{a_1\cdots a_n}\varepsilon_{b_1\cdots b_n} = K\xtensor{\delta}{^{[a_1}}{_{b_1}}\cdots \xtensor{\delta}{^{a_n]}}{_{b_n}}`. 与 :math:`\varepsilon_{a_1\cdots a_n}\varepsilon^{b_1\cdots b_n}` 缩并, 左边结果为 :math:`(-1)^s n!(-1)^sn!`, 右边结果为 :math:`K\varepsilon_{b_1\cdots b_n}\varepsilon^{b_1\cdots b_n} = K(-1)^s n!`, 于是 :math:`(-1)^sn!`, 故 (a) 得证. 两边分别对前 :math:`j` 个上下指标缩并得

.. math:: 
    \varepsilon^{a_1\cdots a_ja_{j + 1}\cdots a_n}\varepsilon_{a_1\cdots a_j b_{j+1}\cdots b_n} =&\ 
        (-1)^s n! \xtensor{\delta}{^{[a_1}}{_{a_1}}\cdots\xtensor{\delta}{^{a_j}}{_{a_j}}\xtensor{\delta}{^{a_{j + 1}}}{_{b_{j + 1}}} \cdots \xtensor{\delta}{^{a_n]}}{_{b_n}} \\
        =&\ (-1)^s (n-j)!j! \xtensor{\delta}{^{[a_{j+1}}}{_{b_{j + 1}}}\cdots \xtensor{\delta}{^{a_n]}}{_{b_n}}

第五节 函数在流形上的积分, Gauss 定理
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^


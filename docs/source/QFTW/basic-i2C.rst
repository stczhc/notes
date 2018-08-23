
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
        \renewcommand{\bm}{\boldsymbol}
    

第二章 相对论量子力学 (C)
=========================

第六节 空间反射和时间反演
-------------------------

1 P/T 算符的定义
^^^^^^^^^^^^^^^^

在第2.3节我们曾经指出, 任何齐次洛伦兹变换, 要么是固有且正时的 (即, :math:`\det\Lambda = +1` 和 :math:`\xtensor{\Lambda}{^0}{_0} \geqslant +1`), 要么等于一个固有正时洛伦兹变换乘以 :math:`\mathscr{P}` 或 :math:`\mathscr{T}` 或 :math:`\mathscr{PT}`, 其中 :math:`\mathscr{P}` 和 :math:`\mathscr{T}` 分别是空间反射和时间反演变换

.. math:: 
    \xtensor{\mathscr{P}}{^\mu}{_\nu} = \begin{pmatrix} 1 & 0 & 0 & 0 \\ 0 & -1 & 0 & 0 \\ 0 & 0 & -1 & 0 \\ 0 & 0 & 0 & -1 \end{pmatrix},\quad
    \xtensor{\mathscr{T}}{^\mu}{_\nu} = \begin{pmatrix} -1 & 0 & 0 & 0 \\ 0 & 1 & 0 & 0 \\ 0 & 0 & 1 & 0 \\ 0 & 0 & 0 & 1 \end{pmatrix}
    :label: pt-def

人们曾经认为显然当 :math:`\Lambda` 和/或 :math:`\Lambda'` 包括因子 :math:`\mathscr{P}` 或 :math:`\mathscr{T}` 或 :math:`\mathscr{PT}` 时, Poincaré 群的基本乘法规则也是成立的

.. math:: 
    U(\Lambda', a') U(\Lambda, a) = U(\Lambda'\Lambda, \Lambda'a + a')

注意上式来源于 [定理16], 而 [定理16] 的推出的时候还没有讨论固有正时洛伦兹变换, 因此上式当然对一般的洛伦兹变换都成立. 但是上式有一个假设, 就是射线变换 :math:`U(\Lambda)` 构成 :math:`\Lambda` 的普通表示. 这个可能存在问题, 不过应该在后面一节会有详细讨论. 不过一般地说, 在现在理论框架之内, 这一条的成立是相当自然的, 没有任何更改的余地. 物理上, 这一条和大多数实验事实符合, 少数不符合的可能需要修改整个理论框架, 而不可能只修改这一条.

特别地, 人们曾经认为对应于 :math:`\mathscr{P}` 和 :math:`\mathscr{T}` 自身的算符是存在的

.. math:: 
    \mathsf{P} \equiv U(\mathscr{P}, 0)\quad \mathsf{T} \equiv U(\mathscr{T}, 0)

并且有如下结论.

[定理55] 对任何固有正时洛伦兹变换 :math:`\xtensor{\Lambda}{^\mu}{_\nu}` 和平移 :math:`a^\mu`, 有

.. math:: 
    \mathsf{P} U(\Lambda, a) \mathsf{P}^{-1} =&\ U(\mathscr{P}\Lambda \mathscr{P}^{-1}, \mathscr{P} a) \\
    \mathsf{T} U(\Lambda, a) \mathsf{T}^{-1} =&\ U(\mathscr{T}\Lambda \mathscr{T}^{-1}, \mathscr{T} a)
    :label: upt-trans

[证明] 利用 :math:`\mathsf{P}, \mathsf{T}` 的定义和群乘法规则 :math:`U(\Lambda', a') U(\Lambda, a) = U(\Lambda'\Lambda, \Lambda'a + a')` 可得 (注意由于 [定理18] 即洛伦兹变换的逆元 :math:`U^{-1}(\Lambda, a) = U(\Lambda^{-1},-\Lambda^{-1}a)` 对一般的洛伦兹变换都成立, 因此也可用于 :math:`\mathscr{P}, \mathscr{T}`)

.. math:: 
    \mathsf{P} U(\Lambda, a) \mathsf{P}^{-1} =&\ U(\mathscr{P}, 0) U(\Lambda, a) U^{-1}(\mathscr{P}, 0) = U(\mathscr{P} \Lambda, \mathscr{P}a) U^{-1}(\mathscr{P}, 0) \\
    =&\ U(\mathscr{P} \Lambda, \mathscr{P}a) U(\mathscr{P}^{-1}, 0) = U(\mathscr{P} \Lambda \mathscr{P}^{-1}, \mathscr{P}a)

类似可证对于 :math:`\mathsf{T}` 的情况也有相同的关系.

注意 [定理55] 中, :math:`a` 的变换只需要乘以一个 :math:`\mathscr{P}`, 而 :math:`\Lambda` 则两边都要乘以 :math:`\mathscr{P}`. 这本质上是由于 :math:`a` 是闵氏空间的矢量, 而 :math:`\Lambda` 是闵氏空间的张量, 它们的变换律不同. [定理55] 的变换规则蕴含了我们通常所说的 :math:`\mathsf{P}` 和 :math:`\mathsf{T}` 是守恒的. 也就是说, 如果认为 :math:`\mathsf{P}` 和 :math:`\mathsf{T}` 守恒, 那么 [定理55] 的关系就必须满足.

这里关于这一点可以根据王正行书 P82 有更清晰的讨论. 按照 [定理24], 守恒量对应的算符与 :math:`H` 对易. 因此 :math:`\mathsf{P}` 和 :math:`\mathsf{T}` 是守恒也只需要看 :math:`\mathsf{P}` 和 :math:`\mathsf{T}` 是否和能量算符对易. 而如果承认 [定理55], 再加上后面 [定理57] 的证明中关于不能有负能量的态的讨论, 那么就会得到 [定理57] 的结论, 即 :math:`\mathsf{P}` 和 :math:`\mathsf{T}` 都和 :math:`H` 对易. 因此可以说, [定理55] 把 :math:`\mathsf{P}` 和 :math:`\mathsf{T}` 的守恒性压缩到只差一个正负号的程度. 而确定这个正负号则用到一个非常显然的物理事实 (不能有负能态), 所以认为 [定理55] 是确定 :math:`\mathsf{P}` 和 :math:`\mathsf{T}` 是否守恒的主要判据. 反过来, 当说 :math:`\mathsf{P}` 和 :math:`\mathsf{T}` 不守恒的时候, 并不是指这两个算符和能量算符反对易, 而是更深层次的无论取正负号都不成立的不守恒, 因此这时候必须修改 [定理55]. 因此说 [定理55] 成立与否是决定 :math:`\mathsf{P}` 和 :math:`\mathsf{T}` 是否守恒的关键. 另外注意, 具有空间反射不变性和宇称守恒是等价的 (这个需要证明). 而空间反射不变性的定义是, 如果系统在空间反射以后的态与原来的态都满足同样的物理定律 (在非相对论情况下就是薛定谔方程), 是同一个量子态, 则这个系统就具有 **空间反射不变性**.

一个系统是否具有空间反射不变性, 换句话说, 系统的宇称是否守恒, 取决于系统的动力学性质, 这要由实验来判定, 不能先验地论断. 在历史上, 是从原子能级跃迁的 Laporte 选择定则了解到原子系统的宇称是守恒量. 原子系统只涉及电子与原子核之间的电磁相互作用, 这表明电磁相互作用过程中宇称守恒. 后来发现, 在强相互作用过程中宇称也守恒, 但在弱相互作用过程中宇称并不守恒. 在 1956-57 年人们发现 :math:`\mathsf{P}` 守恒只在忽略弱相互作用 (比如产生原子核 :math:`\beta` 衰变的作用) 的近似下成立. 在 1964 年人们找到了间接证据证明 :math:`\mathsf{T}` 守恒的性质也只是近似成立 (见3.3节). 在下面的讨论, 我们假设满足 [定理55] 的算符 :math:`\mathsf{P}` 和 :math:`\mathsf{T}` 真的存在, 但是应该始终注意这只是一个近似.

[定理56] Poincaré 生成元在 :math:`\mathsf{P}` 和 :math:`\mathsf{T}` 变换下具有如下性质

.. math:: 
    \mathsf{P}\I J^{\rho\sigma} \mathsf{P}^{-1} =&\ \I \xtensor{\mathscr{P}}{_\mu}{^\rho}\xtensor{\mathscr{P}}{_\nu}{^\sigma} J^{\mu\nu} \\
    \mathsf{P}\I P^{\rho} \mathsf{P}^{-1} =&\ \I \xtensor{\mathscr{P}}{_\mu}{^\rho} P^{\mu} \\
    \mathsf{T}\I J^{\rho\sigma} \mathsf{T}^{-1} =&\ \I \xtensor{\mathscr{T}}{_\mu}{^\rho}\xtensor{\mathscr{T}}{_\nu}{^\sigma} J^{\mu\nu} \\
    \mathsf{T}\I P^{\rho} \mathsf{T}^{-1} =&\ \I \xtensor{\mathscr{T}}{_\mu}{^\rho} P^{\mu}
    :label: jp-trans-pt

这和 :eq:`jp-lambda-trans` 非常像, 只是我们没有在方程两边消去 :math:`\I` 因子, 因为此时我们还没有确定 :math:`\mathsf{P}` 和 :math:`\mathsf{T}` 是线性幺正算符还是反线性反幺正算符.

[证明] 考虑无穷小变换的情况

.. math:: 
    \xtensor{\Lambda}{^\mu}{_\nu} = \xtensor{\delta}{^\mu}{_\nu} + \xtensor{\omega}{^\mu}{_\nu}\quad a^\mu = \epsilon^\mu

利用 :eq:`ujp-expansion`, 即

.. math:: 
    U(1+\omega, \epsilon) = 1+ \frac{1}{2} \I \omega_{\rho\sigma} J^{\rho\sigma} - \I \epsilon_\rho P^\rho + \cdots

把上式应用于 :eq:`upt-trans` 得

.. math:: 
    \mathsf{P} U(\Lambda, a) \mathsf{P}^{-1} =&\ \mathsf{P} \big[ 1+ \frac{1}{2} \I \omega_{\rho\sigma} J^{\rho\sigma} - \I \epsilon_\rho P^\rho \big] \mathsf{P}^{-1} = 1 + \frac{1}{2} \omega_{\rho\sigma} \big[ \mathsf{P} \I  J^{\rho\sigma} \mathsf{P}^{-1} \big] - \epsilon_\rho  \big[ \mathsf{P} \I P^\rho \mathsf{P}^{-1} \big] \\
    \mathsf{T} U(\Lambda, a) \mathsf{T}^{-1} =&\ \mathsf{T} \big[ 1+ \frac{1}{2} \I \omega_{\rho\sigma} J^{\rho\sigma} - \I \epsilon_\rho P^\rho \big] \mathsf{T}^{-1} = 1 + \frac{1}{2} \omega_{\rho\sigma} \big[ \mathsf{T} \I  J^{\rho\sigma} \mathsf{T}^{-1} \big] - \epsilon_\rho  \big[ \mathsf{T} \I P^\rho \mathsf{T}^{-1} \big] \\
    U(\mathscr{P}\Lambda \mathscr{P}^{-1}, \mathscr{P} a) =&\ U(1 + \mathscr{P}\omega \mathscr{P}^{-1}, \mathscr{P} \epsilon)
        = 1+ \frac{1}{2} \I (\mathscr{P} \omega \mathscr{P}^{-1})_{\rho\sigma} J^{\rho\sigma} - \I (\mathscr{P} \epsilon)_\rho P^\rho \\
    U(\mathscr{T}\Lambda \mathscr{T}^{-1}, \mathscr{T} a) =&\ U(1 + \mathscr{T}\omega \mathscr{T}^{-1}, \mathscr{T} \epsilon)
        = 1+ \frac{1}{2} \I (\mathscr{T} \omega \mathscr{T}^{-1})_{\rho\sigma} J^{\rho\sigma} - \I (\mathscr{T} \epsilon)_\rho P^\rho

其中 (根据 [定理17], :math:`\xtensor{(\mathscr{P}^{-1})}{^\nu}{_\sigma} = \xtensor{\mathscr{P}}{_\sigma}{^\nu}`)

.. math:: 
    \xtensor{(\mathscr{P} \omega \mathscr{P}^{-1})}{^\rho}{_\sigma} =&\ \xtensor{\mathscr{P}}{^\rho}{_\mu}\xtensor{\omega}{^\mu}{_\nu} \xtensor{(\mathscr{P}^{-1})}{^\nu}{_\sigma} = \xtensor{\mathscr{P}}{^\rho}{_\mu}\xtensor{\omega}{^\mu}{_\nu} \xtensor{\mathscr{P}}{_\sigma}{^\nu}
    = \mathscr{P}^{\rho\mu} \omega_{\mu\nu} \xtensor{\mathscr{P}}{_\sigma}{^\nu} \\
    (\mathscr{P} \epsilon)^\rho =&\ \xtensor{\mathscr{P}}{^\rho}{_\mu} \epsilon^\mu = \mathscr{P}^{\rho\mu} \epsilon_\mu

于是

.. math:: 
    (\mathscr{P} \omega \mathscr{P}^{-1})_{\rho\sigma} =&\ \xtensor{\mathscr{P}}{_\rho}{^\mu} \omega_{\mu\nu} \xtensor{\mathscr{P}}{_\sigma}{^\nu} 
        = \omega_{\mu\nu} \xtensor{\mathscr{P}}{_\rho}{^\mu} \xtensor{\mathscr{P}}{_\sigma}{^\nu}  \\
    (\mathscr{P} \epsilon)_\rho =&\ \xtensor{\mathscr{P}}{_\rho}{^\mu} \epsilon_\mu = \epsilon_\mu \xtensor{\mathscr{P}}{_\rho}{^\mu}

类似地有

.. math:: 
    (\mathscr{T} \omega \mathscr{T}^{-1})_{\rho\sigma} =&\ \xtensor{\mathscr{T}}{_\rho}{^\mu} \omega_{\mu\nu} \xtensor{\mathscr{T}}{_\sigma}{^\nu}
        = \omega_{\mu\nu} \xtensor{\mathscr{T}}{_\rho}{^\mu}  \xtensor{\mathscr{T}}{_\sigma}{^\nu} \\
    (\mathscr{T} \epsilon)_\rho =&\ \xtensor{\mathscr{T}}{_\rho}{^\mu} \epsilon_\mu  = \epsilon_\mu \xtensor{\mathscr{T}}{_\rho}{^\mu} 

于是

.. math:: 
    U(\mathscr{P}\Lambda \mathscr{P}^{-1}, \mathscr{P} a) =&\ 1+ \frac{1}{2} \I \omega_{\rho\sigma} \xtensor{\mathscr{P}}{_\mu}{^\rho} \xtensor{\mathscr{P}}{_\nu}{^\sigma} J^{\mu\nu} - \I \epsilon_\rho \xtensor{\mathscr{P}}{_\mu}{^\rho} P^\mu \\
        =&\ 1 + \frac{1}{2} \omega_{\rho\sigma} \big[ \I \xtensor{\mathscr{P}}{_\mu}{^\rho} \xtensor{\mathscr{P}}{_\nu}{^\sigma} J^{\mu\nu} \big]
            - \epsilon_\rho \big[ \I \xtensor{\mathscr{P}}{_\mu}{^\rho} P^\mu \big] \\
    U(\mathscr{T}\Lambda \mathscr{T}^{-1}, \mathscr{T} a) =&\ 1+ \frac{1}{2} \I \omega_{\rho\sigma} \xtensor{\mathscr{T}}{_\mu}{^\rho}  \xtensor{\mathscr{T}}{_\nu}{^\sigma} J^{\mu\nu} - \I \epsilon_\rho \xtensor{\mathscr{T}}{_\mu}{^\rho}  P^\mu \\
        =&\ 1 + \frac{1}{2} \omega_{\rho\sigma} \big[ \I  \xtensor{\mathscr{T}}{_\mu}{^\rho}  \xtensor{\mathscr{T}}{_\nu}{^\sigma} J^{\mu\nu} \big] - \epsilon_\rho \big[ \I \xtensor{\mathscr{T}}{_\mu}{^\rho}  P^\mu \big]

和 :math:`\mathsf{P} U(\Lambda, a) \mathsf{P}^{-1}, \mathsf{T} U(\Lambda, a) \mathsf{T}^{-1}` 比较 :math:`\omega_{\rho\sigma}, \epsilon_\rho` 的系数得

.. math:: 
    \mathsf{P}\I J^{\rho\sigma} \mathsf{P}^{-1} =&\ \I \xtensor{\mathscr{P}}{_\mu}{^\rho}\xtensor{\mathscr{P}}{_\nu}{^\sigma} J^{\mu\nu} \quad
    \mathsf{P}\I P^{\rho} \mathsf{P}^{-1} = \I \xtensor{\mathscr{P}}{_\mu}{^\rho} P^{\mu} \\
    \mathsf{T}\I J^{\rho\sigma} \mathsf{T}^{-1} =&\ \I \xtensor{\mathscr{T}}{_\mu}{^\rho}\xtensor{\mathscr{T}}{_\nu}{^\sigma} J^{\mu\nu} \quad
    \mathsf{T}\I P^{\rho} \mathsf{T}^{-1} = \I \xtensor{\mathscr{T}}{_\mu}{^\rho} P^{\mu}

2 P/T 算符的线性性/反线性性
^^^^^^^^^^^^^^^^^^^^^^^^^^^

下面要确定 :math:`\mathsf{P}, \mathsf{T}` 算符的幺正线性性或反幺正反线性性. 根据 [定理4], 一个代表射线变换的算符, 要么是幺正线性的, 要么是反幺正反线性的.

[引理57-1] 线性算符与 :math:`\I` 对易, 反线性算符与 :math:`\I` 反对易.

[证明] 对于希尔伯特空间线性算符 :math:`U`, 设 :math:`\phi` 为任意希尔伯特空间的矢量, 有

.. math:: 
    U (\I \phi) = \I U \phi \quad \Rightarrow \quad U \I = \I U \quad \Rightarrow \quad [U, \I] = 0

对于希尔伯特空间反线性算符 :math:`U'`, 设 :math:`\phi` 为任意希尔伯特空间的矢量, 有

.. math:: 
    U' (\I \phi) = (-\I) U' \phi \quad \Rightarrow \quad U' \I = -\I U' \quad \Rightarrow \quad \{ U, \I \} = 0

[定理57] 空间反射 :math:`\mathsf{P}` 是幺正线性算符. 时间反演 :math:`\mathsf{T}` 是反幺正反线性算符.

[证明]

(A) 先考虑空间反射 :math:`\mathsf{P}` 算符. 在 :eq:`jp-trans-pt` 第二式中令 :math:`\rho = 0` 得

    .. math:: 
        \mathsf{P}\I H \mathsf{P}^{-1} = \I \xtensor{\mathscr{P}}{_\mu}{^0} P^{\mu} = \I \xtensor{\mathscr{P}}{_0}{^0} H = \I H

    注意其中 :math:`\xtensor{\mathscr{P}}{_0}{^0} = \xtensor{\mathscr{P}}{^0}{_0}` 是空间反射 :math:`\mathscr{P}` 的纯时间分量, 因此为1. :math:`H \equiv P^0` 是能量算符. 如果 :math:`\mathsf{P}` 是反线性反幺正的, 那么它和 :math:`\I` 反对易, 于是 :math:`\mathsf{P}\I H \mathsf{P}^{-1} = -\I \mathsf{P} H \mathsf{P}^{-1} = \I H`, 两边消去 :math:`\I` 得

    .. math:: 
        \mathsf{P} H \mathsf{P}^{-1} = -H

    那么对于任意具有能量 :math:`E>0` 的态矢 :math:`\psi`, 必存在另一个态矢 :math:`\mathsf{P}^{-1} \psi`, 它具有能量 :math:`-E < 0`. 证明如下. 设

    .. math:: 
        H \psi = E \psi, \quad E > 0

    则

    .. math:: 
        H \big( \mathsf{P}^{-1} \psi \big) =&\ \mathsf{P}^{-1} \mathsf{P} H \mathsf{P}^{-1} \psi = \mathsf{P}^{-1} (-H) \psi \\
            =&\ \mathsf{P}^{-1} (-E) \psi  = -E \big( \mathsf{P}^{-1} \psi \big)

    也就是说, :math:`\mathsf{P}^{-1} \psi` 是 :math:`H` 的具有本征值 :math:`-E < 0` 的本征矢.

    然而, 不存在负能量 (比真空能量低的能量) 的态矢, 因此我们只能选择另一种可能性: :math:`\mathsf{P}` 是线性幺正的, 并且与 :math:`H` 对易而不是反对易. 即我们有
    
    .. math:: 
        \mathsf{P} H \mathsf{P}^{-1} = H

    两边右乘 :math:`\mathsf{P}` 得
    
    .. math:: 
        \mathsf{P} H = H \mathsf{P} \quad \Rightarrow \quad [\mathsf{P}, H] = 0

(B) 下面我们考虑时间反演 :math:`\mathsf{T}` 算符. 在 :eq:`jp-trans-pt` 第四式中令 :math:`\rho = 0` 得

    .. math:: 
        \mathsf{T}\I H \mathsf{T}^{-1} = \I \xtensor{\mathscr{T}}{_\mu}{^0} P^{\mu} = \I \xtensor{\mathscr{T}}{_0}{^0} H = -\I H
    
    如果我们假定 :math:`\mathsf{T}` 是线性幺正的, 我们就可以消去两边的 :math:`I`, 得到 :math:`\mathsf{T} H \mathsf{T}^{-1} = -H`. 和上面的讨论类似, 这会导致对任意具有能量 :math:`\E` 的态矢 :math:`\psi`, 存在另一个具有能量 :math:`-E` 的态矢 :math:`\mathsf{T}^{-1}\psi`. 为了避免这个问题, 我们只能选择 :math:`\mathsf{T}` 是反线性和反幺正的.

现在既然我们已经确定了 :math:`\mathsf{P}` 是线性的而 :math:`\mathsf{T}` 是反线性的, 我们可以重写 :eq:`jp-trans-pt` 为

.. math:: 
    \mathsf{P} J^{\rho\sigma} \mathsf{P}^{-1} =&\ \xtensor{\mathscr{P}}{_\mu}{^\rho}\xtensor{\mathscr{P}}{_\nu}{^\sigma} J^{\mu\nu} \quad
    \mathsf{P} P^{\rho} \mathsf{P}^{-1} = \xtensor{\mathscr{P}}{_\mu}{^\rho} P^{\mu} \\
    \mathsf{T} J^{\rho\sigma} \mathsf{T}^{-1} =&\ - \xtensor{\mathscr{T}}{_\mu}{^\rho}\xtensor{\mathscr{T}}{_\nu}{^\sigma} J^{\mu\nu} \quad
    \mathsf{T} P^{\rho} \mathsf{T}^{-1} = - \xtensor{\mathscr{T}}{_\mu}{^\rho} P^{\mu}

[定理58] 使用三维记号, 我们有

.. math:: 
    \mathsf{P} \bm{J} \mathsf{P}^{-1} =&\ +\bm{J}, \quad \mathsf{P} \bm{K} \mathsf{P}^{-1} =&\ -\bm{K}, \quad \mathsf{P} \bm{P} \mathsf{P}^{-1} =&\ -\bm{P} \\
    \mathsf{T} \bm{J} \mathsf{T}^{-1} =&\ -\bm{J}, \quad \mathsf{T} \bm{K} \mathsf{T}^{-1} =&\ +\bm{K}, \quad \mathsf{T} \bm{P} \mathsf{T}^{-1} =&\ -\bm{P}

并且正如 [定理57] 中已经确认的

.. math:: 
    \mathsf{P} H \mathsf{P}^{-1} = \mathsf{T} H \mathsf{T}^{-1} = H

[证明]

.. math:: 
    \mathsf{P} J^{ij} \mathsf{P}^{-1} =&\ \xtensor{\mathscr{P}}{_k}{^i}\xtensor{\mathscr{P}}{_l}{^j} J^{kl} 
        = (-\xtensor{\delta}{_k}{^i})(-\xtensor{\delta}{_l}{^j}) J^{kl}  = J^{ij} \\
    \mathsf{P} J^{0k} \mathsf{P}^{-1} =&\ \xtensor{\mathscr{P}}{_0}{^0}\xtensor{\mathscr{P}}{_l}{^k} J^{0l}
        = -\xtensor{\delta}{_l}{^k} J^{0l}  = -J^{0k} \\
    \mathsf{P} P^{i} \mathsf{P}^{-1} =&\ \xtensor{\mathscr{P}}{_j}{^i} P^{j} = -\xtensor{\delta}{_j}{^i} P^{j} = -P^i \\
    \mathsf{T} J^{ij} \mathsf{T}^{-1} =&\ -\xtensor{\mathscr{T}}{_k}{^i}\xtensor{\mathscr{T}}{_l}{^j} J^{kl} 
        = -\xtensor{\delta}{_k}{^i}\xtensor{\delta}{_l}{^j} J^{kl}  = -J^{ij} \\
    \mathsf{T} J^{0k} \mathsf{T}^{-1} =&\ -\xtensor{\mathscr{T}}{_0}{^0}\xtensor{\mathscr{T}}{_l}{^k} J^{0l}
        = -(-1)\xtensor{\delta}{_l}{^k} J^{0l}  = J^{0k} \\
    \mathsf{T} P^{i} \mathsf{T}^{-1} =&\ -\xtensor{\mathscr{T}}{_j}{^i} P^{j} = -\xtensor{\delta}{_j}{^i} P^{j} = -P^i
    
基于物理上的考虑, :math:`\mathsf{P}` 应该保持 :math:`\bm{J}` 的符号, 因为至少轨道角动量是两个矢量的矢量积 :math:`\bm{r} \times \bm{p}`, 其中 :math:`\bm{r}` 和 :math:`\bm{p}` 在空间坐标系做反射变换时都会改变符号, 因而它们的乘积 :math:`\bm{J}` 不应该改变符号. 另一方面, :math:`\mathsf{T}` 应该使 :math:`\bm{J}` 变号, 因为经过时间反演, 观察者将会看到所有物体以和原来相反的方向旋转 (考虑一个顺时针旋转的物体, 时间反演当然会变成逆时针. 而空间反射后, 仍然是顺时针的). 注意 [定理58] 中的 :math:`\mathsf{T} \bm{J} \mathsf{T}^{-1} = -\bm{J}` 和角动量对易关系 :math:`\bm{J} \times \bm{J} = \I \bm{J}` (注意这是 [定理25] 中第一式 :math:`[J_i, J_j] = \I \epsilon_{ijk}J_k` 的另一种写法. 但是当求矢量积的两个矢量不是同一个矢量的时候, 矢量积包含更少的信息, 因为它没有指出对两个矢量都取同一个分量的时候, 结果如何) 是一致的, 因为 :math:`\mathsf{T} \bm{J} \mathsf{T}^{-1} = -\bm{J}` 说明 :math:`\mathsf{T}` 改变 :math:`\bm{J}` 的符号, 但是 :math:`\mathsf{T}` 也改变 :math:`\I` 的符号, 因此 :math:`\bm{J} \times \bm{J} = \I \bm{J}` 左右两边经过时间反演变换, 都是两个符号改变的乘积, 从而总体符号都没有改变, 仍然相等.

注意 [定理25] 中 :eq:`3d-poin-lie-algebra` 的各式可以写成矢量积形式

.. math:: 
    \bm{J} \times \bm{J} =&\ \I \bm{J},\quad \bm{K} \times \bm{K} = -\I \bm{J}, ,\quad \bm{J} \times \bm{K} = \I \bm{K}, \\
    \bm{J} \times \bm{P} =&\ \I \bm{P}, \quad \bm{K} \times \bm{P} = 0, \quad \bm{P} \times \bm{P} = 0, \\
    [J_{\underline{i}}, K_{\underline{i}}] =&\ 0,\quad [J_{\underline{i}}, P_{\underline{i}}] = 0,\quad [K_{\underline{i}}, P_{\underline{i}}] = \I H, \\
    [\bm{K}, H] =&\ \I \bm{P}, \quad [\bm{J}, H] = [\bm{P}, H] = 0

下面证明以上各式与 [定理58] 并不矛盾. 首先 :math:`\bm{J}` 在 :math:`\mathsf{T}` 变换下变号, 而 :math:`\mathsf{T}` 是反线性的, 因此 :math:`\bm{J} \times \bm{J} = \I \bm{J}` 在 :math:`\mathsf{T}` 变换下左右各有两个变号. :math:`\bm{J}` 在 :math:`\mathsf{P}` 变换下不变号, 而 :math:`\mathsf{P}` 是线性的, 因此 :math:`\bm{J} \times \bm{J} = \I \bm{J}` 在 :math:`\mathsf{P}` 变换下左右均不变号. 简单来说, 为考虑符号情况, 在 :math:`\bm{J} \times \bm{J} = \I \bm{J}` 左右两边消去 :math:`\bm{J}`, 得 :math:`\bm{J}` 在变换下的符号情况应该和 :math:`\I` 相同, 这对 :math:`\mathsf{T}` 和 :math:`\mathsf{P}` 都是符合的. 因此 :math:`\bm{J} \times \bm{K} = \I \bm{K}` 消去 :math:`\bm{K}` 后, 或者 :math:`\bm{J} \times \bm{P} = \I \bm{P}` 消去 :math:`\bm{P}` 后, 实质上也是 :math:`\bm{J}` 在变换下的符号情况和 :math:`\I` 相同. 对 :math:`\bm{K} \times \bm{K} = -\I \bm{J}`. 考虑 :math:`\bm{J}` 在 :math:`\mathsf{T}` 变换下变号, 因此 :math:`-\I \bm{J}` 在 :math:`\mathsf{T}` 变换下有两个变号, 等于没变. :math:`\bm{K}` 在 :math:`\mathsf{T}` 变换下不变号, 因此左右相等. 考虑 :math:`\bm{J}` 在 :math:`\mathsf{P}` 变换下不变号, 因此 :math:`-\I \bm{J}` 在 :math:`\mathsf{P}` 变换下不变号, 左边 :math:`\bm{K}` 在 :math:`\mathsf{P}` 变换下变号, 因此左边有两个符号改变, 右边不变号, 左右仍相等. 

对于右边为零的情况一定满足, 无需讨论. 剩下 :math:`[\bm{K}, H] = \I \bm{P}` 和 :math:`[K_{\underline{i}}, P_{\underline{i}}] = \I H` 只是左右两边 :math:`\bm{P}` 和 :math:`H` 调换了位置, 因此只需讨论 :math:`[\bm{K}, H] = \I \bm{P}`. 由于 :math:`H` 一定不变号, 而 :math:`\mathsf{P}` 保持 :math:`\I` 不变而 :math:`\mathsf{T}` 改变 :math:`\I`, 因此只需证对于 :math:`\mathsf{P}`, :math:`\bm{K}` 和 :math:`\bm{P}` 变化相同, 而对于 :math:`\mathsf{T}`, :math:`\bm{K}` 和 :math:`\bm{P}` 变化相反. 这一点可从 [定理58] 证实. 因此所有这些对易关系都和 [定理58] 都是一致的.

下面考虑 :math:`\mathsf{P}` 和 :math:`\mathsf{T}` 对单粒子态有怎样的作用.

3 正质量单粒子态的空间反射
^^^^^^^^^^^^^^^^^^^^^^^^^^

[定理59] 定义单粒子态 :math:`\psi_{k,\sigma}` 为分别具有本征值 :math:`0, M` 和 :math:`\sigma` 的 :math:`\bm{P}, H` 和 :math:`J_3` 的共同本征态. (注意这里没有标明指标 :math:`j`, 因为对正质量粒子我们认为具有不同 :math:`j` 的粒子是不同类型的粒子, 当我们只考虑一种类型的粒子时, 相当于 :math:`j` 已经固定, 因此不需要指明 :math:`j` 指标.) 由 [定理58], 对于 :math:`\mathsf{P} \psi_{k,\sigma}` 必然有同样的结论. 这是说, :math:`\mathsf{P} \psi_{k,\sigma}` 也是分别具有本征值 :math:`0, M` 和 :math:`\sigma` 的 :math:`\bm{P}, H` 和 :math:`J_3` 的共同本征态. 因此 (除了简并的情况) 这些态只能有一个相位的差别

.. math:: 
    \mathsf{P} \psi_{k,\sigma} = \eta_{\underline{\sigma}} \psi_{k, \underline{\sigma}}

[证明] 注意在 :math:`\mathsf{P}` 变换下, :math:`H, J_3` 均不变, 而 :math:`\bm{P}` 变号. 但是 :math:`\psi_{k,\sigma}` 对于 :math:`\bm{P}` 的本征值刚好是 0 (因为我们考虑的是标准动量), 因此刚好 :math:`\bm{P}` 的情况并未产生符号的改变. 具体来看, 由于 :math:`\mathsf{P} H \mathsf{P}^{-1} = H`, 因此

.. math:: 
    H \mathsf{P} \psi_{k,\sigma} =&\ \big( \mathsf{P} H \mathsf{P}^{-1} \big) \mathsf{P} \psi_{k,\sigma} = \mathsf{P} H \psi_{k,\sigma} \\
        =&\ \mathsf{P} M \psi_{k,\sigma} = M \mathsf{P} \psi_{k,\sigma}

这说明 :math:`\mathsf{P} \psi_{k,\sigma}` 是 :math:`H` 具有本征值 :math:`M` 的本征态. :math:`J_3` 算符的情况和 :math:`H` 类似. 再看 :math:`\bm{P}` 算符, 利用 :math:`\mathsf{P} \bm{P} \mathsf{P}^{-1} = -\bm{P}` 得

.. math:: 
    \bm{P} \mathsf{P} \psi_{k,\sigma} =&\ - \big( \mathsf{P} \bm{P} \mathsf{P}^{-1} \big) \mathsf{P} \psi_{k,\sigma} = -\mathsf{P} \bm{P}\psi_{k,\sigma} \\
    =&\ -\mathsf{P} \cdot 0 = 0

这说明 :math:`\mathsf{P} \psi_{k,\sigma}` 是 :math:`\bm{P}` 具有本征值 :math:`0` 的本征态.

下面考虑 [定理59] 中的因子 :math:`\eta_\sigma`. 注意 :math:`\mathsf{P}` 是幺正算符, 它不可能改变态矢的长度. 而 :math:`\mathsf{P} \psi_{k,\sigma}` 既然表示同一物理态, 它们属于同一射线. 由 [引理0-1], 它们之间只能有一个相位的差别. 因此 :math:`\eta_{k, \sigma}` 只是一个相因子, 即 :math:`|\eta| = 1`. 它可能依赖于自旋也可能不依赖于自旋, 也不清楚它是否依赖于 :math:`k`. Weinberg 书里面没有提及 :math:`k` 的依赖性, 并且在 :math:`\eta` 中没有下标 :math:`k`. 实际上, :math:`\eta` 是依赖于 :math:`k` 的, 但由于 :math:`k` 表示粒子类型, :math:`k` 表示 :math:`p` 中无法被洛伦兹变换改变的那一部分, 按照之前的讨论, 这种量就应该被用来区分粒子类型. 所以不同的粒子类型当然可以具有不同的 :math:`\eta`, 而一种粒子类型只能有一种标准动量 :math:`k`, 因此对标准动量 :math:`k` 的依赖性也就是对粒子类型的依赖性, 无需提及 (进一步因为我们的讨论中隐含了角动量量子数 :math:`j` 作为参数, 因此它也隐含依赖于角动量 :math:`j`, 但是角动量 :math:`j` 也被用来区分粒子类型了).

[定理60]  相因子 :math:`\eta_\sigma` 不依赖于 :math:`\sigma`, 即

.. math:: 
    \mathsf{P} \psi_{k,\sigma} = \eta \psi_{k, \sigma}

其中 :math:`\eta` 是一个相因子, 称为 **内禀宇称** (intrinsic parity), 它仅仅依赖于 :math:`\mathsf{P}` 所作用的粒子类型.

[证明] 利用 :eq:`jmm-element` 第二式和 :eq:`jik-psi-jm` 最后一式可得

.. math:: 
    (J_1 \pm \I J_2)\psi_{k, \sigma} = \sqrt{(j \mp \sigma)(j \pm \sigma + 1)} \psi_{k, \sigma \pm 1}
    :label: jpm-on-psi-ks

其中 :math:`j` 是粒子的自旋. 两边左乘 :math:`\mathsf{P}`. 首先利用 :math:`\mathsf{P}` 和 :math:`\bm{J}` 以及 :math:`\I` 对易得

.. math:: 
    \mathsf{P} (J_1 \pm \I J_2)\psi_{k, \sigma} =&\ (J_1 \pm \I J_2) \mathsf{P} \psi_{k, \sigma} = (J_1 \pm \I J_2) \eta_\sigma \psi_{k, \sigma} \\
        =&\ \eta_\sigma \sqrt{(j \mp \sigma)(j \pm \sigma + 1)} \psi_{k, \sigma \pm 1}

另一方面, 先考虑 :math:`J_1 \pm \I J_2` 算符的作用得

.. math:: 
    \mathsf{P} (J_1 \pm \I J_2)\psi_{k, \sigma} =&\ \sqrt{(j \mp \sigma)(j \pm \sigma + 1)} \mathsf{P} \psi_{k, \sigma \pm 1} \\
        =&\ \eta_{\sigma \pm 1} \sqrt{(j \mp \sigma)(j \pm \sigma + 1)} \psi_{k, \sigma \pm 1}

两式比较可得

.. math:: 
    \eta_\sigma = \eta_{\sigma \pm 1}

考虑到虽然 :math:`j` 可取半整数或整数, 但 :math:`\sigma` 只能从 :math:`-j` 到 :math:`j` 按整数间隔取值. 上式表明只要知道了一个 :math:`\eta_\sigma`, 可以类推出其他所有的 :math:`\eta_\sigma`, 即它们都和已知的相等. 因此所有 :math:`\eta_\sigma` 必然都相等. 因此我们证明了 :math:`\eta_\sigma` 和 :math:`\sigma` 无关.

为了得到有限动量的态 (注意上面 :math:`\psi_{k, \sigma}` 态中 :math:`\bm{P}` 的本征值是0, 实际上是表示粒子静止的态, 因此不是有限动量的态), 我们考虑幺正算符 :math:`U(L(p))` 的作用, 其中 :math:`L(p)` 代表 :eq:`mass-zero-lp` 定义的 "标准推进". 根据 :eq:`psi-pk-def` 和 :eq:`np-def` 有

.. math:: 
    \psi_{p,\sigma} = N(p) U(L(p)) \psi_{k,\sigma} = \sqrt{k^0 / p^0} U(L(p)) \psi_{k,\sigma} = \sqrt{M / p^0} U(L(p)) \psi_{k,\sigma}
    :label: psi-ps-ks

[定理61] 空间反射坐标变换 :math:`\mathscr{P}` 对于 :math:`L(p)` 和 :math:`p` 的作用为

.. math:: 
    \mathscr{P} L(p) \mathscr{P}^{-1} =&\ L(\mathscr{P} p) \\
    \mathscr{P} p = \mathscr{P} \left(\sqrt{\bm{p}^2 + M^2}, \bm{p}\right) =&\ \left(\sqrt{\bm{p}^2 + M^2}, -\bm{p}\right)

[证明] 利用 [定理37] 证明的最后一段可知 :math:`p = (\sqrt{\bm{p}^2 + M^2}, \bm{p})`. 对于第二式的证明, 根据 :math:`\mathscr{P}` 的定义, 即 :eq:`pt-def` 可知, :math:`\mathscr{P}` 的作用将空间分量变号, 而保持时间分量不变. 因此

.. math:: 
    \mathscr{P} \left(\sqrt{\bm{p}^2 + M^2}, \bm{p}\right) = \left(\sqrt{\bm{p}^2 + M^2}, -\bm{p}\right)

对于第一式, 首先注意到根据 :eq:`pt-def`, :math:`\mathscr{P}^{-1} = \mathscr{P}`. 因此

.. math:: 
    \xtensor{(\mathscr{P} L(p) \mathscr{P}^{-1})}{^\mu}{_\nu} =&\ \xtensor{\mathscr{P}}{^\mu}{_\rho} \xtensor{L(p)}{^\rho}{_\sigma}
        \xtensor{\mathscr{P}}{^\sigma}{_\nu} \\
    \xtensor{(\mathscr{P} L(p) \mathscr{P}^{-1})}{^i}{_j} =&\ (-1) \xtensor{L(p)}{^i}{_j} (-1) = \xtensor{L(p)}{^i}{_j} \\
    \xtensor{(\mathscr{P} L(p) \mathscr{P}^{-1})}{^0}{_k} =&\ 1\cdot \xtensor{L(p)}{^0}{_k} (-1) = -\xtensor{L(p)}{^0}{_k} \\
    \xtensor{(\mathscr{P} L(p) \mathscr{P}^{-1})}{^k}{_0} =&\ (-1) \xtensor{L(p)}{^k}{_0} \cdot 1= -\xtensor{L(p)}{^k}{_0} \\
    \xtensor{(\mathscr{P} L(p) \mathscr{P}^{-1})}{^0}{_0} =&\ 1\cdot \xtensor{L(p)}{^0}{_0}\cdot 1 = \xtensor{L(p)}{^0}{_0}

而利用 :math:`L(p)` 定义, 即

.. math:: 
    \xtensor{L}{^i}{_k}(p) =&\ \delta_{ik} + (\gamma - 1) \hat{p}_i \hat{p}_k \\
    \xtensor{L}{^i}{_0}(p) =&\ \xtensor{L}{^0}{_i}(p) = \hat{p}_i \sqrt{\gamma^2 - 1} \\
    \xtensor{L}{^0}{_0}(p) =&\ \gamma

其中 :math:`\hat{p}_i \equiv p_i / |\bm{p}|,\quad \gamma(p) \equiv \sqrt{\bm{p}^2 + M^2} / M`. 注意到

.. math:: 
    \hat{(\mathscr{P}p)}_i =&\ -p_i / |-\bm{p}| = -p_i / |\bm{p}| = -\hat{p}_i \\
    \gamma(\mathscr{P}p) =&\ \sqrt{(-\bm{p})^2 + M^2} / M = \sqrt{\bm{p}^2 + M^2} / M = \gamma(p)

于是

.. math:: 
    \xtensor{L}{^i}{_k}(\mathscr{P}p) =&\ \delta_{ik} + (\gamma - 1) (-\hat{p}_i) (-\hat{p}_k) = \delta_{ik} + (\gamma - 1) \hat{p}_i \hat{p}_k 
        = \xtensor{L}{^i}{_k}(p) \\
    \xtensor{L}{^i}{_0}(\mathscr{P}p) =&\ \xtensor{L}{^0}{_i}(\mathscr{P}p) = -\hat{p}_i \sqrt{\gamma^2 - 1} = -\xtensor{L}{^i}{_0}(p) \\
    \xtensor{L}{^0}{_0}(\mathscr{P}p) =&\ \gamma(\mathscr{P}p) = \gamma(p) = \xtensor{L}{^0}{_0}(p)

因此

.. math:: 
    \xtensor{(\mathscr{P} L(p) \mathscr{P}^{-1})}{^\mu}{_\nu} = \xtensor{L}{^\mu}{_\nu}(\mathscr{P}p)

于是第一式成立.

[定理62] 宇称算符 :math:`\mathsf{P}` 对态 :math:`\psi_{p, \sigma}` 的作用为

.. math:: 
    \mathsf{P} \psi_{p,\sigma} = \sqrt{M / p^0} U(L(\mathscr{P}p))\eta \psi_{k, \sigma}

或者

.. math:: 
    \mathsf{P} \psi_{p,\sigma} = \eta \psi_{\mathscr{P}p,\sigma}

[证明] 首先由 :eq:`upt-trans` 即

.. math:: 
    \mathsf{P} U(\Lambda, a) \mathsf{P}^{-1} = U(\mathscr{P}\Lambda \mathscr{P}^{-1}, \mathscr{P} a)

两边右乘 :math:`\mathsf{P}`, 并令 :math:`\Lambda = L(p), a = 0` 得

.. math:: 
    \mathsf{P} U(L(p)) = U(\mathscr{P} L(p) \mathscr{P}^{-1}) \mathsf{P}
    :label: pulp-exchange

再利用 :eq:`psi-ps-ks` 和 [定理60] 得

.. math:: 
    \mathsf{P} \psi_{p,\sigma} =&\ \mathsf{P} \sqrt{M / p^0} U(L(p)) \psi_{k,\sigma} = \sqrt{M / p^0} \mathsf{P} U(L(p)) \psi_{k,\sigma}\\
        =&\ \sqrt{M / p^0} U(\mathscr{P} L(p) \mathscr{P}^{-1}) \mathsf{P} \psi_{k,\sigma} \\
        =&\ \sqrt{M / p^0} U(\mathscr{P} L(p) \mathscr{P}^{-1}) \eta \psi_{k,\sigma} \\
        =&\ \sqrt{M / p^0} U(L(\mathscr{P} p)) \eta \psi_{k,\sigma}

其中第一步是利用 :eq:`psi-ps-ks`, 第二步是因为 :math:`\mathsf{P}` 是线性算符, 对于实数因子 :math:`\mathsf{P}` 不会做任何改变, 即便这个因子含有 :math:`\bm{p}` 也不会做任何改变. 第三步是利用 :eq:`pulp-exchange`, 第四步是利用 [定理60], 最后一步是利用 [定理61].

为证明第二式, 考虑按照 :eq:`psi-ps-ks` 有

.. math:: 
    \psi_{\mathscr{P}p,\sigma} = N(\mathscr{P}p) U(L(\mathscr{P}p)) \psi_{k,\sigma} = \sqrt{M / p^0} U(L(\mathscr{P}p)) \psi_{k,\sigma}

注意其中 :math:`\mathscr{P}` 只会改变 :math:`p` 空间分量 :math:`\bm{p}` 的符号, 它不会改变 :math:`p^0` 的符号, 也不会改变 :math:`(p)^2`. 因此 :math:`p` 对应的标准动量 :math:`k` 和 :math:`\mathscr{P}p` 对应的标准动量 :math:`k` 相等. 而由于标准动量相等, 并且 :math:`\mathscr{P}p` 对应的 :math:`p^0` 不会改变, 因此归一化因子 :math:`N(\mathscr{P}p) = N(p) = \sqrt{k^0 / p^0} = \sqrt{M / p^0}`. 于是得

.. math:: 
    \mathsf{P} \psi_{p,\sigma} = \eta \psi_{\mathscr{P}p,\sigma}

4 正质量单粒子态的时间反演
^^^^^^^^^^^^^^^^^^^^^^^^^^

利用 [定理58] 中的 :math:`\mathsf{T} \bm{J} \mathsf{T}^{-1} = -\bm{J}, \quad \mathsf{T} \bm{P} \mathsf{T}^{-1} = -\bm{P}, \quad \mathsf{T} H \mathsf{T}^{-1} = H`, 我们发现 :math:`\mathsf{T}` 对零动量单粒子态 :math:`\psi_{k,\sigma}` 作用得到的态 :math:`\mathsf{T}\psi_{k,\sigma}` 满足如下条件

.. math:: 
    \bm{P} (\mathsf{T} \psi_{k,\sigma} ) =&\ 0 \\
    H (\mathsf{T} \psi_{k,\sigma} ) =&\ M (\mathsf{T} \psi_{k,\sigma} ) \\
    J_3 (\mathsf{T} \psi_{k,\sigma} ) =&\ -\sigma (\mathsf{T} \psi_{k,\sigma} )

因此

.. math:: 
    \mathsf{T} \psi_{k,\sigma} = \zeta_\sigma \psi_{k, -\sigma}

其中 :math:`\zeta_\sigma` 是一个相因子.

[定理63] 相因子可以写为 :math:`\zeta_\sigma = \zeta(-)^{j-\sigma}`, 其中 :math:`\zeta` 是另一个相因子, 这个相因子只依赖于粒子类型

.. math:: 
    \mathsf{T} \psi_{k,\sigma} = \zeta (-)^{j-\sigma} \psi_{k, -\sigma}
    :label: t-zeta-phase

[证明] 利用 :eq:`jpm-on-psi-ks` 即

.. math:: 
    (J_1 \pm \I J_2)\psi_{k, \sigma} = \sqrt{(j \mp \sigma)(j \pm \sigma + 1)} \psi_{k, \sigma \pm 1}

两边左乘 :math:`\mathsf{T}`. 首先利用 :math:`\mathsf{T}` 和 :math:`\bm{J}` 以及 :math:`\I` 反对易得

.. math:: 
    \mathsf{T} (J_1 \pm \I J_2)\psi_{k, \sigma} =&\ -(J_1 \mp \I J_2) \mathsf{T} \psi_{k, \sigma} = -(J_1 \mp \I J_2) \zeta_\sigma \psi_{k, -\sigma} \\
        =&\ -\zeta_\sigma \sqrt{[j \pm (-\sigma)][j \mp (-\sigma) + 1)} \psi_{k, -\sigma \mp 1} \\
        =&\ -\zeta_\sigma \sqrt{(j \mp \sigma)(j \pm \sigma + 1)} \psi_{k, -\sigma \mp 1}

另一方面, 先考虑 :math:`J_1 \pm \I J_2` 算符的作用得

.. math:: 
    \mathsf{T} (J_1 \pm \I J_2)\psi_{k, \sigma} =&\ \sqrt{(j \mp \sigma)(j \pm \sigma + 1)} \mathsf{T} \psi_{k, \sigma \pm 1} \\
        =&\ \zeta_{\sigma \pm 1} \sqrt{(j \mp \sigma)(j \pm \sigma + 1)} \psi_{k, -(\sigma \pm 1)} \\
        =&\ \zeta_{\sigma \pm 1} \sqrt{(j \mp \sigma)(j \pm \sigma + 1)} \psi_{k, -\sigma \mp 1}

两式比较可得

.. math:: 
    -\zeta_\sigma = \zeta_{\sigma \pm 1}

我们假定 :math:`\sigma` 取最大值 :math:`j` 的时候, 对应的相因子为 :math:`\zeta`. 则一般的相因子可以写为

.. math:: 
    \zeta_\sigma = \zeta(-)^{j-\sigma}

但是, 与 "内禀宇称" :math:`\eta` 不同的是, 时间反演相因子 :math:`\zeta` 没有物理意义. 这是因为我们可以重定义单粒子态, 引入一个相位改变

.. math:: 
    \psi_{k,\sigma} \to \psi'_{k,\sigma} = \zeta^{1/2}\psi_{k,\sigma}

从而可以消去变换规则中的相位 :math:`\zeta`. 考虑

.. math:: 
    \mathsf{T} \psi'_{k,\sigma} =&\ \mathsf{T} \big( \zeta^{1/2}\psi_{k,\sigma} \big) = \zeta^{*1/2} \mathsf{T} \psi_{k,\sigma} \\
        =&\ \zeta^{*1/2} \zeta (-)^{j-\sigma} \psi_{k, -\sigma} = (-)^{j-\sigma} \zeta^{*1/2} \zeta^{1/2} \zeta^{1/2} \psi_{k, -\sigma} \\
        =&\ (-)^{j-\sigma} |\zeta^{1/2}|^2 \psi'_{k,-\sigma} = (-)^{j-\sigma} \psi'_{k,-\sigma}

其中最后一步利用了 :math:`\zeta^{1/2}` 是一个相因子, 它的模的平方是1.

后面我们将保留 :eq:`t-zeta-phase` 中的任意相因子 (因为它是依赖于单粒子态的定义的, 所以是任意的), 从而我们始终可以选择单粒子态的相位 (如果要求删去这个相因子, 这么做并没有太大的好处, 但是坏处是单粒子态不再具有相位选择的自由性. 所以我们可以选择保留这个因子). 应当记住这个相位没有实际意义.

为了得到有限动量的态, 我们还是考虑应用 :eq:`mass-zero-lp` 定义的 "标准推进".

[定理64] 时间反演坐标变换 :math:`\mathscr{T}` 对于 :math:`L(p)` 的作用为

.. math:: 
    \mathscr{T} L(p) \mathscr{T}^{-1} =&\ L(\mathscr{P} p) \\
    \mathscr{P} p =&\ \left(\sqrt{\bm{p}^2 + M^2}, -\bm{p}\right)

[证明] 其中第二式和 [定理61] 的一样, 因此无需证明. 第一式其实是说 :math:`\mathscr{T} L(p) \mathscr{T}^{-1} = \mathscr{T} L(p) \mathscr{T}` 和 :math:`\mathscr{P} L(p) \mathscr{P}` 的结果一样. 这是显然的. 因为左边的 :math:`\mathscr{T}` 的作用是当 :math:`L(p)` 矩阵行指标为时间分量时变号. 右边的 :math:`\mathscr{T}` 的作用是当 :math:`L(p)` 矩阵列指标为时间分量时变号. 注意如果行列指标都为时间分量, 那么相当于没有变号. 因此, :math:`\mathscr{T} L(p) \mathscr{T}^{-1}` 对 :math:`L(p)` 的作用相当于将 :math:`L(p)` 的矩阵元若行列两个指标中有奇数个为时间指标, 那么将这个矩阵元变号. 而类似地, :math:`\mathscr{P} L(p) \mathscr{P}^{-1}` 对 :math:`L(p)` 的作用相当于将 :math:`L(p)` 的矩阵元若行列两个指标中有奇数个为空间指标, 那么将这个矩阵元变号. 实际上, 因为一共有两个指标, 当有奇数个 (1个) 时间指标的时候, 必然也有奇数个 (1个) 空间指标. 因此两个条件是等价的. 从而 :math:`\mathscr{T} L(p) \mathscr{T}^{-1} = \mathscr{P} L(p) \mathscr{P}^{-1} = L(\mathscr{P} p)`.

[定理65] 时间反演算符 :math:`\mathsf{T}` 对态 :math:`\psi_{p, \sigma}` 的作用为

.. math:: 
    \mathsf{T} \psi_{p,\sigma} = \sqrt{M / p^0} U(L(\mathscr{P}p))\zeta(-)^{j-\sigma} \psi_{k, -\sigma}

或者

.. math:: 
    \mathsf{T} \psi_{p,\sigma} = \zeta(-)^{j-\sigma} \psi_{\mathscr{P}p,-\sigma}

[证明] 首先由 :eq:`upt-trans` 即

.. math:: 
    \mathsf{T} U(\Lambda, a) \mathsf{T}^{-1} = U(\mathscr{T}\Lambda \mathscr{T}^{-1}, \mathscr{T} a)

两边右乘 :math:`\mathsf{T}`, 并令 :math:`\Lambda = L(p), a = 0` 得

.. math:: 
    \mathsf{T} U(L(p)) = U(\mathscr{T} L(p) \mathscr{T}^{-1}) \mathsf{T}
    :label: tulp-exchange

再利用 :eq:`psi-ps-ks` 和 [定理63] 得

.. math:: 
    \mathsf{T} \psi_{p,\sigma} =&\ \mathsf{T} \sqrt{M / p^0} U(L(p)) \psi_{k,\sigma} = \sqrt{M / p^0} \mathsf{T} U(L(p)) \psi_{k,\sigma}\\
        =&\ \sqrt{M / p^0} U(\mathscr{T} L(p) \mathscr{T}^{-1}) \mathsf{T} \psi_{k,\sigma} \\
        =&\ \sqrt{M / p^0} U(\mathscr{T} L(p) \mathscr{T}^{-1}) \zeta(-)^{j-\sigma} \psi_{k,-\sigma} \\
        =&\ \sqrt{M / p^0} U(L(\mathscr{P} p)) \zeta(-)^{j-\sigma} \psi_{k,-\sigma}

其中第一步是利用 :eq:`psi-ps-ks`, 第二步是因为 :math:`\mathsf{T}` 是反线性算符, 对于实数因子 :math:`\mathsf{P}` 不会做任何改变, 即便这个因子含有 :math:`\bm{p}` 也不会做任何改变. 第三步是利用 :eq:`tulp-exchange`, 第四步是利用 [定理63], 最后一步是利用 [定理64].

为证明第二式, 考虑按照 :eq:`psi-ps-ks` 有

.. math:: 
    \psi_{\mathscr{P}p,-\sigma} = N(\mathscr{P}p) U(L(\mathscr{P}p)) \psi_{k,-\sigma} = \sqrt{M / p^0} U(L(\mathscr{P}p)) \psi_{k,-\sigma}

注意其中 :math:`\mathscr{P}` 只会改变 :math:`p` 空间分量 :math:`\bm{p}` 的符号, 它不会改变 :math:`p^0` 的符号, 也不会改变 :math:`(p)^2`. 因此 :math:`p` 对应的标准动量 :math:`k` 和 :math:`\mathscr{P}p` 对应的标准动量 :math:`k` 相等. 而由于标准动量相等, 并且 :math:`\mathscr{P}p` 对应的 :math:`p^0` 不会改变, 因此归一化因子 :math:`N(\mathscr{P}p) = N(p) = \sqrt{k^0 / p^0} = \sqrt{M / p^0}`. 于是得

.. math:: 
    \mathsf{T} \psi_{p,\sigma} = \zeta(-)^{j-\sigma} \psi_{\mathscr{P}p,-\sigma}
    :label: t-act-p

5 零质量单粒子态的空间反射
^^^^^^^^^^^^^^^^^^^^^^^^^^

考虑一个物理态 :math:`\psi_{k,\sigma}`, 它同时是具有本征值 :math:`k^\mu = (\kappa, 0,0,\kappa)` 的 :math:`P^\mu` 的本征态和具有本征值 :math:`\sigma` 的 :math:`J^3` 的本征态. 用宇称算符 :math:`\mathsf{P}` 作用于这个态, 得到一个具有四动量 :math:`(\mathscr{P}k)^\mu = (\kappa, 0,0,-\kappa)` 和 :math:`J_3` 等于 :math:`\sigma` 的态 (参考 [定理59], 注意 :math:`\mathsf{P}\bm{P}\mathsf{P}^{-1} = -\bm{P}` 导致 :math:`\bm{k}` 变为 :math:`-\bm{k}`, 而时间分量 :math:`k^0` 不变. 因此这相当于 :math:`k \to \mathscr{P}k`). 因此它把一个具有螺旋度 (自旋沿运动方向的分量) :math:`\sigma` 的态变为了具有螺旋度 :math:`-\sigma` 的态 (这里其实 :math:`\sigma` 没变, 但是运动方向改变了符号, 因此螺旋度既然是自旋在运动方向的投影, 它就改变了, 这是按照统一的坐标系来看的. 这实际上反映了 :math:`L(p)` 中对 :math:`\sigma` 表象选择的 :math:`p` 依赖性. 如果各选各的坐标系, 都以自己的运动方向为第三轴, 那么就会发现螺旋度没变, 然而实际上这里坐标系不一样). 正如之前提到的, 这表明, 由于存在空间反射对称性, 任何种类的零质量粒子, 若具有非零螺旋度, 必须导致存在相反螺旋度的粒子. 因为 :math:`\mathsf{P}` 并不维持标准动量不变, 为方便起见我们可以考虑算符 :math:`U(R^{-1}_2)\mathsf{P}`, 其中 :math:`R_2` 是一个把 :math:`k` 变到 :math:`\mathscr{P}k` 的旋转, 这可以方便地取为绕第二轴的 :math:`-180^\circ` 旋转 (参照 [定理28], 一般的旋转指数是正号)

.. math:: 
    U(R_2) = \exp(-\I \pi J_2)
    :label: ur2-def

[定理66] :math:`U(R_2^{-1}) = U(R_2)` 对 :math:`J_3` 的作用是使之变号. 对 :math:`P^\mu` 作用是使其奇数分量变号. 即

.. math:: 
    U(R_2) J_3 U^{-1}(R_2) =&\ -J_3 \\
    U(R_2) P^\mu U^{-1}(R_2) =&\ (-)^{\underline{\mu}} P^{\underline{\mu}}

[证明] 首先, 我们尝试构造 :math:`R_2`. 按照转动矩阵的一般写法 (参考 [定理28] 的证明部分), 我们有

.. math:: 
    \hat{R}_2(\theta = -\pi) = \begin{pmatrix} \cos\theta & -\sin\theta \\ \sin\theta & \cos\theta \end{pmatrix} = 
        \begin{pmatrix} \cos(-\pi) & -\sin(-\pi) \\ \sin(-\pi) & \cos(-\pi) \end{pmatrix} = \begin{pmatrix} -1 & 0 \\ 0 & -1 \end{pmatrix}
    
写成4维矩阵就是

.. math:: 
    R_2 = \begin{pmatrix} 1 & 0 & 0 & 0 \\ 0 & -1 & 0 & 0 \\ 0 & 0 & 1 & 0 \\ 0 & 0 & 0 & -1 \end{pmatrix}
    :label: r2-matrix

不难看出 :math:`R_2^{-1} = R_2`, 因此 :math:`U(R_2^{-1}) = U(R_2) = U^{-1}(R_2)` ([定理18]). 根据 :eq:`jp-lambda-trans` 第一式, 即

.. math:: 
    U(\Lambda)J^{\rho\sigma}U^{-1}(\Lambda) = \xtensor{\Lambda}{_\mu}{^\rho}\xtensor{\Lambda}{_\nu}{^\sigma} J^{\mu\nu}

此处考虑 :math:`J_3 = J^{12}, \Lambda = R_2` 的变换, 即

.. math:: 
    U(R_2)J^{12}U^{-1}(R_2) = \xtensor{(R_2)}{_\mu}{^1}\xtensor{(R_2)}{_\nu}{^2} J^{\mu\nu}

由于 :math:`R_2` 的第一列只有第一行非零, :math:`R_2` 的第二列只有第二行非零, 因此

.. math:: 
    U(R_2)J^{12}U^{-1}(R_2) = \xtensor{(R_2)}{_1}{^1}\xtensor{(R_2)}{_2}{^2} J^{12} = (-1) \cdot 1 \cdot J^{12} = -J^{12}

类似地, 注意 :math:`\xtensor{(R_2)}{_\mu}{^\nu} = \xtensor{\delta}{_{\underline{\mu}}}{^\nu} (-)^{\underline{\mu}}`. 根据 :eq:`jp-lambda-trans` 第二式, 有

.. math:: 
    U(\Lambda) P^\rho U^{-1}(\Lambda) =&\ \xtensor{\Lambda}{_\mu}{^\rho} P^{\mu} \\
    U(R_2) P^\rho U^{-1}(R_2) =&\ \xtensor{(R_2)}{_\mu}{^\rho} P^{\mu} = \xtensor{\delta}{_{\underline{\mu}}}{^\rho} (-)^{\underline{\mu}} P^{\mu}
        = (-)^{\underline{\rho}} P^{\underline{\rho}}

[定理67] :math:`U(R_2^{-1}) \mathsf{P}` 对态 :math:`\psi_{k,\sigma}` 的作用为

.. math:: 
    U(R_2^{-1}) \mathsf{P}\psi_{k,\sigma} = \eta_{\sigma} \psi_{k, -\sigma}

其中 :math:`\eta_\sigma` 是一个相因子.

[证明] 考虑态 :math:`U(R_2^{-1})\psi_{\mathscr{P}k, \sigma}`

.. math:: 
    P^\mu U(R_2^{-1})\psi_{\mathscr{P}k, \sigma} =&\ (-)^{\underline{\mu}} U(R_2^{-1}) P^{\underline{\mu}} \psi_{\mathscr{P}k, \sigma} \\
        =&\ (-)^{\underline{\mu}} U(R_2^{-1}) (\mathscr{P}k)^{\underline{\mu}} \psi_{\mathscr{P}k, \sigma} \\
        =&\ (1, -1, 1, -1) U(R_2^{-1}) (\kappa, 0, 0, -\kappa) \psi_{\mathscr{P}k, \sigma} \\
        =&\ U(R_2^{-1}) (\kappa, 0, 0, \kappa) \psi_{\mathscr{P}k, \sigma} = k^\mu U(R_2^{-1}) \psi_{\mathscr{P}k, \sigma} \\
    J_3 U(R_2^{-1})\psi_{\mathscr{P}k, \sigma} =&\ - U(R_2^{-1}) J_3 \psi_{\mathscr{P}k, \sigma} \\
        =&\ - \sigma U(R_2^{-1}) \psi_{\mathscr{P}k, \sigma}

由此可见, :math:`U(R_2^{-1})\psi_{\mathscr{P}k, \sigma}` 是具有本征值 :math:`-\sigma` 的 :math:`J_3` 的本征态和具有本征值 :math:`k^\mu` 的 :math:`P^\mu` 的本征态. 因此它和态 :math:`\psi_{k, -\sigma}` 只能差一个相因子, 记为 :math:`\eta_{1\sigma}`. 又由于按照最开始的论述, :math:`\mathsf{P}\psi_{k,\sigma}` 和 :math:`\psi_{\mathscr{P}k, \sigma}` 态也只差一个相因子, 记为 :math:`\eta_{2\sigma}`. 因此我们有

.. math:: 
    U(R_2^{-1})\psi_{\mathscr{P}k, \sigma} =&\ \eta_{1\sigma} \psi_{k, -\sigma}\\
    \mathsf{P}\psi_{k,\sigma} =&\ \eta_{2\sigma} \psi_{\mathscr{P}k, \sigma}

于是

.. math:: 
    U(R_2^{-1}) \mathsf{P}\psi_{k,\sigma} = \eta_{2\sigma} U(R_2^{-1}) \psi_{\mathscr{P}k, \sigma} = \eta_{2\sigma} \eta_{1\sigma} \psi_{k, -\sigma}

把 :math:`\eta_{2\sigma} \eta_{1\sigma}` 记为 :math:`\eta_\sigma` 就有

.. math:: 
    U(R_2^{-1}) \mathsf{P}\psi_{k,\sigma} = \eta_{\sigma} \psi_{k, -\sigma}

[定理68] (A) :math:`R_2^{-1}\mathscr{P}` 和洛伦兹 "推进" :eq:`bu-mass-zero` 对易. (B) :math:`\mathscr{P}` 与旋转 :math:`R(\hat{\bm{p}})` 对易, 其中 :math:`R(\hat{\bm{p}})` 把第三轴的方向转到 :math:`\bm{p}` 的方向.

[证明] 先考虑一个对角元分别为 :math:`x_1, x_2, \cdots` 的对角矩阵对一个普通矩阵从左边或从右边作用的结果. 对角矩阵可以表示为 :math:`x^{\underline{\mu}}\xtensor{\delta}{^{\underline{\mu}}}{_\nu}`, 一般矩阵记为 :math:`\xtensor{A}{^\mu}{_\nu}`. 分别记从左边作用和从右边作用的结果为 :math:`\xtensor{L}{^\mu}{_\nu}` 和 :math:`\xtensor{R}{^\mu}{_\nu}`.

.. math:: 
    \xtensor{L}{^\mu}{_\nu} =&\ x^{\underline{\mu}}\xtensor{\delta}{^{\underline{\mu}}}{_\rho} \xtensor{A}{^\rho}{_\nu} = 
        x^{\underline{\mu}} \xtensor{A}{^{\underline{\mu}}}{_\nu} \\
    \xtensor{R}{^\mu}{_\nu} =&\ \xtensor{A}{^\mu}{_\rho} x^{\underline{\rho}}\xtensor{\delta}{^{\underline{\rho}}}{_\nu}  = 
        \xtensor{A}{^\mu}{_{\underline{\nu}}} x_{\underline{\nu}}

因此, 从左边作用相当于将对角矩阵的第 :math:`i` 个对角元乘到普通矩阵第 :math:`i` 行的每个元素. 从右边作用相当于将对角矩阵的第 :math:`i` 个对角元乘到普通矩阵第 :math:`i` 列的每个元素. 若某个对角元是1, 那么它乘到行或者乘到列是等价的. 若第 :math:`i` 个对角元不是1, 那么一般不等价, 但是若普通矩阵的第 :math:`i` 行和第 :math:`i` 列都只有一个元素非零, 并且这个非零元正好在第 :math:`i` 行第 :math:`i` 列, 那么这个第 :math:`i` 个对角元乘到行或乘到列仍然是等价的, 因为无论如何只能对着一个矩阵元产生作用.

(A) 根据 :eq:`r2-matrix` 和 :eq:`pt-def` 我们可以求出 :math:`R_2^{-1}\mathscr{P}` 的表达式

    .. math:: 
        R_2^{-1}\mathscr{P} = R_2\mathscr{P} = \begin{pmatrix} 1 & 0 & 0 & 0 \\ 0 & -1 & 0 & 0 \\ 0 & 0 & 1 & 0 \\ 0 & 0 & 0 & -1 \end{pmatrix}
            \begin{pmatrix} 1 & 0 & 0 & 0 \\ 0 & -1 & 0 & 0 \\ 0 & 0 & -1 & 0 \\ 0 & 0 & 0 & -1 \end{pmatrix}
            = \begin{pmatrix} 1 & 0 & 0 & 0 \\ 0 & 1 & 0 & 0 \\ 0 & 0 & -1 & 0 \\ 0 & 0 & 0 & 1 \end{pmatrix}

    要讨论 :math:`R_2^{-1}\mathscr{P}` 与 :math:`B(u)` 是否对易, 注意到 :math:`R_2^{-1}\mathscr{P}` 是对角矩阵, 就要考虑这个对角矩阵从左边和从右边作用于 :math:`B(u)` 得到的结果是否相等. 按照上面的讨论, :math:`R_2^{-1}\mathscr{P}` 只有第二空间分量的对角元非零. 而注意 :math:`B(u)` 矩阵, 即 :eq:`bu-mass-zero`
    
    .. math:: 
        B(u) \equiv \begin{pmatrix} \frac{u^2 + 1}{2u} &0 &0& \frac{u^2 - 1}{2u} \\ 0 & 1 & 0 & 0 \\ 0 & 0 & 1 & 0 \\ \frac{u^2 - 1}{2u} & 0 & 0 & \frac{u^2 + 1}{2u} \end{pmatrix}
    
    这个矩阵的第二空间分量对应的行和列只有对角元非零. 因此 :math:`R_2^{-1}\mathscr{P}` 无论从左边还是从右边作用得到的结果都是
    
    .. math:: 
        R_2^{-1}\mathscr{P}B(u) = B(u)R_2^{-1}\mathscr{P} = \begin{pmatrix} \frac{u^2 + 1}{2u} &0 &0& \frac{u^2 - 1}{2u} \\ 0 & 1 & 0 & 0 \\ 0 & 0 & -1 & 0 \\ \frac{u^2 - 1}{2u} & 0 & 0 & \frac{u^2 + 1}{2u} \end{pmatrix}

    因此 :math:`R_2^{-1}\mathscr{P}` 和洛伦兹 "推进" :math:`B(u) =B(|\bm{p}|/\kappa)` 对易.

(B) 注意 :math:`R(\hat{\bm{p}})` 只有空间分量, 而时间分量是对角的. 我们把 :math:`\mathscr{P}` 和 :math:`R(\hat{\bm{p}})` 写成时间分量和空间分量的两分量形式, 有

    .. math:: 
        R(\hat{\bm{p}}) \mathscr{P} =&\ \begin{pmatrix} 1 & 0 \\ 0 & \hat{R}(\hat{\bm{p}}) \end{pmatrix} \begin{pmatrix} 1 & 0 \\ 0 & -1 \end{pmatrix}
            = \begin{pmatrix} 1 & 0 \\ 0 & -\hat{R}(\hat{\bm{p}}) \end{pmatrix} \\
        \mathscr{P} R(\hat{\bm{p}}) =&\ \begin{pmatrix} 1 & 0 \\ 0 & -1 \end{pmatrix} \begin{pmatrix} 1 & 0 \\ 0 & \hat{R}(\hat{\bm{p}}) \end{pmatrix}
            = \begin{pmatrix} 1 & 0 \\ 0 & -\hat{R}(\hat{\bm{p}}) \end{pmatrix}
    
    因此 :math:`R(\hat{\bm{p}})` 和 :math:`\mathscr{P}` 对易.

由 :eq:`psi-pk-def`, :eq:`np-def` 及 [定理54] 我们有

.. math:: 
    \psi_{p, \sigma} = N(p) U(L(p)) \psi_{k, \sigma} = \sqrt{\kappa / p^0} U\big( R(\hat{\bm{p}}) B(|\bm{p}|/\kappa) \big) \psi_{k, \sigma}

考虑 :math:`\mathsf{P}` 对 :math:`\psi_{p, \sigma}` 的作用, 有

.. math:: 
    \mathsf{P} \psi_{p, \sigma} =&\ \mathsf{P} \sqrt{\kappa / p^0} U\big( R(\hat{\bm{p}}) B(|\bm{p}|/\kappa) \big) \psi_{k, \sigma}
        = \sqrt{\kappa / p^0} \mathsf{P} U\big( R(\hat{\bm{p}}) B(|\bm{p}|/\kappa) \big) \psi_{k, \sigma} \\
        =&\ \sqrt{\kappa / p^0} U\big( \mathscr{P} R(\hat{\bm{p}}) B(|\bm{p}|/\kappa) \big) \psi_{k, \sigma}
        = \sqrt{\kappa / p^0} U\big( R(\hat{\bm{p}}) \mathscr{P} B(|\bm{p}|/\kappa) \big) \psi_{k, \sigma} \\
        =&\ \sqrt{\kappa / p^0} U\big( R(\hat{\bm{p}}) R_2 R_2^{-1} \mathscr{P} B(|\bm{p}|/\kappa) \big) \psi_{k, \sigma}
        = \sqrt{\kappa / p^0} U\big( R(\hat{\bm{p}}) R_2 B(|\bm{p}|/\kappa) R_2^{-1} \mathscr{P} \big) \psi_{k, \sigma} \\
        =&\ \sqrt{\kappa / p^0} U\big( R(\hat{\bm{p}}) R_2 B(|\bm{p}|/\kappa) \big) U(R_2^{-1} \mathscr{P}) \psi_{k, \sigma}
        = \sqrt{\kappa / p^0} U\big( R(\hat{\bm{p}}) R_2 B(|\bm{p}|/\kappa) \big) U(R_2^{-1}) \mathsf{P} \psi_{k, \sigma} \\
        =&\ \sqrt{\kappa / p^0} U\big( R(\hat{\bm{p}}) R_2 B(|\bm{p}|/\kappa) \big) \eta_\sigma \psi_{k,-\sigma}
        = \sqrt{\kappa / p^0} \eta_\sigma U\big( R(\hat{\bm{p}}) R_2 B(|\bm{p}|/\kappa) \big)  \psi_{k,-\sigma}
    :label: p-psi-p-sigma-k

其中第一步是利用了上面 :math:`\psi_{p, \sigma}` 的展开式. 第二步是因为 :math:`\mathsf{P}` 是线性算符. 第三步是利用 :math:`\mathsf{P}` 的定义, 以及 :math:`U(\Lambda)` 是 :math:`\Lambda` 的普通表示以及群乘积规则. 第四步是利用 [定理68] (B). 第五步是因为 :math:`R_2 R_2^{-1} = 1`. 第六步是利用 [定理68] (A). 第七步是利用 :math:`U(\Lambda)` 是 :math:`\Lambda` 的普通表示以及群乘积规则. 第八步是利用群乘积规则以及 :math:`\mathsf{P}` 的定义. 第九步是利用 [定理67].

[引理69-1] 绕第三轴的 :math:`\pm 180^\circ` 的旋转, 改变 :math:`J_2` 的符号. 即

.. math:: 
    \exp(\pm \I \pi J_3) J_2 \exp(\mp \I \pi J_3) = -J_2

[证明] 由于第二轴和第三轴的对称性, 根据类似 [定理66] 的方法可以证明. 注意 :math:`U(R_3) = \exp(-\I \pi J_3)`.

[定理69] 空间反射算符 :math:`\mathsf{P}` 对态 :math:`\psi_{p,\sigma}` 的作用为

.. math:: 
    \mathsf{P}\psi_{p,\sigma} = \eta_\sigma \exp(\pm \I \pi \sigma) \psi_{\mathscr{P}p,-\sigma}

其中相位取 :math:`+\pi\sigma` 还是 :math:`-\pi\sigma` 取决于 :math:`\bm{p}` 的第二分量是正还是负.

注意 Weinberg 结论为

.. math:: 
    \mathsf{P}\psi_{p,\sigma} = \eta_\sigma \exp(\mp \I \pi \sigma) \psi_{\mathscr{P}p,-\sigma}

其中相位取 :math:`-\pi\sigma` 还是 :math:`+\pi\sigma` 取决于 :math:`\bm{p}` 的第二分量是正还是负.

[证明] 注意 :math:`R(\hat{\bm{p}})R_2` 是一个旋转, 它把第三轴转到 :math:`-\hat{\bm{p}}` 的方向. 但是 :math:`U(R(\hat{\bm{p}})R_2)` 并不等于 :math:`U(R(-\hat{\bm{p}}))`. 首先, 我们考虑 :math:`R(\hat{\bm{p}})R_2` 对第三轴的作用. :math:`R_2` 首先把第三轴转到它相反的方向. 而 :math:`R(\hat{\bm{p}})` 是把第三轴的方向转到 :math:`\hat{\bm{p}}`. 那么由于 :math:`R_2` 作用后的第三轴已经是它相反的方向, 所以整个作用相当于把第三轴的相反方向转到 :math:`\hat{\bm{p}}`. 也就是说, :math:`R(\hat{\bm{p}})R_2` 的作用是把第三轴转到 :math:`-\hat{\bm{p}}` 的方向. 注意这里两个旋转是完全等价的, 都是旋转, 规定了指向的起点和终点不存在两种转法. 但是 :math:`U(R(\hat{\bm{p}}))` 的表达式是越过了 :math:`R` 直接以 :math:`\hat{\bm{p}}` 的参数来表示, 所以 :math:`U` 的结果会有不同. 具体来说, :math:`-\bm{p}` 可以看作对 :math:`\bm{p}` 的空间反射变换. 这个空间反射变换的行列式一定是 :math:`-1`, 这和旋转变换是本质不同的. 由于 :math:`U(R)` 的表达式直接以 :math:`\bm{p}` 的参数 :math:`\theta, \phi` 做参数, 它可以直接反映这个空间反射. 而 :math:`R(\bm{p})` 是无法表示空间反射的, 因为旋转变换的行列式必须是 :math:`1`. 具体来看, 根据 :eq:`urp-def` 即

.. math:: 
    U(R(\hat{\bm{p}})) =&\ \exp(\I \phi J_3) \exp(\I \theta J_2), \\
    \hat{\bm{p}} =&\ (\sin\theta \cos\phi, \sin\theta \sin\phi, \cos\theta)

我们有

.. math:: 
    -\hat{\bm{p}} =&\ (-\sin\theta \cos\phi, -\sin\theta \sin\phi, -\cos\theta) \\
        =&\ (-\sin(\pi - \theta) \cos\phi, -\sin(\pi - \theta) \sin\phi, \cos(\pi - \theta)) \\
        =&\ (\sin(\pi - \theta) \cos(\phi \pm \pi), \sin(\pi - \theta) \sin(\phi \pm \pi), \cos(\pi - \theta)) \\
    U(R(-\hat{\bm{p}})) =&\ \exp\big(\I (\phi \pm \pi) J_3\big) \exp\big(\I (\pi - \theta) J_2\big)

其中, 关键是考虑到 :math:`\hat{\bm{p}}` 的符号改变对应的 :math:`\phi,\theta` 的变化. 首先 :math:`\cos\theta` 变为 :math:`-\cos\theta`, 注意到 :math:`\theta` 取值为 :math:`0 \sim \pi`, 因此 :math:`\theta` 应该变为 :math:`\pi - \theta`. 而这个改变并不改变 :math:`\sin\theta` 的符号. 然后考虑 :math:`\phi`, 对于 :math:`\phi`, :math:`\sin\phi` 和 :math:`\cos\phi` 必须都改变符号. 这意味着 :math:`\phi` 应该变为 :math:`\phi \pm \pi`. 为了限制 :math:`\phi` 的取值范围为 :math:`0 \sim 2\pi`, 如果 :math:`\phi > \pi`, 即 :math:`\sin\phi < 0`, 由于 :math:`\theta \in [0, \pi)`, :math:`\sin\theta` 一定大于零, 那么 :math:`\phi > \pi` 意味着 :math:`\hat{\bm{p}}` 的第二分量 :math:`\sin\theta \sin\phi` 小于零. 这时, 我们应该把 :math:`\phi` 变为 :math:`\phi - \pi`. 如果第二分量大于零, 我们应该把 :math:`\phi` 变为 :math:`\phi + \pi`.

因此, 方位角取 :math:`\phi + \pi` 还是 :math:`\phi - \pi` 取决于 :math:`0 \leqslant \phi < pi` 还是 :math:`\pi \leqslant \phi < 2\pi`, 从而这保证 :math:`\phi \pm \pi` 仍然在 :math:`0 \sim 2\pi` 的范围内. 于是

.. math:: 
    &\ U^{-1}\big(R(-\hat{\bm{p}})\big) U\big( R(\hat{\bm{p}}) R_2 \big) \\
    =&\ \left[ \exp\big(\I (\phi \pm \pi) J_3\big) \exp\big(\I (\pi - \theta) J_2\big) \right]^{-1}
        \exp(\I \phi J_3) \exp(\I \theta J_2) \exp(-\I \pi J_2) \\
    =&\ \exp\big(-\I (\pi - \theta) J_2\big) \exp\big(-\I (\phi \pm \pi) J_3\big) \exp(\I \phi J_3) \exp\big(-\I (\pi - \theta) J_2\big) \\
    =&\ \exp\big(-\I (\pi - \theta) J_2\big) \exp(\mp\I\pi J_3) \exp\big(-\I (\pi - \theta) J_2\big)

利用 [引理69-1], :math:`\exp(\pm \I \pi J_3) J_2 \exp(\mp \I \pi J_3) = -J_2` 得

.. math:: 
    \exp(\pm \I \pi J_3) J_2 =&\ -J_2 \exp(\pm \I \pi J_3) \\
    \exp(\pm \I \pi J_3) \exp\big(-\I (\pi - \theta) J_2\big) =&\ \exp\big(\I (\pi - \theta) J_2\big) \exp(\pm \I \pi J_3)

于是

.. math:: 
     &\ U^{-1}\big(R(-\hat{\bm{p}})\big) U\big( R(\hat{\bm{p}}) R_2 \big) \\
     =&\ \exp\big(-\I (\pi - \theta) J_2\big) \exp\big(\I (\pi - \theta) J_2\big) \exp(\mp \I \pi J_3) = \exp(\mp \I \pi J_3)

即

.. math:: 
    U\big( R(\hat{\bm{p}}) R_2 \big) = U\big(R(-\hat{\bm{p}})\big) \exp(\mp \I \pi J_3)

另外, 利用 [定理54], 即 :math:`L(p) = R(\hat{\bm{p}})B(|\bm{p}|/\kappa)` 得

.. math:: 
    L(\mathscr{P}p) = R(-\hat{\bm{p}})B(|-\bm{p}|/\kappa) = R(-\hat{\bm{p}})B(|\bm{p}|/\kappa)

代入 :eq:`p-psi-p-sigma-k` 得

.. math:: 
    \mathsf{P} \psi_{p, \sigma} =&\ \sqrt{\kappa / p^0} \eta_\sigma U\big( R(\hat{\bm{p}}) R_2 B(|\bm{p}|/\kappa) \big)  \psi_{k,-\sigma} \\
    =&\ \sqrt{\kappa / p^0} \eta_\sigma U\big(R(-\hat{\bm{p}})\big) \exp(\mp \I \pi J_3) U\big( B(|\bm{p}|/\kappa) \big)  \psi_{k,-\sigma}

注意其中绕第三轴的旋转 :math:`\exp(\mp \I \pi J_3)` 和沿第三轴的推进 :math:`U\big( B(|\bm{p}|/\kappa) \big)` 对易, 其证明类似 [定理44] 证明中关于 :math:`R(\theta)` 和 :math:`B(|\bm{p}|)` 对易得说明. 因此

.. math:: 
    \mathsf{P} \psi_{p, \sigma} =&\ \sqrt{\kappa / p^0} \eta_\sigma U\big(R(-\hat{\bm{p}})\big) U\big( B(|\bm{p}|/\kappa) \big) \exp(\mp \I \pi J_3)   \psi_{k,-\sigma} \\
    =&\ \sqrt{\kappa / p^0} \eta_\sigma U\big(R(-\hat{\bm{p}})\big) U\big( B(|\bm{p}|/\kappa) \big) \exp(\pm \I \pi \sigma) \psi_{k,-\sigma} \\
    =&\ \sqrt{\kappa / p^0} \eta_\sigma \exp(\pm \I \pi \sigma) U(L(\mathscr{P}p)) \psi_{k,-\sigma} \\
    =&\ \eta_\sigma \exp(\pm \I \pi \sigma) \psi_{\mathscr{P}p,-\sigma}

其中最后一步利用了 :eq:`psi-pk-def`. 注意这里正负号的顺序和 Weinberg 书有所不同. 但中文译本修改了之前关于旋转方向的定义使之匹配. 具体的符号问题可能需要以后解决.

注意, 若 :math:`\sigma` 取值只能是整数, 那么 :math:`\exp(\pm \I \pi \sigma)` 因子是没有任何实际意义的, 因为分别取正负号时, 相因子相差 :math:`2\pi`, 得到的乘积因子是一样的. 只有当 :math:`\sigma` 取半整数时, 才能得到符号差别. 对半整数自旋无质量粒子以空间反射作用所产生的这个特殊的符号差别, 其原因是在 :eq:`urp-def` 中为定义任意动量的无质量粒子态而对旋转的约定. 由于旋转群 (这里是指 :math:`U(R)`) 不是单连通的, 像这样的某些不连续性是不可避免的.

6 零质量单粒子态的时间反演
^^^^^^^^^^^^^^^^^^^^^^^^^^

考虑态 :math:`\psi_{k,\sigma}`, 它是算符 :math:`P^\mu` 和 :math:`J_3` 的本征态, 分别具有本征值 :math:`k^\mu = (\kappa, 0, 0, \kappa)` 和 :math:`\sigma`. 用时间反演算符 :math:`\mathsf{T}` 作用得到算符 :math:`P^\mu` 和 :math:`J_3` 的分别具有本征值 :math:`(\mathscr{P}k)^\mu = (\kappa, 0,0,-\kappa)` 和 :math:`-\sigma` 的本征态. 因此, :math:`\mathsf{T}` 并不改变螺旋度 :math:`\bm{J} \cdot \hat{k}`. 于是 :math:`\mathsf{T}` 本身并不能表明具有螺旋度 :math:`\sigma` 的零质量粒子是否伴随具有 :math:`-\sigma` 螺旋度的粒子. 因为像 :math:`\mathsf{P}` 一样, :math:`\mathsf{T}` 并不保持标准四动量 :math:`k` 不变, 我们考虑生成元 :math:`U(R_2^{-1})\mathsf{T}`, 其中 :math:`R_2` 是 :eq:`ur2-def` 定义的旋转, 这个旋转把 :math:`k` 变为 :math:`\mathscr{P}k`.

[定理70] :math:`U(R_2^{-1})\mathsf{T}` 与 :math:`J_3` 对易. 因此

.. math:: 
    U(R_2^{-1})\mathsf{T} = \zeta_\sigma \psi_{k, \sigma}

其中 :math:`\zeta_\sigma` 是一个相因子.

[证明] 利用 [定理66] 和 [定理67] 的部分证明, :math:`U(R_2^{-1}) \psi_{\mathscr{P}k,\sigma}` 是具有本征值 :math:`-\sigma` 的 :math:`J_3` 的本征态和具有本征值 :math:`k^\mu` 的 :math:`P^\mu` 的本征态. 又按照本小节最开始的论述, :math:`\mathsf{T}\psi_{k,\sigma}` 和 :math:`\psi_{\mathscr{P}k,-\sigma}` 态只差一个相因子, 因此

.. math:: 
    U(R_2^{-1}) \psi_{\mathscr{P}k,-\sigma} =&\ \zeta_{1\sigma} \psi_{k, \sigma} \\
    \mathsf{T}\psi_{k,\sigma} =&\ \zeta_{2\sigma} \psi_{\mathscr{P}k,-\sigma}

于是有

.. math:: 
    U(R_2^{-1}) \mathsf{T}\psi_{k,\sigma} = U(R_2^{-1}) \zeta_{2\sigma} \psi_{\mathscr{P}k,-\sigma} = \zeta_{2\sigma} \zeta_{1\sigma} \psi_{k, \sigma}

把 :math:`\zeta_{2\sigma} \zeta_{1\sigma}` 记为 :math:`\zeta_\sigma`, 就有

.. math:: 
    U(R_2^{-1}) \mathsf{T}\psi_{k,\sigma} = \zeta_\sigma \psi_{k, \sigma}

[定理71] (A) :math:`R_2^{-1}\mathscr{T}` 和洛伦兹 "推进" :eq:`bu-mass-zero` 对易. (B) :math:`\mathscr{T}` 与旋转 :math:`R(\hat{\bm{p}})` 对易, 其中 :math:`R(\hat{\bm{p}})` 把第三轴的方向转到 :math:`\bm{p}` 的方向.

[证明] (A) 注意到 [定理68] 指出 :math:`R_2^{-1}\mathscr{P}` 和洛伦兹 "推进" :eq:`bu-mass-zero` 对易. 而 :math:`\mathscr{T} = -\mathscr{P}`, 因此不难得出 :math:`R_2^{-1}\mathscr{T} = -R_2^{-1}\mathscr{P}` 和洛伦兹 "推进" :eq:`bu-mass-zero` 对易. (B) 还是利用 :math:`\mathscr{T} = -\mathscr{P}` 可证.

类比 :math:`\mathsf{P}` 对无质量粒子的讨论, 我们有

.. math:: 
    \mathsf{T} \psi_{p,\sigma} =&\ \sqrt{\kappa / p^0} U\big( R(\hat{\bm{p}}) R_2 B(|\bm{p}|/\kappa) \big) U(R_2^{-1}) \mathsf{T} \psi_{k, \sigma} \\
        =&\ \sqrt{\kappa / p^0} U\big( R(\hat{\bm{p}}) R_2 B(|\bm{p}|/\kappa) \big) \zeta_\sigma \psi_{k,\sigma} \\
        =&\ \sqrt{\kappa / p^0} \zeta_\sigma U\big( R(\hat{\bm{p}}) R_2 B(|\bm{p}|/\kappa) \big)  \psi_{k,\sigma} \\
        =&\ \sqrt{\kappa / p^0} \zeta_\sigma \exp(\mp \I \pi\sigma) U(L(\mathscr{P}p)) \psi_{k,\sigma} \\
        =&\ \zeta_\sigma \exp(\mp \I \pi\sigma) \psi_{\mathscr{P}p,\sigma} 
    :label: t-act-p-mass-zero

和之前一样, 上下符号取决于 :math:`\bm{p}` 的第二空间分量的正负.

7 时间反演算符平方的作用
^^^^^^^^^^^^^^^^^^^^^^^^

时间反演算符的平方 :math:`\mathsf{T}^2` 对有质量和无质量粒子有非常简单的作用. 

[定理72] 对有质量或无质量粒子

.. math:: 
    \mathsf{T}^2 \psi_{p,\sigma} = (-)^{2j} \psi_{p,\sigma}

[证明] 先考虑有质量粒子. 利用 :eq:`t-act-p` 即

.. math:: 
    \mathsf{T} \psi_{p,\sigma} = \zeta(-)^{j-\sigma} \psi_{\mathscr{P}p,-\sigma}

注意到 :math:`\mathsf{T}` 是反幺正算符, 我们有

.. math:: 
    \mathsf{T}^2 \psi_{p,\sigma} =&\ \mathsf{T} \zeta(-)^{j-\sigma} \psi_{\mathscr{P}p,-\sigma} = \zeta^* (-)^{j-\sigma} \mathsf{T} \psi_{\mathscr{P}p,-\sigma} \\
    =&\ \zeta^* (-)^{j-\sigma} \zeta(-)^{j-\sigma} \psi_{\mathscr{P}^2p,\sigma} = \zeta^* \zeta (-)^{2j} \psi_{\mathscr{P}^2p,\sigma} 
    =&\ (-)^{2j} \psi_{p,\sigma}

注意其中由于 :math:`\zeta` 是相因子, :math:`|\zeta| = \zeta^* \zeta = 1`, 并且 :math:`\mathscr{P}^2 = 1`.

现在考虑无质量粒子, 利用 :eq:`t-act-p-mass-zero` 即

.. math:: 
    \mathsf{T} \psi_{p,\sigma} = \zeta_\sigma \exp(\mp \I \pi\sigma) \psi_{\mathscr{P}p,\sigma}
    
注意到 :math:`\mathsf{T}` 是反幺正算符, 以及 :math:`\exp(\mp \I \pi\sigma)` 的正负取决于 :math:`\bm{p}` 第二分量的正负, 我们有

.. math:: 
    \mathsf{T}^2 \psi_{p,\sigma} =&\ \mathsf{T} \zeta_\sigma \exp(\mp \I \pi\sigma) \psi_{\mathscr{P}p,\sigma}\\
        =&\ \zeta^*_\sigma \exp(\pm \I \pi\sigma) \mathsf{T} \psi_{\mathscr{P}p,\sigma} \\
        =&\ \zeta^*_\sigma \exp(\pm \I \pi\sigma) \zeta_\sigma \exp(\pm \I \pi\sigma) \psi_{\mathscr{P}^2p,\sigma} \\
        =&\ \exp(\pm \I \pi\sigma) \exp(\pm \I \pi\sigma) \psi_{p,\sigma} \\
        =&\ \exp(2\pm \I \pi\sigma) \psi_{p,\sigma}

注意 :math:`\mathscr{P}p` 的第二分量和 :math:`p` 的第二分量符号相反.
    
现在若 :math:`j` 为整数, 则 :math:`2j` 为偶数, 于是 :math:`\sigma` 为整数, 则 :math:`\exp(2\pm \I \pi\sigma) = 1`. 若 :math:`j` 为半奇数, 则 :math:`j` 为奇数, 于是 :math:`\sigma` 也为半奇数, 于是 :math:`\exp(\pm \I \pi(2\sigma)) = \exp(\pm \I\pi) = -1`. 因此

.. math:: 
    \mathsf{T}^2 \psi_{p,\sigma} = (-)^{2j} \psi_{p,\sigma}

这个结果有个有趣的推论. 当 :math:`\mathsf{T}^2` 作用于任意非相互作用粒子系统的态 :math:`\psi` (这些粒子可以是有质量或无质量的) 时, 它会对每个粒子产生 :math:`(-)^{2j}` 或 :math:`(-)^{2|\sigma|}` 因子. 因此, 如果这个态包含奇数个半整数自旋或螺旋度的粒子 (加上任意数目的整数自旋或螺旋度粒子), 我们得到一个总体的符号变化

.. math:: 
    \mathsf{T}^2 \psi = -\psi
    :label: t2-psi-odd

如果我们现在 "打开" 各种相互作用, 这个结果将会保持, 只要这些相互作用在时间反演下不变 (它们甚至可以不具有旋转不变性). 例如, 这里的讨论可以应用于当所考虑的系统受到任意静引力或静电场的作用. 现在假设 :math:`\psi` 是哈密顿量的本征态. 由于 :math:`\mathsf{T}` 与哈密顿量对易, :math:`\mathsf{T}\psi` 也是哈密顿量的本征态. 它们是同一个态吗? 如果是, 那么 :math:`\mathsf{T}\psi` 只能与 :math:`\psi` 相差一个相位因子

.. math:: 
    T\psi = \zeta\psi

但是这样的话

.. math:: 
    \mathsf{T}^2\psi = \mathsf{T} (\zeta\psi) = \zeta^* \mathsf{T}\psi = |\zeta|^2\psi = \psi

这与 :eq:`t2-psi-odd` 矛盾. 因此, 满足 :eq:`t2-psi-odd` 的能量本征态必须与另一个具有同样能量的本征态简并 (这就是说, 这里其实假设它们是同一个态是非常粗糙的假设, 我们当然知道除了能量本征值外还有其他很多量子数没有考虑进去. 实际上我们总能找到其他一些量子数, 它们对于能量是简并的. 因子这里只是从一个十分宏观的角度, 论证了, 对于一个半奇数自旋的态, 它必定存在除了能量以外的其他量子数). 这称为 "Kramers (克拉莫斯) 简并". 当然, 如果系统在一个旋转不变的环境, 这个结论是平凡的. 因为对这个系统的任何态, 总角动量 :math:`j` 将会是半整数, 因此这里应该有 :math:`2j + 1 = 2,4\cdots` 个简并态 (由于旋转不变性, 所有这些态都具有相同能量, 因此上述至少有两个简并态也就没有给出任何新的信息). 这个结论的重要意义在于, 至少存在一个二重简并性, 即使对旋转不变性通过外场进行了某种微扰, 比如静电场, 只要这些场对 :math:`\mathsf{T}` 变换是不变的. 特别地, 如果任何粒子有电偶极矩或引力偶极矩, 那么它的 :math:`2j+1` 自旋态之间的简并性会被完全移除, 如果施加了静电或静引力场. 因此, 这样的偶极矩是被时间反演不变性禁止的. (首先考虑电偶极矩和引力偶极矩都为零的情况, 这是说无论沿那个方向测量偶极矩都为零. 那么无论对哪个方向施加外场, 沿施加外场的方向的旋转是维持系统不变的, 那么如果角动量在这个方向投影, 可以产生能量的二重简并态, 与这里的结论并不矛盾. 若电偶极矩或引力偶极矩不为零, 那么只要施加的外静场不沿偶极矩的方向, 那么系统就不再具有沿任何方向旋转的不变性. 也就失去了所有的 :math:`2j+1` 个简并态, 从而与 "至少存在两个简并态" 矛盾. ) 注意这里考虑静电场是因为如果是时变电场它本身就不是时间反演不变的, 因为外场随时间变化.

为了完整, 应该提及 :math:`\mathsf{P}` 和 :math:`\mathsf{T}` 可以对具有相同质量的粒子的多重态产生更复杂的作用. 这个可能性在本章附录 C 讨论. 对这个情形还没有发现与物理相关的例子.
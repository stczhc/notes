
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
    

第三章 散射理论 (D)
===================

第五节 微扰论
-------------

1 过时的微扰论
^^^^^^^^^^^^^^

历史上用于计算 :math:`S` 矩阵最有用的技术是微扰论, 即展开哈密顿量 :math:`H = H_0 + V` 中相互作用项 :math:`V` 的级数. 根据之前的结果 :eq:`s-matrix-e-delta` 和 :eq:`lip-sch-eq`, :math:`S` 矩阵为

.. math::
    S_{\beta\alpha} =&\ \delta(\beta - \alpha) - 2\I \pi \delta (E_\beta - E_\alpha) T_{\beta\alpha}^+ \\
    T_{\beta\alpha}^+ =&\ \big( \phi_\beta, V\psi_\alpha^+ \big)

其中 :math:`\psi_\alpha^+` 满足李普曼-施温格方程 :eq:`lip-sch-eq` 即

.. math::
    \psi_\alpha^+ = \phi_\alpha + \int \D \gamma \frac{T_{\gamma\alpha}^+ \phi_\gamma}{E_\alpha - E_\gamma + \I \epsilon}

用 :math:`V` 作用上式, 然后和 :math:`\phi_\beta` 求标量积, 就得到 :math:`T^+` 的积分方程

.. math::
    T_{\beta\alpha}^+ = V_{\beta\alpha} + \int\D \gamma \frac{V_{\beta\alpha} T_{\gamma\alpha}^+}
        {E_\alpha - E_\gamma + \I \epsilon}
    :label: t-integral

其中

.. math::
    V_{\beta\alpha} \equiv \big( \psi_\beta, V \psi_\alpha \big)

:math:`T_{\beta\alpha}^+` 的微扰级数可以通过迭代 :eq:`t-integral` 得到

.. math::
    T_{\beta\alpha}^+ =&\ V_{\beta\alpha} + \int \D \gamma \frac{V_{\beta\gamma}V_{\gamma\alpha}}
        {E_\alpha - E_\gamma +\I\epsilon} \\
    &\ + \int \D \gamma \D \gamma' \frac{V_{\beta\gamma}V_{\gamma\gamma'}V_{\gamma'\alpha}}{(E_\alpha - E_\gamma +\I\epsilon)(E_\alpha - E_{\gamma'} +\I\epsilon)} + \cdots
    :label: t-integral-iter

基于 :eq:`t-integral-iter` 的计算方法在19世纪30年代主导了 :math:`S` 矩阵的计算, 现在称为 **过时的微扰论** (old-fashioned perturbation theory). 它的一个很明显缺点是分母中的能量掩盖了 :math:`S` 矩阵的洛伦兹不变性. 它还是有用的, 但是是用于澄清 :math:`S` 矩阵的奇点在各种中间态中出现的方式. 对这本书的大部分内容而言, 我们使用 :eq:`t-integral-iter` 的一个重新表述版本, 叫做 **含时微扰论** (time-dependent perturbation theory), 这个版本的优点是它使得洛伦兹不变性更加透明, 而某种程度上掩盖了各中间态的贡献.

2 含时微扰论
^^^^^^^^^^^^

推导时序 (time-ordered) 微扰展开的最简单方法是使用 [定理3-3], 它给出 :math:`S` 算符的如下表达式

.. math::
    S = U(\infty, -\infty)

其中

.. math::
    U(\tau, \tau_0) \equiv \exp(\I H_0 \tau) \exp(-\I H (\tau - \tau_0)) \exp(-\I H_0 \tau_0)

在这个式子中, 取 :math:`U(\tau, \tau_0)` 对 :math:`\tau` 的微分可以给出微分方程

.. math::
    \frac{\D}{\D \tau} U(\tau, \tau_0) =&\ \I H_0 \exp(\I H_0 \tau) \exp(-\I H (\tau - \tau_0)) \exp(-\I H_0 \tau_0) - \exp(\I H_0 \tau) \I H \exp(-\I H (\tau - \tau_0)) \exp(-\I H_0 \tau_0) \\
    =&\ -\I \big[ \exp(\I H_0 \tau) H-H_0 \exp(\I H_0 \tau) \big] \exp(-\I H (\tau - \tau_0)) \exp(-\I H_0 \tau_0)

其中 (注意到 :math:`H_0` 和 :math:`H_0` 的函数对易)

.. math::
    \exp(\I H_0 \tau) H-H_0 \exp(\I H_0 \tau) =&\ \exp(\I H_0 \tau) (H_0 + V) -H_0 \exp(\I H_0 \tau) \\
        =&\ \exp(\I H_0 \tau) V

代入 :math:`\frac{\D}{\D \tau} U(\tau, \tau_0)` 的表达式得

.. math::
    \I \frac{\D}{\D \tau} U(\tau, \tau_0) =&\ \big[ \exp(\I H_0 \tau) H-H_0 \exp(\I H_0 \tau) \big] \exp(-\I H (\tau - \tau_0)) \exp(-\I H_0 \tau_0)\\
        =&\ \exp(\I H_0 \tau) V \exp(-\I H (\tau - \tau_0)) \exp(-\I H_0 \tau_0) \\
        =&\ \exp(\I H_0 \tau) V \exp(-\I H_0 \tau) \exp(\I H_0 \tau) \exp(-\I H (\tau - \tau_0)) \exp(-\I H_0 \tau_0) \\
        \equiv&\ V(\tau) U(\tau, \tau_0)
    :label: dudtau

其中

.. math::
    V(t) \equiv \exp(\I H_0 t) V \exp(-\I H_0 t)
    :label: v-time-dep

(这种具有时间依赖的算符被称为是定义在 **相互作用绘景** (interaction picture), 从而和量子力学的海森堡绘景中所要求的时间依赖 :math:`O_H(t) = \exp(\I H t) O_H \exp(-I Ht)` 相区别. 这里注意到在相互作用绘景中, 指数中是 :math:`H_0`, 而在海森堡绘景中, 指数中是 :math:`H`. 所以它们的时间依赖是不一样的 (从而有所区别). ) :eq:`dudtau` 和初始条件 :math:`U(\tau_0, \tau_0) = 1` 的解显然满足如下积分方程

.. math::
    U(\tau, \tau_0) = 1 - \I \int_{\tau_0}^\tau \D t V(t) U(t, \tau)

通过迭代这个积分方程, 我们可以将 :math:`U(\tau, \tau_0)` 展开为 :math:`V` 的级数

.. math::
    U(\tau, \tau_0) =&\ 1 - \I \int_{\tau_0}^\tau \D t_1 V(t_1) + (-\I)^2 \int_{\tau_0}^\tau \D t_1
        \int_{\tau_0}^{t_1} \D t_2 V(t_1) V(t_2) \\
    &\ + (-\I)^3 \int_{\tau_0}^\tau \D t_1 \int_{\tau_0}^{t_1} \D t_2 \int_{\tau_0}^{t_2} \D t_3
        V(t_1) V(t_2) V(t_3) + \cdots

令 :math:`\tau = -\infty`, :math:`\tau_0 = -\infty`, 我们就得到 :math:`S` 算符的微扰展开

.. math::
    S =&\ 1 -\I \int_{-\infty}^\infty \D t_1 V(t_1) + (-\I)^2 \int_{-\infty}^\infty \D t_1
        \int_{-\infty}^{t_1} \D t_2 V(t_1) V(t_2) \\
    &\ + (-\I)^3 \int_{-\infty}^\infty \D t_1 \int_{-\infty}^{t_1} \D t_2 \int_{-\infty}^{t_2} \D t_3
        V(t_1) V(t_2) V(t_3) + \cdots
    :label: s-matrix-iter

3 两种微扰论的等价性
^^^^^^^^^^^^^^^^^^^^

这也可以直接通过过时的微扰展开 :eq:`t-integral-iter` 推导得到, 通过使用 :eq:`t-integral-iter` 中能量因子的傅里叶表示

.. math::
    (E_\alpha - E_\gamma +\I\epsilon)^{-1} = -\I \int_0^\infty \D \tau \exp(\I (E_\alpha - E_\gamma)\tau)

上式应该理解为, 积分的求值需要在被积函数插入一个收敛因子 :math:`\E^{-\epsilon\tau}`, 并且 :math:`\epsilon \to 0+`. 上式的推导如下. 由 delta 函数的傅里叶变换 (参见 [引理2-37-1] 的证明) 和 :eq:`e-eps-principal` 式, 即

.. math::
    \delta(x) =&\ \frac{1}{2\pi} \int_{-\infty}^\infty \E^{\I xt} \D t \\
    (E \pm \I \epsilon)^{-1} =&\ \frac{\mathscr{P}}{E} \mp \I \pi \delta(E)

忽略主值有

.. math::
    (E_\alpha - E_\gamma +\I\epsilon)^{-1} =&\ - \I \pi \delta(E_\alpha - E_\gamma)
        = - \I \pi \cdot \frac{1}{2\pi} \int_{-\infty}^\infty \E^{\I (E_\alpha - E_\gamma)t} \D t \\
        =&\ - \I\int_{0}^\infty \E^{\I (E_\alpha - E_\gamma)t} \D t

从过时的微扰展开 :eq:`t-integral-iter` 推导 :eq:`s-matrix-iter` 是本章习题的第4题. 首先按定义 (见第五节开头, 即 :eq:`s-matrix-e-delta` 和 :eq:`lip-sch-eq`)

.. math::
    S_{\beta\alpha} \equiv&\ \big( \phi_\beta, S \phi_\alpha \big) = \delta(\beta - \alpha) - 2\I \pi \delta (E_\beta - E_\alpha) T_{\beta\alpha}^+ \\
    T_{\beta\alpha}^+ =&\ \big( \phi_\beta, V\psi_\alpha^+ \big)

从而 :math:`S_{\beta\alpha}` 第一项是单位矩阵, 而 :eq:`s-matrix-iter` 第一项也是单位算符, 它们当然相等. 一阶微扰是需要证明

.. math::
    \left( \phi_\beta, S_1 \phi_\alpha \right) = -\I \left( \phi_\beta, \int_{-\infty}^\infty \D t_1 V(t_1) \phi_\alpha \right) = -2\I \pi \delta(E_\beta - E_\alpha) V_{\beta\alpha}

事实上有

.. math::
    \left( \phi_\beta, S_1 \phi_\alpha \right) =&\ -\I \left( \phi_\beta, \int_{-\infty}^\infty \D t_1 V(t_1) \phi_\alpha \right) = -\I \int_{-\infty}^\infty \D t_1 \left( \phi_\beta,
    \E^{\I H_0 t_1} V \E^{-\I H_0 t_1}
    \phi_\alpha \right) \\
    =&\ -\I \int_{-\infty}^\infty \D t_1 \E^{\I E_\beta t_1} \left( \phi_\beta, V \phi_\alpha \right) \E^{-\I E_\alpha t_1} = -\I V_{\beta\alpha} \int_{-\infty}^\infty \D t_1 \E^{\I (E_\beta-E_\alpha) t_1} \\
    =&\ -\I 2\pi \delta(E_\beta-E_\alpha) V_{\beta\alpha}

二阶微扰是要证明

.. math::
    \left( \phi_\beta, S_2 \phi_\alpha \right) =&\ (-\I)^2 \left( \phi_\beta, \int_{-\infty}^\infty \D t_1 \int_{-\infty}^{t_1} \D t_2 V(t_1) V(t_2) \phi_\alpha \right) \\
    =&\ -2\I \pi \delta(E_\beta - E_\alpha) \int \D \gamma \frac{V_{\beta\gamma}V_{\gamma\alpha}}
        {E_\alpha - E_\gamma +\I\epsilon}

事实上有

.. math::
    \left( \phi_\beta, S_2 \phi_\alpha \right) = (-\I)^2 \int_{-\infty}^\infty \D t_1 \int_{-\infty}^{t_1} \D t_2 \left( \phi_\beta, V(t_1) V(t_2) \phi_\alpha \right)
    :label: s2betaalpha

其中

.. math::
    \left( \phi_\beta, V(t_1) V(t_2) \phi_\alpha \right) =&\ \int \D \gamma
        \left( \phi_\beta, V(t_1) \phi_\gamma \right) \left( \phi_\gamma, V(t_2) \phi_\alpha \right) \\
    =&\ \int \D \gamma \E^{\I E_\beta t_1} V_{\beta\gamma} \E^{-\I E_\gamma t_1} \E^{\I E_\gamma t_2}
        V_{\gamma\alpha} \E^{-\I E_\alpha t_2} \\
    =&\ \int \D \gamma \E^{\I (E_\beta-E_\alpha) t_1} \E^{\I E_\alpha (t_1 -t_2)}
        \E^{-\I E_\gamma (t_1-t_2)} V_{\beta\gamma} V_{\gamma\alpha}

从 :eq:`s2betaalpha` 的积分式可以看出, 积分变量 :math:`t_2 < t_1`. 则若定义 :math:`\tau = t_1 - t_2`, 把 :math:`t_2` 换成 :math:`\tau` 并交换积分上下限, 得

.. math::
    \int_{-\infty}^{t_1} \D t_2 = -\int_{\infty}^{0} \D \tau = \int_0^{\infty} \D \tau

得

.. math::
    \left( \phi_\beta, S_2 \phi_\alpha \right) =&\ (-\I)^2 \int_{-\infty}^\infty \D t_1 \int_0^{\infty} \D \tau
        \int \D \gamma \E^{\I (E_\beta-E_\alpha) t_1} \E^{\I E_\alpha \tau}
        \E^{-\I E_\gamma \tau} V_{\beta\gamma} V_{\gamma\alpha} \\
    =&\ (-\I)^2 \int \D \gamma V_{\beta\gamma} V_{\gamma\alpha} \int_{-\infty}^\infty \D t_1 \E^{\I (E_\beta-E_\alpha)t_1}
        \int_0^{\infty} \D \tau \E^{\I (E_\alpha-E_\gamma) \tau} \\
    =&\ - \int \D \gamma V_{\beta\gamma} V_{\gamma\alpha} 2\pi \delta(E_\beta-E_\alpha) \pi \delta(E_\alpha-E_\gamma) \\
    =&\ -2\pi \I \delta(E_\beta-E_\alpha) \int \D \gamma \frac{V_{\beta\gamma} V_{\gamma\alpha}}
        {E_\alpha-E_\gamma + \I \epsilon}

更高阶微扰项应该可以用类似方法证明.

4 时序乘积
^^^^^^^^^^

我们可以对 :eq:`s-matrix-iter` 进行改写, 这种改写对于进行显式洛伦兹不变计算将非常有用. 对于任何时间依赖算符, 我们可以定义 **时序乘积** (time-ordered product), 在这种乘积中, 因子按时间参数的大小排列, 从而具有最晚时间参数的因子在最左边, 次晚的在最左边的因子旁边, 以此类推. 例如

.. math::
    T \{ V(t) \} =&\ V(t), \\
    T \{ V(t_1) V(t_2) \} =&\ \theta(t_1 - t_2) V(t_1)V(t_2) + \theta(t_2 - t_1) V(t_2) V(t_1),

等等, 其中 :math:`\theta(\tau)` 是阶跃函数, :math:`\tau > 0` 时等于 :math:`+1`, :math:`\tau < 0` 时等于零. :math:`n` 个 :math:`V` 的时序乘积是所有 :math:`n!` 个 :math:`V` 的排列的和, 它们中的每一个如果对所有的 :math:`t_1 \cdot t_n` 积分, 都将给出同样的积分值. 也就是说

.. math::
    &\ \int_{-\infty}^\infty \D t_1 \int_{-\infty}^{t_1} \D t_2 \cdots \int_{-\infty}^{t_{n-1}} \D t_n
        V(t_1) V(t_2) V(t_3) \cdots V(t_n) \\
    =&\ \int_{-\infty}^\infty \D t_1 \int_{-\infty}^{\infty} \D t_2 \cdots \int_{-\infty}^{\infty} \D t_n
        \theta(t_1 - t_2) \theta(t_2 - t_3) \cdots \theta(t_{n-1} - t_n) V(t_1) V(t_2) V(t_3) \cdots V(t_n) \\
    =&\ \int_{-\infty}^\infty \D t_1 \int_{-\infty}^{\infty} \D t_2 \cdots \int_{-\infty}^{\infty} \D t_n
        \theta(t_2 - t_1) \theta(t_1 - t_3) \cdots \theta(t_{n-1} - t_n) V(t_2) V(t_1) V(t_3) \cdots V(t_n) \\
    =&\ \cdots \\
    =&\ \frac{1}{n!} \int_{-\infty}^\infty \D t_1 \int_{-\infty}^{\infty} \D t_2 \cdots \int_{-\infty}^{\infty} \D t_n T \{ V(t_2) V(t_1) V(t_3) \cdots V(t_n) \}

注意, :math:`T \{ V(t_1) V(t_2) \}` 中的两项 :math:`\theta(t_1 - t_2) V(t_1)V(t_2)` 和 :math:`\theta(t_2 - t_1) V(t_2) V(t_1)` 是不同的, 因为第一项只在 :math:`t_1 > t_2` 时不为零, 而第二项只在 :math:`t_2 > t_1` 时不为零. 但是, 当积分的时候, 所有参数都要取遍 :math:`-\infty` 到 :math:`\infty` 的所有数, 因此它们也就没有区别.

因此, :eq:`s-matrix-iter` 可以写为

.. math::
    S = 1 + \sum_{n=1}^\infty \frac{(-i)^n}{n!} \int_{-\infty}^{\infty} \D t_1\D t_2 \cdots \D t_n
        T \Big\{ V(t_1) \cdots V(t_n) \Big\}.
    :label: dyson-s

这有时被称为 **戴森级数** (Dyson series). 如果在不同时间的 :math:`V(t)` 都互相对易, 那么这个级数可以求和, 其和为

.. math::
    S = \exp\left( -\I \int_{-\infty}^\infty \D t V(t) \right).

证明如下. 首先, 如果在不同时间的 :math:`V(t)` 都互相对易, 那么时序乘积标记 :math:`T` 就可以去掉, 比如

.. math::
    T \{ V(t_1) V(t_2) \} =&\ \theta(t_1 - t_2) V(t_1)V(t_2) + \theta(t_2 - t_1) V(t_2) V(t_1) \\
        =&\ \Big[ \theta(t_1 - t_2) + \theta(t_2 - t_1) \Big] V(t_1)V(t_2) = V(t_1) V(t_2) \\
    T \{ V(t_1) V(t_2) V(t_3) \} =&\ \theta(t_1 - t_2) \theta(t_2 - t_3) V(t_1) V(t_2)V(t_3)
        + \theta(t_2 - t_1) \theta(t_1 - t_3) V(t_2) V(t_1) V(t_3) \\
     &\ + \theta(t_1 - t_3) \theta(t_3 - t_2) V(t_1) V(t_3) V(t_2)
        + \theta(t_2 - t_3) \theta(t_3 - t_1) V(t_2) V(t_3) V(t_1) \\
     &\ + \theta(t_3 - t_1) \theta(t_1 - t_2) V(t_3) V(t_1) V(t_2)
        + \theta(t_3 - t_2) \theta(t_2 - t_1) V(t_3) V(t_2) V(t_1) \\
    =&\ \Big[ \theta(t_1 - t_3) \theta(t_1 - t_2) \theta(t_2 - t_3)
        + \theta(t_2 - t_3) \theta(t_2 - t_1) \theta(t_1 - t_3) \\
     &\  \theta(t_1 - t_3) \theta(t_3 - t_2)
        +  \theta(t_2 - t_3) \theta(t_3 - t_1) \\
     &\ \theta(t_3 - t_2) \theta(t_3 - t_1) \theta(t_1 - t_2)
        + \theta(t_3 - t_1) \theta(t_3 - t_2) \theta(t_2 - t_1)
     \Big] V(t_1) V(t_2) V(t_3) \\
    =&\ \Big\{ \theta(t_1 - t_3) \theta(t_2 - t_3) \Big[ \theta(t_1 - t_2) + \theta(t_2 - t_1) \Big]
        + \theta(t_3 - t_2) \theta(t_3 - t_1) \Big[ \theta(t_1 - t_2) + \theta(t_2 - t_1) \Big] \\
        &\ + \theta(t_1 - t_3) \theta(t_3 - t_2)
        +  \theta(t_2 - t_3) \theta(t_3 - t_1) \Big\} V(t_1) V(t_2) V(t_3) \\
    =&\ \Big\{ \theta(t_1 - t_3) \Big[ \theta(t_2 - t_3) + \theta(t_3 - t_2) \Big]
        +  \theta(t_3 - t_1) \Big[ \theta(t_3 - t_2) +\theta(t_2 - t_3) \Big] \Big\} V(t_1) V(t_2) V(t_3) \\
    =&\ \Big\{ \theta(t_1 - t_3) +  \theta(t_3 - t_1) \Big\} V(t_1) V(t_2) V(t_3) \\
    =&\ V(t_1) V(t_2) V(t_3)

所以

.. math::
    S =&\ 1 + \sum_{n=1}^\infty \frac{(-i)^n}{n!} \int_{-\infty}^{\infty} \D t_1\D t_2 \cdots \D t_n
        V(t_1) \cdots V(t_n) \\
    =&\ 1 + \sum_{n=1}^\infty \frac{(-i)^n}{n!} \left( \int_{-\infty}^{\infty} \D t V(t) \right)^n \\
    =&\ \exp\left( -\I \int_{-\infty}^\infty \D t V(t) \right)

其中对 :math:`t_1, t_2, \cdots t_n` 的积分的被积函数相互没有耦合, 所以可以各自分别积分. 积分变量都可以改成 :math:`t`.

当然, 通常并不是这种情况; 一般地说, :eq:`dyson-s` 甚至不收敛. 它最多是一个出现在 :math:`V` 中的对常数耦合因子的渐进级数展开. (这里常数的意思应该是不依赖于坐标的.) 但是 :eq:`dyson-s` 在一般情况下有时写为

.. math::
    S = T \exp\left( -\I \int_{-\infty}^\infty \D t V(t) \right)

其中这里的 :math:`T` 表示应该对指数的级数展开中每一项取时序乘积.

5 S矩阵的洛伦兹不变形式
^^^^^^^^^^^^^^^^^^^^^^^

现在我们很容易就可以找到一大类理论, 其 :math:`S` 矩阵是显式洛伦兹不变的. 由于 :math:`S` 的矩阵元是 :math:`S` 算符在自由粒子态 :math:`\phi_\alpha, \phi_\beta` 等之间的矩阵元, 根据 :eq:`su-commute` 我们希望的是 :math:`S` 算符和对这些自由粒子态进行洛伦兹变换的算符 :math:`U_0(\Lambda, a)` 对易. 等价地, :math:`S` 算符必须和 :math:`U_0(\Lambda, a)` 的生成元 :math:`H_0, \bm{P}_0, \bm{J}_0` 和 :math:`\bm{K}_0` 对易 (见 :eq:`s-hpjk-commute`). 为了满足这个条件, 我们先尝试假定 :math:`V(t)` 是三维空间的一个积分

.. math::
    V(t) = \int \D^3 x \mathscr{H}(\bm{x}, t)
    :label: v-expr-H

其中 :math:`\mathscr{H}` 是具有如下意义的标量

.. math::
    U_0(\Lambda, a) \mathscr{H}(x) U_0^{-1}(\Lambda, a) = \mathscr{H}(\Lambda x + a).
    :label: h-u0-trans

通过令无穷小变换中 :math:`a^0` 的系数相等, 可以确认 :math:`\mathscr{H}(x)` 具有和 :eq:`v-time-dep` 自洽的时间依赖. 具体证明如下. 这要求 :math:`\mathscr{H}(\bm{x}, t)` 的时间依赖为

.. math::
    \mathscr{H}(\bm{x}, t) \equiv \exp(\I H_0 t) \mathscr{H}(\bm{x}) \exp(-\I H_0 t)
    :label: h-time-dep

考虑无穷小洛伦兹变换, :eq:`h-u0-trans` 的左边可以写为

.. math::
    &\ \left( 1 + \frac{1}{2} \I \xtensor{\omega}{^\rho}{_\sigma}\xtensor{J}{_{0\rho}}{^\sigma}
        - \I \epsilon^\rho P_{0\rho} + \cdots \right) \mathscr{H}(\bm{x}, t) \left( 1 - \frac{1}{2} \I \xtensor{\omega}{^\rho}{_\sigma}\xtensor{J}{_{0\rho}}{^\sigma}
        + \I \epsilon^\rho P_{0\rho} + \cdots \right) \\
    =&\ \mathscr{H} + \frac{1}{2} \I \xtensor{\omega}{^\rho}{_\sigma} \big[ \xtensor{J}{_{0\rho}}{^\sigma}, \mathscr{H}(\bm{x}, t) \big] - \I \epsilon^\rho \big[ P_{0\rho}, \mathscr{H}(\bm{x}, t) \big] + \cdots

:eq:`h-u0-trans` 的右边可以写为 (因为 :math:`\omega, \epsilon` 为无穷小量, 可以进行泰勒展开)


.. math::
    \mathscr{H}\big( (\xtensor{\delta}{^\mu}{_\nu} + \xtensor{\omega}{^\mu}{_\nu}) x^\nu + \epsilon^\mu \big)
    = \mathscr{H} (\bm{x}, t) + \xtensor{\omega}{^\mu}{_\nu} \frac{\partial \mathscr{H} \big( (\xtensor{\delta}{^\mu}{_\nu} + \xtensor{\omega}{^\mu}{_\nu}) x^\nu \big)}{\partial \xtensor{\omega}{^\mu}{_\nu}}\bigg\rvert_{\xtensor{\omega}{^\mu}{_\nu} = 0} + \epsilon^\mu \frac{\partial \mathscr{H} \big( x^\mu + \epsilon^\mu \big)}{\partial \epsilon^\mu}\bigg\rvert_{\epsilon^\mu = 0}
    + \cdots

若要求 :eq:`h-u0-trans` 的左边和右边的 :math:`\epsilon^0` 的系数相等, 利用

.. math::
    P_{00} = -\xtensor{P}{_0}{^0} \equiv&\ -H_0 \\
    \frac{\partial \mathscr{H} \big( x^\mu + \epsilon^\mu \big)}{\partial \epsilon^\mu}\bigg\rvert_{\epsilon^\mu = 0}
    =&\ \frac{\partial \mathscr{H} \big( x^\mu + \epsilon^\mu \big)}{\partial \big( x^\mu + \epsilon^\mu \big)}\bigg\rvert_{\epsilon^\mu = 0}
    \frac{\partial \big( x^\mu + \epsilon^\mu \big)}{\partial \epsilon^\mu}
    = \frac{\partial \mathscr{H} \big( x^\mu\big)}{\partial x^\mu} \\
    \frac{\partial \mathscr{H} \big( x^\mu + \epsilon^\mu \big)}{\partial \epsilon^0}\bigg\rvert_{\epsilon^\mu = 0} =&\ 
    \frac{\partial \mathscr{H} \big( x^\mu\big)}{\partial x^0} =
        \frac{\partial \mathscr{H} \big(\bm{x}, t\big)}{\partial t}

其中第二式 (的另一种理解) 相当于在 :math:`\frac{\D f(x+t)}{\D t}` (:math:`x` 为常数) 中令 :math:`x' = x + t`, 得

.. math::
    \frac{\D f(x+t)}{\D t} = \frac{\D f(x')}{\D (x' - x)} = \frac{\D f(x')}{\D x'}

然后再令 :math:`t = 0`, 得 :math:`x' = x` 即 :math:`\frac{\D f(x')}{\D x'} = \frac{\D f(x)}{\D x}` (注意一般 :math:`\frac{\D f(x)}{\D x}` 是 :math:`f` 对其自变量在 :math:`x` 处的导数的简写, 所以与 :math:`x` 是常数并不矛盾), 于是

.. math::
    \frac{\D f(x+t)}{\D t} \bigg\rvert_{t = 0} = \frac{\D f(x)}{\D x}

得

.. math::
    \frac{\partial \mathscr{H} (\bm{x}, t )}{\partial t} = \I \big[ H_0, \mathscr{H}(\bm{x}, t) \big]
    :label: h-h0-eom

而这正是 :math:`\mathscr{H}` 不显含时间时的相互作用绘景中的运动方程 (王正行 P29):

.. math::
    \frac{\D}{\D t} \hat{A}_I(t) = \frac{\partial \hat{A}_I}{\partial t} + \frac{1}{\I \hbar}
        \big[ \hat{A}_I, \hat{H}_0 \big]

也就是说, 要证明上式成立, 就等价于证明 :math:`\mathscr{H}` 不显含时间 (因为运动方程本身是一定成立的). 这个条件具体就是 :eq:`h-time-dep`. 下面尝试从 :eq:`h-time-dep` 推出上面的运动方程. 我们有 (注意 :math:`H_0, \exp(-\I H_0 t)` 显然对易)

.. math::
    \frac{\partial \mathscr{H} (\bm{x}, t)}{\partial t}
        =&\ \I H_0 \exp(\I H_0 t) \mathscr{H}(\bm{x}) \exp(-\I H_0 t)
            - \I \exp(\I H_0 t) \mathscr{H}(\bm{x}) \exp(-\I H_0 t) H_0 \\
        =&\ \I \big[H_0, \mathscr{H} (\bm{x}, t) \big]

因此运动方程成立.

从而我们就可以把 :math:`S` 写为四维积分的和

.. math::
    S = 1 + \sum_{n=1}^\infty \frac{(-\I)^n}{n!} \int
        \D^4 x_1 \cdots \D^4 x_n T \Big\{ \mathscr{H}(x_1) \cdots \mathscr{H}(x_n) \Big\}.
    :label: s-lorentz-inv

这个表达式中所有量现在都是显式洛伦兹不变的 (注意 :math:`\mathscr{H}` 已经被证明是洛伦兹标量场), 除了算符乘积的时序乘积部分.

现在, 两个时空点 :math:`x_1, x_2` 的时间顺序是洛伦兹不变的, 除非 :math:`x_1 - x_2` 是类空的, 或者说, 除非 :math:`(x_1 - x_2) > 0`. (注意对某一个矢量, 按照 [定理2-32], 在固有正时洛伦兹变换作用下, 当 :math:`(p)^2 \le 0` 时 :math:`p^0` 符号不变. 这就是说, 若 :math:`(x_1 - x_2)^2 \le 0`, 那么 :math:`x_1 - x_2` 的时间顺序不变. 所以这只对类时或类光矢量成立. ) 因此, :eq:`s-lorentz-inv` 中的时间顺序并不引入特别的洛伦兹参考系, 当 (虽然不是当且仅当) :math:`\mathscr{H}(x)` 在所有类空和类光间隔都对易: (注意这里 :math:`x` 和 :math:`x'` 的条件写为 :math:`(x- x') \ge 0` 而不是 :math:`(x - x') >0`, 因为我们在第6章将看到, 洛伦兹不变性会被 :math:`x = x'` 时的一些麻烦的奇性所干扰. )

.. math::
    [ \mathscr{H}(x), \mathscr{H}(x') ] = 0,\quad \text{当} \quad (x-x')^2 \ge 0
    :label: h-spacelike-comm

6 S矩阵洛伦兹不变性的非微扰证明
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

我们可以利用第3.3节的结果, 对于下列命题给出一个正式的非微扰的证明: 满足 :eq:`h-u0-trans` 和 :eq:`h-spacelike-comm` 的相互作用 :eq:`v-expr-H` 将给出具有正确洛伦兹变换性质的 :math:`S` 矩阵.

考虑一个无穷小推进, :eq:`h-u0-trans` 给出

.. math::
    -\I \big[ \bm{K}_0, \mathscr{H}(\bm{x}, t) \big] = t \nabla \mathscr{H}(\bm{x}, t) + \bm{x}
        \frac{\partial}{\partial t} \mathscr{H}(\bm{x}, t)

上式的证明如下. 对于无穷小推进, 根据 :eq:`boost-def` 我们有

.. math::
    \xtensor{K}{_0}{^k} =&\ \xtensor{J}{_0}{^{0k}} \\
    \omega_{0k} = -\omega_{k0} =&\ \phi_k, \quad \omega_{ij} = \omega_{00} = 0


洛伦兹变换 :math:`U_0` 可以写为

.. math::
    U_0 = 1 + \frac{1}{2} \I \omega_{\mu\nu} \xtensor{J}{_0}{^{\mu\nu}}
        = 1 + \I \phi_k \xtensor{K}{_0}{^k} = 1 + \I \bm{\phi} \cdot \bm{K}_0

由 :eq:`h-u0-trans` 得 (由于我们考虑纯推进, :math:`a = 0`)

.. math::
    U_0(\Lambda) \mathscr{H}(x) U_0^{-1}(\Lambda) =&\ \mathscr{H}(\Lambda x) \\
    U_0(\Lambda) \mathscr{H}(x) =&\ \mathscr{H}(\Lambda x) U_0(\Lambda) \\
    \big[ U_0(\Lambda), \mathscr{H}(x) \big] =&\ \big[ \mathscr{H}(\Lambda x) - \mathscr{H}(x) \big] U_0(\Lambda) \\
    \left[ 1 + \I \phi_k \xtensor{K}{_0}{^k}, \mathscr{H}(x) \right]
        =&\ \big[ \mathscr{H}\big(x^\mu + \xtensor{\omega}{^\mu}{_\nu} x^\nu\big) - \mathscr{H}(x) \big]
            \left( 1 + \I \phi_k \xtensor{K}{_0}{^k} \right)
    :label: hk-comm-inter

其中 :math:`1` 必定和 :math:`\mathscr{H}(x)` 对易, 所以

.. math::
    \left[ 1 + \I \phi_k \xtensor{K}{_0}{^k}, \mathscr{H}(x) \right] = \I \phi_k \left[ \xtensor{K}{_0}{^k}, \mathscr{H}(x) \right]

注意到

.. math::
    \mathscr{H}\big(x^\mu + \xtensor{\omega}{^\mu}{_\nu} x^\nu\big) =&\ 
        \mathscr{H}\big(x^k + \xtensor{\omega}{^k}{_\nu} x^\nu, x^0 + \xtensor{\omega}{^0}{_\nu} x^\nu \big)
    = \mathscr{H}\big(x^k + \xtensor{\omega}{^k}{_0} x^0, x^0 + \xtensor{\omega}{^0}{_k} x^k \big) \\
    =&\ \mathscr{H}\big(x^k + \omega_{k0} t, t -\omega_{0k} x^k \big)
    = \mathscr{H}\big(x^k - \phi_k t, t -\phi_k x^k \big) \\
    = \mathscr{H}\big(x^k - \phi^k t, t -\phi_k x^k \big)

由泰勒展开有 (由于是无穷小推进, 所以 :math:`\phi_k` 是小量)

.. math::
    &\ \mathscr{H}\big(x^k - \phi^k t, t -\phi_k x^k \big) \\
    =&\ \mathscr{H}(x^k, t) +
        \phi_j \left[ \frac{\partial \mathscr{H}\big(x^k - \phi^k t, t -\phi_k x^k \big)}{\partial \phi_j}
        \right]_{\phi_k = 0} \\
    =&\ \mathscr{H}(\bm{x}, t) + \phi_j \left[
        \frac{\partial \mathscr{H}\big(x^k - \phi^k t, t -\phi_k x^k \big)}{\partial \left( x^i - \phi^i t \right)}
        \frac{\partial \left( x^i - \phi^i t \right)}{\partial \phi_j}
        + \frac{\partial \mathscr{H}\big(x^k - \phi^k t, t -\phi_k x^k \big)}{\partial \left( t -\phi_i x^i \right)}
        \frac{\partial \left( t -\phi_i x^i \right)}{\partial \phi_j}
        \right]_{\phi_k = 0} \\
    =&\ \mathscr{H}(\bm{x}, t) + \phi_j \left[
        \frac{\partial \mathscr{H}\big(x^k, t\big)}{\partial x^i} (-t)\xtensor{\delta}{^j}{_i}
        + \frac{\partial \mathscr{H}\big(x^k, t\big)}{\partial t} \big(-x^i \big)\xtensor{\delta}{^j}{_i} \right] \\
    =&\ \mathscr{H}(\bm{x}, t) - \bm{\phi}\cdot \left[ t
        \frac{\partial \mathscr{H}(\bm{x}, t)}{\partial \bm{x}}
        + \bm{x} \frac{\partial \mathscr{H}(\bm{x}, t)}{\partial t} \right] \\

代入 :eq:`hk-comm-inter` 有

.. math::
    \I \bm{\phi} \cdot \left[ \bm{K}_0, \mathscr{H}(x) \right] = 
        - \bm{\phi}\cdot \left[ t
        \frac{\partial \mathscr{H}(\bm{x}, t)}{\partial \bm{x}}
        + \bm{x} \frac{\partial \mathscr{H}(\bm{x}, t)}{\partial t} \right] \left( 1 + \I \bm{\phi} \cdot \bm{K}_0 \right)

舍去 :math:`\bm{\phi}` 的二阶小量, 比较 :math:`\bm{\phi}` 的系数, 并注意到 :math:`\bm{\phi}` 的各分量可以任取, 因此各分量的系数必须分别相等, 得

.. math::
    -\I \left[ \bm{K}_0, \mathscr{H}(x) \right] = t
        \frac{\partial \mathscr{H}(\bm{x}, t)}{\partial \bm{x}}
        + \bm{x} \frac{\partial \mathscr{H}(\bm{x}, t)}{\partial t}

上式即要证明的式子.

将上式对 :math:`\bm{x}` 积分并令 :math:`t = 0`, 左边为 (注意到根据 :math:`V(t)` 的定义式 :eq:`v-time-dep`, :math:`V = V(0)`)

.. math::
    -\I \left[ \bm{K}_0, \int \D^3 x \mathscr{H}(\bm{x}, t) \right] =
        -\I \left[ \bm{K}_0, V(t) \right] = -\I \left[ \bm{K}_0, V \right]

右边为 (利用 :eq:`h-h0-eom` 并注意这里 :math:`\bm{x}` 是参数, 并不是算符. 一般地 :math:`H_0` 是 :math:`\bm{x}` 的函数, 因此和 :math:`\bm{x}` 是对易的)

.. math::
    \int \D^3 x \bm{x} \frac{\partial \mathscr{H}(\bm{x}, t)}{\partial t}
    = \I \int \D^3 x \bm{x} \big[ H_0, \mathscr{H}(\bm{x}, t) \big]
    = \I \big[ H_0, \int \D^3 x \bm{x} \mathscr{H}(\bm{x}, 0) \big] \equiv
    -\I \big[ H_0, \bm{W} \big]

其中

.. math::
    \bm{W} \equiv -\int \D^3 x \bm{x} \mathscr{H}(\bm{x}, 0)

则有

.. math::
    \left[ \bm{K}_0, V \right] = \big[ H_0, \bm{W} \big]

现在, 如果 (通常都会满足) :math:`\mathscr{H}(\bm{x}, 0)` 在 :math:`H_0` 本征态之间的矩阵元是能量本征值的光滑函数, 那么这个条件对 :math:`V` 也就也成立, 这对于散射理论的有效性是必要的. 类似地, 这个条件也就对 :math:`\bm{W}` 成立, 这对于证明洛伦兹不变性是必要的. 洛伦兹不变性的另一个条件, 是对易关系 :eq:`kvwh-cond`, 即 :math:`[\bm{K}_0, V] = -[\bm{W}, H]`, 当且仅当如下条件成立时成立 (参见本章第3节第2小节, :eq:`kvwh-cond` 和 :math:`\bm{W}` 的矩阵元的光滑条件一起构成了 :math:`S` 矩阵洛伦兹不变性的充分条件. 对于下式, 利用 :eq:`v-expr-H` 并在其中令 :math:`t = 0`)

.. math::
    0 = [\bm{W}, V] = -\left[ \int \D^3 x \bm{x} \mathscr{H}(\bm{x}, 0), \int \D^3 y \mathscr{H}(\bm{y}, 0) \right]
    = -\int \D^3 x \int \D^3 y \bm{x} \left[ \mathscr{H}(\bm{x}, 0), \mathscr{H}(\bm{y}, 0) \right]

(这里 Weinberg 书 1998 年版似乎 :math:`[\bm{W}, V]` 改成 :math:`[V, \bm{W}]` 才对) 或者等价地

.. math::
    \int \D^3 x \int \D^3 y \bm{x} \left[ \mathscr{H}(\bm{x}, 0), \mathscr{H}(\bm{y}, 0) \right] = 0

从因果条件 :eq:`h-spacelike-comm` 可以得到上述条件 (因为对于这里的两个矢量 :math:`(\bm{x}, 0), (\bm{y}, 0)` 由于其为同时的, 一定为类空的或者为同一时空点. 因此按照 :eq:`h-spacelike-comm` 以它们为参数的 :math:`\mathscr{H}` 对易). 但是这个条件提供了 :math:`S` 矩阵洛伦兹不变性的一个较少限制的充分条件. 下面再做一些说明. 由 :eq:`kvwh-cond` 得 (由本章第3节第2小节知 :math:`H = H_0 + V`)

.. math::
    [\bm{K}_0, V] = -[\bm{W}, H] = [H, \bm{W}] = [H_0 + V, \bm{W}] = [H_0, \bm{W}] + [V, \bm{W}]

由于我们已经得到 :math:`[\bm{K}_0, V] = [H_0, \bm{W}]`, 因此只要 :math:`[V, \bm{W}] = 0` 就可以满足 :eq:`kvwh-cond`.

这种理论并不是洛伦兹不变理论中唯一的, 但是最一般的洛伦兹不变理论并不会很不同. 特别地, 总会有一个类似于 :eq:`h-spacelike-comm` 的对易条件需要被满足. 这个条件在非相对论系统中没有对应, 对非相对论系统时间顺序永远是伽利略不变的 (在牛顿力学中同时性是绝对的). 正是这个条件在洛伦兹不变性和量子力学的结合中造成了限制 (也就是说, 这个条件既有量子性, 又有相对论性. 它使得相对论和量子力学的结合不是单纯的叠加, 而是引入了新的附加条件).

7 扭曲波波恩近似
^^^^^^^^^^^^^^^^

本节中到目前为止我们描述的方法只在相互作用算符 :math:`V` 充分小的时候有用. 还有一种这种近似的修改版本, 称为 **扭曲波波恩近似** (distorted-wave Born approximation), 这个理论当相互作用包括两项的时候有用

.. math::
    V = V_{\mathrm{S}} + V_{\mathrm{W}}

其中 :math:`V_{\mathrm{W}}` 弱而 :math:`V_{\mathrm{S}}` 强. 我们可以定义 :math:`\psi_{\mathrm{S}\alpha}^{\pm}` 作为当 :math:`V_{\mathrm{S}}` 是全部的相互作用的时候的入态和出态 (也就是 :math:`V_{\mathrm{W}} = 0` 的情况, 参见本章第1节 :eq:`psi-phi-v`)

.. math::
    \psi_{\mathrm{S}\alpha}^{\pm} = \phi_\alpha + \big( E_\alpha - H_0 \pm \I \epsilon \big)^{-1} V_{\mathrm{S}}
        \psi_{\mathrm{S}\alpha}^{\pm}
    :label: psi-alpha-strong

注意

.. math::
    \langle \alpha | V | \beta \rangle = (\alpha, V \beta) = \alpha^\dagger V \beta = (V^\dagger\alpha)^\dagger \beta
        = (V^\dagger\alpha, \beta)

从而我们可以把第1节 :eq:`lip-sch-eq` 第二式改写为 [这里 Weinberg 书1998年版写成了 (3.1.16) 式, 应该是 (3.1.18) 式] (注意由于哈密顿量必须是厄米算符, 相互作用也必须是, 因此 :math:`V_{\mathrm{S}} = V_{\mathrm{S}}^\dagger`)

.. math::
    T_{\beta\alpha}^+ =&\ \big( \phi_\beta, V\psi_\alpha^+ \big) \\
    =&\ \left( \left[ \psi_{\mathrm{S}\beta}^- - \big( E_\beta - H_0 -\I \epsilon \big)^{-1} V_{\mathrm{S}} \psi_{\mathrm{S}\beta}^- \right], \big( V_{\mathrm{S}} + V_{\mathrm{W}} \big) \psi_\alpha^+ \right) \\
    =&\ \left( \psi_{\mathrm{S}\beta}^- , \big( V_{\mathrm{S}} + V_{\mathrm{W}} \big) \psi_\alpha^+ \right)
     -\left( \big( E_\beta - H_0 -\I \epsilon \big)^{-1} V_{\mathrm{S}} \psi_{\mathrm{S}\beta}^-
        , \big( V_{\mathrm{S}} + V_{\mathrm{W}} \big) \psi_\alpha^+ \right) \\
    =&\ \left( \psi_{\mathrm{S}\beta}^- , V_{\mathrm{W}} \psi_\alpha^+ \right)
        + \left( \psi_{\mathrm{S}\beta}^- , V_{\mathrm{S}} \psi_\alpha^+ \right)
     -\left(  \psi_{\mathrm{S}\beta}^-
        , V_{\mathrm{S}}^\dagger \big( E_\beta - H_0 -\I \epsilon \big)^{-1*} \big( V_{\mathrm{S}} + V_{\mathrm{W}} \big) \psi_\alpha^+ \right) \\
    =&\ \left( \psi_{\mathrm{S}\beta}^- , V_{\mathrm{W}} \psi_\alpha^+ \right)
     + \left(  \psi_{\mathrm{S}\beta}^-
        , \left[ V_{\mathrm{S}} - V_{\mathrm{S}} \big( E_\beta - H_0 +\I \epsilon \big)^{-1} \big( V_{\mathrm{S}} + V_{\mathrm{W}} \big) \right] \psi_\alpha^+ \right)
    :label: T-beta-alpha-sw

对于弱相互作用 :math:`V_{\mathrm{W}}` 存在的情况, :eq:`psi-alpha-strong` 应该写为

.. math::
    \psi_{\alpha}^{\pm} = \phi_\alpha + \big( E_\alpha - H_0 \pm \I \epsilon \big)^{-1} \big( V_{\mathrm{S}} + V_{\mathrm{W}} \big) \psi_{\alpha}^{\pm}

或者

.. math::
    \phi_\alpha = \left[ 1 - \big( E_\alpha - H_0 + \I \epsilon \big)^{-1} \big( V_{\mathrm{S}} + V_{\mathrm{W}} \big)
        \right] \psi_{\alpha}^+

这里在讨论 :math:`T_{\beta\alpha}` 的等式时, 可以默认 :math:`E_\alpha = E_\beta`. 因为最终根据 :eq:`s-matrix-e-delta`, :math:`T` 矩阵总是带有 :math:`\delta(E_\alpha - E_\beta)` 因子. 具体可以参看下面附加的基于 :math:`S` 矩阵的推导. 但是最后一步消去 :math:`\delta(E_\alpha - E_\beta)` 实际上也是等于默认 :math:`E_\alpha = E_\beta`. 于是可以写

.. math::
    \phi_\alpha = \left[ 1 - \big( E_\beta - H_0 + \I \epsilon \big)^{-1} \big( V_{\mathrm{S}} + V_{\mathrm{W}} \big)
        \right] \psi_{\alpha}^+

代入 :eq:`T-beta-alpha-sw` 得

.. math::
    T_{\beta\alpha}^+ = \left( \psi_{\mathrm{S}\beta}^- , V_{\mathrm{W}} \psi_\alpha^+ \right)
     + \left(  \psi_{\mathrm{S}\beta}^- , V_{\mathrm{S}} \phi_\alpha \right)
    :label: t-beta-alpha-two-term

现在假设弱相互作用 :math:`V_{\mathrm{W}}` 不存在 (等于零), 那么 :math:`V = V_{\mathrm{S}}`. 记此时的 :math:`T_{\beta\alpha}^+` 为 :math:`T_{\mathrm{S}\beta\alpha}^+`. 根据李普曼施温格方程 :eq:`lip-sch-eq` 的第二式我们有

.. math::
    T_{\mathrm{S}\beta\alpha}^+ \equiv (\phi_\beta, V_{\mathrm{S}} \psi_{\mathrm{S}\alpha}^+)

另外如果在 :eq:`t-beta-alpha-two-term` 的推导中令 :math:`V_{\mathrm{W}} = 0` 我们有

.. math::
    T_{\mathrm{S}\beta\alpha}^+ = \left( \psi_{\mathrm{S}\beta}^- , V_{\mathrm{S}} \phi_\alpha \right)

于是

.. math::
    T_{\mathrm{S}\beta\alpha}^+ \equiv (\phi_\beta, V_{\mathrm{S}} \psi_{\mathrm{S}\alpha}^+)
        = \left( \psi_{\mathrm{S}\beta}^- , V_{\mathrm{S}} \phi_\alpha \right)
    :label: t-s-beta-alpha-equiv

------


这里参考 Scattering Theory of Waves and Particles 第7.2.5节

态矢和散射振幅的计算并不一定要以动能作为零级哈密顿量开始. 假设哈密顿量可以写为

.. math::
    H = H_0 + H_1' + H_2'

那么我们就可以计算如下哈密顿量的态矢和格林函数

.. math::
    H_1 = H_0 + H_1'

与这个哈密顿量对应的量将具有下标1, 例如

.. math::
    \mathscr{G}^\pm(E) =&\ \big( E - H \pm \I \epsilon\big)^{-1} \\
    G^\pm(E) =&\ \big( E - H_0 \pm \I \epsilon\big)^{-1} \\
    \mathscr{G}_1^\pm(E) =&\ \big( E - H_1 \pm \I \epsilon\big)^{-1}

对应于完整哈密顿量 :math:`H` 的量的计算可以借助 :math:`H_1` 为起点. 有

.. math::
    \mathscr{G}^\pm(E) =&\ \mathscr{G}_1^\pm(E) + \mathscr{G}_1^\pm(E) H_2'\mathscr{G}^\pm(E)\\
    =&\ \mathscr{G}_1^\pm(E) + \mathscr{G}^\pm(E) H_2'\mathscr{G}_1^\pm(E)

以及

.. math::
    \psi^\pm (E,\alpha) =&\ \psi_1^\pm (E,\alpha) + \mathscr{G}_1^\pm(E)
        H_2' \psi^\pm (E,\alpha) \\
    =&\ \psi_1^\pm (E,\alpha) + \mathscr{G}^\pm(E)
        H_2' \psi_1^\pm (E,\alpha)

和之前的记号比较, 有

.. math::
    H_0 = H_0,\quad H_1 = H_0 + V_S, \quad H_1' = V_S, \quad H_2' = V_W,\quad H' = V

根据 (7.16), (7.17), :math:`\psi_0` (这个在 Weinberg 书记为 :math:`\phi`) 和 :math:`\psi` 分别是对应于 :math:`H_0` 和 :math:`H` 的态

.. math::
    H_0 \psi_0(E) =&\ E \psi_0(E) \\
    H_\psi(E) =&\ E \psi(E)

根据 (7.15) 有

.. math::
    \psi^\pm (E,\alpha) =&\ \psi_0(E,\alpha) + G^\pm (E) H' \psi^\pm (E,\alpha) \\
    =&\ \psi_0(E,\alpha) + \mathscr{G}^+ (E) H' \psi_0 (E,\alpha)

其中第一式和 Weinberg 里面是一致的 (之前的小节), 但是第二式没有出现.

现在对于 (7.76) 的推导我们使用 Weinberg 书的记号, 有

.. math::
    S_{\beta\alpha} =&\ \big(\psi^-_\beta, \psi^+_\alpha\big)
        = \big( \psi^-_{1\beta} + \mathscr{G}^- (E_\beta) H_2' \psi^-_{1\beta}, \psi^+_\alpha\big) \\
    =&\ \big( \psi^-_{1\beta}, \psi^+_\alpha\big)
        + \big( \psi^-_{1\beta}, H_2' \mathscr{G}^+ (E_\beta) \psi^+_\alpha\big) \\
    =&\ \big( \psi^-_{1\beta}, \psi_{1\alpha}^+ + \mathscr{G}_1^+(E_\alpha) H_2' \psi_{\alpha}^+ \big)
        + \big( \psi^-_{1\beta}, H_2' \mathscr{G}^+ (E_\beta) \psi^+_\alpha\big) \\
    =&\ \big( \psi^-_{1\beta}, \psi_{1\alpha}^+ \big) + \big( \psi^-_{1\beta},
        \mathscr{G}_1^+(E_\alpha) H_2' \psi_{\alpha}^+ \big)
        + \big( \psi^-_{1\beta}, H_2' \mathscr{G}^+ (E_\beta) \psi^+_\alpha\big)

注意按之前的定义

.. math::
    \mathscr{G}_1^-(E_\alpha) \psi^-_{1\beta} =&\ \big( E_\alpha - H_1 - \I \epsilon\big)^{-1} \psi^-_{1\beta}
        = \big( E_\alpha - E_\beta - \I \epsilon \big)^{-1} \psi^-_{1\beta} \\
    \mathscr{G}^+ (E_\beta) \psi^+_\alpha =&\ \big( E_\beta - H + \I \epsilon\big)^{-1} \psi^+_\alpha
        = \big( E_\beta - E_\alpha + \I \epsilon\big)^{-1} \psi^+_\alpha

利用之前的等式 :eq:`diff-e-eps-delta`

.. math::
    \big( E_\alpha - E_\gamma \mp \I \epsilon\big)^{-1} - \big( E_\alpha - E_\gamma \pm \I \epsilon\big)^{-1}
    = \pm 2\I \pi \delta(E_\alpha - E_\gamma)

得

.. math::
    S_{\beta\alpha} =&\ \big( \psi^-_{1\beta}, \psi_{1\alpha}^+ \big)
        + \big( \psi^-_{1\beta},
        \big( E_\alpha - E_\beta + \I \epsilon \big)^{-1} H_2' \psi_{\alpha}^+ \big)
        + \big( \psi^-_{1\beta}, H_2' \big( E_\beta - E_\alpha + \I \epsilon\big)^{-1} \psi^+_\alpha\big) \\
    =&\ \big( \psi^-_{1\beta}, \psi_{1\alpha}^+ \big)
        + \left[ \big( E_\alpha - E_\beta + \I \epsilon \big)^{-1} - \big( E_\alpha - E_\beta - \I \epsilon\big)^{-1} \right] \big( \psi^-_{1\beta}, H_2' \psi^+_\alpha\big) \\
    =&\ \big( \psi^-_{1\beta}, \psi_{1\alpha}^+ \big) -2\I \pi \delta(E_\alpha - E_\beta)
        \big( \psi^-_{1\beta}, H_2' \psi^+_\alpha\big)

由 Weinberg 第三章第二节3, :eq:`s-matrix-e-delta` 和 :math:`S` 矩阵定义 :eq:`s-matrix` 有

.. math::
    S_{\beta\alpha} = (\psi_\beta^-, \psi_\alpha^+) = \delta(\alpha - \beta) - 2\I \pi \delta(E_\alpha - E_\beta) T_{\beta\alpha}^+

代入上式得

.. math::
    \delta(\alpha - \beta) - 2\I \pi \delta(E_\alpha - E_\beta) T_{\beta\alpha}^+
    =&\ \delta(\alpha - \beta) - 2\I \pi \delta(E_\alpha - E_\beta) T_{1\beta\alpha}^+
    -2\I \pi \delta(E_\alpha - E_\beta) \big( \psi^-_{1\beta}, H_2' \psi^+_\alpha\big) \\
    T_{\beta\alpha}^+ =&\ T_{1\beta\alpha}^+ + \big( \psi^-_{1\beta}, H_2' \psi^+_\alpha\big)

注意, 这里消去 :math:`\delta(E_\alpha - E_\beta)` 因子的条件是, 默认 :math:`T_{\beta\alpha}^+` 只在 :math:`E_\alpha = E_\beta` 时才有意义. 这和 Weinberg 书关键处将 :math:`E_\beta` 改为 :math:`E_\alpha` 才对的思想是一致的.

------

:eq:`t-beta-alpha-two-term` 当第二项为零时比较有用, 也就是说, (当第二项为零时) 所考虑的过程 :math:`\alpha \to \beta` 无法仅通过强相互作用产生. (例如, 在核 beta 衰变中, 我们需要弱的核力将中子变为质子, 尽管我们也不能忽略作用在初核态和终核态的强核力的存在.) 对于这样的过程, 矩阵元 :eq:`t-s-beta-alpha-equiv` 为零, 那么 :eq:`t-beta-alpha-two-term` 成为

.. math::
    T_{\beta\alpha}^+ = \left( \psi_{\mathrm{S}\beta}^- , V_{\mathrm{W}} \psi_\alpha^+ \right)

到目前为止, 推导都是完全精确的. 但是 :math:`T` 矩阵的这种改写只有当 :math:`V_{\mathrm{W}}` 非常弱时才有价值, 在这种情况下, 我们忽略它在上式中对 :math:`\psi_\alpha^+` 的影响. 也就是说, 当 :math:`V_{\mathrm{W}}` 非常弱时, 态 :math:`\psi_\alpha^+` 和态 :math:`\psi_{\mathrm{S}\alpha}^+` (因为 :math:`\psi_{\mathrm{S}\alpha}^+` 定义为是 :math:`V_{\mathrm{W}} = 0` 时对应于 :math:`\psi_\alpha^+` 的态) 也就没有太大区别. 因此上式成为

.. math::
    T_{\beta\alpha}^+ \approx \left( \psi_{\mathrm{S}\beta}^- , V_{\mathrm{W}} \psi_{\mathrm{S}\alpha}^+ \right)

上式在 :math:`V_{\mathrm{W}}` 的一阶近似下成立, 但是对 :math:`V_{\mathrm{S}}` 的所有阶近似成立. 这个近似在物理中是普遍存在的. 例如, 核 beta 或 gamma 衰变的 :math:`S` 矩阵元是使用上式计算的, 其中 :math:`V_{\mathrm{S}}` 是强核相互作用, 而 :math:`V_{\mathrm{W}}` 分别是弱核相互作用或者电磁相互作用, 而 :math:`\psi_{\mathrm{S}\beta}^-` 和 :math:`\psi_{\mathrm{S}\alpha}^+` 分别是终核态和初核态.

第六节 幺正性的应用
-------------------

1 光学定理
^^^^^^^^^^

:math:`S` 矩阵的幺正性导致了一个有趣而有用的条件. 这个条件将任意多粒子态 :math:`\alpha` 前向散射的振幅 :math:`M_{\alpha\alpha}` 和这个态所有反应的总速率联系起来. 注意到对于一般的情况, 其中态 :math:`\beta` 可能和态 :math:`\alpha` 一样, 也可以不一样, :math:`S` 矩阵可以写成本章第三节中 :eq:`s-matrix-delta` 的形式

.. math::
    S_{\beta\alpha} = \delta(\beta - \alpha) - 2\pi \I \delta^4(p_\beta -p_\alpha) M_{\beta\alpha}

那么幺正条件给出 (幺正性的证明在本章第二节第5小节)

.. math::
    \delta(\gamma - \alpha) =&\  \int \D \beta S_{\beta\gamma}^* S_{\beta\alpha} \\
    =&\ \int \D \beta \left[
        \delta(\beta - \gamma) + 2\pi \I \delta^4(p_\beta -p_\gamma) M^*_{\beta\gamma}
        \right]
        \left[
        \delta(\beta - \alpha) - 2\pi \I \delta^4(p_\beta -p_\alpha) M_{\beta\alpha}
        \right] \\
    =&\ \int \D \beta \delta(\beta - \gamma) \delta(\beta - \alpha)
    + \int \D \beta \delta(\beta - \alpha) 2\pi \I \delta^4(p_\beta -p_\gamma) M^*_{\beta\gamma}
    - \int \D \beta \delta(\beta - \gamma) 2\pi \I \delta^4(p_\beta -p_\alpha) M_{\beta\alpha} \\
    &\ + 4\pi^2 \int \D \beta\delta^4(p_\beta -p_\gamma) M^*_{\beta\gamma} \delta^4(p_\beta -p_\alpha) M_{\beta\alpha} \\
    =&\ \delta(\gamma - \alpha) + 2\pi \I \delta^4(p_\alpha -p_\gamma) M^*_{\alpha\gamma}
    - 2\pi \I \delta^4(p_\gamma -p_\alpha) M_{\gamma\alpha} + 4\pi^2 \int \D \beta\delta^4(p_\beta -p_\gamma)  \delta^4(p_\beta -p_\alpha) M^*_{\beta\gamma} M_{\beta\alpha} \\
    =&\ \delta(\gamma - \alpha) + 2\pi \I \delta^4(p_\alpha -p_\gamma) M^*_{\alpha\gamma}
    - 2\pi \I \delta^4(p_\gamma -p_\alpha) M_{\gamma\alpha} + 4\pi^2 \int \D \beta\delta^4(p_\alpha -p_\gamma)  \delta^4(p_\beta -p_\alpha) M^*_{\beta\gamma} M_{\beta\alpha}

(注意最后一式在有因子 :math:`\delta^4(p_\beta -p_\alpha)` 的情况下, 可以令另一个 delta 因子中 :math:`p_\beta =p_\alpha`. ) 消去 :math:`\delta(\gamma-\alpha)` 项和 :math:`2\pi \delta^4(p_\gamma -p_\alpha)` 因子 (注意到 :math:`p_\gamma \neq p_\alpha` 时该因子等于零, 不能消去. 因此消去只对 :math:`p_\gamma = p_\alpha` 的情况成立), 对于 :math:`p_\gamma = p_\alpha` 的情况我们有

.. math::
    0 = - \I M_{\gamma\alpha} + \I M^*_{\alpha\gamma} + 2\pi \int \D \beta \delta^4(p_\beta -p_\alpha) M^*_{\beta\gamma} M_{\beta\alpha}

最有用的特殊情形是 :math:`\alpha = \gamma`, 此时有

.. math::
    M^*_{\beta\alpha} M_{\beta\alpha} =&\ |M_{\beta\alpha}|^2 \\
    M_{\alpha\alpha} - M^*_{\alpha\alpha} =&\ \Re M_{\alpha\alpha} + \I \Im M_{\alpha\alpha}
        - \big( \Re M_{\alpha\alpha} - \I \Im M_{\alpha\alpha} \big)
        = 2 \I \Im M_{\alpha\alpha} \\
    - \I M_{\gamma\alpha} + \I M^*_{\alpha\gamma} =&\ -\I \big( M_{\alpha\alpha} - M^*_{\alpha\alpha} \big)
    = -\I \cdot 2 \I \Im M_{\alpha\alpha} = 2 \Im M_{\alpha\alpha}

于是

.. math::
    \Im M_{\alpha\alpha} = -\pi \int \D \beta \delta^4(p_\beta -p_\alpha) |M_{\beta\alpha}|^2
    :label: im-m-alpha-alpha

根据 :eq:`diff-trans-rate` 式 即

.. math::
    \D \Gamma(\alpha \to \beta) = (2\pi)^{3N_\alpha -2} V^{1-N_\alpha}
        \delta^4 (p_\beta - p_\alpha) |M_{\beta\alpha}|^2 \D \beta

我们可以得到在体积 :math:`V` 中从初态 :math:`\alpha` 产生的所有反应的总速率的公式

.. math::
    \Gamma_\alpha \equiv \int \D \beta \frac{\D \Gamma(\alpha \to \beta)}{\D \beta}
    =&\ (2\pi)^{3N_\alpha -2} V^{1-N_\alpha} \int \D \beta \delta^4 (p_\beta - p_\alpha) |M_{\beta\alpha}|^2 \\
    =&\ -\frac{1}{\pi} (2\pi)^{3N_\alpha -2} V^{1-N_\alpha} \Im M_{\alpha\alpha}.
    :label: Gamma-unitary-cond-scattering

特别地, 当 :math:`\alpha` 是两粒子态 (:math:`N_\alpha = 2`) 时, 按微分截面 :eq:`diff-cross-section` 可以定义 **总截面** (total cross-section) 为

.. math::
    \sigma_\alpha \equiv \int \D \beta \frac{\D \sigma(\alpha \to \beta)}{\D \beta}
        = (2\pi)^4 u_\alpha^{-1} \int \D \beta |M_{\beta\alpha}|^2 \delta^4 (p_\beta - p_\alpha)

其中 :math:`u_{\alpha}` 是态 :math:`\alpha` 中 (两个粒子之间的) 相对速度. 于是 :eq:`im-m-alpha-alpha` 给出

.. math::
    \Im M_{\alpha\alpha} = -\pi \int \D \beta \delta^4(p_\beta -p_\alpha) |M_{\beta\alpha}|^2
    = -\frac{\pi}{(2\pi)^4} \sigma_\alpha u_\alpha
    = -\frac{u_\alpha\sigma_\alpha}{16 \pi^3}
    :label: im-m-alpha-alpha-u-sigma

这通常会以 **散射振幅** (scattering amplitude) :math:`f(\alpha \to \beta)` 表示为稍微不同的形式. :eq:`dsigma-two-body-scattering` 给出在质心系中, **两体** (two-body) (也就是说, 初态粒子数和终态粒子数都是2) 散射的微分截面为

.. math::
    \frac{\D \sigma(\alpha \to \beta)}{\D \Omega} =
        \frac{(2\pi)^4 k'E'_1E'_2E_1E_2}{E^2 k} |M_{\beta\alpha}|^2

其中 :math:`k'` 和 :math:`k` 分别是终态和初态的动量大小. 我们因此定义散射振幅为

.. math::
    f(\alpha \to \beta) \equiv - \frac{4\pi^2}{E} \sqrt{ \frac{k'E'_1E'_2E_1E_2}{k} } M_{\beta\alpha}

从而微分截面成为

.. math::
    \frac{\D \sigma(\alpha \to \beta)}{\D \Omega} = \big| f(\alpha \to \beta) \big|^2

特别地, 对于 **弹性** (elastic) 两体散射 (也就是 :math:`k' = k, E_1' = E_1, E_2' = E_2`) 我们有

.. math::
    f(\alpha \to \beta) \equiv - \frac{4\pi^2E_1E_2}{E} M_{\beta\alpha}

另外 :eq:`ualpha-two-body-scattering` 给出对于所考虑的两体散射

.. math::
    u_\alpha = \frac{k(E_1 + E_2)}{E_1E_2} = \frac{|\bm{p}|(E_1 + E_2)}{E_1E_2} = \frac{kE}{E_1E_2}

代入 :eq:`im-m-alpha-alpha-u-sigma` 得

.. math::
    \Im f(\alpha \to \alpha) = - \frac{4\pi^2E_1E_2}{E} \Im M_{\alpha\alpha}
        = \frac{4\pi^2E_1E_2}{E} \frac{u_\alpha\sigma_\alpha}{16 \pi^3}
        = \frac{4\pi^2E_1E_2}{E} \frac{kE}{E_1E_2} \frac{\sigma_\alpha}{16 \pi^3}
        = \frac{k\sigma_\alpha}{4\pi}

即

.. math::
    \Im f(\alpha \to \alpha) = \frac{k\sigma_\alpha}{4\pi}
    :label: optical-theorem

这个形式的幺正性条件 :eq:`Gamma-unitary-cond-scattering` 被称为 **光学定理** (optical theorem).

2 衍射峰
^^^^^^^^

光学定理有一个很好的推论, 它给出高能散射的模式的很多信息. 散射振幅 :math:`f` 可以认为是角度的光滑函数, 那么必存在某立体角 :math:`\Delta\Omega`, 在这个立体角范围内, :math:`|f|^2` 近似取和前向散射的 :math:`|f|^2` 相同的值 (比如, 相差不到2倍). 那么我们就可以对总截面的取值范围作出限定

.. math::
    \sigma_\alpha \ge \int |f|^2 \D \Omega \ge \frac{1}{2} \big| f(\alpha \to \alpha) \big|^2 \Delta \Omega
        \ge \frac{1}{2} \big|\Im f(\alpha \to \alpha) \big|^2 \Delta \Omega

其中注意 :math:`\sigma_\alpha` 是包括所有终态 :math:`\beta` 的总截面. 而 :math:`f = f(\alpha \to \alpha)` 是只有终态为 :math:`\alpha` 的情况. 因此第一个不等号是省略了其他 :math:`\beta \neq \alpha` 态的情况. 第二个不等号是对于积分只考虑前向散射附近的情况. 第三个不等号是因为一个复数的模等于实部的平方加上虚部的平方, 那么略去实部的平方 (必定大于等于零) 就产生不等号.

再利用光学定理 :eq:`optical-theorem` 得

.. math::
    \Delta \Omega \le \frac{2\sigma_\alpha}{\big|\Im f(\alpha \to \alpha) \big|^2}
        = \frac{2\sigma_\alpha\cdot 16\pi^2 }{k^2 \sigma_\alpha^2} = 32\pi^2 \big/ k^2 \sigma_\alpha
    :label: delta-omega-k-sigma-alpha

我们在下一节将看到, 在高能的情况, 总截面通常会趋于常数或者缓慢变化, 因此 :eq:`delta-omega-k-sigma-alpha` 指出, 对应于微分截面近似为常数的前向周围的立体角范围, 当 :math:`k \to \infty` 时至少以 :math:`1/k^2` 的速度收缩. 这个在高能前向散射中逐渐变窄的峰被称为 **衍射峰** (diffraction peak).

3 CPT 不变性的应用
^^^^^^^^^^^^^^^^^^

现在我们回到包含任意数量粒子的反应的一般情形. 我们可以利用 :eq:`im-m-alpha-alpha` 和 :math:`\mathsf{CPT}` 不变性来对粒子和反粒子的总相互作用速率的关系作一些讨论. 因为 :math:`\mathsf{CPT}` 是反幺正的, 它的守恒一般并不导致过程 :math:`\alpha \to \beta` 和将其中粒子变为反粒子的过程之间的任何简单关系. 事实上, 它导致一个过程和其反粒子的 **逆** (inverse) 过程之间的关系: 我们可以利用和从时间反演不变性推导 :eq:`t-s-matrix` 相同的方法来证明, :math:`\mathsf{CPT}` 不变性要求 :math:`S` 矩阵满足如下条件

.. math::
    S_{\beta,\alpha} = S_{\mathscr{CPT} \alpha, \mathscr{CPT} \beta}

其中 :math:`\mathscr{CPT}` 表示我们必须反转所有自旋 :math:`z` 分量, 将所有粒子变成对应的反粒子, 并对初态的粒子将矩阵元乘以不同的相位因子, 对终态的粒子乘以对应因子的复数共轭. 由于 :math:`\mathsf{CPT}` 不变性也要求粒子具有和它们反粒子一样的质量, 在 :math:`S_{\beta\alpha}` 表达式 :eq:`s-matrix-delta` 中, 同样的关系也适用于 :math:`\delta^4(p_\alpha - p_\beta)` 的系数 (这段有些不很理解):

.. math::
    M_{\beta,\alpha} = M_{\mathscr{CPT} \alpha, \mathscr{CPT} \beta}

特别地, 当初态和终态相同时, 所有相位因子都会抵消 (因为初态和终态的相位因子互为复数共轭, 而相位因子模为1, 因此所有相位因子的乘积为1), 上式成为

.. math::
    M_{p_1\sigma_1n_1;p_2\sigma_2n_2;\cdots,p_1\sigma_1n_1;p_2\sigma_2n_2;\cdots}
        = M_{p_1-\sigma_1n_1^c;p_2-\sigma_2n_2^c;\cdots,p_1-\sigma_1n_1^c;p_2-\sigma_2n_2^c;\cdots}
    
其中 :math:`n` 的 :math:`c` 上标表示 :math:`n` 对应的反粒子. 推广的光学定理 :eq:`im-m-alpha-alpha` 告诉我们 **以某粒子集合作为初态的总反应速率和以自旋反转的对应反粒子作为初态的总反应速率相同**:

.. math::
    \Gamma_{p_1\sigma_1n_1;p_2\sigma_2n_2;\cdots} = \Gamma_{p_1-\sigma_1n_1^c;p_2-\sigma_2n_2^c;\cdots}
    :label: gamma-cpt-equal

特别地, 应用到单粒子态, 我们发现任何粒子的衰变率等于自旋反转的反粒子的衰变率. 旋转不变性不允许粒子衰变率依赖于衰变粒子的自旋 :math:`z` 分量, 因此一般结果 :eq:`gamma-cpt-equal` 的一个特殊情况是, 不稳定粒子和它们对应的反粒子具有精确相同的寿命.

4 玻尔兹曼 H 定理
^^^^^^^^^^^^^^^^^

根据从幺正条件 :math:`S^\dagger S = 1` 推导 :eq:`im-m-alpha-alpha` 相同的讨论, 我们可以从另一个幺正条件 :math:`SS^\dagger = 1` 推出

.. math::
    \Im M_{\alpha\alpha} = -\pi \int \D \beta \delta^4(p_\beta -p_\alpha) |M_{\alpha\beta}|^2

(注意其中 :math:`|M_{\beta\alpha}|^2` 变为了 :math:`|M_{\alpha\beta}|^2`. 因为原来是 :math:`(S^\dagger S)_{\gamma\alpha} = S_{\gamma\beta}^\dagger S_{\beta\alpha} = S_{\beta\gamma}^*S_{\beta\alpha}`. 再令 :math:`\gamma = \alpha` 得 :math:`M_{\beta\alpha}^*M_{\beta\alpha}`. 现在是 :math:`(S S^\dagger)_{\gamma\alpha} = S_{\gamma\beta}S_{\beta\alpha}^\dagger = S_{\gamma\beta}S_{\alpha\beta}^*`. 再令 :math:`\gamma = \alpha` 得 :math:`M_{\alpha\beta}^*M_{\alpha\beta}`.)

将上式和 :eq:`im-m-alpha-alpha` 比较, 我们得到互反关系 (reciprocity relation)

.. math::
    \int \D \beta \delta^4(p_\beta - p_\alpha) |M_{\beta\alpha}|^2
        = \int \D \beta \delta^4(p_\beta - p_\alpha) |M_{\alpha\beta}|^2

根据 :eq:`diff-trans-rate` 我们有

.. math::
    \int \D \beta \frac{\D \Gamma(\alpha \to \beta)}{\D \beta(2\pi)^{-2} V \big[ (2\pi)^3 / V \big]^{N_\alpha}}
        = \int \D \beta \frac{\D \Gamma(\beta \to \alpha)}
        {\D \alpha(2\pi)^{-2} V \big[ (2\pi)^3 / V \big]^{N_\beta}}

定义

.. math::
    c_\alpha \equiv \big[ V / (2\pi)^3 \big]^{N_\alpha}

就有

.. math::
    \int \D \beta c_\alpha \frac{\D \Gamma(\alpha \to \beta)}{\D \beta} =
        \int \D \beta c_\beta \frac{\D \Gamma(\beta \to \alpha)}{\D \alpha}
    :label: int-beta-c-alpha-beta-gamma

我们可以利用这个结果推导动力学 (kinetic theory) 中的一些最重要的结果. 如果 :math:`P_\alpha \D \alpha` 是在多粒子态 :math:`\phi_\alpha` 空间中的体积 :math:`\D \alpha` 中发现系统的概率, 那么由于跃迁到其他态所造成 :math:`P_\alpha` 的减少就是

.. math::
    P_\alpha \int \D \beta \D \Gamma(\alpha \to \beta) / \D \beta

而由于从其他态的跃迁造成 :math:`P_\alpha` 的增加是

.. math::
    \int \D \beta P_\beta \D \Gamma(\beta \to \alpha) / \D \alpha

:math:`P_\alpha` 的变化率就是

.. math::
    \frac{\D P_\alpha}{\D t} = \int \D \beta P_\beta \frac{\D \Gamma(\beta \to \alpha)}{\D \alpha} - P_\alpha \int \D \beta \frac{\D \Gamma(\alpha \to \beta)}{\D \beta}
    :label: inc-enentropy-two-terms

若将上式对 :math:`\alpha` 积分立即就可以得到 :math:`\int P_\alpha \D \alpha` 是与时间无关的. 也就是说

.. math::
    \frac{\D}{\D t} \int P_\alpha \D \alpha =&\ \int \D \alpha \int \D \beta P_\beta \D \Gamma(\beta \to \alpha) / \D \alpha - \int \D \alpha P_\alpha \int \D \beta \D \Gamma(\alpha \to \beta) / \D \beta \\
    =&\ \int \D \alpha \int \D \beta \left[
        P_\beta \D \Gamma(\beta \to \alpha) / \D \alpha
        -P_\alpha \D \Gamma(\alpha \to \beta) / \D \beta
        \right] \\
    =&\ \int \D \alpha \int \D \beta \left[
        P_\alpha \D \Gamma(\alpha \to \beta) / \D \beta
        -P_\alpha \D \Gamma(\alpha \to \beta) / \D \beta
        \right] = 0

即 :math:`\int P_\alpha \D \alpha` 随时间的变化率为零. 其中在上式最后一步, 我们对第二项重新标记了积分变量 :math:`\alpha` 和 :math:`\beta`. 另一方面, 熵 :math:`-\int \D \alpha P_\alpha \ln (P_\alpha/c_\alpha)` 的变化率为

.. math::
    -\frac{\D}{\D t} \int \D \alpha P_\alpha \ln (P_\alpha/c_\alpha)
    =&\ -\int \D \alpha \frac{\D P_\alpha}{\D t}  \ln (P_\alpha/c_\alpha)
    -\int \D \alpha P_\alpha \frac{c_\alpha}{P_\alpha} \frac{1}{c_\alpha} \frac{\D P_\alpha}{\D t}
    = -\int \D \alpha\Big[ \ln (P_\alpha/c_\alpha) + 1\Big] \frac{\D P_\alpha}{\D t} \\
    =&\ -\int \D \alpha \int \D \beta \Big[ \ln (P_\alpha/c_\alpha) + 1\Big] \left[ 
        P_\beta \frac{\D \Gamma(\beta \to \alpha)}{\D \alpha} - P_\alpha \frac{\D \Gamma(\alpha \to \beta)}{\D \beta}
        \right]

交换第二项中积分变量的标号, 上式可以写为

.. math::
    -\frac{\D}{\D t} \int \D \alpha P_\alpha \ln (P_\alpha/c_\alpha)
    =&\ -\int \D \alpha \int \D \beta \Big[ \ln (P_\alpha/c_\alpha) + 1\Big]
        P_\beta \frac{\D \Gamma(\beta \to \alpha)}{\D \alpha}
        +\int \D \alpha \int \D \beta \Big[ \ln (P_\beta/c_\beta) + 1\Big] P_\beta \frac{\D \Gamma(\beta \to \alpha)}{\D \alpha} \\
    =&\ \int \D \alpha \int \D \beta \ln \frac{P_\beta/c_\beta}{P_\alpha/c_\alpha} 
        P_\beta \frac{\D \Gamma(\beta \to \alpha)}{\D \alpha}
    = \int \D \alpha \int \D \beta P_\beta \ln \frac{P_\beta c_\alpha}{P_\alpha c_\beta} 
         \frac{\D \Gamma(\beta \to \alpha)}{\D \alpha}

现在, 对于任意正数 :math:`x` 和 :math:`y`, 函数 :math:`y \ln (y / x)` 满足如下不等式

.. math::
    y \ln \left( \frac{y}{x} \right) \ge y - x

[证明] 由于 :math:`y` 是正数, 两边除以 :math:`y` 不等式仍成立, 因此

.. math::
    \ln \left( \frac{y}{x} \right) \ge \frac{y - x}{y} = 1 - \frac{x}{y}

令 :math:`t = y / x`, 只需证明

.. math::
    \ln t \ge 1 - 1/ t \quad \Rightarrow \quad t \ge \E^{1 - 1/t}

注意到 :math:`t > 0`. 若 :math:`t = 1`, 则取等号. 其余情况可以画图验证. 因此熵的变化率的取值范围为

.. math::
    -\frac{\D}{\D t} \int \D \alpha P_\alpha \ln (P_\alpha/c_\alpha) = &\
        \int \D \alpha \int \D \beta \frac{1}{c_\alpha} P_\beta c_\alpha \ln \frac{P_\beta c_\alpha}{P_\alpha c_\beta}  \frac{\D \Gamma(\beta \to \alpha)}{\D \alpha} \\
    \ge &\ \int \D \alpha \int \D \beta \frac{1}{c_\alpha} \left[ P_\beta c_\alpha - P_\alpha c_\beta \right] \frac{\D \Gamma(\beta \to \alpha)}{\D \alpha} \\
    = &\ \int \D \alpha \int \D \beta \left[ \frac{P_\beta}{c_\beta }- \frac{P_\alpha}{ c_\alpha} \right] c_\beta \frac{\D \Gamma(\beta \to \alpha)}{\D \alpha}

交换第二项的积分变量得

.. math::
    -\frac{\D}{\D t} \int \D \alpha P_\alpha \ln (P_\alpha/c_\alpha) \ge &\
    \int \D \alpha \int \D \beta \frac{P_\beta}{c_\beta} c_\beta \frac{\D \Gamma(\beta \to \alpha)}{\D \alpha}
    -\int \D \alpha \int \D \beta \frac{P_\beta}{ c_\beta} c_\alpha \frac{\D \Gamma(\alpha \to \beta)}{\D \beta} \\
    =&\ \int \D \alpha \int \D \beta \frac{P_\beta}{c_\beta} \left[ c_\beta \frac{\D \Gamma(\beta \to \alpha)}{\D \alpha} -c_\alpha \frac{\D \Gamma(\alpha \to \beta)}{\D \beta} \right] \\
    =&\ \int \D \beta \frac{P_\beta}{c_\beta} \left\{ \int \D \alpha \left[ c_\beta \frac{\D \Gamma(\beta \to \alpha)}{\D \alpha} -c_\alpha \frac{\D \Gamma(\alpha \to \beta)}{\D \beta} \right] \right\}

然而根据 :eq:`int-beta-c-alpha-beta-gamma` (交换 :math:`\alpha` 和 :math:`\beta`) 有

.. math::
    &\ \int \D \alpha c_\beta \frac{\D \Gamma(\beta \to \alpha)}{\D \alpha} =
        \int \D \alpha c_\alpha \frac{\D \Gamma(\alpha \to \beta)}{\D \beta} \\
    \Rightarrow&\ \int \D \alpha \left[ c_\beta \frac{\D \Gamma(\beta \to \alpha)}{\D \alpha}
        - c_\alpha \frac{\D \Gamma(\alpha \to \beta)}{\D \beta} \right] = 0

因此前面的式子中大括号内的项为零. 因此我们的结论是熵总是增加

.. math::
    -\frac{\D}{\D t} \int \D \alpha P_\alpha \ln (P_\alpha/c_\alpha) \ge 0

这就是 "玻尔兹曼 H 定理" (Boltzmann :math:`H` theorem). 这个定理在统计力学课本中通常通过波恩近似, 即 :math:`|M_{\beta\alpha}|^2` 是关于 :math:`\alpha` 和 :math:`\beta` 对称的, 因此

.. math::
    c_\beta \D \Gamma(\beta \to \alpha) / \D \alpha = c_\alpha \D \Gamma(\alpha \to \beta) / \D \beta

或者通过假设时间反演不变性, 即当交换 :math:`\alpha` 和 :math:`\beta` 并反转所有动量和自旋时 :math:`|M_{\beta\alpha}|^2` 应当不变. 当然, 波恩近似和时间反演不变性都不是精确的. 因此我们只利用幺正条件 :eq:`int-beta-c-alpha-beta-gamma` 来推导 :math:`H` 定理是不错的.

当概率 :math:`P_\alpha` 成为仅仅是守恒量 (例如总能量和总电荷) 乘以因子 :math:`c_\alpha` 的函数时, 熵的增加会停止. 在这种情况下 (体系处于平衡态), 守恒律要求 :math:`\D \Gamma(\beta \to \alpha) / \D \alpha` 为零除非 :math:`P_\alpha/c_\alpha = P_\beta / c_\beta` (其中前者为跃迁率为零, 也就是静态平衡, 后者为进出率相等, 即动态平衡. 若两者都不满足, 则系统无法平衡, 即无法满足守恒律). 因此我们可以在 :eq:`inc-enentropy-two-terms` 中的第一项替换 :math:`P_\beta` 为 :math:`P_\alpha c_\beta / c_\alpha`. 得到

.. math::
    \frac{\D P_\alpha}{\D t} =&\  \int \D \beta P_\alpha c_\beta / c_\alpha \frac{\D \Gamma(\beta \to \alpha)}{\D \alpha} - P_\alpha \int \D \beta \frac{\D \Gamma(\alpha \to \beta)}{\D \beta} \\
    =&\ \frac{P_\alpha}{c_\alpha} \left[ \int \D \beta c_\beta \frac{\D \Gamma(\beta \to \alpha)}{\D \alpha} - \int \D \beta c_\alpha  \frac{\D \Gamma(\alpha \to \beta)}{\D \beta} \right]

于是我们再利用 :eq:`int-beta-c-alpha-beta-gamma` 就得到在这种情况下, :math:`P_\alpha` 是不依赖于时间的. 和之前一样, 我们只需要幺正性关系 :eq:`int-beta-c-alpha-beta-gamma`, 而不需要波恩近似或时间反演不变性.

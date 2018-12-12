
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

以及 (注意下式不是)

.. math::
    
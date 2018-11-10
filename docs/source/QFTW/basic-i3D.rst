
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

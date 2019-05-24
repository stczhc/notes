
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
        \newcommand{\slashed}[1]{{#1\!\!/}}
    

第十章 系统性重正化
===================

第一节 计算紫外发散
-------------------

首先考虑 QED 的情况. :math:`P` 表示传播子的数量, :math:`V` 表示顶点数, :math:`L` 表示圈数. 每个圈贡献 :math:`\D^4 k`, 因此分子上有4个 :math:`k`. 每个 :math:`P_e` 即费米子传播子贡献一个分母的 :math:`k`. 每个 :math:`P_\gamma` 即光子传播子贡献两个分母的 :math:`k`. 因此总的发散度为

.. math::
    D = 4L - P_e - 2P_\gamma

一个图中的圈数为

.. math::
    L = P - V + 1 = P_e + P_\gamma - V + 1

可以这样理解. 树图没有圈, 树中的边数是顶点数减一. 因此 :math:`L = 0` 对应于 :math:`P = V - 1`. 每多一条边, 就多一个圈. 因此 :math:`L = P - (V - 1) = P - V + 1`.

下面考虑 QED 的情况. :math:`N` 表示外线数. 每个顶点必须和仅一个光子关联, 一个光子传播线 (相当于两个外线) 和两个顶点关联, 因此 :math:`V = 2P_\gamma + N_\gamma`. 类似地, 每个顶点必须和两个费米子关联, 所以 :math:`V = \frac{1}{2}(2P_e + N_e)`. 总之

.. math::
    D =&\ 4L - P_e - 2P_\gamma = 4 (P_e + P_\gamma - V + 1) - P_e - 2P_\gamma \\
    =&\ 3 P_e + 2P_\gamma - V - 3V + 4 = 3(P_e - V) + (2P_\gamma - V) + 4
    = 4 -N_\gamma - \frac{3}{2}N_e

下面考虑 :math:`\phi^n` 理论的情况. 我们还是有 :math:`L = P - V + 1`. 每个顶点对应于 :math:`n` 条边, 因此 :math:`nV=N+ 2P`. 每个圈贡献 :math:`d` 个 :math:`k` 在分子上, 每个 :math:`P` 贡献2个 :math:`k` 在分母上. 因此

.. math::
    D =&\ dL - 2P = d(P - V + 1) - 2P = (d-2)P - dV + d \\
    =&\ (d-2)(nV - N)/2 - dV + d = d + \left[ n \frac{d -2}{2} - d\right ]V - \frac{d -2}{2}N

对于 :math:`d = 4, n = 4` 的情况, 有

.. math::
    D = 4 + (n-4) V - N = 4 - N

对于 :math:`d = 6, n = 3` 的情况, 有

.. math::
    D = 6 + (2n-6) V - 2N = 6 - 2N

第二节 重正化微扰论
-------------------

:math:`\phi^4` 理论的拉格朗日量为

.. math::
    \mathcal{L} = \frac{1}{2} (\partial_\mu \phi)^2 - \frac{1}{2} m_0^2 \phi^2 - \frac{\lambda_0}{4!}\phi^4

如果有 :math:`N` 条外线, 表观发散度是 :math:`D = 4 - N`.

由于对称性如果有奇数条外线, 振幅为零. 因此唯一发散的就是 :math:`N = 0, 2, 4` 的情况.

加入抵消项后的拉格朗日量

.. math::
    \mathcal{L} = \frac{1}{2} (\partial_\mu \phi_r)^2 - \frac{1}{2} m_0^2 \phi_r^2 - \frac{\lambda_0}{4!}\phi_r^4
        + \frac{1}{2} \delta_Z (\partial_\mu \phi_r)^2 - \frac{1}{2} \delta_m \phi_r^2 - \frac{\delta_\lambda}{4!}
        \phi_r^4

其费曼规则为: 传播线: :math:`\frac{\I}{p^2 - m^2 + \I \epsilon}`, 相互作用顶点: :math:`-\I \lambda`, 抵消项传播线: :math:`\I (p^2 \delta_Z - \delta_m)`, 抵消项相互作用顶点: :math:`-\I \delta_\lambda`.

欧氏空间表述
^^^^^^^^^^^^

坐标空间

.. math::
    x_E =&\ (\bm{x}, x_4), \quad x_4 = \I x_0, \quad \D^4 x_E = \I \D^4 x \\
    x_E^2 = &\ x_1^2 + x_2^2 + x_3^2 + x_4^2 = - x_0^2 + x_1^2 + x_2^2 + x_3^2 = -x^\mu x_\mu = -x^2

动量空间

.. math::
    k_E =&\ (\bm{k}, k_4),\quad k_4 = -\I k_0, \quad \D^4 k_E = -\I \D^4 k \\
    k_E^2 = &\ k_1^2 + k_2^2 + k_3^2 + k_4^2 = - k_0^2 + k_1^2 + k_2^2 + k_3^2 = -k^\mu k_\mu = -k^2


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
    

项目2 Coleman-Weinberg 势
=========================

模型拉格朗日量为

.. math::
    \mathcal{L} = -\frac{1}{4} (F_{\mu\nu})^2 + (D_\mu \phi)^\dagger D^\mu \phi -m^2 \phi^\dagger \phi
    -\frac{\lambda}{6}(\phi^\dagger \phi)^2

其中

.. math::
    D_\mu \phi = (\partial_\mu + \I e A_\mu ) \phi

令

.. math::
    \phi(x) = \phi_{\mathrm{cl}} + \varphi_1(x) +\I \varphi_2(x)

其中 :math:`\phi_{\mathrm{cl}}` 是常数背景场, :math:`\phi_{\mathrm{cl}}^2 = \phi_0^\dagger \phi_0`. 经典势为

.. math::
    V(\phi) =&\ m^2 \phi^\dagger \phi +\frac{\lambda}{6}(\phi^\dagger \phi)^2 \\
    V(\phi_{\mathrm{cl}}) =&\ m^2 \phi_{\mathrm{cl}}^2 +\frac{\lambda}{6}\phi_{\mathrm{cl}}^4

:math:`\varphi_1(x), \varphi_2(x), A_\mu(x)` 是波动场. 并且

.. math::
    F_{\mu\nu} = \partial_\mu A_\nu - \partial_\nu A_\mu

有 (只保留 :math:`\varphi_1, \varphi_2, A_\mu` 的二次项)

.. math::
    -\frac{1}{4} (F_{\mu\nu})^2 =&\ -\frac{1}{4} (\partial_\mu A_\nu - \partial_\nu A_\mu)(\partial^\mu A^\nu - \partial^\nu A^\mu) = -\frac{1}{2} \partial_\mu A_\nu \partial^\mu A^\nu + \frac{1}{2} \partial_\mu A_\nu \partial^\nu A^\mu \\
    =&\ \frac{1}{2} A_\nu \partial_\mu \partial^\mu A^\nu - \frac{1}{2} A_\mu \partial^\mu \partial_\nu A^\nu
    = \frac{1}{2} A_\mu (g^{\mu\nu} \partial^2 - \partial^\mu \partial^\nu) A_\nu

导数项

.. math::
    (D_\mu \phi)^\dagger D^\mu \phi =&\
    (\partial_\mu - \I e A_\mu ) (\phi_{\mathrm{cl}} + \varphi_1(x) -\I \varphi_2(x))
    (\partial^\mu + \I e A^\mu ) (\phi_{\mathrm{cl}} + \varphi_1(x) +\I \varphi_2(x)) \\
    =&\ \Big[ \partial_\mu \varphi_1 - \I \partial_\mu \varphi_2 - \I e A_\mu \phi_{\mathrm{cl}} - \I e A_\mu \varphi_1(x)
        - e A_\mu \varphi_2(x) \Big] \Big[ \partial^\mu \varphi_1 + \I \partial^\mu \varphi_2 + \I e A^\mu \phi_{\mathrm{cl}} + \I e A^\mu \varphi_1(x)
        - e A_\mu \varphi_2(x) \Big]

其中每个方括号中有五项 (注意 :math:`\phi_{\mathrm{cl}}` 和 :math:`x` 无关, 其偏导为零), 前三项为一次项, 后两项为二次项. 但是由于乘积的形式, 后两项最终只能导致三次项或者四次项, 于是可以省略. 因为我们只考虑二次项.

.. math::
    (D_\mu \phi)^\dagger D^\mu \phi
    =&\ \Big[ \partial_\mu \varphi_1 - \I \partial_\mu \varphi_2 - \I e A_\mu \phi_{\mathrm{cl}} \Big]
    \Big[ \partial^\mu \varphi_1 + \I \partial^\mu \varphi_2 + \I e A^\mu \phi_{\mathrm{cl}} \Big] \\
    =&\ -\varphi_1 \partial^2 \varphi_1 - \varphi_2 \partial^2 \varphi_2
        +(+\I -\I)(\partial_\mu \varphi_1)(\partial^\mu \varphi_2) + e^2 \phi_{\mathrm{cl}}^2 A_\mu A^\mu
        +(+\I -\I) \partial^\mu \varphi_1 \I e A^\mu \phi_{\mathrm{cl}}
        +2eA^\mu\phi_{\mathrm{cl}}\partial_\mu \varphi_2 \\
    =&\ -\varphi_1 \partial^2 \varphi_1 - \varphi_2 \partial^2 \varphi_2
        -2e(\partial_\mu A^\mu)\phi_{\mathrm{cl}} \varphi_2 + e^2 \phi_{\mathrm{cl}}^2 A_\mu A^\mu

其中第三项可以通过选择朗道规范 :math:`\partial_\mu A^\mu = 0` 而消除. 于是

.. math::
    (D_\mu \phi)^\dagger D^\mu \phi
    = -\varphi_1 \partial^2 \varphi_1 - \varphi_2 \partial^2 \varphi_2
     + e^2 \phi_{\mathrm{cl}}^2 A_\mu A^\mu

质量项

.. math::
    -m^2 \phi^\dagger \phi
    =&\ -m^2 (\phi_{\mathrm{cl}} + \varphi_1(x) -\I \varphi_2(x)) (\phi_{\mathrm{cl}} + \varphi_1(x) +\I \varphi_2(x)) \\
    =&\ -m^2 (\varphi_1(x) -\I \varphi_2(x)) (\varphi_1(x) +\I \varphi_2(x)) \\
    =&\ -m^2 \Big[\varphi_1^2(x) + \varphi_2^2(x) \Big]

相互作用项

.. math::
    -\frac{\lambda}{6}(\phi^\dagger \phi)^2
    =&\ -\frac{\lambda}{6} \Big[ (\phi_{\mathrm{cl}} + \varphi_1(x) -\I \varphi_2(x)) (\phi_{\mathrm{cl}} + \varphi_1(x) +\I \varphi_2(x)) \Big]^2 \\
    =&\ -\frac{\lambda}{6} \Big[ \phi_{\mathrm{cl}}^2 + \varphi_1^2(x) + \varphi_2^2(x)
    + \phi_{\mathrm{cl}} (+\I -\I) \varphi_2(x) + \varphi_1(x) (+\I -\I) \varphi_2(x)
    +2\phi_{\mathrm{cl}} \varphi_1(x)  \Big]^2 \\
    =&\ -\frac{\lambda}{6} \Big[ \phi_{\mathrm{cl}}^2 + \varphi_1^2(x) + \varphi_2^2(x)
    +2\phi_{\mathrm{cl}} \varphi_1(x)  \Big]^2

由于最后只要二次项, 因此上式方括号中有四项, 分别是 0 次, 二次, 二次, 一次, 于是第一项必须和第二三项组合, 第四项只能和自己组合, 有

.. math::
    -\frac{\lambda}{6}(\phi^\dagger \phi)^2
    =&\ -\frac{\lambda}{6} \Big[ 2\phi_{\mathrm{cl}}^2 \Big(\varphi_1^2(x) + \varphi_2^2(x)\Big)
    +4\phi_{\mathrm{cl}}^2 \varphi_1^2(x)  \Big] \\
    =&\ -\frac{\lambda}{3}\phi_{\mathrm{cl}}^2 \Big(3\varphi_1^2(x) + \varphi_2^2(x)\Big)

最终有

.. math::
    \mathcal{L} = \frac{1}{2} A_\mu \Big( g^{\mu\nu}\partial^2 +2e^2 \phi_{\mathrm{cl}}^2 g^{\mu\nu} - \partial^\mu \partial^\nu \Big) A_\nu
    + \varphi_1 \Big(-\partial^2 -m^2 -\lambda  \phi_{\mathrm{cl}}^2 \Big) \varphi_1
    + \varphi_2 \Big(-\partial^2 -m^2 -\frac{\lambda}{3}  \phi_{\mathrm{cl}}^2 \Big) \varphi_2

若改令

.. math::
    \phi(x) = \phi_{\mathrm{cl}} + \frac{1}{\sqrt{2}}\big[\varphi_1(x) +\I \varphi_2(x)\big]

则有

.. math::
    \mathcal{L} = \frac{1}{2} A_\mu \Big( g^{\mu\nu}\partial^2 +2e^2 \phi_{\mathrm{cl}}^2 g^{\mu\nu} - \partial^\mu \partial^\nu \Big) A_\nu
    + \frac{1}{2}\varphi_1 \Big(-\partial^2 -m^2 -\lambda  \phi_{\mathrm{cl}}^2 \Big) \varphi_1
    + \frac{1}{2}\varphi_2 \Big(-\partial^2 -m^2 -\frac{\lambda}{3}  \phi_{\mathrm{cl}}^2 \Big) \varphi_2

拉格朗日量的修正为

.. math::
    \Delta \mathcal{L} = \frac{\I}{2} \ln \operatorname{Det} \left[ -\frac{\delta^2 \mathcal{L}}{\delta\varphi\delta\varphi} \right]_{\varphi = 0} + \delta \mathcal{L}

其中 :math:`\delta \mathcal{L}` 为抵消项.

于是

.. math::
    \frac{\I}{2} \ln \operatorname{Det} \left[ -\frac{\delta^2 \mathcal{L}}{\delta\varphi\delta\varphi} \right]_{\varphi = 0} =&\ \frac{\I}{2} \Bigg[ \ln\operatorname{Det} \Big(- g^{\mu\nu}\partial^2 -2e^2 \phi_{\mathrm{cl}}^2 g^{\mu\nu} + \partial^\mu \partial^\nu \Big) \\
    &\ + \ln\operatorname{Det} \Big(\partial^2 +m^2 +\lambda \phi_{\mathrm{cl}}^2 \Big)
    + \ln\operatorname{Det} \Big(\partial^2 +m^2 +\frac{\lambda}{3} \phi_{\mathrm{cl}}^2 \Big)
     \Bigg]

利用 Peskin (11.71)

.. math::
    \ln \operatorname{Det} (\partial^2+m^2) = \operatorname{Tr} \operatorname{Ln} (\partial^2+m^2)
    = (\mathrm{Volume}) \int \frac{\D^d k}{(2\pi)^4} \ln (-k^2+m^2)

以及 Peskin (11.72)

.. math::
    \int \frac{\D^d k}{(2\pi)^4} \ln (-k^2+m^2)
    = -\I \frac{\Gamma(-\frac{d}{2})}{(4\pi)^{d/2}} \frac{1}{(m^2)^{-d/2}}

和行列式等式 (Sylvester's determinant identity) [#ref1]_ 假设 :math:`A` 和 :math:`B` 分别是 :math:`m \times n` 和 :math:`n \times m` 矩阵, 则

.. [#ref1] `Wikipedia <https://en.wikipedia.org/wiki/Sylvester%27s_determinant_identity>`_.

.. math::
    \det (I_m + AB) = \det (I_n + BA)

考虑 :math:`n = 1` 的特殊情况, 则 :math:`A, B` 分别称为列矢量和行矢量. 并且增加一个比例系数 :math:`\lambda` 得

.. math::
    \det (\lambda I_m + AB) = \lambda^m \det (I_m + (A/\lambda) B) = \lambda^m (1 + BA/\lambda) =
    \lambda^{m-1} (\lambda + BA)

即

.. math::
    \det (\lambda I_m + AB) = \lambda^{m-1} (\lambda + BA)

为了推广到闵氏空间, 需要考虑它的证明. 假设 :math:`A = B = k` 是同一闵氏空间矢量则利用分块矩阵的行列式公式

.. math::
    \det \begin{pmatrix} \lambda\eta & -k \\ k & 1 \end{pmatrix} =&\ \det (\lambda\eta)
    \det [1 - k_\mu {(\lambda\eta)^{-1}}^{\mu\nu} (-k_\nu) ] = (-1)^{d-1}\lambda^d
    \det [1 + \lambda^{-1} k^2 ] = (-\lambda)^{d-1} \det (\lambda + k^2) \\
    \det \begin{pmatrix} \lambda\eta & -k \\ k & 1 \end{pmatrix} =&\ 1\cdot
    \det [\lambda\eta - (-k_\mu) \cdot 1^{-1} \cdot k_\nu ] = \det [\lambda\eta + k_\mu k_\nu ]

因此在 4 维闵氏空间

.. math::
    \det (\lambda\eta + k_\mu k_\nu) = -\lambda^3 \det (\lambda + k^2)

应用到这里的情况有

.. math::
    \det \Big[g^{\mu\nu}(k^2 -2e^2 \phi_{\mathrm{cl}}^2) - k^\mu k^\nu \Big]
    = -(k^2 -2e^2 \phi_{\mathrm{cl}}^2)^3(k^2 -2e^2 \phi_{\mathrm{cl}}^2- k^2)
    = -2e^2 \phi_{\mathrm{cl}}^2 (-k^2 +2e^2 \phi_{\mathrm{cl}}^2)^3

对上式应用 :math:`\ln` 以后, 再对 :math:`k` 积分, 由于因子 :math:`2e^2 \phi_{\mathrm{cl}}^2` 和 :math:`k` 无关, 所以积分后只得到一个无关相加常数, 故忽略. 于是

.. math::
    \frac{\I}{2} \ln \operatorname{Det} \left[ -\frac{\delta^2 \mathcal{L}}{\delta\varphi\delta\varphi} \right]_{\varphi = 0} =&\ (\mathrm{Volume})\frac{1}{2}\frac{\Gamma(-\frac{d}{2})}{(4\pi)^{d/2}}
    \left[ 3(2e^2 \phi_{\mathrm{cl}}^2)^{d/2} + (m^2 +\lambda \phi_{\mathrm{cl}}^2)^{d/2}
    + \Big(m^2 +\frac{\lambda}{3} \phi_{\mathrm{cl}}^2\Big)^{d/2} \right] \\

现在应用最小减除 :math:`\overline{MS}` 即 Peskin (11.78)

.. math::
    \frac{\Gamma(-\frac{d}{2})}{(4\pi)^{d/2}} (m^2)^{d/2} =&\ \frac{1}{\frac{d}{2}(\frac{d}{2}-1)}
    \frac{\Gamma(2-\frac{d}{2})}{(4\pi)^{d/2}} (m^2)^{d/2}
    = \frac{m^4}{2(4\pi)^2} \left( \frac{2}{\epsilon} - \gamma + \ln(4\pi) - \ln m^2 + \frac{3}{2} \right) \\
    \rightarrow &\ \frac{m^4}{2(4\pi)^2} \left[ -\ln \frac{m^2}{\overline{\mu}^2} + \frac{3}{2} \right]

得 (注意减除后相当于确定了抵消项 :math:`\delta \mathcal{L}`)

.. math::
    \Delta \mathcal{L} =&\ \frac{\I}{2} \ln \operatorname{Det} \left[ -\frac{\delta^2 \mathcal{L}}{\delta\varphi\delta\varphi} \right]_{\varphi = 0} +\delta \mathcal{L} = (\mathrm{Volume}) \frac{1}{4(4\pi)^2} \Bigg\{
        3(2e^2 \phi_{\mathrm{cl}}^2)^2 \left[ -\ln \frac{2e^2 \phi_{\mathrm{cl}}^2}{\overline{\mu}^2} + \frac{3}{2} \right] \\
        &\ + (m^2 +\lambda \phi_{\mathrm{cl}}^2)^2 \left[ -\ln \frac{m^2 +\lambda \phi_{\mathrm{cl}}^2}{\overline{\mu}^2} + \frac{3}{2} \right]
        + \Big(m^2 +\frac{\lambda}{3} \phi_{\mathrm{cl}}^2\Big)^2 \left[ -\ln \frac{m^2 +\frac{\lambda}{3} \phi_{\mathrm{cl}}^2}{\overline{\mu}^2} + \frac{3}{2} \right]
    \Bigg\}

量子有效势为

.. math::
    V_{\mathrm{eff}}(\phi_{\mathrm{cl}}) =&\ V(\phi_{\mathrm{cl}}) - \frac{\Delta\mathcal{L}}{(\mathrm{Volume})}
        = m^2 \phi_{\mathrm{cl}}^2 +\frac{\lambda}{6}\phi_{\mathrm{cl}}^4 - \frac{1}{4(4\pi)^2} \Bigg\{
        3(2e^2 \phi_{\mathrm{cl}}^2)^2 \left[ -\ln \frac{2e^2 \phi_{\mathrm{cl}}^2}{\overline{\mu}^2} + \frac{3}{2} \right] \\
        &\ + (m^2 +\lambda \phi_{\mathrm{cl}}^2)^2 \left[ -\ln \frac{m^2 +\lambda \phi_{\mathrm{cl}}^2}{\overline{\mu}^2} + \frac{3}{2} \right]
        + \Big(m^2 +\frac{\lambda}{3} \phi_{\mathrm{cl}}^2\Big)^2 \left[ -\ln \frac{m^2 +\frac{\lambda}{3} \phi_{\mathrm{cl}}^2}{\overline{\mu}^2} + \frac{3}{2} \right]
    \Bigg\}

现在令 :math:`m^2 = 0` 得

.. math::
    V_{\mathrm{eff}}(\phi_{\mathrm{cl}}) = \frac{\lambda}{6}\phi_{\mathrm{cl}}^4 + \frac{1}{4(4\pi)^2} \Bigg\{
        12e^4 \phi_{\mathrm{cl}}^4 \left[ \ln \frac{2e^2 \phi_{\mathrm{cl}}^2}{\overline{\mu}^2} - \frac{3}{2} \right]
        + \lambda^2 \phi_{\mathrm{cl}}^4 \left[ \ln \frac{\lambda \phi_{\mathrm{cl}}^2}{\overline{\mu}^2} - \frac{3}{2} \right]
        + \frac{\lambda^2\phi_{\mathrm{cl}}^4}{9}  \left[ \ln \frac{\frac{\lambda}{3} \phi_{\mathrm{cl}}^2}{\overline{\mu}^2} - \frac{3}{2} \right]
    \Bigg\}

花括号中第一项是 :math:`e^4` 阶, 第二项是 :math:`\lambda^2` 阶. 现在如果 :math:`\lambda^2` 阶是主要项, 那么忽略 :math:`e^4` 项将回到普通的无规范场的模型, 容易证明得到的极值点导致微扰论失效. 于是为了得到有用的结果, :math:`e^4` 必须是花括号中的主要项, 必须有 :math:`\lambda \sim e^4`, 在这种情况下 :math:`\lambda^2` 项可以忽略.

即此时

.. math::
    V_{\mathrm{eff}}(\phi_{\mathrm{cl}}) \approx \frac{\lambda}{6}\phi_{\mathrm{cl}}^4 + \frac{3e^4 \phi_{\mathrm{cl}}^4}{(4\pi)^2}
         \left[ \ln \frac{2e^2 \phi_{\mathrm{cl}}^2}{\overline{\mu}^2} - \frac{3}{2} \right]

采用无规范场类似的步骤, 令

.. math::
    A =&\ \frac{3e^4}{(4\pi)^2}\\
    B =&\ \frac{\lambda}{6} - \frac{9e^4}{2(4\pi)^2}

于是

.. math::
    V_{\mathrm{eff}}(\varphi) =&\ \varphi^4 \left[A\ln \frac{2e^2 \varphi^2 }{\overline{\mu}^2} + B\right] \\
    \frac{\partial V_{\mathrm{eff}}(\varphi)}{\partial (\varphi^2)} =&\ 0 \quad\Rightarrow \quad
    2 \varphi^2 \left[A\ln \frac{2e^2 \varphi^2 }{\overline{\mu}^2} + B\right] + A \varphi^2 = \varphi^2 \left[2A\ln \frac{2e^2 \varphi^2 }{\overline{\mu}^2} + A + 2B\right] = 0

非零极小值点为

.. math::
    \tilde{\varphi}^2 = \frac{\overline{\mu}^2}{2e^2} \exp \left( -\frac{A + 2B}{2A} \right)
        = \frac{\overline{\mu}^2}{2e^2} \exp \left( -\frac{\frac{\lambda}{3} - \frac{9e^4}{(4\pi)^2}+\frac{3e^4}{(4\pi)^2}}{\frac{6e^4}{(4\pi)^2}} \right)
        = \frac{\overline{\mu}^2}{2e^2} \exp \left( 1-\frac{(4\pi)^2\lambda}{18e^4} \right)
        = \frac{\overline{\mu}^2}{2e^2} \exp \left( 1-\frac{8\pi^2\lambda}{9e^4} \right)

我们发现 :math:`\tilde{\varphi} \sim \overline{\mu} / e`, 而 :math:`\lambda \sim e^4`, 因此在这个区域微扰论仍是有效的. 这就是说 :math:`\tilde{\varphi}` 的值不会太大. 如果反之, :math:`\tilde{\varphi} \sim \overline{\mu} / \lambda`, 那么当微扰论成立, 也就是 :math:`\lambda` 很小, 设 :math:`\lambda = 0.0001`, 那么 :math:`\tilde{\varphi} = 10000` 太大. 但是对于 :math:`e` 的情况, 当 :math:`\lambda = 0.0001`, :math:`e = 0.1`, :math:`\tilde{\varphi} = 10`, 不是很大.

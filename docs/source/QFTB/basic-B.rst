
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

2019-02-05
----------

动量空间的费曼规则

1 标量场
^^^^^^^^

拉格朗日量为

.. math::
    \mathcal{L} = \frac{1}{2}(\partial_\mu \phi)(\partial^\mu \phi) - \frac{1}{2}m^2\phi^2
        -\frac{\lambda}{4!}\phi^4 \equiv \mathcal{L}_0 + \mathcal{L}_{\mathrm{int}}

其中

.. math::
    \mathcal{L}_0 \equiv&\ \frac{1}{2}(\partial_\mu \phi)(\partial^\mu \phi) - \frac{1}{2}m^2\phi^2 \\
    \mathcal{L}_{\mathrm{int}} \equiv&\ -\frac{\lambda}{4!}\phi^4

利用傅里叶变换

.. math::
    \phi(x) = \int \frac{\D^4 k}{(2\pi)^4} \tilde{\phi}(k) \E^{-\I k\cdot x}

有

.. math::
    \partial_\mu \phi(x) =&\ \int \frac{\D^4 k}{(2\pi)^4} (-\I k_\mu) \tilde{\phi}(k) \E^{-\I k\cdot x} \\
    \partial^\mu \partial_\mu \phi(x) =&\ \int \frac{\D^4 k}{(2\pi)^4} (-\I k_\mu)^2 \tilde{\phi}(k) \E^{-\I k\cdot x}
    = \int \frac{\D^4 k}{(2\pi)^4} (-k^2) \tilde{\phi}(k) \E^{-\I k\cdot x} \\

因此变换关系为

.. math::
    \partial_\mu \to -\I k_\mu, \quad \partial_\mu \partial^\mu \to -k^2

作用量为

.. math::
    S_0 =&\ \int \D^4 x \mathcal{L}_0 = \int \D^4 x \left[ \frac{1}{2}(\partial_\mu \phi)(\partial^\mu \phi) - \frac{1}{2}m^2\phi^2 \right] \\
    =&\ \frac{1}{2} \int \D^4 x \phi (-\partial_\mu \partial^\mu - m^2 + \I\epsilon) \phi \\
    =&\ \frac{1}{2} \int \frac{\D^4 k}{(2\pi)^4} \tilde{\phi}(k) (k^2 -m^2 + \I\epsilon) \tilde{\phi}(-k)

于是

.. math::
    K(k) = k^2 -m^2 + \I\epsilon

利用

.. math::
    K(k) = \I \Delta_F^{-1} \quad \Rightarrow \quad \Delta_F = \frac{\I}{K(k)}

得标量场的传播子 (内线)

.. math::
    \Delta_F = \frac{\I}{k^2 -m^2 + \I\epsilon}

最后考虑相互作用项 (顶点)

.. math::
    \mathcal{L}_{\mathrm{int}} = -\frac{\lambda}{4!}\phi^4 \quad \Rightarrow \quad -\I\lambda

总之, 标量场的费曼规则为

(1) 对每个传播子

.. tikz::
    \draw[line width=1pt, ->] (-1, 0) -- (0, 0) node[below] {$k$};
    \draw[line width=1pt] (0, 0) -- (1, 0);
    \draw[white] (-1, 0.5) -- (-1, -0.5);
    \begin{scope}[shift={(3.5,0)}]
    \node at (0, 0) {$\displaystyle =\frac{\I}{k^2 -m^2 + \I\epsilon}$};
    \end{scope}

(2) 对每个顶点

.. tikz::
    \draw[line width=1pt, ->] (-1, 1) -- (-0.5, 0.5);
    \draw[line width=1pt, ->] (1, -1) -- (0.5, -0.5);
    \draw[line width=1pt] (-0.5, 0.5) -- (0.5, -0.5);
    \draw[line width=1pt, ->] (-1, -1) -- (-0.5, -0.5);
    \draw[line width=1pt, ->] (1, 1) -- (0.5, 0.5);
    \draw[line width=1pt] (-0.5, -0.5) -- (0.5, 0.5);
    \fill (0, 0) circle (0.05);
    \begin{scope}[shift={(3.5,0)}]
    \node at (0, 0) {$\displaystyle =-\I \lambda $};
    \end{scope}

(3) 对每条外线

.. tikz::
    \draw[line width=1pt, ->] (1, 0) -- (0.5, 0);
    \draw[line width=1pt] (0.5, 0) -- (-0.2, 0);
    \draw[line width=1pt] (-0.2, 0.2) -- (0, 0) -- (-0.2, -0.2);
    \fill (0, 0) circle (0.05);
    \begin{scope}[shift={(3.5,0)}]
    \node at (0, 0) {$\displaystyle =1 $};
    \end{scope}

(4) 在每个顶点应用动量守恒.

(5) 对每个未确定的圈动量积分 :math:`\displaystyle \int \frac{\D^4 p}{(2\pi)^4}`.

(6) 除以对称因子.

2 旋量场
^^^^^^^^

旋量场的拉格朗日量

.. math::
    \mathcal{L}_0 = \overline{\psi} (\I \slashed{\partial} - m) \psi

利用

.. math::
    S_F = \frac{\I}{K(k)},\quad \partial_\mu \to -\I k_\mu, \quad \slashed{\partial} \to -\I \slashed{k}

作用量为

.. math::
    S_0 =&\ \int \D^4 x \mathcal{L}_0 = \int \D^4 x \left[ \overline{\psi} (\I \slashed{\partial} - m) \psi \right] \\
    =&\ \int \frac{\D^4 k}{(2\pi)^4} \tilde{\overline{\psi}}(k) (\slashed{k} - m) \tilde{\psi}(-k)


于是

.. math::
    K(k) = \slashed{k} - m

得旋量场的传播子 (内线) (其中利用了 :math:`\slashed{a}\slashed{a} = a^2`)

.. math::
    S_F = \frac{\I}{\slashed{k} - m} = \frac{\I (\slashed{k} + m)}{\slashed{k}\slashed{k} - m^2 + \I\epsilon}
        = \frac{\I (\slashed{k} + m)}{k^2 - m^2 + \I\epsilon}

总之, 旋量场的费曼规则为

狄拉克传播子

.. tikz::
    \draw[line width=1pt, ->] (-1, 0) -- (0, 0) node[below] {$k$};
    \draw[line width=1pt] (0, 0) -- (1, 0);
    \draw[white] (-1, 0.5) -- (-1, -0.5);
    \begin{scope}[shift={(3.5,0)}]
    \node at (0, 0) {$\displaystyle =\frac{\I (\slashed{k} + m)}{k^2 - m^2 + \I\epsilon}$};
    \end{scope}

3 标量-旋量相互作用
^^^^^^^^^^^^^^^^^^^

相互作用的拉格朗日量为

.. math::
    \mathcal{L}_{\mathrm{Yukawa}} =&\ \mathcal{L}_{\mathrm{Dirac}} + \mathcal{L}_{\mathrm{Klein-Gordon}} +
        \mathcal{L}_{\mathrm{int}} \\
    \mathcal{L}_{\mathrm{Dirac}} =&\ \overline{\psi} (\I \slashed{\partial} - M) \psi \\
    \mathcal{L}_{\mathrm{Klein-Gordon}} =&\ \frac{1}{2}(\partial_\mu \phi)(\partial^\mu \phi) - \frac{1}{2}m^2\phi^2 \\
    \mathcal{L}_{\mathrm{int}} =&\ -g \overline{\psi}\psi \phi

相互作用顶点

.. tikz::
    \draw[line width=1pt, ->] (-1, -1) -- (-0.5, -0.5) node[right] {$\psi$};
    \draw[line width=1pt, ->] (0, 0) -- (0.5, -0.5) node[left] {$\overline{\psi}$};
    \draw[line width=1pt] (1, -1) -- (0.5, -0.5);
    \draw[line width=1pt] (0, 0) -- (-0.5, -0.5);
    \draw[line width=1pt,dashed] (0, 0) -- (0, 1);
    \draw[line width=1pt, ->] (0.2, 1) -- (0.2, 0.5) node[above right] {$q$};
    \draw[line width=1pt, ->] (-1.2, -0.8) -- (-0.7, -0.3) node[left] {$k$};
    \draw[line width=1pt, ->] (1.2, -0.8) -- (0.7, -0.3) node[right] {$k'$};
    \begin{scope}[shift={(3.5,0)}]
    \node at (0, 0) {$\displaystyle =-\I g $};
    \end{scope}

4 旋量-矢量相互作用 (QED)
^^^^^^^^^^^^^^^^^^^^^^^^^

拉格朗日量为

.. math::
    \mathcal{L}_{\mathrm{QED}} =&\ \mathcal{L}_{\mathrm{Dirac}}(\partial \to D) + \mathcal{L}_{\mathrm{Maxwell}} \\
    \mathcal{L}_{\mathrm{Dirac}} =&\ \overline{\psi} (\I \slashed{\partial} - M) \psi \\
    \mathcal{L}_{\mathrm{Maxwell}} =&\ -\frac{1}{4}F_{\mu\nu} F^{\mu\nu}

其中

.. math::
    D_\mu \equiv \partial_\mu +\I e A_\mu,\quad F_{\mu\nu} = \partial_\mu A_\nu - \partial_\nu A_\mu, \quad e = -|e|

因此

.. math::
    \mathcal{L}_{\mathrm{QED}} = &\ \overline{\psi} (\I \slashed{D} - M) \psi -\frac{1}{4}F_{\mu\nu} F^{\mu\nu}
        \\
        =&\ \overline{\psi} (\I \slashed{\partial} - M) \psi -\frac{1}{4}F_{\mu\nu} F^{\mu\nu}
            + (\I)^2 e \overline{\psi} \gamma^\mu \psi A_\mu \\
        =&\ \overline{\psi} (\I \slashed{\partial} - M) \psi -\frac{1}{4}F_{\mu\nu} F^{\mu\nu}
            - e \overline{\psi} \gamma^\mu \psi A_\mu

其中相互作用部分为

.. math::
    \mathcal{L}_{\mathrm{int}} = - e \overline{\psi} \gamma^\mu \psi A_\mu

.. tikz::
    \draw[line width=1pt, ->] (-1, -1) -- (-0.5, -0.5) node[right] {$\psi$};
    \draw[line width=1pt, ->] (0, 0) -- (0.5, -0.5) node[left] {$\overline{\psi}$};
    \draw[line width=1pt] (1, -1) -- (0.5, -0.5);
    \draw[line width=1pt] (0, 0) -- (-0.5, -0.5);
    \draw[line width=1pt, decorate, decoration={snake, amplitude=1, segment length=5}]
        (0, 0) -- (0, 1) node[right] {$\mu$};
    \draw[line width=1pt, ->] (-1.2, -0.8) -- (-0.7, -0.3) node[left] {$k$};
    \draw[line width=1pt, ->] (1.2, -0.8) -- (0.7, -0.3) node[right] {$k'$};
    \begin{scope}[shift={(3.5,0)}]
    \node at (0, 0) {$\displaystyle =- \I e \gamma^\mu $};
    \end{scope}

5 标量-矢量相互作用 (标量 QED)
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

拉格朗日量为

.. math::
    \mathcal{L}_{\mathrm{scalar}} =&\ (\partial_\mu \phi)^*(\partial^\mu \phi) - m^2\phi^*\phi \\
    \mathcal{L} =&\ \mathcal{L}_{\mathrm{scalar}}(\partial \to D) + \mathcal{L}_{\mathrm{Maxwell}} \\
    \mathcal{L}_{\mathrm{scalar}}(\partial \to D) =&\ (D_\mu \phi)^*(D^\mu \phi) - m^2\phi^*\phi \\
    =&\ (\partial_\mu \phi^* -\I e A_\mu \phi^*)(\partial^\mu \phi + \I e A^\mu \phi) - m^2\phi^*\phi \\
    =&\ (\partial_\mu \phi^*)(\partial^\mu \phi)- m^2\phi^*\phi
        -\I e A_\mu \phi^* \partial^\mu \phi + \I e A^\mu (\partial_\mu \phi^*) \phi
        + e^2 A_\mu A^\mu \phi^* \phi

其中相互作用部分定义为

.. math::
    \mathcal{L}_{\mathrm{int}} =&\ -\I e A_\mu \phi^* \partial^\mu \phi + \I e A^\mu (\partial_\mu \phi^*) \phi
        + e^2 A_\mu A^\mu \phi^* \phi \\
        =&\ -\I e A^\mu \left[ \phi^* \partial_\mu \phi - (\partial_\mu \phi^*) \phi \right]
        + e^2 A_\mu A^\mu \phi^* \phi

利用傅里叶变换转到动量空间, 即

.. math::
    \partial_\mu \to -\I k_\mu

相互作用 (第一项) 的作用量为

.. math::
    S_{\mathrm{int}} =&\ \int \D^4 x \mathcal{L}_{\mathrm{int}} =
        -\I e \int \D^4 x A^\mu \left[ \phi^* \partial_\mu \phi - (\partial_\mu \phi^*) \phi \right] \\
    =&\ -\I e \int \D^4 x \int \frac{\D^4 k_1}{(2\pi)^4} \frac{\D^4 k_2}{(2\pi)^4}
        \frac{\D^4 q}{(2\pi)^4} \tilde{A}^\mu(q)
        \tilde{\phi}^*(k_2) \left[ -\I k_{1\mu} - (-\I k_{2\mu}) \right] \tilde{\phi}(k_1)
        \E^{-\I (k_1 + k_2 + q)\cdot x} \\
    =&\ -e \int \frac{\D^4 k_1}{(2\pi)^4} \frac{\D^4 k_2}{(2\pi)^4}
        \frac{\D^4 q}{(2\pi)^4} \tilde{A}_\mu(q)
        \tilde{\phi}^*(k_2) \left( k_{1}^\mu - k_{2}^\mu \right) \tilde{\phi}(k_1)
        (2\pi)^4 \delta^{(4)}(k_1 + k_2 + q) \\
    =&\ -e \int \frac{\D^4 k_1}{(2\pi)^4} \frac{\D^4 k_2}{(2\pi)^4}
        \tilde{A}_\mu(-k_1-k_2)
        \tilde{\phi}^*(k_2) \left( k_{1}^\mu - k_{2}^\mu \right) \tilde{\phi}(k_1)

相互作用 (第二项) 的作用量为

.. math::
    \mathcal{L}'_{\mathrm{int}} = e^2 A_\mu A^\mu \phi^* \phi = e^2 g^{\mu\nu} A_\mu A_\nu \phi^* \phi

因此

.. tikz::
    \draw[line width=1pt, ->, dashed] (-1, -1) -- (-0.5, -0.5) node[right] {$\phi$};
    \draw[line width=1pt, ->, dashed] (0, 0) -- (0.5, -0.5) node[left] {$\phi*$};
    \draw[line width=1pt, dashed] (1, -1) -- (0.5, -0.5);
    \draw[line width=1pt, dashed] (0, 0) -- (-0.5, -0.5);
    \draw[line width=1pt, decorate, decoration={snake, amplitude=1, segment length=5}]
        (0, 0) -- (0, 1) node[right] {$\mu$};
    \draw[line width=1pt, ->] (-0.2, 1) -- (-0.2, 0.5) node[above left] {$q=-(k_1+k_2)$};
    \draw[line width=1pt, ->] (-1.2, -0.8) -- (-0.7, -0.3) node[left] {$k_1$};
    \draw[line width=1pt, ->] (1.2, -0.8) -- (0.7, -0.3) node[right] {$k_2$};
    \begin{scope}[shift={(3.5,0)}]
    \node at (0, 0) {$\displaystyle =- \I e \left( k_{1}^\mu - k_{2}^\mu \right) $};
    \end{scope}

.. tikz::
    \draw[line width=1pt, ->, dashed] (-1, -1) -- (-0.5, -0.5) node[right] {$\phi$};
    \draw[line width=1pt, ->, dashed] (0, 0) -- (0.5, -0.5) node[left] {$\phi*$};
    \draw[line width=1pt, dashed] (1, -1) -- (0.5, -0.5);
    \draw[line width=1pt, dashed] (0, 0) -- (-0.5, -0.5);
    \draw[line width=1pt, decorate, decoration={snake, amplitude=1, segment length=5}]
        (0, 0) -- (1, 1) node[right] {$\nu$};
    \draw[line width=1pt, decorate, decoration={snake, amplitude=1, segment length=5}]
        (0, 0) -- (-1, 1) node[left] {$\mu$};
    \draw[line width=1pt, ->] (-1.2, 0.8) -- (-0.7, 0.3);
    \draw[line width=1pt, ->] (1.2, 0.8) -- (0.7, 0.3);
    \draw[line width=1pt, ->] (-1.2, -0.8) -- (-0.7, -0.3);
    \draw[line width=1pt, ->] (1.2, -0.8) -- (0.7, -0.3);
    \begin{scope}[shift={(3.5,0)}]
    \node at (0, 0) {$\displaystyle = \I e^2 g^{\mu\nu} $};
    \end{scope}

6 矢量场
^^^^^^^^

拉格朗日量为

.. math::
    \mathcal{L}_{\mathrm{Maxwell}} =&\ -\frac{1}{4}F_{\mu\nu} F^{\mu\nu} -\frac{1}{2\xi} (\partial^\mu A_\mu)^2\\
        =&\ -\frac{1}{4} (\partial_\mu A_\nu - \partial_\nu A_\mu)(\partial^\mu A^\nu - \partial^\nu A^\mu)
            -\frac{1}{2\xi} (\partial^\mu A_\mu)(\partial^\nu A_\nu) \\
        =&\ -\frac{1}{2} (\partial_\mu A_\nu) (\partial^\mu A^\nu) + \frac{1}{2} (\partial_\nu A_\mu)(\partial^\mu A^\nu) -\frac{1}{2\xi} (\partial^\mu A_\mu)(\partial^\nu A_\nu) \\

作用量为

.. math::
    S =&\ \int \D^4 x \mathcal{L}_{\mathrm{Maxwell}}
        = \frac{1}{2} \int \D^4 x \left[ -(\partial_\mu A_\nu) (\partial^\mu A^\nu) -
            (\partial_\nu A_\mu)(\partial^\mu A^\nu) + \xi^{-1} (\partial^\mu A_\mu)(\partial^\nu A_\nu) \right] \\
    =&\ \frac{1}{2} \int \D^4 x \left[ (\partial^\mu \partial_\mu A_\nu) A^\nu +
            (\partial_\nu \partial^\mu A_\mu) A^\nu - \xi^{-1} (\partial^\nu \partial^\mu A_\mu) A_\nu \right] \\
    =&\ \frac{1}{2} \int \D^4 x \left[ (\partial^\mu \partial_\mu A_\nu) A^\nu -
            \left( 1 - \frac{1}{\xi} \right) (\partial_\nu \partial^\mu A_\mu) A^\nu \right]

利用傅里叶变换转到动量空间, 即

.. math::
    \partial_\mu \to -\I k_\mu,\quad \partial^\mu \partial_\mu \to - k^2

得

.. math::
    S =&\ \frac{1}{2} \int \D^4 x \int \frac{\D^4 k}{(2\pi)^4} \frac{\D^4 k'}{(2\pi)^4} \left[ -k^2 \tilde{A}_\nu(k) \tilde{A}^\nu(k') -
            \left( 1 - \frac{1}{\xi} \right) (-\I k_\nu) (-\I k^\mu) \tilde{A}_\mu(k) \tilde{A}^\nu(k') \right]
            \E^{-\I (k + k')\cdot x} \\
    =&\ \frac{1}{2} \int \frac{\D^4 k}{(2\pi)^4} \frac{\D^4 k'}{(2\pi)^4} \tilde{A}_\mu(k) \left[ -k^2  g^{\mu\nu} + \left( 1 - \frac{1}{\xi} \right) k^\mu k^\nu \right]
             \tilde{A}_\nu(k') (2\pi)^4 \delta^{(4)}(k + k') \\
    =&\ \frac{1}{2} \int \frac{\D^4 k}{(2\pi)^4} \tilde{A}_\mu(k) \left[ -k^2  g^{\mu\nu} + \left( 1 - \frac{1}{\xi} \right) k^\mu k^\nu \right] \tilde{A}_\nu(-k)

于是

.. math::
    K^{\mu\nu}(k) = -k^2  g^{\mu\nu} + \left( 1 - \frac{1}{\xi} \right) k^\mu k^\nu

根据

.. math::
    K_{\mu\nu}(k) D_F^{\nu\rho}(k) = \I \delta_{\mu}^{\rho}

得

.. math::
    D_F^{\mu\nu}(k) = \frac{-\I}{k^2 + \I \epsilon}\left[ g^{\mu\nu} -(1-\xi)
        \frac{k^\mu k^\nu}{k^2} \right]

验证得

.. math::
    K_{\mu\nu}(k) D_F^{\nu\rho}(k) =&\ -\I  \left[ - g_{\mu\nu} + \left( 1 - \frac{1}{\xi} \right) \frac{k_\mu k_\nu}{k^2} \right] \left[ g^{\nu\rho} -(1-\xi)
        \frac{k^\nu k^\rho}{k^2} \right] \\
    =&\ -\I \left[ - \delta_\mu^\rho - \left( 1 - \frac{1}{\xi} \right) (1-\xi) \frac{k_\mu k_\nu}{k^2} \frac{k^\nu k^\rho}{k^2} + g_{\mu\nu} (1-\xi)
        \frac{k^\nu k^\rho}{k^2} + \left( 1 - \frac{1}{\xi} \right) g^{\nu\rho} \frac{k_\mu k_\nu}{k^2} \right] \\
    =&\ -\I \left[ - \delta_\mu^\rho - \left( 1 + 1 - \frac{1}{\xi} - \xi \right) \frac{k_\mu k^\rho}{k^2} + (1-\xi)
        \frac{k_\mu k^\rho}{k^2} + \left( 1 - \frac{1}{\xi} \right) \frac{k_\mu k^\rho}{k^2} \right] \\
    =&\ -\I \left[ - \delta_\mu^\rho - \left( 1 + 1 - \frac{1}{\xi} - \xi \right) \frac{k_\mu k^\rho}{k^2}
         + \left( 1 + 1- \frac{1}{\xi} -\xi\right) \frac{k_\mu k^\rho}{k^2} \right] \\
    =&\ \I \delta_\mu^\rho

总之, 矢量场的费曼规则为

光子传播子

.. tikz::
    \draw[line width=1pt, decorate, decoration={snake, amplitude=1, segment length=5}]
        (-1, 0) node[above] {$\mu$} -- (1, 0) node[above] {$\nu$};
    \draw[white] (-1, 0.5) -- (-1, -0.5);
    \draw[line width=1pt, ->] (-0.2, -0.3) -- (0.3, -0.3) node[right] {$k$};
    \begin{scope}[shift={(4,0)}]
    \node at (0, 0) {$\displaystyle =\frac{-\I}{k^2 + \I \epsilon}\left[ g_{\mu\nu} -(1-\xi)
        \frac{k_\mu k_\nu}{k^2} \right]$};
    \end{scope}
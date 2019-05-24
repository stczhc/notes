
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
    

第四章 相互作用场和费曼图
=========================

第一节 微扰论的理念和例子
-------------------------

为了得到关于现实世界的更好描述, 需要在哈密顿量 (或者拉格朗日量) 中引入非线性项. 这些非线性项将傅里叶模式 (以及占据它们的粒子) 相互耦合. 为了保持因果性, 新的项必须只包括在同一时空点的场量的积. :math:`[\phi(x)]^4` 可以, 而 :math:`\phi(x)\phi(y)` 是不允许的. 另一个限制条件是, 我们只考虑相互作用拉格朗日量 :math:`\mathcal{L}_{\mathrm{int}}` 仅仅是场的函数, 而不是场的微分的函数的理论.

本章我们主要讨论三个重要的例子.

1 :math:`\phi^4` 理论
^^^^^^^^^^^^^^^^^^^^^

首先考虑 :math:`\phi^4` 理论

.. math::
    \mathcal{L} = \frac{1}{2} (\partial_\mu \phi)^2 - \frac{1}{2}m^2 \phi^2 - \frac{\lambda}{4!} \phi^4

其中 :math:`\lambda` 是一个无量纲的耦合常数. :math:`\phi^4` 理论的运动方程是

.. math::
    (\partial^2 + m^2) \phi = -\frac{\lambda}{3!}\phi^3

这个方程不可以像克莱因-高登方程那样通过傅里叶分析求解. 对于它的量子理论我们采取等时对易关系

.. math::
    [\phi(\bm{x}), \pi(\bm{y})] = \I \delta^{(3)}(\bm{x} - \bm{y})

由于我们的 :math:`\mathcal{L}_{\mathrm{int}}` 中并不包含 :math:`\partial_\mu \phi`, 因此 :math:`\pi(\bm{x})` 的定义并未改变, 因此这个和自由场论的情况是一致的.

2 量子电动力学
^^^^^^^^^^^^^^

相互作用场论的第二个例子是量子电动力学 (QED):

.. math::
    \mathcal{L}_{\mathrm{QED}} =&\ \mathcal{L}_{\mathrm{Dirac}} + \mathcal{L}_{\mathrm{Maxwell}} + \mathcal{L}_{\mathrm{int}} \\
    =&\ \overline{\psi}(\I \slashed{\partial} - m) \psi - \frac{1}{4} (F_{\mu\nu})^2 - e\overline{\psi}\gamma^\mu \psi A_\mu

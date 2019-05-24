
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

2019-03-04
----------

BPH 重正化程序

如果 :math:`G` 不是 RP (renormalization part) (即 :math:`D(G) < 0`) 则

.. math::
    R(A_G) = \overline{R}(A_G)

如果 :math:`G` 是 RP 则

.. math::
    R(A_G) = \overline{R}(A_G) - t^G \overline{R}(A_G)

其中任意图 :math:`\gamma` 的 :math:`\overline{R}(A_\gamma)` 递归定义为

.. math::
    \overline{R}(A_\gamma) = A_\gamma + \sum_{\{\gamma_1,\cdots, \gamma_m \}} A_{\gamma \backslash\{\gamma_1,\cdots, \gamma_m \}} \circ \prod_{j=1}^m \left( -t^{\gamma_j}\cdot \overline{R}(A_{\gamma_j}) \right)

RP 是一个 1PI (单粒子不可约) 图 :math:`\gamma` 并且 :math:`D(\gamma) \ge 0`. 其中单粒子不可约的意思是, 不能通过移除一条线而把图分为两部分.
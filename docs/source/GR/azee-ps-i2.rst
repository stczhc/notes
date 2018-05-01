
.. only:: html

    .. math::
        \renewenvironment{equation*}
        {\begin{equation}\begin{aligned}}
        {\end{aligned}\end{equation}}
        \renewcommand{\gg}{>\!\!>}
        \renewcommand{\ll}{<\!\!<}
        \newcommand{\I}{\mathrm{i}}
        \newcommand{\D}{\mathrm{d}}
        \newcommand{\dt}{\frac{\D}{\D t}}
        \newcommand{\E}{\mathrm{e}}
        \newcommand{\arccot}{\operatorname{arccot}}
        \renewcommand{\bm}{\mathbf}

I.2 守恒量
^^^^^^^^^^

.. admonition:: 1 题目(动量守恒)

    有 :math:`N` 个相互作用粒子
    
    .. math:: m_a \frac{\D^2 \bm{x}_a}{\D t^2} = -\frac{\D V(\bm{x})}{\D \bm{x}_a}
    
    其中 :math:`a = 1, \cdots, N`. 假设 :math:`V(\bm{x}_1, \dots, \bm{x}_N)` 仅依赖于距离 :math:`\bm{x}_a -\bm{x}_b` 其中 :math:`a,b = 1, \cdots, N`. 证明总动量 :math:`\sum_a m_a \frac{\D \bm{x}_a}{\D t}` 守恒. 

.. admonition:: 1 题解

    由于每一对内力共线, 等值, 反向, 因此合内力为零. 于是
    
    .. math::
        \dt \left[ \sum_a m_a \frac{\D \bm{x}_a}{\D t} \right] = \sum_a m_a\frac{\D^2 \bm{x}_a}{\D t^2}
            = -\sum_a \frac{\D V(\bm{x})}{\D \bm{x}_a} = \sum_a \bm{F}_a(\bm{x}) = \bm{0}
    
    从而总动量守恒. 

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
    

第二章 单粒子系统与路径积分
============================

第一节 半经典图像和路径积分
----------------------------

在思考一个物理问题时, 需要想象一幅图像. 对经典的问题, 考虑图像比较容易.
但是对于量子系统, 所需要考虑的图像与现实世界会有很大差别.
[这里考虑问题所需的图像不一定必须符合现实世界的特定物体. 其实是一种类比的关系.
即使对量子系统, 也是用现实世界的图像来做一些特殊限定来得到.
从某种意义上, 这就是说, 如果我们真的能找到一种图像,
这个图像可以表述我们对于微观世界的理解.
那么实际上就是说现实世界能够 "演生" 这样的微观现象.
或者说量子现象也可以从经典图像演生.
但这不确切, 因为有些假想的规则并非直接成为支配现实世界的规则.
但至少这相当于说, 量子的图像可以从完全基于经典概念的计算模拟得到.
计算模拟是可以任意改变规则的.]

借助路径积分方法, 我们能通过相应经典系统地图像 "看" 到量子行为.

1 粒子的传波函数
^^^^^^^^^^^^^^^^^

考虑一个一维粒子 [这里是一个量子体系]

.. math::
    H = \frac{1}{2m} p^2 + V(x)


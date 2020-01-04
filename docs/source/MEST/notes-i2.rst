
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
        \renewcommand{\bm}{\boldsymbol}

.. note::
    http://bbs.keinsci.com/thread-4969-1-1.html

电子相关笔记
============

电子相关 (Electron correlation)

广义定义: 单电子模型无法描述的部分. 相关即电子相互作用, 至少要有两个电子. 注意这里单电子模型不等于 HF.

单电子模型即无相关作用, 但考虑经典库仑作用. 电子相互作用用平均场近似表示.

物理本质上电子相关的划分:

1. 库仑相关 (Coulomb correlation) 库仑作用导致的相关
2. 交换相关 (Exchange/Fermi correlation) 电子波函数反对称性导致的相关 重要性远高于库仑相关

在量子化学中, 为理论处理而相对于 HF 划分:

1. 动态相关 (dynamic correlation) 单参考 CI, 微扰, CC 方法考虑而 HF 没有考虑的相关. 对结果有定量改进.
   动态相关主要是库仑相关
2. 静态相关 (static correlation) CASSCF 考虑而 HF 没有考虑的相关. 由于前线轨道能级 (准) 简并导致.
   静态相关强时, HF 单行列式没法定性正确描述实际波函数, 结果定性错误.
   静态相关虽然和交换相关关系密切, 但不是简单等价关系.

从单电子模型出发, 到多电子自然的情况是单电子乘积波函数, 这时仍然没有相关作用. 而在 Hartree-Fock 方法中, 则是替代乘积为行列式, 从而可以精确考虑交换相关.

密度泛函理论近似考虑交换和库仑相关.

强关联作用:

纯泛函 (LDA/GGA) 由于 SIE (自作用能量) 问题而高估电子离域特征, 而过度金属非满占据的 df 电子有较强定域性. 称此种情况为强关联体系. 需要用杂化泛函, LDA+U 方式描述.

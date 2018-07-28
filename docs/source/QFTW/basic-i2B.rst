
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
    

第二章 相对论量子力学 (B)
=========================

第五节 单粒子态
---------------

现在我们希望根据单粒子态在非齐次洛伦兹变换群元作用下的变换性质, 来对这些单粒子态进行分类.

能量-动量四矢量的各分量互相对易, 因此可以把物理态矢表示为四动量的本征矢. (更进一步, 它们都与 :math:`H` 对易, 因此这样的本征矢在薛定谔方程决定的演化下是守恒的, 即不随时间改变. ) 使用 :math:`\sigma` 指标标记所有其他自由度. 因此我们考虑的态矢 :math:`\psi_{p, \sigma}` 满足

.. math:: 
    P^\mu \psi_{p, \sigma} = p^\mu \psi_{p, \sigma}

对一般的态, 例如由几个非束缚粒子构成的态, :math:`\sigma` 指标应该既包括连续指标也包括离散指标. 这里, 我们只考虑单粒子态. 并且, 我们定义单粒子态为要求单粒子态的 :math:`\sigma` 指标是纯离散的. (但是, 某些两个或多个粒子的束缚态, 比如氢原子的基态, 被认为是单粒子态. 这不是一个 **基本** (elementary) 粒子, 但是复合粒子和基本粒子的区别对于我们这里的讨论是不相关的. )

为研究单粒子态在非齐次洛伦兹变换, 可以分别考虑单粒子态的平移变换和单粒子态的齐次洛伦兹变换.

先考虑单粒子态在平移下的变换. 利用 [定理27] :math:`U(1, a) = \exp (-\I P^\mu a_\mu)` 和上面的本征方程得

.. math:: 
    U(1, a)\psi_{p,\sigma} = \exp (-\I P^aa_a) \psi_{p,\sigma} = \exp (-\I p^aa_a) \psi_{p,\sigma}

其中 :math:`p^aa_a \equiv P^\mu a_\mu` 为四矢量的内积 (其中 :math:`a` 是抽象指标).

现在考虑单粒子态的齐次洛伦兹变换. 根据 :eq:`jp-lambda-trans` 有

.. math:: 
    U(\Lambda, a)P^\rho U^{-1}(\Lambda, a) = \xtensor{\Lambda}{_\mu}{^\rho} P^\mu

令 :math:`U(\Lambda) \equiv U(\Lambda, 0)` 有

.. math:: 
    U^{-1}(\Lambda)P^\mu U(\Lambda) = U(\Lambda^{-1})P^\mu U^{-1}(\Lambda^{-1}) = \xtensor{(\Lambda^{-1})}{_\rho}{^\mu} P^\rho = \xtensor{\Lambda}{^\mu}{_\rho} P^\rho

其中最后一步利用了 [定理17].

[定理31] 齐次洛伦兹变换 :math:`U(\Lambda)` 作用于态矢 :math:`\psi_{p, \sigma}` 得到的态 :math:`U(\Lambda)\psi_{p, \sigma}` 是四动量 :math:`P^a` 的本征态 (其中 :math:`a` 是抽象指标), 对应的本征值为 :math:`\Lambda p`.

[证明] 考虑用 :math:`P^\mu` 作用于变换后的态 :math:`U(\Lambda)\psi_{p, \sigma}`, 有

.. math:: 
    P^\mu U(\Lambda) \psi_{p, \sigma} =&\ \big[U(\Lambda)U^{-1}(\Lambda) \big] P^\mu U(\Lambda) \psi_{p, \sigma} 
    = U(\Lambda)\big[ U^{-1}(\Lambda) P^\mu U(\Lambda) \big] \psi_{p, \sigma} \\
    =&\ U(\Lambda)\big[ \xtensor{\Lambda}{^\mu}{_\rho} P^\rho \big] \psi_{p, \sigma} 
    =   U(\Lambda)\big[ \xtensor{\Lambda}{^\mu}{_\rho} p^\rho \big] \psi_{p, \sigma} \\
    =&\ \xtensor{\Lambda}{^\mu}{_\rho} p^\rho U(\Lambda) \psi_{p, \sigma}

其中最后一步能够把 :math:`U(\Lambda)` 和 :math:`\xtensor{\Lambda}{^\mu}{_\rho}, p^\rho` 调换位置, 是因为 :math:`p, \Lambda` 都是实参数, 而 :math:`U(\Lambda)` 是算符. 为了进一步解释这一个问题, 注意在 :math:`U(\Lambda)` 的无穷小展开式中, 首先 :math:`\xtensor{\Lambda}{^\mu}{_\nu} = \xtensor{\delta}{^\mu}{_\nu} + \xtensor{\omega}{^\mu}{_\nu}`, 说明若 :math:`\omega` 是实参数, 则 :math:`\Lambda` 也是实参数. 而根据 :eq:`ujp-expansion`

.. math:: 
    U(1+\omega, \epsilon) = 1+ \frac{1}{2} \I \omega_{\rho\sigma} J^{\rho\sigma} - \I \epsilon_\rho P^\rho + \cdots

说明 :math:`U(\Lambda), J, P` 都是算符, 其中 :math:`U(\Lambda)` 可以表成实参数 :math:`\omega, \epsilon` 和算符 :math:`J, P` 的乘积形式. :math:`p` 是厄米算符 :math:`P` 的本征值因此是实数. 因此 :math:`U(\Lambda)` 和 :math:`\xtensor{\Lambda}{^\mu}{_\rho}, p^\rho` 调换位置是没有问题的.

于是 :math:`P^\mu \big[ U(\Lambda) \psi_{p, \sigma} \big] = (\Lambda p)^\mu \big[ U(\Lambda) \psi_{p, \sigma} \big]`. 即 :math:`U(\Lambda)\psi_{p, \sigma}` 是四动量 :math:`P^a` 对应于本征值 :math:`(\Lambda p)^a` 的本征态. 而这样的本征态又可以表为 :math:`\psi_{\Lambda p,\sigma'}`, 从而 :math:`U(\Lambda) \psi_{p, \sigma}` 必须是态矢 :math:`\psi_{\Lambda p,\sigma'}` 的线性组合

.. math:: 
    U(\Lambda) \psi_{p, \sigma} = \sum_{\sigma'} C_{\sigma'\sigma}(\Lambda, p) \psi_{\Lambda p,\sigma'}

注意这个线性组合是在 :math:`\sigma` 空间的. 也就是说, 在 :math:`p` 空间, 已经能确定态 :math:`\psi_{\Lambda p,\sigma'}` 和 :math:`U(\Lambda) \psi_{p, \sigma}` 只相差一个缩放因子, 因为它们都是 :math:`P^a` 的本征态并且本征值已经确定. 但是注意到变换 :math:`U(\Lambda)` 虽然只是将 :math:`P` 的一个本征态变为另一个本征态, 但对于其他自由度 :math:`\sigma`, 变换 :math:`U(\Lambda)` 可能会把某 :math:`\sigma` 的本征态变为其他一些态的叠加. 因此需要表示成线性组合的形式.

这里可能提出的问题是, 为什么对于齐次洛伦兹变换, 会造成 :math:`\sigma` 的线性组合, 而平移变换则不会? 关键在于, 平移变换相当于 :math:`\omega = 0`, :math:`U(1, a)` 的唯一生成元就是 :math:`P` (这就是为什么 :math:`U(1, a)` 能写成 :math:`\E^{-\I p^\mu a_\mu}` 的形式), 因此平移变换的 :math:`U(1, a)` 只能在动量 :math:`P` 空间造成影响. 而在本征态表示式 :math:`\psi_{p, \sigma}` 中, 已经人为将动量空间 :math:`p` 和其他空间 :math:`\sigma` 分离, 从而这样的 :math:`U(1, a)` 不可能对其他空间造成作用.

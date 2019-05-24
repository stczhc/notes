
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
    Helgaker, T., Jorgensen, P., & Olsen, J. (2014). *Molecular electronic-structure theory.* John Wiley & Sons.

第二章 二次量子化中的自旋 (B)
=============================

第四节 行列式的自旋性质
-----------------------

我们将考虑在什么情况下, 行列式构成总和投影自旋的本征函数. 对行列式的自旋性质的了解是重要的, 因为行列式是构成 :math:`N` 电子波函数的关键部分.

1 一般考虑
^^^^^^^^^^

哈密顿量是单重态算符, 因此它和总自旋以及投影自旋对易

.. math::
    \big[ \hat{S}^2, \hat{H} \big] = 0,\quad \big[ \hat{S}_z, \hat{H} \big] = 0

因此哈密顿量和 :math:`\hat{S}^2` 以及 :math:`\hat{S}_z` 具有共同的本征函数集, 我们应该假设精确的波函数是具有量子数 :math:`S` 和 :math:`M` 的自旋本征函数. 因此, 当计算这个态的近似时, 如果限制优化在 Fock 空间由具有量子数 :math:`S` 和 :math:`M` 的自旋本征函数张开的部分, 应该是比较方便的. 因此需要考虑行列式的自旋性质.

Slater 行列式一般不是哈密顿量的本征函数, 但是是自旋轨道居位数算符的非简并本征函数

.. math::
    \hat{N}_{p\sigma}|\bm{k}\rangle = k_{p\sigma} |\bm{k}\rangle

因此, 我们应该可以建立一般的行列式的自旋性质, 通过检查自旋算符和自旋轨道居位数算符之间的对易子. 注意到自旋轨道居位数算符和自旋投影算符对易

.. math::
    \big[ \hat{S}_z, \hat{N}_{p\sigma} \big] = 0

以上关系成立是因为, 自旋投影算符是自旋轨道居位数算符的线性组合 (自旋投影算符的矩阵是对角的, 就是看每个自旋的数目乘以 :math:`\frac{1}{2}`). 通过以上对易关系和自旋轨道居位数之间没有简并, (如果有简并, 那么行列式就可能是属于不同本征值的混合, 无法对应于自旋投影的单一值. 极端情况是, 如果居位数算符改成 0 算符, 它也与自旋投影对易, 但是它作用在态上都得到 0 特征值, 都是简并的) 我们可以知道 Slater 行列式是投影自旋的本征函数

.. math::
    \hat{S}_z |\bm{k}\rangle = M|\bm{k}\rangle

接下来考虑 Slater 行列式的总自旋. 可以算出自旋轨道居位数算符和升降算符之间的对易子为

.. math::
    \big[ \hat{S}_+, \hat{N}_{p\sigma} \big] =&\ a_{p\alpha}^\dagger a_{p\sigma} \delta_{\beta\sigma}
        - a_{p\sigma}^\dagger a_{p\beta} \delta_{\alpha\sigma} \\
    \big[ \hat{S}_-, \hat{N}_{p\sigma} \big] =&\ a_{p\beta}^\dagger a_{p\sigma} \delta_{\alpha\sigma}
        - a_{p\sigma}^\dagger a_{p\alpha} \delta_{\beta\sigma}

进一步我们可以得到 :math:`\hat{S}^2` 的对易子

.. math::
    \big[ \hat{S}^2, \hat{N}_{p\alpha} \big] =&\ \hat{S}_+ a_{p\beta}^\dagger a_{p\alpha}
        -a_{p\alpha}^\dagger a_{p\beta} \hat{S}_- \\
    \big[ \hat{S}^2, \hat{N}_{p\beta } \big] =&\ a_{p\alpha}^\dagger a_{p\beta} \hat{S}_-
        -\hat{S}_+ a_{p\beta}^\dagger a_{p\alpha}

显然, 自旋轨道居位数算符不和总自旋算符对易. 因此, 一般地, 我们不期待 Slater 行列式是总自旋的本征函数. 当然, 不对易的算符可能还是有共同本征函数 (在特殊情况下). 事实上, 后面我们将讨论一类重要的行列式, 它们也是自旋本征函数.

尽管 Slater 行列式自身不是自旋本征函数, 通过行列式的线性组合构造自旋本征函数是可能的. 产生自旋适配的行列式的方法的一个线索是, 观察到总自旋和投影自旋算符都和 alpha 和 beta 自旋的总和居位数算符对易

.. math::
    \big[ \hat{S}_z, \hat{N}_{p\alpha} + \hat{N}_{p\beta} \big] =&\ 0\\
    \big[ \hat{S}^2, \hat{N}_{p\alpha} + \hat{N}_{p\beta} \big] =&\ 0

上述结论也可以直接从 :math:`\hat{N}_{p\alpha} + \hat{N}_{p\beta}` 是单重态算符这一事实得到. 自旋适配的函数因此可以构建为 :math:`\hat{S}_z, \hat{S}^2` 和 :math:`\hat{N}_{p\alpha} + \hat{N}_{p\beta}` 的共同本征函数. 在第 5 节和第 6 节将讨论这个方法.

2 行列式的自旋投影
^^^^^^^^^^^^^^^^^^

假设行列式写成 alpha 产生算符的乘积 (alpha 序列) 乘以 beta 产生算符的乘积 (beta 序列) 作用在真空态上的形式:

.. math::
    |\bm{k}_\alpha \bm{k}_\beta \rangle =
        \left[ \prod_{p=1}^n \big( a_{p\alpha}^\dagger \big)^{k_{p\alpha}}\right]
        \left[ \prod_{p=1}^n \big( a_{p\beta }^\dagger \big)^{k_{p\beta }}\right] |\mathrm{vac}\rangle

对应于双占据轨道的算符可以移到其他产生算符的前面. 于是行列式是三个序列的乘积 - 核序列, alpha 序列和 beta 序列:

.. math::
    |\bm{k}_\alpha \bm{k}_\beta \rangle = \hat{A}_c^\dagger \hat{A}_\alpha^\dagger A_{\beta}^\dagger
        |\mathrm{vac}\rangle

其中核序列由下式给出

.. math::
    \hat{A}_c^\dagger = \mathrm{sgn} \prod_{p=1}^n \big( a_{p\alpha}^\dagger a_{p\beta}^\dagger \big)
        ^{k_{p\alpha}k_{p\beta}}

其中符号因子 :math:`\mathrm{sgn}` 依赖于移出核序列所需的交换数. alpha 序列和 beta 序列为

.. math::
    \hat{A}_\alpha^\dagger = &\ \prod_{p=1}^n \big( a_{p\alpha}^\dagger \big)^{k_{p\alpha}-k_{p\alpha}k_{p\beta}} \\
    \hat{A}_\beta^\dagger = &\ \prod_{p=1}^n \big( a_{p\beta}^\dagger \big)^{k_{p\beta}-k_{p\alpha}k_{p\beta}}

其中只有单占据的轨道有贡献. 于是自旋投影本征方程可以写为

.. math::
    \hat{S}_z \hat{A}_c^\dagger \hat{A}_\alpha^\dagger A_{\beta}^\dagger
        |\mathrm{vac}\rangle =
        \big[ \hat{S}_z, \hat{A}_c^\dagger \hat{A}_\alpha^\dagger A_{\beta}^\dagger \big] |\mathrm{vac}\rangle

先计算 :math:`\hat{S}_z` 和各种序列之间的矩阵元 (这个式子不用具体算出也很好理解, 因为 :math:`\hat{S}_z` 可以用粒子数算符表出)

.. math::
    \big[ \hat{S}_z, \hat{A}_c^\dagger] =&\ 0\\
    \big[ \hat{S}_z, \hat{A}_\alpha^\dagger] =&\ \frac{1}{2} n_\alpha A_\alpha^\dagger \\
    \big[ \hat{S}_z, \hat{A}_\beta ^\dagger] =&\ -\frac{1}{2} n_\beta A_\beta ^\dagger

其中 :math:`n_\alpha` 和 :math:`n_\beta` 是 alpha 和 beta 序列中的轨道数 (即未配对的 alpha 和 beta 电子数):

.. math::
    n_\alpha =&\ \sum_{p=1}^n k_{p\alpha} (1-k_{p\beta}) \\
    n_\beta  =&\ \sum_{p=1}^n k_{p\beta} (1-k_{p\alpha})

于是自旋投影本征方程中的对易子可以写为

.. math::
    \big[ \hat{S}_z, \hat{A}_c^\dagger \hat{A}_\alpha^\dagger A_{\beta}^\dagger \big]
    = \frac{1}{2} (n_\alpha - n_\beta ) \hat{A}_c^\dagger \hat{A}_\alpha^\dagger A_{\beta}^\dagger

这意味着所有行列式都是自旋投影算符的本征函数

.. math::
    \hat{S}_z |\bm{k}_\alpha \bm{k}_\beta \rangle = \frac{1}{2} (n_\alpha - n_\beta) | \bm{k}_\alpha
        \bm{k}_\beta \rangle

和预期的一样, 自旋投影可以简单从未配对的 alpha 电子超过 beta 电子的数量得到.

3 行列式的总自旋
^^^^^^^^^^^^^^^^

现在我们继续推导总自旋算符在行列式的作用:

.. math::
    \hat{S}^2 |\bm{k}_\alpha \bm{k}_\beta \rangle = \big[ \hat{S}_- \hat{S}_+ + \hat{S}_z (\hat{S}_z + 1 ) \big]
        |\bm{k}_\alpha \bm{k}_\beta \rangle

为此, 我们需要升降算符和算符序列之间的对易子. 包含升算符的对易子为

.. math::
    \big[ \hat{S}_+, \hat{A}_c^\dagger \big] =&\ 0 \\
    \big[ \hat{S}_+, \hat{A}_\alpha^\dagger \big] =&\ 0 \\
    \big[ \hat{S}_+, \hat{A}_\beta ^\dagger \big] =&\ \sum_{p=1}^n k_{p\beta} (1-k_{p\alpha})\hat{A}_\beta^\dagger
        \big( a_{p\beta}^\dagger \to a_{p\alpha}^\dagger \big)

升算符对 beta 序列的作用是, 产生 :math:`n_\beta` 个序列的线性组合, 其中每一个序列都是通过从原始序列替换一个 beta 产生算符为对应的 alpha 算符来得到. 采用相同的记号, 包含降算符的对易子为

.. math::
    \big[ \hat{S}_-, \hat{A}_c^\dagger \big] =&\ 0 \\
    \big[ \hat{S}_-, \hat{A}_\alpha ^\dagger \big] =&\ \sum_{p=1}^n k_{p\alpha} (1-k_{p\beta})\hat{A}_\alpha^\dagger
        \big( a_{p\alpha}^\dagger \to a_{p\beta}^\dagger \big) \\
    \big[ \hat{S}_-, \hat{A}_\beta^\dagger \big] =&\ 0

降算符对 alpha 序列的作用是, 产生 :math:`n_\alpha` 个序列的线性组合, 其中每一个序列是通过降低 alpha 序列中一个轨道的自旋投影来得到.

为了得到总自旋的作用, 先用升算符作用

.. math::
    \hat{S}_+ |\bm{k}_\alpha\bm{k}_\beta\rangle = \hat{A}_c^\dagger \hat{A}_\alpha^\dagger
        \big[ \hat{S}_+, \hat{A}_\beta^\dagger \big] |\mathrm{vac} \rangle

再用降算符作用得

.. math::
    \hat{S}_- |\hat{S}_+ | \bm{k}_\alpha\bm{k}_\beta\rangle = \hat{A}_c^\dagger
        \big[ \hat{S}_-, \hat{A}_\alpha^\dagger \big]
        \big[ \hat{S}_+, \hat{A}_\beta^\dagger \big]
        |\mathrm{vac} \rangle
        + \hat{A}_c^\dagger
        \big[ \hat{S}_-, 
        \big[ \hat{S}_+, \hat{A}_\beta^\dagger \big] \big]
        |\mathrm{vac} \rangle

利用雅可比恒等式, 其中的双对易子可以写为

.. math::
    \big[ \hat{S}_-, \big[ \hat{S}_+, \hat{A}_\beta^\dagger \big]\big]
    =\big[ \hat{A}_\beta^\dagger, \big[ \hat{S}_+, \hat{S}_- \big]\big]
    = 2 \big[ \hat{A}_\beta^\dagger, \hat{S}_z \big] = n_\beta \hat{A}_\beta^\dagger

于是

.. math::
    \hat{S}_- |\hat{S}_+ | \bm{k}_\alpha\bm{k}_\beta\rangle = \hat{A}_c^\dagger
        \big[ \hat{S}_-, \hat{A}_\alpha^\dagger \big]
        \big[ \hat{S}_+, \hat{A}_\beta^\dagger \big]
        |\mathrm{vac} \rangle
        + n_\beta | \bm{k}_\alpha\bm{k}_\beta\rangle

自旋投影部分为

.. math::
    \hat{S}_z \big(\hat{S}_z + 1 \big) |\bm{k}_\alpha \bm{k}_\beta \rangle = \frac{1}{4}
        (n_\alpha - n_\beta ) (n_\alpha - n_\beta + 2) |\bm{k}_\alpha \bm{k}_\beta \rangle

结合最后两式, 总自旋算符的作用为

.. math::
    \hat{S}^2 |\bm{k}_\alpha \bm{k}_\beta \rangle =
        \frac{1}{4}
        \big[ (n_\alpha - n_\beta )^2 + 2 (n_\alpha + n_\beta) \big] |\bm{k}_\alpha \bm{k}_\beta \rangle
        +\hat{A}_c^\dagger \big[ \hat{S}_-, \hat{A}_\alpha^\dagger \big]
        \big[ \hat{S}_+, \hat{A}_\beta^\dagger \big]
        |\mathrm{vac} \rangle

这证实了一般情况下, 行列式不是总自旋的本征函数. 降算符和 alpha 序列之间的对易子, 和升算符和 beta 序列之间的对易子造成了行列式的线性组合, 这些行列式中两个轨道的自旋翻转了. 但是如果任何一个对易子为零, 则行列式称为总自旋算符的本征函数.

有两种 Slater 行列式是总自旋的本征函数的特殊情况. 在 **闭壳层** 体系, 所有轨道双占据, alpha 和 beta 序列成为恒等算符. 上式中的对易子为零, 行列式是总自旋属于零特性值的本征函数 (因为 :math:`n_\alpha` 和 :math:`n_\beta` 都是零). 在 **高自旋态**, 所有单占据轨道都有相同自旋. 相反自旋的序列成为恒等算符, 包含它的对易子的项为零. 上述方程简化为 :math:`\hat{S}^2` 的本征方程

.. math::
    \hat{S}^2 |\bm{k}_\alpha \bm{k}_\beta (n_\beta = 0) \rangle =&\ \frac{n_\alpha}{2} \left( \frac{n_\alpha}{2} + 1 \right)
        |\bm{k}_\alpha \bm{k}_\beta(n_\beta = 0) \rangle \\
    \hat{S}^2 |\bm{k}_\alpha (n_\alpha = 0) \bm{k}_\beta \rangle =&\ \frac{n_\beta}{2} \left( \frac{n_\beta}{2} + 1 \right)
        |\bm{k}_\alpha(n_\alpha = 0) \bm{k}_\beta \rangle

其中省略了对核序列的标记. 行列式  :math:`|\bm{k}_\alpha \bm{k}_\beta (n_\beta = 0) \rangle` 因此是具有总自旋 :math:`n_\alpha/2` 和自旋投影 :math:`n_\alpha/2` 的本征函数. 类似地, 行列式  :math:`|\bm{k}_\alpha(n_\alpha = 0) \bm{k}_\beta  \rangle` 因此是具有总自旋 :math:`n_\beta/2` 和自旋投影 :math:`-n_\beta/2` 的本征函数.

耦合系数注解
------------

方程 (2.6.5) (2.6.6) 给出

.. math::
    C_{1/2,\sigma}^{S,M} =&\ \sqrt{\frac{S+2\sigma M}{2S}} \\
    C_{-1/2,\sigma}^{S,M} =&\ -2\sigma \sqrt{\frac{S+1-2\sigma M}{2(S+1)}}

维基百科 Clebsch-Gordan 系数给出 (对 :math:`j_2 = 1/2` 的 :math:`\langle j_1 m_1 j_2 m_2 | JM \rangle` 情况)

.. math::
    \bigg\langle j_1\ \left(M - \frac{1}{2} \right)\ \frac{1}{2}\ \frac{1}{2} \bigg| \left( j_1 \pm \frac{1}{2} \right)\ M
    \bigg\rangle =&\ \pm \sqrt{\frac{1}{2} \left( 1 \pm \frac{M}{j_1 + \frac{1}{2}} \right)} \\
    \bigg\langle j_1\ \left(M + \frac{1}{2} \right)\ \frac{1}{2}\ \left( -\frac{1}{2}\right) \bigg| \left( j_1 \pm \frac{1}{2} \right)\ M
    \bigg\rangle =&\ \sqrt{\frac{1}{2} \left( 1 \mp \frac{M}{j_1 + \frac{1}{2}} \right)}

标记 :math:`C_{t_N,\sigma}^{SM}` 的对应关系为

.. math::
    S =&\ J,\quad M =M \\
    j_1 =&\ S-t_N, \quad m_1 = M - \sigma \\
    j_2 =&\ \frac{1}{2},\quad m_2 = \sigma

因此

.. math::
    C_{1/2,\sigma}^{SM} =&\ \bigg\langle S-\frac{1}{2}, M-\sigma, \frac{1}{2}, \sigma \bigg| SM \bigg\rangle \\
    C_{-1/2,\sigma}^{SM} =&\ \bigg\langle S+\frac{1}{2}, M-\sigma, \frac{1}{2}, \sigma \bigg| SM \bigg\rangle

由维基百科公式重新组合并注意到 :math:`S = j_1 + t_N` 得

.. math::
    \bigg\langle j_1\ \left(M \mp \frac{1}{2} \right)\ \frac{1}{2}\ \left(\pm \frac{1}{2}\right) \bigg| \left( j_1 + \frac{1}{2} \right)\ M
    \bigg\rangle =&\ \sqrt{\frac{1}{2} \left( 1 \pm \frac{M}{j_1 + \frac{1}{2}} \right)}
    =  \sqrt{\frac{1}{2} \left( 1 \pm \frac{M}{S} \right)} = \sqrt{\frac{S\pm M}{2S}} \\
    \bigg\langle j_1\ \left(M \mp \frac{1}{2} \right)\ \frac{1}{2}\ \left(\pm \frac{1}{2}\right) \bigg| \left( j_1 - \frac{1}{2} \right)\ M
    \bigg\rangle =&\ \mp \sqrt{\frac{1}{2} \left( 1 \mp \frac{M}{j_1 + \frac{1}{2}} \right)}
    =  \mp \sqrt{\frac{1}{2} \left( 1 \mp \frac{M}{S+1} \right)} = \mp\sqrt{\frac{S+1\mp M}{2(S+1)}}

和方程 (2.6.5) (2.6.6) 一致.

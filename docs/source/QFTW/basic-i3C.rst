
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
    

第三章 散射理论 (C)
===================

第四节 速率和截面
-----------------

:math:`S` 矩阵 :math:`S_{\beta\alpha}` 是跃迁 :math:`\alpha \to \beta` 的概率振幅, 但这和实验测得的跃迁速率和截面的关系是什么? 特别地, :eq:`s-matrix-delta` 显示 :math:`S_{\beta\alpha}` 有一个因子 :math:`\delta^4(p_\beta - p_\alpha)`, 它保证了总能量和动量的守恒, 那么我们该如何理解跃迁概率 :math:`|S_{\beta\alpha}|^2` 中的 :math:`[\delta^4(p_\beta - p_\alpha)]^2` 因子? 为了解决这些问题, 通常的办法是以实验实际进行的方式来研究, 使用波包来代表碰撞之前彼此远离的局域化粒子, 然后遵循这些多粒子叠加态的时间历史. 接下来, 我们将采取另一种方式, 给出一个主要结果的快速简单的推导. 这实际上更多的是一种助记而不是推导. 这其中的理由是 (以我所知道的) 还没有有意义的物理学的开放问题是依赖于必须正确理解关于这些问题的细致观点的. (这句的意思是说, 如下只给出一些粗略的推导, 而不是特别严格. 但是理由是, 所研究的物理问题并不需要关于这些推导中的特别细致的部分. 因此粗略的推导对于所有物理问题来说都已经足够了. )

1 箱归一化
^^^^^^^^^^

我们考虑整个物理粒子的系统被包含在一个大箱子 (box) 里面, 这个箱有一个宏观体积 :math:`V`. 例如, 我们可以将箱取为一个正方体, 但是我们将它的相对的面上的点认同 (identified) (即认为相对的面上的点是同一个点. 因此形成一个周期系统. ), 因此空间波函数的单值性要求动量是量子化的. (即波函数在同一个点上必须有相同的值. 因此 :math:`f(x) = f(x + L)`. 这个方程的解只能是三角函数 :math:`\sin(px)`, 其中 :math:`px` 具有周期 :math:`2\pi`. :math:`p` 是波函数的参数, 也就成为了态矢的下标, 即动量. 由 :math:`\sin(px) = \sin(p(x + L))` 得 :math:`pL = 2n\pi`, 即 :math:`p = \frac{2\pi}{L} n`. )

.. math::
    \bm{p} = \frac{2\pi}{L}(n_1, n_2, n_3)
    :label: p-discrete

其中 :math:`n_i` 是整数, :math:`L^3 = V`. 那么, 全三维 delta 函数成为

.. math::
    \delta^3_V(\bm{p}'-\bm{p}) \equiv \frac{1}{(2\pi)^3} \int_V \D^3 x \E^{\I(\bm{p} - \bm{p}')\cdot \bm{x}} = \frac{V}{(2\pi)^3} \delta_{\bm{p}',\bm{p}}

其中 :math:`\delta_{\bm{p}',\bm{p}}` 是通常的 Kronecker delta 符号, 如果下标相等则等于一, 不然等于零. (注意其中上式第一个等号是三维的傅里叶变换. 把 delta 函数变为了单位函数. 但是这个定义其实和一般的 :math:`\delta^3(\bm{p}'-\bm{p})` 不一样, 因为一般情况下如果 :math:`\bm{p}' = \bm{p}`, delta 函数在这一点的值应该等于正无穷大. 但这里其实是等于有限值. ) 从而归一化条件 :eq:`psi-multi-norm-complex` 意味着我们所考虑的态在箱中的标量积并不仅仅是 Kronecker delta 的乘积的和, 还有一个因子 :math:`[V/(2\pi)^3]^N`, 其中 :math:`N` 是态中粒子的数目. 为了计算跃迁概率, 我们应该使用单位范数的态, 因此, 我们引入近似的箱归一化的态

.. math::
    \psi_\alpha^{\mathrm{Box}} \equiv \big[ (2\pi)^3/V \big]^{N_\alpha/2} \psi_\alpha
    :label: psi-box-def

其范数为

.. math::
    \big( \psi_\beta^{\mathrm{Box}}, \psi_\alpha^{\mathrm{Box}}\big) = \delta_{\beta\alpha}

其中 :math:`\delta_{\beta\alpha}` 是 Kronecker delta 的乘积, 每个3动量, 自旋, 和粒子种类标记都有一个 Kronecker delta 项, 再加上粒子置换后的项. 对应地, :math:`S` 矩阵应该写为

.. math::
    S_{\beta\alpha} = \big[ V/(2\pi)^3 \big]^{(N_\beta + N_\alpha)/2} S_{\beta\alpha}^{\mathrm{Box}}

其中 :math:`S_{\beta\alpha}^{\mathrm{Box}}` 是通过 :eq:`psi-box-def` 计算的 :math:`S` 矩阵.

2 微分跃迁速率
^^^^^^^^^^^^^^

很显然, 如果粒子永远在箱中, 那么每个可能的跃迁将一次次发生. 为了计算一个有意义的跃迁概率, 我们还需要将体系放在一个 "时间箱". 我们假定相互作用仅仅持续 :math:`T` 时间. 我们可以立即得出, 能量守恒 delta 函数应该被替换为

.. math::
    \delta_T(E_\alpha - E_\beta) = \frac{1}{2\pi} \int_{-T/2}^{T/2} \exp\big( \I (E_\alpha - E_\beta) t \big) \D t

一个多粒子系统, 在相互作用打开之前处于状态 :math:`\alpha`, 在相互作用关闭之后被发现处于状态 :math:`\beta` 的概率是

.. math::
    P(\alpha \to \beta) = \big| S_{\beta\alpha}^{\mathrm{Box}} \big|^2
        = \big[ (2\pi)^3/V \big]^{N_\alpha + N_\beta} |S_{\beta\alpha}|^2

这是跃迁到一个特殊的箱态 :math:`\beta` 的概率. 在一个动量空间体积 :math:`\D^3 p` 中, 单粒子箱态的数目是 :math:`V \D^3 p/(2\pi)^3`, 因为这是动量 :eq:`p-discrete` 在 :math:`\bm{p}` 周围动量空间体积 :math:`\D^3 p` 中, 三整数组 :math:`n_1,n_2,n_3` 的数目. (考虑 :math:`\bm{p} = \frac{2\pi}{L}(n_1, n_2, n_3)` 这个式子, 它意味着在 :math:`p` 空间中可以取的动量是一个个点. 我们考虑这些点相邻的距离, 就可以知道在多大的空间里面有一个点. 两个点在一条坐标轴上相距 :math:`2\pi / L`. 因此, 一个点占据的体积是 :math:`(2\pi / L)^3 = (2\pi)^3 / V`. 那么, 单位体积的点数就是这个值的倒数, 即 :math:`V/(2\pi)^3`. 因此, 在体积 :math:`\D^3 p` 中的点数就是 :math:`V \D^3 p/(2\pi)^3`.) 我们应该把终态区间 :math:`\D \beta` 定义为对每个终态粒子的 :math:`\D^3 \bm{p}` 之积. (一般地可以认为 :math:`\D \beta` 中的一部分因子是 :math:`\D^3 \bm{p}` 之积. 因为终态是多粒子态, 所以每个粒子都会在 :math:`\D \beta` 中贡献一个 :math:`\D^3 \bm{p}`. 当然 :math:`\D \beta` 还包括其他指标对应的 delta 符号, 但是除了动量的其他指标, 比如自旋和粒子类型, 都是离散的, 最后直接加上求和号就行, 比如后面出现的对自旋求和. 也就是说, 对于含 :math:`\D \beta` 的公式, 默认都是只考虑一种特定的自旋和粒子类型, 因而 :math:`\D \beta` 也就仅仅定义为 :math:`\D \bm{p}` 因子的乘积. 现在的问题是, 当我们考虑总的状态数目, 我们选取体积元 :math:`\D \beta`. 而按照上面的讨论, :math:`\D^3 \bm{p}` 是其中子空间 :math:`p` 空间的体积元. 因此, 每个 :math:`\D^3 p` 空间贡献的状态数也就要成为整个 :math:`\beta` 空间的状态数的一个系数. ) 因此在这个区间的总状态数是

.. math::
    \D \mathscr{N}_\beta = \big[ V/(2\pi)^3 \big]^{N_\beta} \D \beta

因此, 系统终态落在区间 :math:`\D \beta` 的总概率是

.. math::
    \D P(\alpha \to \beta) = P(\alpha \to \beta) \D \mathscr{N}_\beta =
        \big[ (2\pi)^3/V \big]^{N_\alpha} |S_{\beta\alpha}|^2 \D \beta
    :label: dp-alpha-beta-s

在本节我们将对终态 :math:`\beta` 做一些限制. 这些终态不仅仅 (轻微地) 和初态 :math:`\alpha` 不同, 而且还满足更严格的条件, 即在 :math:`\beta` 态中不存在粒子的子集 (除了整个态本身) 与 :math:`\alpha` 态中某对应的粒子子集具有精确相同的四动量. (按照下一章的语言来说, 这意味着我们仅仅考虑 :math:`S` 矩阵的连接 (connected) 部分. ) 对于这样的态, 我们可以定义无 delta 函数的矩阵元 :math:`M_{\beta\alpha}`:

.. math::
    S_{\beta\alpha} \equiv -2\I \pi \delta_V^3 (\bm{p}_\beta - \bm{p}_\alpha) \delta_T(E_\beta - E_\alpha) M_{\beta\alpha}

(注意这个式子来源于 :eq:`s-matrix-delta` 式. ) 我们引入的箱允许我们将 :math:`\beta \neq \alpha` 的 :math:`|S_{\beta\alpha}|^2` 中的 delta 函数平方解释为

.. math::
    \big[ \delta_V^3(\bm{p}_\beta - \bm{p}_\alpha) \big]^2 =&\ \delta_V^3(\bm{p}_\beta - \bm{p}_\alpha)
        \delta^3_V(0) = \delta_V^3(\bm{p}_\beta - \bm{p}_\alpha) V/(2\pi)^3 \\
    \big[ \delta_T(E_\beta - E_\alpha) \big]^2 =&\ \delta_T(E_\beta - E_\alpha)\delta_T(0) = 
        \delta_T(E_\beta - E_\alpha) T/2\pi

(注意其中第二个 :math:`\delta_V^3(\bm{p}_\beta - \bm{p}_\alpha)` 变为 :math:`\delta(0)` 是因为在第一个 delta 因子存在的情况下, 第二个 delta 因子的条件一定满足, 即可以将 :math:`\bm{p}_\beta = \bm{p}_\alpha` 代入第二个 delta 函数, 得到 0). 代入 :eq:`dp-alpha-beta-s` 则给出 **微分跃迁概率** (differential transition probability)

.. math::
    \D P(\alpha \to \beta) =&\ \big[ (2\pi)^3/V \big]^{N_\alpha} |S_{\beta\alpha}|^2 \D \beta \\
        =&\ (-2\I \pi)(2\I \pi) \big[ \delta_V^3 (\bm{p}_\beta - \bm{p}_\alpha) \delta_T(E_\beta - E_\alpha) \big]^2 |M_{\beta\alpha}|^2  \big[ (2\pi)^3/V \big]^{N_\alpha} \D \beta \\
        =&\ (2\pi)^2 \frac{V}{(2\pi)^3} \frac{T}{2\pi} 
            \delta_V^3(\bm{p}_\beta - \bm{p}_\alpha) \delta_T(E_\beta - E_\alpha) |M_{\beta\alpha}|^2  \big[ (2\pi)^3/V \big]^{N_\alpha} \D \beta \\
        =&\ (2\pi)^2 \Big[ \frac{(2\pi)^3}{V} \Big]^{N_\alpha - 1}
            \frac{T}{2\pi} \delta_V^3(\bm{p}_\beta - \bm{p}_\alpha) \delta_T(E_\beta - E_\alpha) |M_{\beta\alpha}|^2 \D \beta

若令 :math:`V` 和 :math:`T` 取非常大的值, 这里的 delta 函数乘积可以解释为通常的四维 delta 函数 :math:`\delta^4(p_\beta - p_\alpha)`. 在这个极限下, 跃迁概率就正比于相互作用发生的时间 :math:`T`, 其中的系数就解释为 **微分跃迁速率** (differential transition rate):

.. math::
    \D \Gamma(\alpha \to \beta) \equiv&\ \D P(\alpha \to \beta) / T \\
        =&\ (2\pi)^{3N_\alpha - 2}V^{1-N_\alpha} |M_{\beta\alpha}|^2 \delta^4(p_\beta - p_\alpha) \D \beta
    :label: diff-trans-rate

现在我们有

.. math::
    S_{\beta\alpha} \equiv -2\I \pi \delta^4(p_\beta - p_\alpha) M_{\beta\alpha}
    :label: s-matrix-delta-m

这个是将 :math:`S` 矩阵元的计算解释为对实际实验的预测所用到的主公式 (master formula). 在本节我们将在之后回到因子 :math:`\delta^4(p_\alpha - p_\beta)\D \beta` 的解释这个问题上来.

有两种情况具有特别的意义 :math:`N_\alpha = 1` 和 :math:`N_\alpha = 2`.

3 入射粒子数为1的情况
^^^^^^^^^^^^^^^^^^^^^

在这种情况下, 体积 :math:`V` 在 :eq:`diff-trans-rate` 中被抵消. 这给出一个单粒子态 :math:`\alpha` 衰变为一个一般的多粒子态 :math:`\beta` 的跃迁速率为

.. math::
    \D \Gamma(\alpha \to \beta) = 2\pi |M_{\beta\alpha}|^2 \delta^4(p_\beta - p_\alpha) \D \beta
    :label: decay-rate-single-particle

显然, 只有当相互作用发生的时间 :math:`T` 远小于粒子 :math:`\alpha` 平均寿命 :math:`\tau_\alpha` 时这才有意义, 因此我们不能在 :math:`\delta_T(E_\alpha - E_\beta)` 中考虑极限 :math:`T \to \infty`. (这里注意, 尽管只有一个入射粒子. 但是模型的哈密顿量中的相互作用包括入态和出态中所有粒子的相互作用, 因为哈密顿量并不是只针对入射粒子的, 对包括入射粒子和出射粒子的整个系统只有一个哈密顿量. 但是, 粒子 :math:`\alpha` 本身的衰变可能是衰变到别的粒子, 不一定是我们感兴趣的这个反应. 因此, 只有在粒子的寿命足够长, 也就是 :math:`T` 足够短的情况下, 这个模型才是成立的. ) 在这个 delta 函数中, 有一个无法移除的宽度 :math:`\Delta E \simeq 1/T \gtrsim 1/\tau_\alpha` (按照测不准原理, :math:`T \to \infty`, :math:`T` 越不精确, :math:`E` 就越精确. 反之如果 :math:`T` 不能取无限大, :math:`E` 就不能无限精确, 因此有一个宽度. ) 因此上式只有当总衰变率 :math:`1/\tau_\alpha` 远小于任何这个过程的特征能量时, 才是有效的.

4 入射粒子数为2的情况
^^^^^^^^^^^^^^^^^^^^^

在这种情况下, :eq:`diff-trans-rate` 式的速率正比于 :math:`1/V`, 或者说, 正比于其中一个粒子在另一个粒子的位置的密度 (这里是考虑整个 :math:`V^{-1} \delta^4(p_\beta - p_\alpha)` 代表的是其中一个粒子在另一个粒子的位置的密度). 实验上, 通常我们不考虑单位密度的跃迁速率, 而是 **单位流的速率**, 也可以称为 **截面**. 一个粒子在另一个粒子位置的流定义为密度 :math:`1/V` 和相对速度 :math:`u_\alpha` 的乘积:

.. math::
    \Phi_\alpha = u_\alpha / V.

(:math:`u_\alpha` 的一般定义会在下面给出; 现在我们只考虑如下简单情况: 当其中一个粒子静止, 那么 :math:`u_\alpha` 就定义为另一个粒子的速率.) 因此微分截面就是

.. math::
    \D \sigma(\alpha \to \beta) \equiv \D \Gamma(\alpha \to \beta) /\Phi_\alpha = (2\pi)^4 u_\alpha^{-1}
        |M_{\beta\alpha}|^2 \delta^4(p_\beta - p_\alpha) \D \beta
    :label: diff-cross-section

尽管 :math:`N_\alpha = 1` 和 :math:`N_\alpha = 2` 的情形是最重要的, :math:`N_\alpha \ge 3` 时的跃迁速率原则上也都是可以测量的, 并且其中一些对化学, 天体物理学等很重要. (例如, 在太阳中释放能量的主要反应之一中, 两个质子和一个电子变为氘和中微子.) 第3.6节展示了主跃迁速率公式 :eq`diff-trans-rate` 对于一般 :math:`N_\alpha` 初始粒子的一个应用.

5 洛伦兹变换性质
^^^^^^^^^^^^^^^^

下面我们开始研究速率和截面的洛伦兹变换性质的问题. 这将会帮助我们给出 :eq:`diff-cross-section` 中相对速度 :math:`u_\alpha` 的更一般定义. :math:`S` 矩阵的洛伦兹变换规则 :eq:`s-matrix-invar-def`, 由于与每个粒子自旋相联系的动量依赖矩阵而变得复杂. 为了避免这个复杂性, 我们考虑 :eq:`s-matrix-invar-def` 的绝对值的平方 (在除去 :eq:`s-matrix-delta-m` 中洛伦兹不变的 delta 函数因子之后), 并对所有自旋求和. 于是通过矩阵 :math:`D_{\overline{\sigma}\sigma}^{(j)}(W)` (这是正质量粒子的情况. 如果是零质量的情况, 用其他的对应矩阵) 的幺正性就可以证明, 除了 :eq:`s-matrix-invar-def` 中的能量因子, 这个和是洛伦兹不变的. 也就是说,

.. math::
    \sum_{\mathrm{spins}} |M_{\beta\alpha}|^2 \prod_\beta E \prod_\alpha E \equiv R_{\beta\alpha}
    :label: r-beta-alpha-scalar

是一个态 :math:`\alpha` 和 :math:`\beta` 的粒子4动量的标量函数. (其中 :math:`\prod_\alpha E` 和 :math:`\prod_\beta E` 表示所有单粒子能量 :math:`p^0 = \sqrt{\bm{p}^2 + m^2}` 的乘积.) 这里是说, 如果对 :eq:`s-matrix-invar-def` 式两边取绝对值平方, 也就是它本身和它的复数共轭的乘积. 那么第一项

.. math::
    \exp\big( \I a_\mu \xtensor{\Lambda}{^\mu}{_\nu} ({p'}^\nu_1+{p'}^\nu_2+\cdots - p^\nu_1 - p^\nu_2 -\cdots) \big)

乘以它的复数共轭就得到1了. 第二项暂时不管. 剩下是类似

.. math::
    \sum_{\overline{\sigma}} D_{\overline{\sigma}\sigma}^{(j)}(W)

的项. 它和它的复数共轭的乘积是

.. math::
    \left( \sum_{\overline{\sigma}} D_{\overline{\sigma}\sigma}^{(j)}(W) S_{\overline{\sigma}} \right)
    \left( \sum_{\overline{\sigma}'} D_{\overline{\sigma}'\sigma}^{(j)*}(W) S_{\overline{\sigma}'}^* \right)

这一项只有利用对 :math:`\sigma` 求和才能利用 :math:`D` 矩阵的幺正条件 (这也就是为什么正文要说对所有自旋求和). 我们有

.. math::
    \sum_\sigma \left( \sum_{\overline{\sigma}} D_{\overline{\sigma}\sigma}^{(j)}(W) S_{\overline{\sigma}} \right)
    \left( \sum_{\overline{\sigma}'} D_{\overline{\sigma}'\sigma}^{(j)*}(W) S_{\overline{\sigma}'}^* \right)
    = \sum_{\sigma, \overline{\sigma}, \overline{\sigma}'} D_{\overline{\sigma}\sigma}^{(j)}(W) D_{\overline{\sigma}'\sigma}^{(j)*}(W) S_{\overline{\sigma}}  S_{\overline{\sigma}'}^*
    = \sum_{\overline{\sigma}, \overline{\sigma}'} \delta^{\overline{\sigma}}_{\overline{\sigma}'}
        S_{\overline{\sigma}} S_{\overline{\sigma}'}^*
    = \sum_{\overline{\sigma}} |S_{\overline{\sigma}}|^2

因此对自旋求和之后, 所有 :math:`D` 矩阵就会抵消. 于是 :eq:`s-matrix-invar-def` 式中剩下的结果是

.. math::
    \sum_{\mathrm{spins}} |S_{\alpha\beta}|^2 = \frac{(\Lambda p_1)^0(\Lambda p_2)^0\cdots (\Lambda p'_1)^0(\Lambda p'_2)^0\cdots }{p_1^0p_2^0\cdots {p'}^0_1{p'}^0_2\cdots} \sum_{\mathrm{spins}} |S_{\Lambda\alpha\Lambda\beta}|^2

可以把所有变换前的项移到左边, 变换后的项移到右边, 并注意到

.. math::
    \prod_\beta E \prod_\alpha E = p_1^0p_2^0\cdots {p'}^0_1{p'}^0_2\cdots

就得到

.. math::
    \sum_{\mathrm{spins}} |S_{\alpha\beta}|^2 \prod_\beta E \prod_\alpha E
        = \sum_{\mathrm{spins}} |S_{\Lambda\alpha\Lambda\beta}|^2 \prod_\beta \Lambda E \prod_\alpha \Lambda E

其中等式左边是变换前的量, 右边是变换后的量, 因此 :math:`\sum_{\mathrm{spins}} |S_{\beta\alpha}|^2 \prod_\beta E \prod_\alpha E` 是洛伦兹不变量. :math:`|S_{\beta\alpha}|^2` 和 :math:`|M_{\beta\alpha}|^2` 只相差一些洛伦兹不变量的因子, 因此之前定义的 :math:`R_{\alpha\beta}` 也就是洛伦兹不变量.

现在我们可以写出自旋求和的单粒子衰变率 :eq:`decay-rate-single-particle`

.. math::
    \sum_{\mathrm{spins}} \D \Gamma(\alpha \to \beta) = 2\pi E_\alpha^{-1} E_{\beta\alpha}
        \delta^4(p_\beta - p_\alpha) \D \beta / \prod_\beta E.

(上面这个式子可以直接通过把 :math:`R_{\beta\alpha}` 的定义代入 :eq:`decay-rate-single-particle` 得到. 注意由于这是只有一个入射粒子的情况, 也就是说 :math:`\prod_\alpha E = E_\alpha` 是只有一项的乘积. ) 因子 :math:`\D \beta / \prod_\beta E` 可以认为是洛伦兹不变的动量空间体元 [定理2-36] 的乘积. 而 :math:`R_{\alpha\beta}` 和 delta 函数都是洛伦兹不变的, 剩下唯一的不是洛伦兹不变的因子就是 :math:`E_\alpha^{-1}`, 其中 :math:`E_\alpha` 是单个初始粒子的能量. 因此我们的结论就是, 衰变率的洛伦兹变换性质和 :math:`1/E_\alpha` 一样. 当然, 这就是通常的狭义相对论时间延缓 (动钟变慢): 粒子越快, 衰变越慢.

6 相对速度
^^^^^^^^^^

类似地, 自旋求和的截面 :eq:`diff-cross-section` 可以写为

.. math::
    \sum_{\mathrm{spins}} \D \sigma(\alpha \to \beta) = (2\pi)^4 u_\alpha^{-1} E_1^{-1} E_2^{-1}
        R_{\beta\alpha}^2 \delta^4(p_\alpha - p_\beta) \D \beta / \prod_\beta E
    :label: diff-cross-section-r

其中 :math:`E_1` 和 :math:`E_2` 是初态 :math:`\alpha` 中两个粒子的能量. 通常定义截面为 (当对自旋求和时) 四动量的洛伦兹不变函数. 因子 :math:`R_{\beta\alpha}, \delta^4(p_\beta - p_\alpha)` 和 :math:`\D \beta / \prod_\beta E` 都已经是洛伦兹不变的了, 因此这意味着我们必须在一个任意的惯性系定义相对速度 :math:`u_\alpha` 从而 :math:`u_\alpha E_1 E_2` 是一个标量. 之前我们提到, 在一个粒子 (比如粒子1) 静止的洛伦兹系, :math:`u_\alpha` 是另一个粒子的速度. 这唯一决定了在一般的洛伦兹系 :math:`u_\alpha` 具有如下值 (注意这是定义式, 但是由于 :math:`E_1E_2u_\alpha` 为洛伦兹标量, 和一个粒子静止的情况, 这个定义可以比较确定. 后面证明, 这其实在低速情况下是两个粒子在该洛伦兹系的3速度之差的绝对值)

.. math::
    u_\alpha = \sqrt{(p_1\cdot p_2)^2 - m_1^2m_2^2} \Big/ E_1E_2

其中 :math:`p_1, p_2` 和 :math:`m_1, m_2` 是出态 :math:`\alpha` 的两个粒子的动量和质量.

上式很明显说明 :math:`E_1E_2u_\alpha` 是标量. 因为移项得到 :math:`E_1E_2u_\alpha\sqrt{(p_1\cdot p_2)^2 - m_1^2m_2^2}`, 其中等式右边 :math:`p_1\cdot p_2` 是标量积, 而 :math:`m_1, m_2` 都是不变量. 因此等式右边是标量. 左边因此也是. 另外, 当粒子1静止时, :math:`\bm{p}_1 = 0, p_1^0 \equiv E_1 = m_1, p_2^0 \equiv E_2`, 因此 :math:`p_1\cdot p_2 = -p_1^0 p_2^0 + \bm{p}_1 \cdot \bm{p}_2 = -m_1 E_2`, 因此

.. math::
    u_\alpha = \sqrt{(-m_1 E_2)^2 - m_1^2m_2^2} \Big/ E_1E_2 = \sqrt{E_2^2 - m_2^2} / E_2 = |\bm{p}_2|/E_2

而这就是粒子2的速度 (根据梁灿彬 6-3-19 和 6-3-20, :math:`\bm{p} = \gamma m \bm{u}, E = \gamma m`).

下面考虑一般的情况. 在一个一般的洛伦兹系, 这个坐标系的静止观者观测到的粒子2的3速就是 :math:`|\bm{p}_2|/E_2`. 类似地, 它观测到的粒子1的3速就是 :math:`|\bm{p}_1|/E_1`. 现在利用质量壳条件 :math:`p^2 = -m^2` 就有

.. math::
    u_\alpha =&\ \frac{\sqrt{(p_1\cdot p_2)^2 - m_1^2m_2^2}}{E_1E_2}
        = \frac{\sqrt{(p_1\cdot p_2)^2 - p_1^2p_2^2}}{E_1E_2} \\
    =&\ \frac{\sqrt{\big(-E_1E_2 + \bm{p}_1 \cdot \bm{p}_2 \big)^2 - \big(-E_1^2 + \bm{p}_1^2\big)
        \big(-E_2^2 + \bm{p}_2^2\big)}}{E_1E_2} \\
    =&\ \sqrt{\big(-1 + \bm{u}_1 \cdot \bm{u}_2 \big)^2 - \big(-1 + \bm{u}_1^2\big)
        \big(-1 + \bm{u}_2^2\big)} \\
    =&\ \sqrt{1 - 2 \bm{u}_1 \cdot \bm{u}_2 + (\bm{u}_1 \cdot \bm{u}_2)^2 -1 + \bm{u}_1^2 + \bm{u}_2^2
        - \bm{u}_1^2 \bm{u}_2^2 } \\
    =&\ \sqrt{(\bm{u}_1 - \bm{u}_2 )^2 + (\bm{u}_1 \cdot \bm{u}_2)^2 - \bm{u}_1^2 \bm{u}_2^2 } \\
    \approx &\ \sqrt{(\bm{u}_1 - \bm{u}_2 )^2} = |\bm{u}_1 - \bm{u}_2|

并且, 当两个粒子运动方向相同或相反时 (即 :math:`\bm{u}_1, \bm{u}_2` 都只有一个分量不为零), 上式是严格成立的.

此外我们注意到, 上式在质心系 (center-of-mass frame) 也是成立的. 在质心系, 总三动量为零, 我们有

.. math::
    p_1 = (\bm{p}, E_1),\quad p_2 = (-\bm{p}, E_2)

因此

.. math::
    u_\alpha =&\ \frac{\sqrt{\big(-E_1E_2 + \bm{p}_1 \cdot \bm{p}_2 \big)^2 - \big(-E_1^2 + \bm{p}_1^2\big)
        \big(-E_2^2 + \bm{p}_2^2\big)}}{E_1E_2} \\
    =&\ \frac{\sqrt{\big(-E_1E_2 - \bm{p}^2 \big)^2 - \big(-E_1^2 + \bm{p}^2\big)
        \big(-E_2^2 + \bm{p}^2\big)}}{E_1E_2} \\
    =&\ \frac{\sqrt{E_1^2E_2^2 + \bm{p}^4 +2E_1E_2 \bm{p}^2 - E_1^2E_2^2 + \bm{p}^2E_1^2 + \bm{p}^2E_2^2
        -\bm{p}^4}}{E_1E_2} \\
    =&\ \frac{\sqrt{2E_1E_2 \bm{p}^2 + \bm{p}^2(E_1^2 + E_2^2)}}{E_1E_2} = \frac{|\bm{p}|(E_1+E_2)}{E_1E_2}
        = \left| \frac{\bm{p}_1}{E_1} - \frac{\bm{p}_2}{E_2} \right|
    :label: ualpha-comf

这正是我们对于相对速度应该期待的结果. 但是, 在这个参考系, :math:`u_\alpha` 并不是一个物理的速度; 特别地, 上式表明, 对于极端相对论粒子, 它可以取到2.

7 相空间因子
^^^^^^^^^^^^

下面我们转为讨论如何解释所谓的相空间因子 :math:`\delta^4(p_\beta - p_\alpha) \D \beta`, 它出现在一般公式 :eq:`diff-trans-rate`, 衰变率公式 :eq:`decay-rate-single-particle` 和截面公式 :eq:`diff-cross-section`. 这里我们考虑质心洛伦兹参考系的特殊情况, 在这个参考系初态的总3动量为零

.. math::
    \bm{p}_\alpha = 0

(对于 :math:`N_\alpha = 1` 的情况, 这就是一个粒子从静止开始衰变. ) 如果终态的粒子具有动量 :math:`\bm{p}_1', \bm{p}_2',\cdots`, 那么

.. math::
    \delta^4(p_\beta - p_\alpha) \D \beta = \delta^3(\bm{p}_1'+\bm{p}_2' + \cdots)
        \delta(E_1' + E_2' + \cdots - E) \D^3 p_1' \D^3 p_2'\cdots

其中 :math:`E \equiv E_\alpha` 是初态的总能量. 通过去掉其中一个 (注意这个操作只能做一次) 对 :math:`\bm{p}_k'` 的积分, 比如对 :math:`\bm{p}_1'` 的积分, 我们可以去掉动量的 :math:`\delta` 函数

.. math::
    \delta^4(p_\beta - p_\alpha) \D \beta \to \delta(E_1' + E_2' + \cdots - E) \D^3 p_2'\cdots
    :label: delta-e-d3p

上式的变换隐含假定在变换后的式子中, 当 :math:`\bm{p}_1'` 出现时 (比如在 :math:`E_1'` 中) 它必须被替换为

.. math::
    \bm{p}_1 = -\bm{p}_2' - \bm{p}_3' - \cdots

类似地, 我们可以用剩下的一个 delta 函数消去任何 **一个** 剩余的积分.

8 相空间因子-终态粒子数为2的情况
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

考虑最简单的情况, 即终态中只有两个粒子. 从而 :eq:`delta-e-d3p` 给出

.. math::
    \delta^4(p_\beta - p_\alpha) \D \beta \to \delta(E_1' + E_2' - E) \D^3 p_2'

具体有

.. math::
    \delta^4(p_\beta - p_\alpha) \D \beta \to
        \delta \left( \sqrt{ \left\lvert \bm{p}'_1 \right\rvert^2 + {m'}_1^2 }
            + \sqrt{ \left\lvert \bm{p}'_1 \right\rvert^2 + {m'}_2^2 } - E \right) |\bm{p}'_1|^2
            \D |\bm{p}'_1| \D \Omega
    :label: delta-e-dpdomega

其中

.. math::
    \bm{p}'_2 = -\bm{p}'_1

并且 :math:`\D \Omega \equiv \sin \theta \D \theta \D \phi` 是 :math:`\bm{p}'_1` 的立体角的微分. 我们可以使用如下公式化简上式

.. math::
    \delta \big( f(x) \big) = \delta(x - x_0) \big/ \big| f'(x_0) \big|

其中 :math:`f(x)` 是一个任意实函数, 它只在 :math:`x = x_0` 有一个简单零点. 对于我们这里的情况, :eq:`delta-e-dpdomega` 中的 delta 函数的参数 :math:`E'_1 + E_2' - E` 在 :math:`|\bm{p}'_1| = k'` 有唯一的零点, 其中

.. math::
    k' =&\ \sqrt{\big(E^2 - {m'}_1^2 - {m'}_2^2 \big)^2 - 4{m'}_1^2{m'}_2^2} / 2E \\
    E'_1 =&\ \sqrt{ {k'}^2 + {m'}_1^2 } = \frac{E^2 - {m'}_2^2 + {m'}_1^2}{2E} \\
    E'_2 =&\ \sqrt{ {k'}^2 + {m'}_2^2 } = \frac{E^2 - {m'}_1^2 + {m'}_2^2}{2E}
    :label: ke1e2-def

把 :math:`k'` 代入 delta 函数, 得

.. math::
    {k'}^2 + {m'}_1^2 =&\ \frac{\big(E^2 - {m'}_1^2 - {m'}_2^2 \big)^2 - 4{m'}_1^2{m'}_2^2}{4E^2} + {m'}_1^2 \\
    =&\ \frac{\big(E^2 - {m'}_2^2\big)^2 + {m'}_1^4 -2\big(E^2 - {m'}_2^2\big){m'}_1^2 - 4{m'}_1^2{m'}_2^2 + 4E^2{m'}_1^2}{4E^2} \\
    =&\ \frac{\big(E^2 - {m'}_2^2\big)^2 + {m'}_1^4 +2\big(E^2 - {m'}_2^2\big){m'}_1^2}{4E^2} \\
    =&\ \frac{\big(E^2 + {m'}_1^2 - {m'}_2^2 \big)^2}{4E^2} = \left( \frac{E^2 + {m'}_1^2 - {m'}_2^2}{2E}\right)^2 \\
    {k'}^2 + {m'}_2^2 =&\ \left( \frac{E^2 + {m'}_2^2 - {m'}_1^2}{2E} \right)^2 \\
    \sqrt{ {k'}^2 + {m'}_1^2 } + \sqrt{ {k'}^2 + {m'}_2^2 } - E =&\ \frac{E^2 + {m'}_1^2 - {m'}_2^2}{2E}
        + \frac{E^2 + {m'}_2^2 - {m'}_1^2}{2E} - E = \frac{2E^2 -2E^2}{2E} = 0

所以 :math:`k'` 确实是 delta 函数参数的零点. 其导数为

.. math::
    &\ \left[ \frac{\D}{\D |\bm{p}'_1|} \left( \sqrt{ \left\lvert \bm{p}'_1 \right\rvert^2 + {m'}_1^2 }
            + \sqrt{ \left\lvert \bm{p}'_1 \right\rvert^2 + {m'}_2^2 } - E \right)\right]_{|\bm{p}'_1|=k'} \\
    =&\ \frac{k'}{E'_1} + \frac{k'}{E'_2} = \frac{k'(E'_1 + E'_2)}{E'_1 E'_2}
        = \frac{k'E}{E'_1 E'_2}

因此我们可以对 :eq:`delta-e-dpdomega` 除以上式, 从而去掉 delta 函数和微分 :math:`\D |\bm{p}'_1|`

.. math::
    \delta^4(p_\beta - p_\alpha) \D \beta \to&\
        \delta \left( |\bm{p}'_1| - k' \right) \frac{E'_1 E'_2}{k'E}
        |\bm{p}'_1|^2 \D |\bm{p}'_1| \D \Omega \\
    =&\ \delta \left( |\bm{p}'_1| - k' \right) \frac{E'_1 E'_2}{k'E}
        {k'}^2 \D |\bm{p}'_1| \D \Omega \\
    =&\ \frac{k'E'_1 E'_2}{E} \D \Omega

其中所有的 :math:`k', E'_1, E'_2` 都应该理解为按照 :eq:`ke1e2-def` 进行替换的结果. 特别地, 一个具有零动量和能量 :math:`E` 的单粒子态衰变为两个粒子的微分速率 :eq:`decay-rate-single-particle` 变为

.. math::
    \frac{\D \Gamma(\alpha \to \beta)}{\D \Omega} = \frac{2\pi k'{E'}_1{E'}_2}{E} |M_{\beta\alpha}|^2

而两体散射过程 :math:`1\ 2 \to 1'\ 2'` 的微分截面 :eq:`diff-cross-section` 变为

.. math::
    \frac{\D \sigma(\alpha \to \beta)}{\D \Omega} = \frac{(2\pi)^4 k'E'_1E'_2}{E u_\alpha} |M_{\beta\alpha}|^2
        = \frac{(2\pi)^4 k'E'_1E'_2E_1E_2}{E^2 k} |M_{\beta\alpha}|^2
    :label: dsigma-two-body-scattering

其中 :math:`k \equiv |\bm{p}_1| = |\bm{p}_2|`. 其中第二个等号利用了 :eq:`ualpha-comf` 和 :math:`E = E_1 + E_2`, 即

.. math::
    u_\alpha = \frac{k(E_1 + E_2)}{E_1E_2} = \frac{kE}{E_1E_2} \quad \Rightarrow \quad
    \frac{1}{E u_\alpha} = \frac{E_1E_2}{kE^2}
    :label: ualpha-two-body-scattering

9 相空间因子-终态粒子数为3的情况
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

上面 :math:`N_\beta = 2` 的情况是特别简单的, 但是对于 :math:`N_\beta = 3` 的情况也有一个很好的结果值得记录一下. 对 :math:`N_\beta = 3`, :eq:`delta-e-d3p` 给出

.. math::
    &\ \delta^4(p_\beta - p_\alpha) \D \beta \\
    \to &\ \D^3 \bm{p}'_2 \D^3 \bm{p}'_3
    \delta \left( \sqrt{ \left( \bm{p}'_2 + \bm{p}'_3 \right)^2 + {m'}_1^2 }
        + \sqrt{ {\bm{p}'}_2^2 + {m'}_2^2 } + \sqrt{ {\bm{p}'}_3^2 + {m'}_3^2 } - E\right)

我们把动量空间的体积微元写为

.. math::
    \D^3 p'_2 \D^3 p'_3 = \left( |\bm{p}'_2|^2 \D |\bm{p}'_2|\right) \left(|\bm{p}'_3|^2 \D |\bm{p}'_3|\right)
        \D \Omega_3 \D \phi_{23} \D \cos\theta_{23}

其中 :math:`\D \Omega_3` 是 :math:`\bm{p}'_3` 的立体角微元, 而 :math:`\theta_{23}` 和 :math:`\phi_{23}` 是 :math:`\bm{p}'_2` 相对于 :math:`\bm{p}'_3` 方向的极角 (polar) 和方位角 (azimuthal). 由 :math:`\bm{p}'_2` 和 :math:`\bm{p}'_3` 所张开的平面的方向, 由 :math:`\phi_{23}` 和 :math:`\bm{p}'_3` 的方向指定, 剩下的 :math:`\theta_{23}` 则由能量守恒条件固定 (注意 :math:`\theta_{23}` 是 :math:`\bm{p}'_2` 和 :math:`\bm{p}'_3` 之间的夹角, 无论它的值是多少, 都是在 :math:`\bm{p}'_2` 和 :math:`\bm{p}'_3` 所构成的面之内衡量的, 因此不能决定这个面本身. 而 :math:`\bm{p}'_2` 和 :math:`\bm{p}'_3` 所张成的面里面, :math:`\bm{p}'_3` 给出这个面的一条直线, 要确定这个面就相当于考虑一个面绕 :math:`\bm{p}'_3` 方向为轴旋转, 其中转角就是以 :math:`\bm{p}'_3` 为 :math:`z` 轴时的转角 :math:`\phi_{23}`. 确定了转角也就确定了面的位置. 因此由 :math:`\bm{p}'_2` 和 :math:`\bm{p}'_3` 所张开的平面的方向, 由 :math:`\phi_{23}` 和 :math:`\bm{p}'_3` 的方向指定)

.. math::
    &\ \sqrt{ |\bm{p}'_2|^2 + 2 |\bm{p}'_2| |\bm{p}'_3| \cos\theta_{23} + |\bm{p}'_3|^2 + {m'}_1^2}\\
    &\ + \sqrt{ |\bm{p}'_2|^2 + {m'}_2^2 } + \sqrt{ |\bm{p}'_3|^2 + {m'}_3^2} = E

注意其中

.. math::
    E'_1 \equiv \sqrt{ |\bm{p}'_2|^2 + 2 |\bm{p}'_2| |\bm{p}'_3| \cos\theta_{23} + |\bm{p}'_3|^2 + {m'}_1^2}

delta 函数的参数关于 :math:`\cos\theta_{23}` 的导数为

.. math::
    \frac{\partial E'_1}{\partial \cos\theta_{23}} = \frac{|\bm{p}'_2||\bm{p}'_3|}{E'_1}

因此我们可以完成 :math:`\cos\theta_{23}` 的积分, 只需要去掉 delta 函数并除以上述导数

.. math::
    \delta^4(p_\beta - p_\alpha) \D \beta \to
        \left( |\bm{p}'_2| \D |\bm{p}'_2|\right) \left(|\bm{p}'_3| \D |\bm{p}'_3|\right) E'_1
        \D \Omega_3 \D \phi_{23}

利用

.. math::
    \D E'_i = \frac{\partial \sqrt{ |\bm{p}'_i|^2 + {m'}_i^2}}{\partial |\bm{p}'_i|} \D |\bm{p}'_i|
        = \frac{|\bm{p}'_i|}{E'_i} \D |\bm{p}'_i|\quad \Rightarrow \quad
    E'_i \D E'_i = |\bm{p}'_i| \D |\bm{p}'_i|

把动量换成能量, 得

.. math::
    \delta^4(p_\beta - p_\alpha) \D \beta \to
        E'_1 E'_2 E'_3 \D E'_2 \D E'_3 \D \Omega_3 \D \phi_{23}

但是注意到 :eq:`r-beta-alpha-scalar`, 即对 :math:`|M_{\beta\alpha}|^2` 对所有自旋求和, 并乘以能量的乘积, 是一个4动量的标量函数. 如果我们近似认为这个标量是一个常数, 那么上式给出 (利用 :eq:`diff-cross-section-r`)

.. math::
    \sum_{\mathrm{spins}} \frac{\D \sigma(\alpha\to\beta)}{\D E'_2 \D E'_3 \D \Omega_3 \D \phi_{23}}
        = \left[ \frac{(2\pi)^4}{u_\alpha E_1 E_2} \right] R_{\beta\alpha}

注意到方括号之中是仅与入射粒子有关的量. 那么对于一个固定的初态, 上式给出在 :math:`E'_2, E'_3` 平面中画出的事件的分布是一个均匀分布 (因为上式等号右边可以看作一个常量. 因此均匀分布意味着终态分子取的能量大小, 和方位角就是完全随机的, 没有特定的偏向). 在这个图中任何偏离均匀分布的事件因此就提供衰变过程的动力学的有用线索, 包括可能的离心势垒或者中间共振态. 这被称为达利兹图 (Dalitz plot), 因为达利兹在 1953 年使用它分析衰变 :math:`K^+ \to \pi^+ + \pi^+ + \pi^-`.

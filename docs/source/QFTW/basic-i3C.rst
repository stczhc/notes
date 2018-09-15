
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

这是跃迁到一个特殊的箱态 :math:`\beta` 的概率. 在一个动量空间体积 :math:`\D^3 p` 中, 单粒子箱态的数目是 :math:`V \D^3 p/(2\pi)^3`, 因为这是动量 :eq:`p-discrete` 在 :math:`\bm{p}` 周围动量空间体积 :math:`\D^3 p` 中, 三整数组 :math:`n_1,n_2,n_3` 的数目. (考虑 :math:`\bm{p} = \frac{2\pi}{L}(n_1, n_2, n_3)` 这个式子, 它意味着在 :math:`p` 空间中可以取的动量是一个个点. 我们考虑这些点相邻的距离, 就可以知道在多大的空间里面有一个点. 两个点在一条坐标轴上相距 :math:`2\pi / L`. 因此, 一个点占据的体积是 :math:`(2\pi / L)^3 = (2\pi)^3 / V`. 那么, 单位体积的点数就是这个值得倒数, 即 :math:`V/(2\pi)^3`. 因此, 在体积 :math:`\D^3 p` 中的点数就是 :math:`V \D^3 p/(2\pi)^3`.) 我们应该把终态区间 :math:`\D \beta` 定义为对每个终态粒子的 :math:`\D^3 \bm{p}` 之积. (这句是说, :math:`\D \beta` 中的一部分因子是 :math:`\D^3 \bm{p}` 之积. 因为终态是多粒子态, 所以每个粒子都会在 :math:`\D \beta` 中贡献一个 :math:`\D^3 \bm{p}`. 当然 :math:`\D \beta` 还包括其他指标对应的 delta 符号. 现在的问题是, 当我们考虑总的状态数目, 我们选取体积元 :math:`\D \beta`. 而按照上面的讨论, :math:`\D^3 \bm{p}` 是其中子空间 :math:`p` 空间的体积元. 因此, 每个 :math:`\D^3 p` 空间贡献的状态数也就要成为整个 :math:`\beta` 空间的状态数的一个系数. ) 因此在这个区间的总状态数是

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

这个是将 :math:`S` 矩阵元的计算解释为对实际实验的预测所用到的主公式 (master formula). 在本节我们将在之后回到因子 :math:`\delta^4(p_\alpha - p_\beta)\D \beta` 的解释这个问题上来.

有两种情况具有特别的意义 :math:`N_\alpha = 1` 和 :math:`N_\alpha = 2`.

3 入射粒子数为1的情况
^^^^^^^^^^^^^^^^^^^^^

在这种情况下, 体积 :math:`V` 在 :eq:`diff-trans-rate` 中被抵消. 这给出一个单粒子态 :math:`\alpha` 衰变为一个一般的多粒子态 :math:`\beta` 的跃迁速率为

.. math::
    \D \Gamma(\alpha \to \beta) = 2\pi |M_{\beta\alpha}|^2 \delta^4(p_\beta - p_\alpha) \D \beta

显然, 只有当相互作用发生的时间 :math:`T` 远小于粒子 :math:`\alpha` 平均寿命 :math:`\tau_\alpha` 时这才有意义, 因此我们不能在 :math:`\delta_T(E_\alpha - E_\beta)` 中考虑极限 :math:`T \to \infty`. (这里注意, 尽管只有一个入射粒子. 但是模型的哈密顿量中的相互作用包括入态和出态中所有粒子的相互作用, 因为哈密顿量并不是只针对入射粒子的, 对包括入射粒子和出射粒子的整个系统只有一个哈密顿量. 但是, 粒子 :math:`\alpha` 本身的衰变可能是衰变到别的粒子, 不一定是我们感兴趣的这个反应. 因此, 只有在粒子的寿命足够长, 也就是 :math:`T` 足够短的情况下, 这个模型才是成立的. ) 在这个 delta 函数中, 有一个无法移除的宽度 :math:`\Delta E \simeq 1/T \gtrsim 1/\tau_\alpha` (按照测不准原理, :math:`T \to \infty`, :math:`T` 越不精确, :math:`E` 就越精确. 反之如果 :math:`T` 不能取无限大, :math:`E` 就不能无限精确, 因此有一个宽度. ) 因此上式只有当总衰变率 :math:`1/\tau_\alpha` 远小于任何这个过程的特征能量时, 才是有效的.

4 入射粒子数为2的情况
^^^^^^^^^^^^^^^^^^^^^


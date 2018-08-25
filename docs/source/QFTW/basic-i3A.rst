
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
    

第三章 散射理论 (A)
===================

在前一章描述的相对论量子力学的一般规则, 到目前为止只被应用于单一稳定粒子的态. 这些单粒子态本身并不是非常激动人心的, 只有当两个或更多粒子彼此相互作用, 才会有有意义的事发生. 但是一般实验不会遵循粒子相互作用事件的具体过程. 事实上, 在典型的实验 (至少在核物理或基本粒子物理) 中, 一些粒子从宏观远的距离开始向彼此靠近, 然后再微观小的区域进行相互作用. 在此之后, 相互作用的产物再运动到宏观远的距离. 碰撞前后的物理态包括相距很远的粒子, 以至于它们之间可以等效于无相互作用. 因此这样的物理态可以用前一章介绍的单粒子态的直积描述. 在这样的实验中, 只有概率分布, 或者 "截面" (cross sections) 被测量, 其中截面是相距很远并且等效无相互作用粒子的初态和终态之间的跃迁的截面, 或概率分布. 本章将概述计算概率和截面的形式体系.

第一节 入态和出态
-----------------

1 多粒子态
^^^^^^^^^^

一个包含几个无相互作用粒子的态, 在非齐次洛伦兹变换群群元下, 可以认为像单粒子态直积那样变换. 为标记单粒子态, 我们使用四动量 :math:`p^\mu`, 自旋 :math:`z-` 分量 (或者零质量粒子的螺旋度) :math:`\sigma`, 以及, 由于现在我们可能需要处理多于一种粒子类型的情况, 我们需要一个附加的离散指标 :math:`n` 用于标记粒子类型, 它确定了质量, 自旋, 电荷, 等等.

[定理3-1] 无相互作用粒子在非齐次洛伦兹变换群群元下的一般的变换规则是

.. math:: 
    U(\Lambda, a) \psi_{p_1, \sigma_1, n_1;p_2,\sigma_2,n_2;\cdots} =&\ \exp \big( -\I a_\mu ((\Lambda p_1)^\mu + (\Lambda p_2)^\mu + \cdots) \big)
        \sqrt{ \frac{(\Lambda p_1)^0(\Lambda p_2)^0\cdots}{p_1^0p_2^0\cdots} } \\
        &\ \times \sum_{\sigma_1'\sigma_2'\cdots} D^{(j_1)}_{\sigma_1'\sigma_1} \big( W(\Lambda, p_1) \big)
            D^{(j_2)}_{\sigma_2'\sigma_2} \big( W(\Lambda, p_2) \big)\cdots \psi_{\Lambda p_1, \sigma'_1,n_1;\Lambda p_2, \sigma'_2,n_2;\cdots}
    :label: multi-trans

其中 :math:`W(\Lambda, p)` 是 :eq:`w-lambda-p-def` 定义的 Wigner 转动, :math:`D^{(j)}_{\sigma'\sigma}` 是通常的表示三维转动群的 :math:`(2j+1)-` 维幺正矩阵 (以上是对正质量粒子. 对零质量粒子, 矩阵 :math:`D^{(j)}_{\sigma'\sigma}(W(\Lambda, p))` 由 :math:`\delta_{\sigma'\sigma}\exp(\I \sigma \theta(\Lambda, p))` 替换, 其中 :math:`\theta` 按照 :eq:`w-mass-zero` 定义).

[证明] 首先根据 :eq:`t-lambda-a-compose` 我们有

.. math:: 
    U(1, a) U(\Lambda, 0) =&\ U(1\cdot \Lambda, 1\cdot 0 + a) = U(\Lambda, a) \\
    U(\Lambda, 0) U(1, a) =&\ U(\Lambda \cdot 1, \Lambda a) = U(\Lambda, \Lambda a)
    :label: u-lambda-a-decompose

所以考虑 :math:`U(\Lambda, a)` 的作用可以分别考虑 :math:`U(1, a), U(\Lambda, 0)`. 而根据 :eq:`ua-act-psi-p`, 即

.. math:: 
    U(1, a)\psi_{p,\sigma} = \exp (-\I P^aa_a) \psi_{p,\sigma} = \exp (-\I p^\mu a_\mu) \psi_{p,\sigma}

也就是说, :math:`U(1, a)` 不改变态本身, 而只是引入一个附加系数. 但是由 :eq:`u-lambda-a-decompose`, :math:`U(\Lambda, a)` 分解后必须是 :math:`U(1, a)` 后作用, :math:`U(\Lambda, 0)` 先作用. 虽然 :math:`U(1, a)` 不改变 :math:`p` 指标, 但是 :math:`U(\Lambda, 0)` 会把 :math:`p` 指标变为 :math:`\Lambda p`, 这就是 :math:`\exp (-\I p^\mu a_\mu) \psi_{p,\sigma}` 要改成 :math:`\exp \big( -\I(\Lambda p)^\mu a_\mu \big)` 的原因 (Winberg 1995 旧版中, 这个指数没有加上 :math:`\Lambda`, 是错误的. 1998年版已修正). :math:`U(\Lambda, 0)` 的作用根据 :eq:`u-lambda-mass-positive-state` 和 :eq:`u-lambda-mass-zero-state` 有

.. math:: 
    U(\Lambda)\psi_{p,\sigma} =&\ \sqrt{\frac{(\Lambda p)^0}{p^0}} \sum_{\sigma'} D^{(j)}_{\sigma'\sigma}(W(\Lambda, p)) \psi_{\Lambda p,\sigma'} \\
    U(\Lambda)\psi_{p,\sigma} =&\ \sqrt{\frac{(\Lambda p)^0}{p^0}} \exp(\I \underline{\sigma} \theta(\Lambda, p)) \psi_{\Lambda p, \underline{\sigma}}

因此

.. math:: 
    &\ U(\Lambda, a) \psi_{p_1, \sigma_1, n_1;p_2,\sigma_2,n_2;\cdots} = U(1, a) U(\Lambda, 0) \psi_{p_1, \sigma_1, n_1;p_2,\sigma_2,n_2;\cdots} \\
    =&\ U(1, a) \sqrt{ \frac{(\Lambda p_1)^0(\Lambda p_2)^0\cdots}{p_1^0p_2^0\cdots} } \sum_{\sigma_1'\sigma_2'\cdots} D^{(j_1)}_{\sigma_1'\sigma_1} \big( W(\Lambda, p_1) \big)
            D^{(j_2)}_{\sigma_2'\sigma_2} \big( W(\Lambda, p_2) \big)\cdots \psi_{\Lambda p_1, \sigma'_1,n_1;\Lambda p_2, \sigma'_2,n_2;\cdots} \\
    =&\ \sqrt{ \frac{(\Lambda p_1)^0(\Lambda p_2)^0\cdots}{p_1^0p_2^0\cdots} } \sum_{\sigma_1'\sigma_2'\cdots} D^{(j_1)}_{\sigma_1'\sigma_1} \big( W(\Lambda, p_1) \big)
            D^{(j_2)}_{\sigma_2'\sigma_2} \big( W(\Lambda, p_2) \big)\cdots U(1, a)  \psi_{\Lambda p_1, \sigma'_1,n_1;\Lambda p_2, \sigma'_2,n_2;\cdots}\\
    =&\ \exp \big( -\I a_\mu ((\Lambda p_1)^\mu + (\Lambda p_2)^\mu + \cdots) \big)
        \sqrt{ \frac{(\Lambda p_1)^0(\Lambda p_2)^0\cdots}{p_1^0p_2^0\cdots} } \\
    &\ \times \sum_{\sigma_1'\sigma_2'\cdots} D^{(j_1)}_{\sigma_1'\sigma_1} \big( W(\Lambda, p_1) \big)
            D^{(j_2)}_{\sigma_2'\sigma_2} \big( W(\Lambda, p_2) \big)\cdots \psi_{\Lambda p_1, \sigma'_1,n_1;\Lambda p_2, \sigma'_2,n_2;\cdots}

这些态像 :eq:`psi-p-normalize` (即 :math:`(\psi_{p',\sigma'}, \psi_{p,\sigma}) = \delta_{\sigma'\sigma} \delta^3(\bm{p}'-\bm{p})`) 那样进行归一化

.. math:: 
    &\ \big( \psi_{p'_1, \sigma'_1, n'_1;p'_2,\sigma'_2,n'_2;\cdots}, \psi_{p_1, \sigma_1, n_1;p_2,\sigma_2,n_2;\cdots}\big) \\
    =&\ \delta^3(\bm{p}'_1-\bm{p}_1) \delta_{\sigma'_1\sigma_1} \delta_{n'_1n_1}
        \delta^3(\bm{p}'_2-\bm{p}_2) \delta_{\sigma'_2\sigma_2} \delta_{n'_2n_2} \cdots \pm \text{置换}
    :label: psi-multi-norm-complex

其中 :math:`\pm \text{置换}` 项是考虑到粒子类型 :math:`n'_1, n'_2,\cdots` 的某些置换和粒子类型 :math:`n_1,n_2,\cdots` 相同的可能性. (在第四章有更完整的讨论, 如果这个置换包含一个半整数自旋粒子的奇置换, 符号是 :math:`-1`, 否则是 :math:`+1`. 对于本章的工作, 这并不重要. ) 这里应该和粒子的不可分辨性有关, 此时粒子的态不能表示成直积形式, 而要考虑各种置换形成的 Slater 行列式 (对半整数自旋粒子的情况), 因此归一化因子会有置换项.

我们通常使用缩减的记号, 即用一个希腊字母, 比如 :math:`\alpha`, 来代表指标集合 :math:`p_1,\sigma_1, n_1; p_2, \sigma_2, n_2,\cdots`. 使用这个标记, :eq:`psi-multi-norm-complex` 可简单写为

.. math:: 
    (\psi_{\alpha'}, \psi_\alpha) = \delta(\alpha' - \alpha)
    :label: psi-multi-norm

其中 :math:`\delta(\alpha' - \alpha)` 代表 :eq:`psi-multi-norm-complex` 式右边出现的 delta 函数和 Kronecker delta 的乘积的求和. 另外, 对不同态的求和我们写为

.. math:: 
    \int \D \alpha \cdots \equiv \sum_{n_1\sigma_1n_2\sigma_2\cdots} \int \D^3 p_1 \D^3 p_2 \cdots

在这样的求和或积分中, 我们只包含那些不是仅仅通过交换全同粒子而产生差异的构型. 也就是说, 一般通过交换某些全同粒子, 指标会变得不同, 但是我们不会把这些仅仅通过交换全同粒子顺序得到的新构型放到求和中. 从求和的项中任取两项, 它们之间可能具有或不具有全同粒子交换的不同, 但是我们要求这不是它们之间唯一的不同, 我们还要求它们之间有别的不同. 特别地, 按照 :eq:`psi-multi-norm` 归一化的态的完备性条件为

.. math:: 
    \psi = \int \D \alpha \psi_\alpha (\psi_\alpha, \psi)
    :label: psi-alpha-complete

变换规则 :eq:`multi-trans` 只对那些由于某些原因无相互作用的例子成立.

[定理3-2] 令 :math:`\xtensor{\Lambda}{^\mu}{_\nu} = \xtensor{\delta}{^\mu}{_\nu}, a^\mu = (\tau, 0,0,0)`, 从而 :math:`U(\Lambda, a) = U(1, a) = \exp(\I H \tau)`, :eq:`multi-trans` 要求 :math:`\psi_\alpha` 是能量算符的本征态 (可能还有别的结论, 这只是其中一个结论)

.. math:: 
    H \psi_\alpha = E_\alpha \psi_\alpha

其中能量等于单粒子能量之和

.. math:: 
    E_\alpha = p_1^0 + p_2^0 + \cdots

其中没有相互作用项, 即同时和多个粒子关联的项.

[证明] 注意 :math:`a^0 = \tau, a_0 = -\tau, P^0 = H`. 利用 [定理27] 得

.. math:: 
    U(1,a) = \exp(-\I P^\mu a_\mu) = \exp(-\I P^0 a_0) = \exp(\I H\tau)

注意这里的 :math:`H` 和 :math:`P^\mu` 都是整个系统的能量算符和动量算符. 不应该把 :math:`H` 看成 :math:`H_0 = H_1 + H_2 + \cdots`, 之所以能量是相加的形式, 是因为这里的态是直积形式, 对这样的物理态它的总能量就可以写成每个粒子能量的和. 也就是说, 在 :math:`H` 的地方没有引入 "无相互作用" 近似, 而在物理态的表示上是表示为 "无相互作用" 的形式. [#ref5]_

.. [#ref5] `StackExchange-4 <https://physics.stackexchange.com/questions/233238/confusion-with-weinbergs-qft-book-volume-1-chapter-3-time-translation-and-he>`_.

由于 :math:`\Lambda = 1`, 得

.. math:: 
    U(\Lambda, a) \psi_{p_1, \sigma_1, n_1;p_2,\sigma_2,n_2;\cdots} =&\ \exp \big( -\I a_\mu ((\Lambda p_1)^\mu + (\Lambda p_2)^\mu + \cdots) \big)
        \psi_{\Lambda p_1, \sigma_1,n_1;\Lambda p_2, \sigma_2,n_2;\cdots} \\
    \exp(\I H \tau) \psi_{p_1, \sigma_1, n_1;p_2,\sigma_2,n_2;\cdots} =&\ \exp \big( -\I a_\mu ( p_1^\mu + p_2^\mu + \cdots) \big)
        \psi_{p_1, \sigma_1,n_1;p_2, \sigma_2,n_2;\cdots} \\
    =&\ \exp \big( -\I a_0 ( p_1^0 + p_2^0 + \cdots) \big) \psi_{p_1, \sigma_1,n_1;p_2, \sigma_2,n_2;\cdots} \\
    =&\ \exp ( \I \tau E_\alpha ) \psi_{p_1, \sigma_1,n_1;p_2, \sigma_2,n_2;\cdots}

现在令 :math:`\tau` 为无穷小量, 则 :math:`\exp(\I H \tau) = 1 + \I H \tau,  \exp ( \I \tau E_\alpha ) = 1 + \I \tau E_\alpha`. 代入上式并要求两边 :math:`\I\tau` 系数相等得

.. math:: 
    H \psi_{p_1, \sigma_1, n_1;p_2,\sigma_2,n_2;\cdots} = E_\alpha \psi_{p_1, \sigma_1,n_1;p_2, \sigma_2,n_2;\cdots}

另一方面, :eq:`multi-trans` 的变换规则确是适用于在时刻 :math:`t \to \pm \infty` 的散射过程 (也就是说, 从现在开始讨论散射过程. 对散射过程系统就不是总能表示成自由粒子态, 因此之前关于无相互作用态的讨论就并非对一般的情况都适用). 在本章开头已经介绍, 在典型的散射实验中我们考虑的起始状态是在时刻 :math:`t \to -\infty` 的相距非常远没有相互作用的粒子, 终止状态是在时刻 :math:`t \to +\infty` 的相距很远已经停止相互作用的粒子. 因此, 我们两个而不是一个按照 :eq:`multi-trans` 变换的态的集合: **入态和出态** ('in' and 'out' states) :math:`\psi_\alpha^+` 和 :math:`\psi_\alpha^-`. 其定义是, 当在 :math:`t\to-\infty` 或者 :math:`t\to+\infty` 观察时, 分别会观测到包含指标 :math:`\alpha` 表示的粒子的 :math:`\psi_\alpha^+` 和 :math:`\psi_\alpha^-`.

注意这个定义的表述. 为了保持明显的 (manifest) 洛伦兹不变性, 在我们所使用的公式体系中, 态矢不随时间改变. 态矢 :math:`\psi` 描述粒子系统的整个时空历史. (称为 **海森堡绘景** (Heisenberg picture), 和薛定谔绘景不同, 海森堡绘景的算符是常数 (不随时间改变), 物理态随时间改变. ) 因此, 我们不说 :math:`\psi_\alpha^\pm` 是含时态矢 :math:`\psi(t)` 在 :math:`t \to \mp \infty` 的极限.

2 波包
^^^^^^

但是, 在态矢的定义中隐含了观者对系统做观察的惯性系的选择. 不同的观者看到 **等价的** 态矢, 而不是 **相同的** 态矢. 特别地, 假设一个标准观者 :math:`\mathscr{O}` 在碰撞过程中的某时间把他的时间 :math:`t` 调整为零, 同时某其他的相对第一个观者静止的观者 :math:`\mathscr{O}'` 在某时刻 :math:`t = \tau` 把他的时间 :math:`t'` 调整为零; 也就是说, 这两个观者的时间坐标的联系为 :math:`t' = t - \tau`. (注意这里两个观者相对静止, 那么他们之间不存在由推进变换的联系. 他们只是时间零点设置不同. ) 那么, 如果 :math:`\mathscr{O}` 看到的系统处于态 :math:`\psi`, :math:`\mathscr{O}'` 看到的系统将处于态 :math:`U(1,-\tau)\psi = \exp(-\I H \tau)\psi`. (这里从 :math:`t \to t' = t - \tau` 是一个坐标变换, 也是一个非齐次洛伦兹变换, 对应参数 :math:`a^\mu = (-\tau, 0, 0, 0)`. 对应于这个变换, 有态矢量的变换 :math:`U(1, a) = \exp(-\I P^\mu a_\mu) = \exp(-\I H \tau)`. ) 因此, 在碰撞发生遥远过去或遥远未来, 这个态的表现 (采用 :math:`\mathscr{O}` 使用的基组) 可以通过用满足 :math:`\tau \to -\infty` 或 :math:`\tau \to +\infty` 的时间平移算符 :math:`\exp(-\I H \tau)` 作用来得到. (这里是说, 为了得到 :math:`t \to \pm \infty` 的态, 相当于找两个相对于某标准时钟晚了 :math:`\tau` 的观察者来看. 注意正负号, 当 :math:`\tau \to -\infty`, :math:`t' = t - \tau \to +\infty`, 其意义是, 当 :math:`t = 0` 或某个有限时间时, :math:`t'` 的时间指向 :math:`+\infty`. 因此 :math:`\mathscr{O}'` 坐标系时遥远过去的坐标系. ) 当然, 如果所考虑的态真的是能量本征态, 那么它不可能是时间局域的, 因为如果这样, 那么 :math:`\exp(\I H \tau)` 的作用只会产生一个无关紧要的相位因子 :math:`\exp(-\I E_\alpha \tau)`, 由于 :math:`t \to \mp \infty` 的态的区别是通过 :math:`\exp(\I H \tau)` 的作用体现, 而如果作用后的态只与原来的态差一个相位因子, 那么实际上属于同一射线, 那么就会导致入态和出态完全一样的结论, 这是不可接受的. 其根本原因是测不准原理, 如果一个态在能量上完全确定, 那么它在时间上将完全不确定, 也就是任何时间的态必须完全一样.

因此, 我们必须考虑波包 (wave-packets), 即态的叠加 :math:`\int \D \alpha g(\alpha) \psi_\alpha`, 其中振幅 :math:`g(\alpha)` 是在某个有限的能量范围 :math:`\Delta E` 非零且光滑变化 (这限制了 :math:`g(\alpha)` 在该范围内的值必须全为正或者全为负, 否则光滑地由正变负必须经过零点). 定义入态和出态为使得

.. math:: 
    \exp(-\I H\tau) \int \D \alpha g(\alpha) \psi_\alpha^\pm = \int \D \alpha \E^{-\I E_\alpha \tau} g(\alpha) \psi_\alpha^\pm
    :label: psi-pm-def-prim

分别在 :math:`\tau \ll -1/\Delta E` 或者 :math:`\tau \gg +1/\Delta E` 时表现为自由粒子态 (无相互作用粒子态) 的对应叠加. 注意这里的逻辑, 这里不是先取两个不同的 :math:`\psi_\alpha^\pm`, 然后分别用满足 :math:`\tau \ll -1/\Delta E` 或者 :math:`\tau \gg +1/\Delta E` :math:`\E^{-\I E_\alpha \tau}` 作用. 这里是要求入态和出态分别满足不同的边界条件, 在给定 :math:`\tau` 的边界时, 它要成为自由粒子态的叠加. 也就是说, 这理解为两个式子, 即要求

.. math:: 
    \int \D \alpha \E^{-\I E_\alpha \tau} g(\alpha) \psi_\alpha^-,&\ \quad \tau \ll -1/\Delta E \\
    \int \D \alpha \E^{-\I E_\alpha \tau} g(\alpha) \psi_\alpha^+,&\ \quad \tau \gg +1/\Delta E

分别表现为自由粒子态. 这作为 :math:`\psi_\alpha^-, \psi_\alpha^+` 的定义.

3 遥远过去和遥远未来的渐进条件
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

更具体地说, 假设我们可以把时间平移生成元 :math:`H` 分成两项, 即一个自由粒子哈密顿量 :math:`H_0` 和相互作用项 :math:`V`

.. math:: 
    H = H_0 + V

其中 :math:`H_0` 有本征态 :math:`\phi_\alpha`, 它与完整哈密顿量 (:math:`H`) 的本征态 :math:`\psi_\alpha^+` 和 :math:`\psi_\alpha^-` 有相同的表现

.. math:: 
    H_0 \phi_\alpha =&\ E_\alpha \phi_\alpha, \\
    (\phi_{\alpha'}, \phi_\alpha) =&\ \delta(\alpha' - \alpha)
    :label: phi-norm

注意这里我们假设 :math:`H_0` 和完整哈密顿量 :math:`H` 有相同的谱 (也就是说, 可以使用相同的一套下标 :math:`\alpha`). 这要求出现在 :math:`H_0` 中的质量是实际测量的质量, 它们不一定和 :math:`H` 中的 "裸" 质量项相同; 如果这里有任何差异, 这些差异必须被包括在相互作用 :math:`V` 中, 而不是 :math:`H_0`. 另外, :math:`H` 的谱中任何 (对所讨论的系统而言是相关的) 的束缚态 (也就是由多个粒子结合而成的复合粒子) 必须像基本粒子一样被引入 :math:`H_0`. 这里的意思是, 由于散射前后, 不一定所有粒子的结合都完全散开. 在 :math:`H` 的表示中, 我们可能把整个系统分解成最基本的形式 (即所有的质量都是 "裸" 质量), 然后再加上它们的相互作用项. 但是只有当所考虑的散射过程前后所有粒子都完全散开时, 才能使用这种 "天然的" 分解作为此处使用的 :math:`H_0 + V` 分解. 对于最一般的情况, 如果某些复合粒子没有散开, 它们的质量就不是裸的, 这些粒子各自就应该作为一个整体包含在 :math:`H_0` 中.

入态和出态现在可以定义为 :math:`H` 而不是 :math:`H_0` 的本征态

.. math:: 
    H\psi_\alpha^\pm = E_\alpha \psi_\alpha^\pm
    :label: h-psi-pm-eq

满足分别在 :math:`\tau \to -\infty` 或 :math:`\tau \to +\infty` 时满足条件

.. math:: 
    \int \D \alpha \E^{-\I E_\alpha \tau} g(\alpha) \psi_\alpha^\pm \to \int \D \alpha \E^{-\I E_\alpha\tau} g(\alpha) \phi_\alpha
    :label: psi-pm-def

注意这是 :eq:`psi-pm-def-prim` 具体化的形式.

:eq:`psi-pm-def` 可以写为等价形式

.. math:: 
    \exp(-\I H\tau) \int \D \alpha g(\alpha) \psi_\alpha^\pm \to \exp(-\I H_0 \tau) \int \D \alpha g(\alpha) \phi_\alpha

分别在 :math:`\tau \to -\infty` 或 :math:`\tau \to +\infty` 时. 注意这里所有箭头都只是为了强调接近无穷大的趋近过程. 因此都可以改成等号. 上式有时可以重写为对入态和出态的公式

.. math:: 
    \psi_\alpha^\pm = \Omega(\mp \infty) \phi_\alpha
    :label: psi-pm-def-omega

其中

.. math:: 
    \Omega(\tau) \equiv \exp(+\I H\tau) \exp(-\I H_0 \tau)
    :label: omega-tau-def

应当注意 :eq:`psi-pm-def-omega` 只有当作用在能量本征态的光滑叠加态上才给出有意义的结果. :math:`\Omega(\tau)` 可以理解为, 先对系统做向未来 (:math:`\tau \to +\infty`, 当 :math:`\tau \to -\infty` 则是向过去) 的无相互作用时间平移, 然后由于在未来 (过去) 的某个时刻无相互作用的态和存在相互作用的态是一致的, 因此在这个时刻我们可以认为处理的态变为有相互作用的态, 再把这个有相互作用的态沿相反方向平移到所考虑的时刻, 因此 :math:`\Omega(\tau)` 可以从任意时刻的无相互作用本征态变换到同一时刻的有相互作用的射入或者射出本征态, 其中射入本征态在遥远过去和无相互作用态的遥远过去相同, 射出本征态在遥远未来和无相互作用态的遥远未来相同.

:eq:`psi-pm-def` 的一个直接结果是, 入态和出态的归一化就和自由粒子态一样. 下面证明这一点. 注意 :eq:`psi-pm-def` 左边是通过一个幺正算符 :math:`\exp(-\I H\tau)` 作用到不含时态得到的, 因此它的范数不依赖于时间, 因此等于 :math:`\tau \to \infty` 时的范数, 也就是 :eq:`psi-pm-def` 右边的范数

.. math:: 
    &\ \int \D \alpha \D \beta \exp\big(-\I (E_\alpha - E_\beta)\tau \big) g(\alpha) g^*(\beta) (\psi_\beta^\pm, \psi_\alpha^\pm) \\
    =&\ \int \D \alpha \D \beta \exp\big(-\I (E_\alpha - E_\beta)\tau \big) g(\alpha) g^*(\beta) (\phi_\beta, \phi_\alpha)

上式应对所有光滑函数 :math:`g(\alpha)` 成立, 即

.. math:: 
    \int \D \alpha \D \beta \exp\big(-\I (E_\alpha - E_\beta)\tau \big) g(\alpha) g^*(\beta) \left[ (\psi_\beta^\pm, \psi_\alpha^\pm) - (\phi_\beta, \phi_\alpha) \right] = 0

按照 :math:`g(\alpha)` 的定义, 其为非零函数, 因此 :math:`g(\alpha) g^*(\beta) \neq 0`. 虽然 :math:`\exp\big(-\I (E_\alpha - E_\beta)\tau \big)` 可能产生不同的叠加从而导致范数差因子的相互抵消. 但是这里注意到 :math:`g(\alpha)` 是在满足一定条件可以任取的, 因此对于任取的 :math:`g(\alpha)`, 相因子不可能总是造成抵消. 因此我们只能有

.. math:: 
    (\psi_\beta^\pm, \psi_\alpha^\pm) = (\phi_\beta, \phi_\alpha) = \delta(\beta - \alpha)
    :label: psi-alpha-norm

其中利用了 :eq:`phi-norm`.

4 李普曼-施温格方程
^^^^^^^^^^^^^^^^^^^

下面考虑能量本征方程 :eq:`h-psi-pm-eq` 的一个满足条件 :eq:`psi-pm-def` 的显式形式解. 我们首先把 :eq:`h-psi-pm-eq` 写为

.. math:: 
    (E_\alpha - H_0) \psi_\alpha^\pm = V\psi_\alpha^\pm

算符 :math:`E_\alpha - H_0` 是不可逆的 (为了证明这一点, 考虑极端的 :math:`V = 0` 的情况, 这时 :math:`E_\alpha - H_0 = 0` 自然不是可逆算符); 它不仅湮灭自由粒子态 :math:`\phi_\alpha` (因为 :math:`H_0 \phi_\alpha = E_\alpha\phi_\alpha` 得 :math:`(E_\alpha - H_0) \phi_\alpha = 0`), 考虑具有和 :math:`\phi_\alpha` 相同能量的其他自由粒子态 :math:`\phi_\beta`, 这样的态经过 :math:`E_\alpha - H_0` 作用也会得到零. 由于当 :math:`V\to 0` 时, 入态和出态成为 :math:`\phi_\alpha`, 我们暂时将形式解写为 :math:`\phi_\alpha` 加上正比于 :math:`V` 的项 (这里不是很严谨. 严格的做法参见王正行书)

.. math:: 
    \psi_\alpha^\pm = \phi_\alpha + (E_\alpha - H_0 \pm \I \epsilon)^{-1} V\psi_\alpha^\pm
    :label: psi-phi-v

或者用自由粒子态的完全集来展开

.. math:: 
    \psi_\alpha^\pm =&\ \phi_\alpha +\int \D \beta \frac{T_{\beta\alpha}^\pm \phi_\beta}{E_\alpha -E_\beta \pm \I \epsilon}, \\
    T_{\beta\alpha}^\pm \equiv&\ (\phi_\beta, V\psi_\alpha^\pm)
    :label: lip-sch-eq

其中 :math:`\epsilon` 是一个正的无穷小量, 它保证 :math:`E_\alpha -H_0` 的倒数有意义. 这被称为 **李普曼-施温格方程** (Lippmann-Schwinger equations). 我们将利用 :eq:`lip-sch-eq` 在下节末给出一个稍微更严格的对入态和出态的正交归一性的证明.

下面需要证明 :eq:`lip-sch-eq` 分母中的 :math:`+\I \epsilon` 和 :math:`-\I \epsilon` 分别满足入态和出态的条件 :eq:`psi-pm-def`. 考虑叠加态

.. math:: 
    \psi_g^\pm (t) \equiv&\ \int \D \alpha \E^{-\I E_\alpha t} g(\alpha) \psi_\alpha^\pm \\
    \phi_g (t) \equiv&\ \int \D \alpha \E^{-\I E_\alpha t} g(\alpha) \phi_\alpha
    :label: psi-phi-g-def

按照 :eq:`psi-pm-def`, 我们需要证明 :math:`\psi_g^+(t)` 和 :math:`\psi_g^-(t)` 分别当 :math:`t\to -\infty` 和 :math:`t\to+\infty` 时趋近于 :math:`\phi_g(t)`. 利用 :eq:`lip-sch-eq` 得

.. math:: 
    \psi_g^\pm (t) = \phi_g (t) + \int \D \alpha \int \D \beta \frac{\E^{-\I E_\alpha t} g(\alpha)T_{\beta\alpha}^\pm \phi_\beta}{E_\alpha -E_\beta \pm \I \epsilon}
    :label: psi-g-pm-int

我们先不计后果地交换积分次序, 然后考虑积分

.. math:: 
    \mathscr{I}_\beta^\pm \equiv \int \D \alpha \frac{\E^{-\I E_\alpha t}g(\alpha) T_{\beta\alpha}^\pm}{E_\alpha -E_\beta \pm \I \epsilon}

对于 :math:`t \to -\infty`, 我们对能量变量可以在上半平面用一个大半圆闭合积分回路, 其中来自半圆的贡献由于因子 :math:`\exp(-\I E_\alpha t)` 的存在而消失, 这个因子当 :math:`t \to -\infty` 和 :math:`\mathrm{Im\ }E_\alpha > 0` 时以指数速度衰减. (根据留数定理, 逆时针回路积分包围奇点 :math:`b_j`, 则 :math:`\oint_l f(\alpha)\D \alpha = 2\pi\I \sum_j \mathrm{Res\ } f(b_j)`. 现在是对 :math:`\alpha` 积分, 可以看成是对 :math:`E_\alpha` 积分. 这个积分本来应该在实数轴上从 :math:`E_\alpha = -\infty` 积分到 :math:`E_\alpha = +\infty`, 但是我们可以把 :math:`E_\alpha` 看成复数. 考虑复平面中包括实轴及上半平面的半圆的闭合路径. 因此, 这个闭合路径的积分等于所要求的实数轴的积分加上上半圆周上的积分. 下面先证明这个半圆周的积分为零, 于是实数轴的积分就等于闭合路径的积分, 而由留数定理, 为了计算这个闭合路径的积分就只要找到奇点. 现在考虑半圆周的积分. 因为是上半圆周, 因此 :math:`\mathrm{Im\ }E_\alpha > 0`, :math:`E_\alpha` 当然是实数部分和虚数部分的和, 现在把两项拆开, 其中可以预期 :math:`E_\alpha` 的实数部分给出一个相因子, 因此只有虚数部分是重要的. 于是 :math:`\E^{-\I E_\alpha t} = \E^{-\I (\I \mathrm{Im\ } E_\alpha) t} = \E^{\mathrm{Im\ } E_\alpha t}`. 其中当 :math:`t \to -\infty` 时, :math:`\mathrm{Im\ } E_\alpha t \to -\infty`, 即该指数因子指数速度地衰减为零. 因此半圆周的积分为零. 下面只需要讨论奇点的问题. ) 因此, 这个积分的值就由上半平面这个积分的奇点之和给出. 函数 :math:`g(\alpha)` 和 :math:`T_{\beta\alpha}^\pm` 一般地可能会在具有正的虚部的 :math:`E_\alpha` 处有一些奇点, 但就像大半圆的情况那样, 它们的贡献当 :math:`t \to -\infty` 时是指数速度衰减的. (特别地, :math:`-t` 必须远大于波包 :math:`g(\alpha)` 中的时间不确定性和碰撞的持续时间, 它们分别决定了 :math:`g(\alpha)` 和 :math:`T_{\beta\alpha}^\pm` 在复平面 :math:`E_\alpha` 上的奇点位置. 注意 :math:`g(\alpha)` 时间不确定性自然不可能太大, 而且 :math:`T_{\beta\alpha}^\pm` 代表无相互作用态和入态/出态对相互作用项 :math:`V` 的内积. 相互作用项自然也是局域的. 这些决定了奇点位置只能是局域的, 因此会受到指数衰减的影响. ) 那么剩下的奇点就只能在 :math:`(E_\alpha - E_\beta \pm \I \epsilon)^{-1}`. 注意 :math:`E_\alpha` 看作积分变量, :math:`\beta` 是参数. 因此奇点是 :math:`E_\alpha = E_\beta \mp \I \epsilon`. 对 :math:`\mathscr{I}_\beta^+`, 奇点是 :math:`E_\beta - \I \epsilon` 在下半平面因此不予考虑. 从而上半平面无奇点. 因此当 :math:`t \to -\infty` 时, :math:`\mathscr{I}_\beta^+` 为零. 用类似的方法, 对 :math:`t \to +\infty` 的情况, 我们考虑下半平面闭合积分回路, 则会推出 :math:`\mathscr{I}_\beta^-` 为零. 因此结论是, :math:`\psi_g^\pm (t)` 分别当 :math:`t \to \mp \infty` 时趋近于 :math:`\phi_g(t)`, 这和 :eq:`psi-pm-def` 一致.

5 主值和 delta 函数
^^^^^^^^^^^^^^^^^^^

为方便将来使用, :eq:`lip-sch-eq` 中因子 :math:`(E_\alpha - E_\beta \pm \I \epsilon)^{-1}` 因子有更方便的表达式. 一般地我们可以写

.. math:: 
    (E \pm \I\epsilon)^{-1} = \frac{\mathscr{P}_\epsilon}{E} \mp \I\pi \delta_\epsilon(E)

其中

.. math:: 
    \frac{\mathscr{P}_\epsilon}{E} \equiv \frac{E}{E^2 + \epsilon^2},\quad \delta_\epsilon(E) \equiv \frac{\epsilon}{\pi (E^2+\epsilon^2)}

函数 :math:`\frac{\mathscr{P}_\epsilon}{E}` 当 :math:`|E| \gg \epsilon` 时就是 :math:`1/E`, 当 :math:`E \to 0` 时为零. 因此当 :math:`\epsilon \to 0` 时, 它表现为 "主值函数" (principal value function) :math:`\mathscr{P}/E`. 这使得我们可以使 :math:`1/E` 乘以任何光滑的关于 :math:`E` 的函数的积分有意义, 通过排除 :math:`E = 0` 附近的无穷小区间. 函数 :math:`\delta_\epsilon(E)` 当 :math:`|E|\gg \epsilon` 时是和 :math:`\epsilon` 同阶的无穷小, 当对所有 :math:`E` 积分时, 它给出1. 因此在 :math:`\epsilon \to 0` 的极限它就像我们熟悉的 delta 函数 :math:`\delta(E)`. 基于这个理解, 我们可以不写指标 :math:`\epsilon` 而得到

.. math:: 
    (E \pm \I \epsilon)^{-1} = \frac{\mathscr{P}}{E} \mp \I \pi \delta(E)
    :label: e-eps-principal

第二节 S 矩阵
-------------

1 S 矩阵的定义
^^^^^^^^^^^^^^

一般情况下, 实验在 :math:`t \to -\infty` 准备一个有确定粒子组成的态, 然后在 :math:`t \to +\infty` 测量这个态产生怎样的变化. 如果这个态在 :math:`t\to-\infty` 被准备为具有粒子组成 :math:`\alpha`, 那么它是入态 :math:`\psi_\alpha^+`. 如果在 :math:`t\to+\infty` 我们发现它具有粒子组成 :math:`\beta`, 那么它是出态 :math:`\psi_\beta^-`. 因此跃迁 :math:`\alpha \to \beta` 的概率振幅是标量积

.. math:: 
    S_{\beta\alpha} = (\psi_\beta^-, \psi_\alpha^+)
    :label: s-matrix

这个复振幅的矩阵被称为 :math:`S` **矩阵** (:math:`S`-matrix). 如果没有相互作用, 那么入态和出态是一样的, 那么 :math:`S_{\beta\alpha}` 就是 :math:`\delta(\alpha - \beta)`. 反应 :math:`\alpha \to \beta` 的速率正比于 :math:`|S_{\beta\alpha} - \delta(\alpha -\beta)|^2` [这里有疑问] 在第3.4节我们将具体讨论 :math:`S_{\beta\alpha}` 和测量的速率和截面.

应该强调入态和出态并不处于两个不同的希尔伯特空间. 它们的不同仅仅在于它们是如何被标记的: 我们通过这两个态分别在 :math:`t\to-\infty` 和 :math:`t\to+\infty` 的表现来标记它们. 任何入态可以展开为出态的和, 展开系数由 :math:`S` 矩阵 :eq:`s-matrix` 给出.

由于 :math:`S_{\beta\alpha}` 是连接正交态的两个完全集的矩阵, 它必须是幺正的. 具体来看, 把完备性关系 :eq:`psi-alpha-complete` 应用到出态, 即

.. math:: 
    \int \D \beta \psi_\beta^- (\psi_\beta^-, \psi_\alpha^+) = \psi_\alpha^+

得

.. math:: 
    \int \D \beta S_{\beta\gamma}^* S_{\beta\alpha} = \int \D \beta (\psi_\gamma^+, \psi_\beta^-)(\psi_\beta^-, \psi_\alpha^+)
        = (\psi_\gamma^+, \psi_\alpha^+)

使用 :eq:`psi-alpha-norm` 这给出

.. math:: 
    \int \D \beta S_{\beta\gamma}^* S_{\beta\alpha} = \delta(\gamma - \alpha)

或者说, :math:`S^\dagger S = 1` (注意, :math:`S_{\beta\gamma}^*` 是指对每个元素取复数共轭, 因此 :math:`S_{\beta\gamma}^* = S_{\gamma\beta}^\dagger`. 以同样的方式, 入态的完备性给出

.. math:: 
    \int \D \beta S_{\gamma\beta}S_{\alpha\beta}^* = \delta(\gamma - \alpha)

或者 :math:`SS^\dagger = 1`. (注意对无限矩阵, 幺正条件 :math:`S^\dagger S = 1` 和 :math:`SS^\dagger = 1` 并不等价. )

2 S 算符
^^^^^^^^

通常考虑算符 :math:`S` 而不是 :math:`S` 矩阵更加方便. :math:`S` 算符被定义为, 它在自由粒子态之间的矩阵元等于 :math:`S` 矩阵的对应元素:

.. math:: 
    (\phi_\beta, S\phi_\alpha) \equiv S_{\beta\alpha}

[定理3-3] :math:`S` 算符满足

.. math:: 
    S = \Omega(+\infty)^\dagger \Omega(-\infty) = U(+\infty, -\infty)

其中

.. math:: 
    U(\tau, \tau_0) \equiv \Omega(\tau)^\dagger \Omega(\tau_0) =
        \exp(\I H_0 \tau) \exp(-\I H(\tau - \tau_0))\exp(-\I H_0\tau_0)
    
在下一节, 这将被用来检查 :math:`S` 矩阵的洛伦兹不变性. 在3.5节这被用来推导含时微扰论中 :math:`S` 矩阵的公式.

[证明] 由 :math:`S` 矩阵的定义得

.. math:: 
    (\phi_\beta, S\phi_\alpha) = S_{\beta\alpha} = (\psi_\beta^-, \psi_\alpha^+)

利用入态和出态的显式但是形式的公式 :eq:`psi-pm-def-omega` 即 :math:`\psi_\alpha^\pm = \Omega(\mp \infty) \phi_\alpha` 得

.. math:: 
    (\phi_\beta, S\phi_\alpha) = (\Omega(+ \infty) \phi_\beta, \Omega(- \infty) \phi_\alpha) = ( \phi_\beta, \Omega(+ \infty)^\dagger\Omega(- \infty) \phi_\alpha)

注意虽然 :math:`\Omega(\mp \infty)` 不是幺正的, 但是求厄米共轭还是没有问题的. 由于 :math:`\phi_\beta, \phi_\alpha` 可取任意基函数, 因此

.. math:: 
    S = \Omega(+ \infty)^\dagger\Omega(- \infty)

又 :eq:`omega-tau-def` 给出

.. math:: 
    \Omega(\tau) \equiv \exp(+\I H\tau) \exp(-\I H_0 \tau)

因此

.. math:: 
    U(\tau, \tau_0) \equiv&\ \Omega(\tau)^\dagger \Omega(\tau_0) \\
        =&\ \big[ \exp(+\I H\tau) \exp(-\I H_0 \tau) \big]^\dagger \exp(+\I H\tau_0) \exp(-\I H_0 \tau_0) \\
        =&\ \exp(\I H_0 \tau) \exp(-\I H\tau) \exp(+\I H\tau_0) \exp(-\I H_0 \tau_0) \\
        =&\ \exp(\I H_0 \tau) \exp(+\I H(\tau_0-\tau)) \exp(-\I H_0 \tau_0)

3 波恩近似
^^^^^^^^^^

前一节的方法可以用来推导一个有用的 :math:`S` 矩阵的另一个公式. 考虑入态 :math:`\psi^+` 的表达式 :eq:`psi-g-pm-int` 即

.. math:: 
    \psi_g^+ (t) = \phi_g (t) + \int \D \alpha \int \D \beta \frac{\E^{-\I E_\alpha t} g(\alpha)T_{\beta\alpha}^+ \phi_\beta}{E_\alpha -E_\beta + \I \epsilon}

但是这次我们考虑 :math:`t \to +\infty` 的极限. 为了使半圆上的积分为零, 我们现在必须在 :math:`E_\alpha` 下半平面闭合积分路径 (考虑 :math:`E_\alpha` 的积分). 尽管和之前一样, :math:`T_{\beta\alpha}^+` 和 :math:`g(\alpha)` 中的奇点在 :math:`t\to+\infty` 时无贡献, 我们现在需要考虑因子 :math:`(E_\alpha -E_\beta + \I \epsilon)^{-1}` 的奇点的贡献. 积分路径从 :math:`E_\alpha = -\infty` 到 :math:`E_\alpha = +\infty`, 然后从下半平面的大半圆回到 :math:`E_\alpha = -\infty`, 因此它沿顺时针方向包围奇点. 利用留数定理, 它对 :math:`E_\alpha` 上的积分的贡献由被积函数在 :math:`E_\alpha = E_\beta -\I\epsilon` 的值乘以因子 :math:`-2\I \pi` 给出. (如果是逆时针, 则没有负号) 因此我们有如下结论.

[定理3-4] 考虑极限 :math:`\epsilon \to 0^+`, 对 :math:`t \to +\infty`, 在 :math:`\alpha` 上的积分 :eq:`psi-g-pm-int` 有渐进行为

.. math:: 
    \mathscr{I}_\beta^+ \to -2\I\pi \E^{-\I E_\beta t} \int \D \alpha \delta(E_\alpha - E_\beta) g(\alpha) T_{\beta\alpha}^+

[证明] 留数定理需要用到积分

.. math:: 
    \mathscr{I}_\beta^+ = \int \D \alpha \frac{\E^{-\I E_\alpha t}g(\alpha) T_{\beta\alpha}^+}{E_\alpha -E_\beta + \I \epsilon}

的被积函数在 :math:`E_\alpha = E_\beta - \I \epsilon` 时的留数. 留数定义为

.. math:: 
    \mathrm{Res\ } [f(\alpha_0)] = \lim_{\alpha \to \alpha_0} [(\alpha - \alpha_0)f(\alpha)]

因此 (考虑 :math:`\epsilon \to 0^+`)

.. math:: 
    \mathscr{I}_\beta^+ =&\ (-2\pi\I )\mathrm{Res\ } [f(E_\alpha = E_\beta - \I \epsilon)] =
        (-2\pi\I )\lim_{E_\alpha \to E_\beta - \I \epsilon} [(E_\alpha - E_\beta + \I \epsilon)f(\alpha)] \\
    =&\ (-2\pi\I )\lim_{E_\alpha \to E_\beta - \I \epsilon} \E^{-\I E_\alpha t} g(\alpha)T_{\beta\alpha}^+  \\
    =&\ (-2\pi\I ) \E^{-\I E_\beta t} \int \D \alpha \delta(E_\alpha - E_\beta) g(\alpha)T_{\beta\alpha}^+

因此, 由于根据 :eq:`psi-g-pm-int` 有

.. math:: 
    \psi_g^+ (t) = \phi_g (t) + \int \D \beta \mathscr{I}_\beta^+ \phi_\beta

代入 [定理3-4] 的结论得

.. math:: 
    \psi_g^+ (t) \to \phi_g (t) -2\I\pi \int \D \beta \E^{-\I E_\beta t} \int \D \alpha \delta(E_\alpha - E_\beta) g(\alpha) T_{\beta\alpha}^+ \phi_\beta

利用 :math:`\phi_g (t)` 的定义式 :eq:`psi-phi-g-def` 第二式, 即

.. math:: 
    \phi_g (t) \equiv \int \D \alpha \E^{-\I E_\alpha t} g(\alpha) \phi_\alpha = \int \D \beta \E^{-\I E_\beta t} g(\beta) \phi_\beta

得

.. math:: 
    \psi_g^+ (t) \to&\  \int \D \beta \E^{-\I E_\beta t} g(\beta) \phi_\beta -2\I\pi \int \D \beta \E^{-\I E_\beta t} \int \D \alpha \delta(E_\alpha - E_\beta) g(\alpha) T_{\beta\alpha}^+ \phi_\beta \\
    =&\ \int \D \beta \E^{-\I E_\beta t}  \phi_\beta \big[ g(\beta) - 2\I\pi \int \D \alpha\delta(E_\alpha - E_\beta) g(\alpha) T_{\beta\alpha}^+ \big]
    :label: psi-g-plus-res

但是我们也可以利用 :eq:`psi-phi-g-def` 第一式, 即

.. math:: 
    \psi_g^\pm (t) \equiv \int \D \alpha \E^{-\I E_\alpha t} g(\alpha) \psi_\alpha^\pm

直接对 :math:`\psi_g^+ (t)` 进行展开, 得

.. math:: 
    \psi_g^+ (t) = \int \D \alpha \E^{-\I E_\alpha t} g(\alpha) \psi_\alpha^+

利用 :math:`S_{\beta\alpha}` 矩阵的定义 :math:`S_{\beta\alpha} = (\psi_\beta^-, \psi_\alpha^+` 及 :math:`\psi_\beta^-` 的完备条件得

.. math:: 
    \psi_\alpha^+ = \int \D \beta \psi_\beta^- (\psi_\beta^-, \psi_\alpha^+) = \int \D \beta \psi_\beta^- S_{\beta\alpha}

代入 :math:`\psi_g^+ (t)` 的表达式得

.. math:: 
    \psi_g^+ (t) = \int \D \alpha \E^{-\I E_\alpha t} g(\alpha) \int \D \beta \psi_\beta^- S_{\beta\alpha}

由于 :math:`S_{\beta\alpha}` 包含因子 :math:`\delta(E_\beta - E_\alpha)` (可以简单根据能量守恒推断得到, 也可以参考王正行P170), 这可以重写为

.. math:: 
    \psi_g^+ (t) =&\ \int \D \alpha  g(\alpha) \int \D \beta  \E^{-\I E_\beta t} \psi_\beta^- S_{\beta\alpha} \\
        =&\ \int \D \beta \psi_\beta^- \E^{-\I E_\beta t}  \int \D \alpha  g(\alpha)  S_{\beta\alpha} 

而根据 :eq:`psi-pm-def`, :math:`\tau \to +\infty` 时满足条件

.. math:: 
    \int \D \alpha \E^{-\I E_\alpha \tau} g(\alpha) \psi_\alpha^- \to \int \D \alpha \E^{-\I E_\alpha\tau} g(\alpha) \phi_\alpha

于是 (把上式 :math:`\alpha` 看成 :math:`\beta`, 在上式中令 :math:`g(\beta) = \int \D \alpha  g(\alpha)  S_{\beta\alpha}`, 因为 :math:`g(\beta)` 可以任取)

.. math:: 
    \psi_g^+ (t) \to \int \D \beta \phi_\beta \E^{-\I E_\beta t}  \int \D \alpha  g(\alpha)  S_{\beta\alpha} 

和之前的表达式 :eq:`psi-g-plus-res` 比较, 得

.. math:: 
    \int \D \alpha  g(\alpha)  S_{\beta\alpha} =&\ g(\beta) - 2\I\pi \int \D \alpha\delta(E_\alpha - E_\beta) g(\alpha) T_{\beta\alpha}^+ \\
        =&\ \int \D \alpha \delta(\alpha - \beta) g(\alpha) - 2\I\pi \int \D \alpha\delta(E_\alpha - E_\beta) g(\alpha) T_{\beta\alpha}^+  \\
        =&\ \int \D \alpha g(\alpha) \big[ \delta(\alpha - \beta) - 2\I\pi\delta(E_\alpha - E_\beta) T_{\beta\alpha}^+ \big]

因此 (考虑到 :math:`g(\alpha)` 可以任取)

.. math:: 
    S_{\beta\alpha} = \delta(\alpha - \beta) - 2\I\pi\delta(E_\alpha - E_\beta) T_{\beta\alpha}^+
    :label: s-matrix-e-delta

由于 :math:`\delta(\alpha - \beta)` 是比 :math:`\delta(E_\alpha - E_\beta)` 更强的因子, 因此 :math:`\delta(\alpha - \beta)` 正比于 :math:`\delta(E_\alpha - E_\beta)`. 此式实际上反过来印证了前面 :math:`S_{\beta\alpha}` 含有因子 :math:`\delta(E_\alpha - E_\beta)` 的论断.

:eq:`s-matrix-e-delta` 提供了 :math:`S` 矩阵的一种简单近似: 对于相互作用项 :math:`V` 较小的情况, 我们可以忽略 :eq:`lip-sch-eq` 第二式中入态和自由粒子态的差别. 事实上, 这相当于把 :math:`V` 看作小量, 把 :eq:`psi-phi-v` 代入 :eq:`lip-sch-eq` 第二式得

.. math:: 
    T_{\beta\alpha}^\pm = &\ (\phi_\beta, V\psi_\alpha^\pm) = \big(\phi_\beta, V (\phi_\alpha + (E_\alpha - H_0 \pm \I \epsilon)^{-1} V\psi_\alpha^\pm) \big) \\
    \approx &\ \big(\phi_\beta, V \phi_\alpha \big)

其中忽略的项正比于 :math:`V^2`. 代入 :eq:`s-matrix-e-delta` 得

.. math:: 
    S_{\beta\alpha} \approx \delta(\alpha - \beta) - 2\I\pi\delta(E_\alpha - E_\beta) \big(\phi_\beta, V \phi_\alpha \big)

这称为 **波恩近似** (Born approximation), 高阶项在第3.5节讨论.

4 入态和出态的正交归一性
^^^^^^^^^^^^^^^^^^^^^^^^

我们可以利用入态和出态的李普曼-施温格方程 :eq:`psi-phi-v` 来构造这些态的正交归一性和 :math:`S` 矩阵的幺正性的证明 (以及 :eq:`s-matrix-e-delta` 的幺正性证明), 这个证明的好处是不需要考虑 :math:`t \to \mp \infty` 的极限. 首先, 我们分别在 :math:`(\psi_\beta^\pm, V \psi_\alpha^\pm)` 左边和右边应用 :eq:`psi-phi-v`, 并使结果相等. 首先考虑右边的代换

.. math:: 
    (\psi_\beta^\pm, V \psi_\alpha^\pm) = (\psi_\beta^\pm, V \phi_\alpha)
         + (\psi_\beta^\pm, V (E_\alpha - H_0 \pm \I \epsilon)^{-1} V\psi_\alpha^\pm )

然后考虑左边的代换 (由于 :math:`V = H - H_0`, 而 :math:`H, H_0` 都是厄米算符, 因此 :math:`V^\dagger = V`)

.. math:: 
    (\psi_\beta^\pm, V \psi_\alpha^\pm) =&\ (\phi_\beta, V \psi_\alpha^\pm)
        + ((E_\beta - H_0 \pm \I \epsilon)^{-1} V\psi_\beta^\pm, V \psi_\alpha^\pm) \\
    =&\ (\phi_\beta, V \psi_\alpha^\pm)
        + \big(\psi_\beta^\pm, \big[ (E_\beta - H_0 \pm \I \epsilon)^{-1} V \big]^\dagger V \psi_\alpha^\pm\big) \\
    =&\ (\phi_\beta, V \psi_\alpha^\pm)
        + \big(\psi_\beta^\pm, V (E_\beta - H_0 \mp \I \epsilon)^{-1} V \psi_\alpha^\pm\big)
    
左边和右边的情形应该相等, 因此有

.. math:: 
     (\psi_\beta^\pm, V \phi_\alpha)
         + (\psi_\beta^\pm, V (E_\alpha - H_0 \pm \I \epsilon)^{-1} V\psi_\alpha^\pm ) \\
    = (\phi_\beta, V \psi_\alpha^\pm)
        + \big(\psi_\beta^\pm, V (E_\beta - H_0 \mp \I \epsilon)^{-1} V \psi_\alpha^\pm\big)
    :label: psi-phi-v-sca-prod-pre

注意到由 :eq:`lip-sch-eq` 第二式, 即 :math:`T_{\beta\alpha}^\pm \equiv (\phi_\beta, V\psi_\alpha^\pm)` 得 (注意 :math:`(\phi_\beta, V\psi_\alpha^\pm)` 是数或矩阵元, 所以对标量积取复数共轭, 反应在矩阵上, 就只是 :math:`T_{\beta\alpha}^{\pm *}`, 而不是 :math:`(T_{\beta\alpha}^{\pm})^\dagger`)

.. math:: 
    T_{\beta\alpha}^{\pm *} = \overline{(\phi_\beta, V\psi_\alpha^\pm)} = (V\psi_\alpha^\pm, \phi_\beta)
        = (\psi_\alpha^\pm, V^\dagger \phi_\beta) = (\psi_\alpha^\pm, V \phi_\beta)

因此

.. math:: 
    (\psi_\beta^\pm, V \phi_\alpha) = T_{\alpha\beta}^{\pm *}

由 :eq:`psi-phi-v-sca-prod-pre` 移项得

.. math:: 
    T_{\alpha\beta}^{\pm *} - T_{\beta\alpha}^\pm =&\  
         \big(\psi_\beta^\pm, V (E_\beta - H_0 \mp \I \epsilon)^{-1} V \psi_\alpha^\pm\big) - \big(\psi_\beta^\pm, V (E_\alpha - H_0 \pm \I \epsilon)^{-1} V\psi_\alpha^\pm \big) \\
        =&\ \big(V \psi_\beta^\pm, (E_\beta - H_0 \mp \I \epsilon)^{-1} V \psi_\alpha^\pm\big) - \big(V \psi_\beta^\pm, (E_\alpha - H_0 \pm \I \epsilon)^{-1} V\psi_\alpha^\pm \big)

利用完备性条件

.. math:: 
    \psi = \int \D \gamma \phi_\gamma (\phi_\gamma, \psi)

得

.. math:: 
    \big(V \psi_\beta^\pm, (E_\alpha - H_0 \pm \I \epsilon)^{-1} V\psi_\alpha^\pm \big) =&\ 
        \int \D \gamma \big(V \psi_\beta^\pm, (E_\alpha - H_0 \pm \I \epsilon)^{-1} \phi_\gamma \big) (\phi_\gamma, V\psi_\alpha^\pm ) \\
    =&\ \int \D \gamma \big(V \psi_\beta^\pm, (E_\alpha - E_\gamma \pm \I \epsilon)^{-1} \phi_\gamma \big) (\phi_\gamma, V\psi_\alpha^\pm ) \\
    =&\ (E_\alpha - E_\gamma \pm \I \epsilon)^{-1}  \int \D \gamma (V \psi_\beta^\pm, \phi_\gamma ) (\phi_\gamma, V\psi_\alpha^\pm ) \\
    =&\ (E_\alpha - E_\gamma \pm \I \epsilon)^{-1} \int \D \gamma T_{\gamma\beta}^{\pm*} T_{\gamma\alpha}^\pm

类似有

.. math:: 
    \big(V \psi_\beta^\pm, (E_\beta - E_\gamma \mp \I \epsilon)^{-1} V \psi_\alpha^\pm\big)
    = (E_\beta - E_\gamma \mp \I \epsilon)^{-1} \int \D \gamma T_{\gamma\beta}^{\pm*} T_{\gamma\alpha}^\pm

于是

.. math:: 
    T_{\alpha\beta}^{\pm *} - T_{\beta\alpha}^\pm =&\ \int \D \gamma T_{\gamma\beta}^{\pm*} T_{\gamma\alpha}^\pm
        \big[ (E_\beta - E_\gamma \mp \I \epsilon)^{-1} - (E_\alpha - E_\gamma \pm \I \epsilon)^{-1} \big] \\
        =&\ - \int \D \gamma T_{\gamma\beta}^{\pm*} T_{\gamma\alpha}^\pm
        \big[ (E_\alpha - E_\gamma \pm \I \epsilon)^{-1}  - (E_\beta - E_\gamma \mp \I \epsilon)^{-1} \big] \\
        =&\ - \int \D \gamma T_{\gamma\beta}^{\pm*} T_{\gamma\alpha}^\pm
        \frac{(E_\beta - E_\gamma \mp \I \epsilon) - (E_\alpha - E_\gamma \pm \I \epsilon)}{(E_\alpha - E_\gamma \pm \I \epsilon)(E_\beta - E_\gamma \mp \I \epsilon)} \\
        =&\ - \int \D \gamma T_{\gamma\beta}^{\pm*} T_{\gamma\alpha}^\pm
        \frac{E_\beta - E_\alpha \mp 2\I \epsilon}{(E_\alpha - E_\gamma \pm \I \epsilon)(E_\beta - E_\gamma \mp \I \epsilon)} \\
        =&\ - \int \D \gamma \left( \frac{T_{\gamma\beta}^\pm}{E_\beta - E_\gamma \pm \I \epsilon} \right)^* \frac{T_{\gamma\alpha}^\pm}{E_\alpha - E_\gamma \pm \I \epsilon} (E_\beta - E_\alpha \mp 2\I \epsilon)
    :label: t-alpha-beta-eps-star

或者

.. math:: 
    -T_{\alpha\beta}^{\pm *} + T_{\beta\alpha}^\pm = -\int \D \gamma \left( \frac{T_{\gamma\beta}^\pm}{E_\beta - E_\gamma \pm \I \epsilon} \right)^* \frac{T_{\gamma\alpha}^\pm}{E_\alpha - E_\gamma \pm \I \epsilon} (-E_\beta + E_\alpha \pm 2\I \epsilon)

为了证明入态和出态的正交归一性, 我们将上式两边除以 :math:`E_\alpha - E_\beta \pm 2\I \epsilon` 得

.. math:: 
    -\frac{T_{\alpha\beta}^{\pm *}}{E_\alpha - E_\beta \pm 2\I \epsilon} +\frac{T_{\beta\alpha}^\pm}{E_\alpha - E_\beta \pm 2\I \epsilon}
    =&\ -\int \D \gamma \left( \frac{T_{\gamma\beta}^\pm}{E_\beta - E_\gamma \pm \I \epsilon} \right)^* \frac{T_{\gamma\alpha}^\pm}{E_\alpha - E_\gamma \pm \I \epsilon} \frac{-E_\beta + E_\alpha \pm 2\I \epsilon}{E_\alpha - E_\beta \pm 2\I \epsilon} \\
    \left( \frac{T_{\alpha\beta}^{\pm}}{E_\beta - E_\alpha \pm 2\I \epsilon} \right)^* +\frac{T_{\beta\alpha}^\pm}{E_\alpha - E_\beta \pm 2\I \epsilon}
     =&\ -\int \D \gamma \left( \frac{T_{\gamma\beta}^\pm}{E_\beta - E_\gamma \pm \I \epsilon} \right)^* \frac{T_{\gamma\alpha}^\pm}{E_\alpha - E_\gamma \pm \I \epsilon}

上式左边分母中的 :math:`2 \epsilon` 可以替换为 :math:`\epsilon`, 因为只要它们是正的无穷小量, 就没有区别. 事实上, 因为这里 :math:`\epsilon` 是无穷小量, 按泰勒展开

.. math:: 
    \frac{T_{\alpha\beta}^{\pm *}}{E_\alpha - E_\beta \pm 2\I \epsilon} = 
        \frac{T_{\alpha\beta}^{\pm *}}{E_\alpha - E_\beta \pm \I \epsilon} + \frac{T_{\alpha\beta}^{\pm *}\I\epsilon}{(E_\alpha - E_\beta \pm 2\I \epsilon)^2} + \cdots

而与 :math:`\epsilon` 正比的项在这里不起作用. 因此 (记 :math:`\delta_{\beta\alpha} \equiv \delta(\beta - \alpha)`)

.. math:: 
    \left( \frac{T_{\alpha\beta}^{\pm}}{E_\beta - E_\alpha \pm \I \epsilon} \right)^* +\frac{T_{\beta\alpha}^\pm}{E_\alpha - E_\beta \pm \I \epsilon}
    + \int \D \gamma \left( \frac{T_{\gamma\beta}^\pm}{E_\beta - E_\gamma \pm \I \epsilon} \right)^* \frac{T_{\gamma\alpha}^\pm}{E_\alpha - E_\gamma \pm \I \epsilon} =&\ 0 \\
    \int \D \gamma \left[ \delta_{\gamma\beta} + \frac{T_{\gamma\beta}^\pm}{E_\beta - E_\gamma \pm \I \epsilon} \right]^*
        \left[ \delta_{\gamma\alpha} + \frac{T_{\gamma\alpha}^\pm}{E_\alpha - E_\gamma \pm \I \epsilon} \right] = \delta_{\beta\alpha}

上式说明 :math:`\delta(\beta - \alpha) + T_{\beta\alpha}^\pm/(E_\alpha - E_\beta \pm \I \epsilon)` 是幺正的. 参考 [定理2-34] 中关于幺正性和矩阵厄米共轭和复数共轭的关系的说明. 联系 :eq:`lip-sch-eq` 第一式, 即

.. math:: 
    \psi_\alpha^\pm =&\ \phi_\alpha +\int \D \beta \frac{T_{\beta\alpha}^\pm \phi_\beta}{E_\alpha -E_\beta \pm \I \epsilon} \\
        =&\ \int \D \beta \left[ \delta(\beta- \alpha) + \frac{T_{\beta\alpha}^\pm}{E_\alpha -E_\beta \pm \I \epsilon} \right] \phi_\beta

上式说明, :math:`\psi_\alpha^\pm` 是通过一个幺正矩阵 :math:`\delta(\beta - \alpha) + T_{\beta\alpha}^\pm/(E_\alpha - E_\beta \pm \I \epsilon)` 作用到 :math:`\phi_\beta` 上得到的. 因为 :math:`\phi_\beta` 是正交归一的, 因此我们可以知道 :math:`\psi_\alpha^\pm` 构成两组 "态矢的正交归一基" (之所以是两个是考虑到正负号).

5 S 矩阵的幺正性
^^^^^^^^^^^^^^^^

下面考虑 :eq:`s-matrix-e-delta` 的幺正性的证明, 即

.. math:: 
    S_{\beta\alpha} = \delta(\alpha - \beta) - 2\I\pi\delta(E_\alpha - E_\beta) T_{\beta\alpha}^+

利用 :eq:`e-eps-principal` 即

.. math:: 
    (E \pm \I \epsilon)^{-1} = \frac{\mathscr{P}}{E} \mp \I \pi \delta(E)

得

.. math:: 
    \frac{1}{E_\alpha - E_\gamma \mp \I \epsilon} - \frac{1}{E_\alpha - E_\gamma \pm \I \epsilon}
    =&\ \frac{\mathscr{P}}{E_\alpha - E_\gamma} \pm \I \pi \delta(E_\alpha - E_\gamma) - \frac{\mathscr{P}}{E_\alpha - E_\gamma} \pm \I \pi \delta(E_\alpha - E_\gamma)\\
     =&\ \pm 2 \I \pi \delta(E_\alpha - E_\gamma)

我们在 :eq:`t-alpha-beta-eps-star` 第一式中只取正号得

.. math:: 
    T_{\alpha\beta}^{+ *} - T_{\beta\alpha}^+ = \int \D \gamma T_{\gamma\beta}^{+*} T_{\gamma\alpha}^+
        \big[ (E_\beta - E_\gamma - \I \epsilon)^{-1} - (E_\alpha - E_\gamma + \I \epsilon)^{-1} \big]

两边乘以 :math:`\delta(E_\alpha - E_\beta)`. 注意 delta 函数是对称函数, 并且是实函数, 因此

.. math:: 
    \delta(E_\alpha - E_\beta) = \delta(E_\beta - E_\alpha) =\delta(E_\alpha - E_\beta)^*

得

.. math:: 
    \delta(E_\alpha - E_\beta) \big[ T_{\alpha\beta}^{+ *} - T_{\beta\alpha}^+ \big]
    =&\ \int \D \gamma \delta(E_\alpha - E_\beta) T_{\gamma\beta}^{+*} T_{\gamma\alpha}^+
        \big[ (E_\beta - E_\gamma - \I \epsilon)^{-1} - (E_\alpha - E_\gamma + \I \epsilon)^{-1} \big] \\
    =&\ \int \D \gamma \delta(E_\alpha - E_\beta) T_{\gamma\beta}^{+*} T_{\gamma\alpha}^+
        \big[ (E_\alpha - E_\gamma - \I \epsilon)^{-1} - (E_\alpha - E_\gamma + \I \epsilon)^{-1} \big] \\
    =&\ \int \D \gamma \delta(E_\alpha - E_\beta) T_{\gamma\beta}^{+*} T_{\gamma\alpha}^+
        \big[ 2 \I \pi \delta(E_\alpha - E_\gamma) \big] \\
    =&\ \int \D \gamma \delta(E_\gamma - E_\beta) T_{\gamma\beta}^{+*} T_{\gamma\alpha}^+
        \big[ 2 \I \pi \delta(E_\alpha - E_\gamma) \big]

其中第二步是因为由于 :math:`\delta(E_\alpha - E_\beta)` 的存在, :math:`E_\beta` 可以换成 :math:`E_\alpha`. 最后一步是因为, 由于 :math:`\delta(E_\alpha - E_\gamma)` 的存在, :math:`E_\alpha` 可以换成 :math:`E_\gamma`.

于是

.. math:: 
    \delta(E_\alpha - E_\beta) \big[ T_{\alpha\beta}^{+ *} - T_{\beta\alpha}^+ \big]
        =&\ -(-2 \I \pi)\int \D \gamma \big[ \delta(E_\gamma - E_\beta) T_{\gamma\beta}^{+*} \big] \big[ \delta(E_\gamma - E_\alpha) T_{\gamma\alpha}^+
         \big] \\
    (2 \I \pi) \delta(E_\alpha - E_\beta) \big[ T_{\alpha\beta}^{+ *} - T_{\beta\alpha}^+ \big]
    =&\ -(-2 \I \pi)(-2 \I \pi)^*\int \D \gamma \big[ \delta(E_\gamma - E_\beta) T_{\gamma\beta}^{+} \big]^* \big[ \delta(E_\gamma - E_\alpha) T_{\gamma\alpha}^+
         \big] \\
    \delta(E_\alpha - E_\beta) \big[ (-2 \I \pi)^* T_{\alpha\beta}^{+ *} +(-2\I\pi)  T_{\beta\alpha}^+ \big]
    =&\ -\int \D \gamma \big[ (-2 \I \pi) \delta(E_\gamma - E_\beta) T_{\gamma\beta}^{+} \big]^* \big[ (-2 \I \pi)\delta(E_\gamma - E_\alpha) T_{\gamma\alpha}^+
         \big]

令

.. math:: 
    R_{\alpha\beta}^+ \equiv -2 \I \pi \delta(E_\alpha - E_\beta) T_{\alpha\beta}^{+}

得

.. math:: 
    R_{\alpha\beta}^{+*} + R_{\beta\alpha}^{+} + \int \D \gamma R_{\gamma\beta}^{+*} R_{\gamma\alpha}^+ =&\ 0 \\
    \int \D \gamma \left[ \delta(\gamma -\beta) + R_{\gamma\beta}^{+} \right]^* \left[ \delta(\gamma -\alpha) + R_{\gamma\alpha}^{+} \right] =&\ 
        \delta(\beta -\alpha)

这说明

.. math:: 
    S_{\beta\alpha} = \delta(\beta -\alpha) + R_{\beta\alpha}^+ = \delta(\beta -\alpha) -2 \I \pi \delta(E_\beta - E_\alpha) T_{\beta\alpha}^{+}

是幺正矩阵.


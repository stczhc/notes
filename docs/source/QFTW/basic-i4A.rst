
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
    

第四章 集团分解原理
===================

到目前为止, 我们还没有讨论哈密顿算符 :math:`H` 的具体结构. 这个算符可以通过给出它在粒子态 (可以具有任意粒子数) 之间的矩阵元来定义. 等价地, 我们将在这里指出, 任何这样的算符也可以表示为某些产生和消灭单个粒子的算符的函数. 我们在第一章首先看到这样的产生和湮灭算符在早期的量子力学中, 出现在电磁场和其他场的正则量子化. 从二十世纪三十年代早期开始, 和费米的 beta 衰变理论一起, 它们为有质量粒子和光子能够被产生和消灭的理论提供了自然的形式体系.

但是, 用产生和湮灭算符构造哈密顿量还有一个更深层次的原因, 这个原因超出对任何已经存在的场论 (例如电动力学) 的量子化的需要, 并且和粒子事实上能否被产生和消灭无关. 这个形式体系的巨大优越性是, 如果我们把哈密顿量表示成产生和湮灭算符乘积的和, 并且系数是合适的和非奇异的, 那么 :math:`S` 矩阵将自动满足一个关键的物理要求, 即 **集团分解原理** (cluster decomposition principle), 这个原理简单地说就是相距很远的实验结果是不相关联的. 事实上, 正是由于这个原因, 产生和湮灭算符的形式体系在非相对论量子统计力学广泛应用, 而在那里粒子数通常是固定的. 在相对论量子理论中, 集团分解原理起到关键作用使得场论是不可避免的. 曾经有很多尝试, 希望构造一个具有相对论不变性的, 但不是局域场论的理论, 并且事实上构造一个不是场论的理论, 并且对双粒子散射给出洛伦兹不变的 :math:`S` 矩阵是可能的, 但是这样的理论总是会在考虑多于两个粒子时遇到麻烦, 或者违背集团分解原理.

本章我们将先讨论具有任意数目玻色子和费米子的态的基矢, 然后定义产生和湮灭算符, 并最终证明使用它们如何构造哈密顿量并导出满足集团分解原理的 :math:`S` 矩阵.

第一节 玻色子和费米子
---------------------

物理态的希尔伯特空间由包含 :math:`0,1,2,\cdots` 自由粒子的态展开. 这些可以是自由粒子态, 或入态, 或出态. 为明确起见, 我们这里考虑自由粒子态 :math:`\phi_{\bm{p}_1 \sigma_1 n_1,\bm{p}_2 \sigma_2 n_2,\cdots}`, 但是我们所有结果也可以等效地应用于入态和出态上. 和通常的情况一样, :math:`\sigma` 标记自旋 :math:`z` 分量 (或者无质量粒子的螺旋度), :math:`n` 标记粒子种类.

现在我们必须考虑第三章粗略提到的事情, 即这些态的对称性质. 我们目前已经知道, 所有粒子要么是 **玻色子** (bosons) 要么是 **费米子** (fermions), 它们之间的区别在于, 当交换两个全同的玻色子时态本身不变, 而当交换两个全同的费米子时, 态改变符号. 也就是说

.. math::
    \phi_{\cdots\bm{p}\sigma n \cdots \bm{p}'\sigma' n \cdots} = \pm
        \phi_{\cdots\bm{p}'\sigma' n \cdots \bm{p}\sigma n \cdots}
    :label: phi-pm

其中当 :math:`n` 是玻色子或费米子时分别取上面的符号和下面的符号, 而省略号表示可能在态中出现的其他粒子. (等价地, 这可以描述为对 "波函数" 的一个限制条件, 其中 "波函数" 即物理上允许的态矢在多粒子基矢上的系数. ) 这两种情况通常也被称为波色或费米 "统计". 下一章我们将看到波色和费米统计仅仅分别对具有整数或半整数自旋的粒子有效. 但是本章我们不需要这个信息. 本节我们将对所有粒子要么是玻色子要么是费米子给出一个不严格的证明, 然后建立多个玻色子或者费米子态的归一化条件.

1 只存在玻色子或费米子的证明
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

首先注意到, 如果两个具有动量和自旋 :math:`\bm{p},\sigma` 和 :math:`\bm{p}', \sigma'` 的粒子属于同一粒子种类 :math:`n`, 那么态矢 :math:`\phi_{\cdots\bm{p}\sigma n \cdots \bm{p}'\sigma' n \cdots}` 和 :math:`\phi_{\cdots\bm{p}'\sigma' n \cdots \bm{p}\sigma n \cdots}` 表示同一物理态 (注意这两个态矢的不同仅仅是顺序的不同). 不然的话, 粒子将可以通过它们在态矢中被标记的顺序来区分, 一种列出顺序将和另一种列出顺序不完全相同. 由于两个态矢物理上不可区分, 它们必须属于同一射线, 因此

.. math::
    \phi_{\cdots\bm{p}\sigma n \cdots \bm{p}'\sigma' n \cdots} = \alpha_n
        \phi_{\cdots\bm{p}'\sigma' n \cdots \bm{p}\sigma n \cdots}
    :label: phi-alpha-n

其中 :math:`\alpha_n` 是具有单位模的复数. 我们的全同粒子的定义将允许这一复数因子的任意性.

这里的关键是决定 :math:`\alpha_n` 依赖于哪些量. 如果它仅仅依赖于粒子种类指标 :math:`n`, 那我们几乎完成了. 再交换一次 :eq:`phi-alpha-n` 中的两个粒子, 我们得到

.. math::
    \phi_{\cdots\bm{p}\sigma n \cdots \bm{p}'\sigma' n \cdots} = \alpha_n^2
        \phi_{\cdots\bm{p}\sigma n \cdots \bm{p}'\sigma' n \cdots}

因此 :math:`\alpha_n^2 = 1`, 从而 :eq:`phi-pm` 是仅有的两种可能性. (这里为什么 :math:`\alpha_n^2` 不能认为应该等于另一个单位模复数因子? 因为只有物理上两个全同的态才有一个因子的自由性. 这里等号左边和右边的 :math:`\phi_{\cdots\bm{p}\sigma n \cdots \bm{p}'\sigma' n \cdots}` 是数学上全同的态, 它们的相等应该没有任何的自由性, 因此系数必须是 1. 同一数学标记不可能产生任何额外因子. )

那么 :math:`\alpha_n` 还会依赖于什么呢? 它可能依赖于这个态中其他粒子的种类和数目 (在 :eq:`phi-alpha-n` 和 :eq:`phi-pm` 用省略号表示), 但这将导致不舒服的结果, 即在地球上交换粒子对应的态矢的对称性, 将依赖于宇宙别的地方粒子的存在. 这种事情在本章后面将会通过集团分解原理来排除. 相因子 :math:`\alpha_n` 不能具有任何非平庸的关于两个被交换的粒子自旋的依赖, 因为那样的话, 这些自旋依赖的相因子将构成旋转群的一个表示, 并且是一维的 (因为它们是相因子) (而旋转群无法有一个一维的表示). 还可能想到的是, :math:`\alpha_n` 可能依赖于被交换的两个粒子的动量, 但是洛伦兹不变性将要求 :math:`\alpha_n` 只依赖于标量 :math:`p_1^\mu p_{2\mu}`; 它在交换粒子 1 和 粒子 2 时是对称的 (这里的对称是指, 交换两次, 必然得到同样的因子. 总计还是同一个因子的平方. 这个平方还是必须等于 1), 因此这样的依赖不会改变 :math:`\alpha_n^2 = 1` 的结论.

上述讨论的逻辑欠缺是 (尽管我们使用的标记隐藏了这个事实), 态 :math:`\phi_{\bm{p}_1\sigma_1 n, \bm{p}_2\sigma_2 n,\cdots}` 可能带有一个相因子, 这个相因子依赖于动量空间中粒子的动量达到 :math:`\bm{p}_1, \bm{p}_2` 等值的路径. 在这种情况下, 交换两个粒子两次可能会对态产生一个相因子, 从而 :math:`\alpha^n \neq 1` (即一个本来就是 :math:`\bm{p}_1, \bm{p}_2` 和通过交换两个粒子两遍达到 :math:`\bm{p}_1, \bm{p}_2` 已经是不同的路径, 所以尽管标记相同, 但还可以是不同的态). 我们将在第9.7节看到在二维空间这是一个真实的可能性, 但是对于三维或更高维空间不存在这种情况.

交换属于不同种类的粒子会怎样? 如果需要, 我们可以通过在一开始规定态矢的标记必须先列出所有光子动量和螺旋度, 然后所有电子动量和自旋 :math:`z` 分量, 以此类推直到列举完所有基本粒子类型, 来避免这个问题. 除此之外, 我们还可以允许粒子标记以任意顺序出现, 并 **定义** 具有任意顺序粒子标记的态矢等于具有某种标准顺序的粒子标记的态矢乘以相因子. 这个相因子对交换不同种类粒子的依赖可以是任意的. 为了处理某些和不同种类粒子有关的对称性, 例如同位旋不变性, 比较方便的做法是, 采用一个推广的 :eq:`phi-pm` 的约定, 即当交换任何玻色子, 或者交换玻色子和费米子时是对称的 (这里对称的意思是不改变符号), 而交换任何两个费米子时是反对称的 (即产生一个负号). 这个约定适用于所有情况, 不论所交换的粒子是同一种粒子还是不同种粒子. (这里首先需要明确, 玻色子和费米子只是最粗略的分类. 对于两个玻色子, 它们还可能是不同种类的粒子. 但是按照前面的讨论, 交换同种粒子的符号改变已经确定. 而交换不同种粒子的符号可以任意指定. 那么不如就把交换不同种粒子也按照相同粒子的方式指定, 只做费米子和波色子的区分即可. )

2 态的归一化
^^^^^^^^^^^^

这些态的归一化的定义必须和对称性条件相自洽. 为简化标记, 我们使用标记 :math:`q` 表示单个粒子的所有量子数, 即它的动量, :math:`\bm{p}` 自旋 :math:`z` 分量 (或者无质量粒子的螺旋度) :math:`\sigma`, 和种类 :math:`n`. :math:`N` 个粒子的态因此被标记为 :math:`\phi_{q_1\cdots q_N}` (其中 :math:`N = 0` 表示真空态 :math:`\phi_0`. ) 对于 :math:`N = 0` 和 :math:`N = 1` 不存在对称性的问题, 我们有

.. math::
    (\phi_0, \phi_0) = 1

和

.. math::
    (\phi_{q'}, \phi_q) = \delta(q' - q)

其中 :math:`\delta(q' - q)` 是所有粒子量子数的 delta 函数和克罗内克 delta 的乘积

.. math::
    \delta(q' - q) \equiv \delta^3(\bm{p}' - \bm{p}) \delta_{\sigma'\sigma}\delta_{n'n}

另一方面, 对于 :math:`N = 2` 态 :math:`\phi_{q_1'q_2'}` 和 :math:`\phi_{q_2'q_1'}` 物理上是相同的 (这和 :eq:`phi-alpha-n` 是一致的, 即物理上相同的态会相差一个相因子, 对于费米子是 :math:`-1`, 对于玻色子是 :math:`1`) 因此这里我们必须有

.. math::
    \Big( \phi_{q_1'q_2'}, \phi_{q_1q_2}\Big) = \delta(q_1' - q_1) \delta(q_2' - q_2) \pm
        \delta(q_2' - q_1) \delta(q_1' - q_2)
    :label: norm-phi-q1-q2

其中符号 :math:`\pm` 如果两个粒子都是费米子取 :math:`-` 否则取 :math:`+`. 这显然和前面所说的对称性质是自洽的. 更一般地,

.. math::
    \Big( \phi_{q_1'q_2'\cdots q'_M}, \phi_{q_1q_2\cdots q_N}\Big) = \delta_{NM} \sum_{\mathscr{P}}
        \delta_{\mathscr{P}} \prod_i \delta(q_i - q_{\mathscr{P}i}')
    :label: norm-phi-q1-q2-qmn

这里的求和是对整数 :math:`1,2,\cdots, N` 的所有置换 :math:`\mathscr{P}` 求和. (例如, 在 :eq:`norm-phi-q1-q2` 的第一项, :math:`\mathscr{P}` 是恒等置换, :math:`\mathscr{P}1 =1, \mathscr{P}2=2`, 而在第二项 :math:`\mathscr{P}1=2, \mathscr{P}2=1`.) 另外, :math:`\delta_{\mathscr{P}}` 是一个符号因子, 当 :math:`\mathscr{P}` 包含费米子的奇置换 (即奇数次费米子的交换) 时等于 :math:`-1`, 在其他情况等于 :math:`+1`. 容易看出, :eq:`norm-phi-q1-q2-qmn` 当交换 :math:`q_i` 或者交换 :math:`q_j'` 时具有我们想要的对称性.

第二节 产生和湮灭算符
---------------------

1 产生和湮灭算符的定义
^^^^^^^^^^^^^^^^^^^^^^

产生和湮灭算符可以通过它们在之前章节讨论过的多粒子态上的作用来定义. **产生算符** (creation operator) :math:`a^\dagger(q)` (或者更具体地, :math:`a^\dagger(\bm{p},\sigma, n)`) 定义为, 在态的粒子列表前加上一个具有量子数 :math:`q` 的粒子

.. math::
    a^\dagger(q) \phi_{q_1q_2\cdots q_N} \equiv \phi_{qq_1q_2\cdots q_N}
    :label: creation-def

特别地, :math:`N` 粒子态可以通过 :math:`N` 个产生算符作用在真空上得到

.. math::
    a^\dagger(q_1) a^\dagger(q_2) \cdots a^\dagger(q_N) \phi_0 = \phi_{q_1\cdots q_N}
    :label: creation-vac

这个算符按照管理写为 :math:`a^\dagger(q)`. 它的厄米共轭, 写为 :math:`a(q)` 可以从 :eq:`norm-phi-q1-q2-qmn` 算出. 我们将证明, :math:`a(q)` 作用于任意态移除其中的一个粒子, 因此被称为 **湮灭算符** (annihilation operator). 特别地, 当 :math:`qq_1\cdots q_N` 全是玻色子或全是费米子时, 我们有

.. math::
    a(q) \phi_{q_1q_2\cdots q_N} = \sum_{r=1}^N (\pm)^{r+1} \delta(q-q_r)\phi_{q_1\cdots q_{r-1}q_{r+1}\cdots q_N}
    :label: annihilation-def

其中 :math:`+1` 和 :math:`-1` 符号分别对应玻色子和费米子. 证明如下. 我们希望计算 :math:`a(q) \phi_{q_1q_2\cdots q_N}` 和一个任意态 :math:`\phi_{q_1'q_2'\cdots q_M'}` 的标量积. 利用 :eq:`creation-def` 我们有

.. math::
    \left( \phi_{q_1'\cdots q_M'}, a(q) \phi_{q_1\cdots q_N} \right) \equiv
        \left( a^\dagger(q) \phi_{q_1'\cdots q_M'}, \phi_{q_1\cdots q_N} \right)
        =  \left( \phi_{qq_1'\cdots q_M'}, \phi_{q_1\cdots q_N} \right)

现在利用 :eq:`norm-phi-q1-q2-qmn`. :math:`1,2,\cdots,N` 的排列 :math:`\mathscr{P}` 的和, 可以写为整数 :math:`r` 被置换到第一位, 即 :math:`\mathscr{P}r = 1` 和从剩余整数 :math:`1,\cdots,r-1,r+1,\cdots,N` 到 :math:`1,\cdots, N-1` 的映射 :math:`\overline{\mathscr{P}}`. 符号因子为

.. math::
    \delta_{\mathscr{P}} = (\pm)^{r-1} \delta_{\overline{\mathscr{P}}}

其中上面的符号和下面的符号分别对应玻色子和费米子. 因此, 使用 :eq:`norm-phi-q1-q2-qmn` 两次, 有

.. math::
    \left( \phi_{q_1'\cdots q_M'}, a(q) \phi_{q_1\cdots q_N} \right) =&\ 
    \delta_{N,M+1} \sum_{r=1}^N \sum_{\overline{\mathscr{P}}} (\pm)^{r-1} \delta_{\overline{\mathscr{P}}}
    \delta(q-q_r)\prod_{i=1}^M \delta(q_i'-q_{\overline{\mathscr{P}}^{-1}i}) \\=&\ 
    \delta_{N,M+1} \sum_{r=1}^N \sum_{\overline{\mathscr{P}}} (\pm)^{r-1} \delta_{\overline{\mathscr{P}}}
    \delta(q-q_r)\delta_{N-1,M}\prod_{i=1,i\neq r}^{N} \delta(q_{\overline{\mathscr{P}}i}'-q_{i}) \\
    =&\ \delta_{N,M+1} \sum_{r=1}^N (\pm)^{r-1} \delta(q-q_r)
        \left( \phi_{q_1'\cdots q_M'}, \phi_{q_1\cdots q_{r-1}q_{r+1}\cdots q_N} \right)

从上式我们可以看出, :eq:`annihilation-def` 的两边和任意态 :math:`\phi_{q'_1\cdots q_M'}` 之间都有相等的矩阵元, 因此 :eq:`annihilation-def` 的两边相等, 因此我们证明了 :eq:`annihilation-def`. 作为 :eq:`annihilation-def` 的一个特例, 我们注意到无论是玻色子还是费米子, :math:`a(q)` 湮灭真空

.. math::
    a(q)\phi_0 = 0
    :label: aq-vac-zero

2 对易和反对易关系
^^^^^^^^^^^^^^^^^^

按照这里的定义, 产生和湮灭算符满足重要的对易或反对易关系. 将算符 :math:`a(q')` 作用到 :eq:`creation-def` 再利用 :eq:`annihilation-def` 得

.. math::
    a(q') a^\dagger(q) \phi_{q_1q_2\cdots q_N} = a(q') \phi_{qq_1q_2\cdots q_N}

这里为了应用 :eq:`annihilation-def`, 分成 :math:`q' = q` 和 :math:`q' \neq q` 两种情况. 对 :math:`q' = q` 的情况, 令 :math:`q_0 = q`

.. math::
    a(q') \phi_{qq_1q_2\cdots q_N} = \sum_{r=0}^N (\pm)^{r+0} \delta(q'-q_r)\phi_{qq_1\cdots q_{r-1}q_{r+1}\cdots q_N} = (\pm)^{0} \delta(q'-q)\phi_{q_1\cdots q_N} = \delta(q'-q)\phi_{q_1\cdots q_N}

对于 :math:`q' \neq q` 的情况

.. math::
    a(q') \phi_{qq_1q_2\cdots q_N} = \sum_{r=1}^N (\pm)^{r+2} \delta(q'-q_r)\phi_{qq_1\cdots q_{r-1}q_{r+1}\cdots q_N}

因此

.. math::
    a(q') a^\dagger(q) \phi_{q_1q_2\cdots q_N} = \delta(q'-q)\phi_{q_1\cdots q_N}
        + \sum_{r=1}^N (\pm)^{r+2} \delta(q'-q_r)\phi_{qq_1\cdots q_{r-1}q_{r+1}\cdots q_N}

其中第二项中的符号 :math:`(\pm)^{r+2}` 是因为 :math:`q_r` 在 :math:`\phi_{qq_1\cdots q_N}` 中的位置是 :math:`r+1`. 另一方面, 将 :math:`a^\dagger(q)` 作用于 :eq:`annihilation-def` 给出

.. math::
    a^\dagger(q)a(q') \phi_{q_1\cdots q_N} = a^\dagger(q) \sum_{r=1}^N (\pm)^{r+1} \delta(q'-q_r)\phi_{q_1\cdots q_{r-1}q_{r+1}\cdots q_N} = \sum_{r=1}^N (\pm)^{r+1} \delta(q'-q_r)\phi_{qq_1\cdots q_{r-1}q_{r+1}\cdots q_N}

将上面两式相加或相减 (若以上两式都取正号, 即都是玻色子, 则两式右边第二项相等, 应该相减剩余第一式的第一项. 若是费米子, 则相加), 得

.. math::
    \left[ a(q') a^\dagger(q) \mp a^\dagger(q)a(q') \right] \phi_{q_1q_2\cdots q_N} = \delta(q'-q)\phi_{q_1\cdots q_N}
    :label: commute-cre-ann

这对所有态 :math:`\phi_{q_1q_2\cdots q_N}` 都成立 (并且容易看出这对既包含玻色子又包含费米子的态同样成立) 因此我们有算符关系

.. math::
    a(q') a^\dagger(q) \mp a^\dagger(q)a(q') = \delta(q'-q)
    :label: commute-cre-cre

另外, 从 :eq:`creation-vac` 我们可以看出产生算符按不同顺序作用之后, 产生的态的指标顺序也不同, 因此对于玻色子按不同顺序得到的态相同, 它们的差 (相减) 等于零. 对于费米子它们的和为零. 即

.. math::
    a^\dagger(q') a^\dagger(q) \mp a^\dagger(q)a^\dagger(q') = 0
    :label: commute-ann-ann

因此 (对上式取厄米共轭) 得

.. math::
    a(q')a(q) \mp a(q)a(q') = 0

和之前的情况一样, 上面的符号和下面的符号分别对应玻色子和费米子. 根据前面一节讨论的约定, 当任意一个粒子是玻色子时, 两个不同种类粒子的产生和/或湮灭算符对易, 当两者都是费米子时反对易.

上面的讨论可以按照相反的顺序引入 (在多数的教材中通常都是按相反的顺序). 也就是说, 我们可以从对易或反对易规则 :eq:`commute-cre-ann` - :eq:`commute-ann-ann` 出发, 这些对易或反对易规则可以从某些给定的场论的正则量子化推导. 多粒子态按照 :eq:`creation-vac` 定义, 它们的标量积 :eq:`norm-phi-q1-q2-qmn` 则可以从对易或反对易关系推导. 事实上, 按照第一章的讨论, 这样的处理将和历史上的发展更加接近. 这里我们采用了和历史不同的方法, 因为我们希望排除任何关于预先存在场论的依赖性. 我们希望理解为什么场论是现在的样子.

3 算符表示
^^^^^^^^^^

现在我们将证明一个在本章开头引用的基本定理: **任意** 算符 :math:`\mathscr{O}` 都可以表示为产生和湮灭算符的乘积的和

.. math::
    \mathscr{O} = \sum_{N=0}^\infty \sum_{M=0}^\infty \int \D q_1'\cdots \D q_N' \D q_1 \cdots q_M
        a^\dagger(q'_1)\cdots a^\dagger(q'_N) a(q_M)\cdots a(q_1)
        C_{NM}(q'_1\cdots q_N'q_1\cdots q_N)
    :label: op-expr-cre-anni

也就是说, 我们希望证明, 通过选择 :math:`C_{NM}` 系数, 这个表达式的矩阵元可以取任何希望的值. 我们利用数学归纳法 (mathematical induction). 首先, 显然我们可以通过适当选择 :math:`C_{00}`, :math:`(\phi_0, \mathscr{O} \phi_0)` 可以取任何希望的值, 不论 :math:`C_{NM}` 当 :math:`N > 0` 和/或 :math:`M > 0` 取何值. 为了证明这一点, 我们只需利用 :eq:`aq-vac-zero`, 可见 :eq:`op-expr-cre-anni` 在真空态的期望值是

.. math::
    (\phi_0, \mathscr{O} \phi_0) = C_{00}

具体来看, :eq:`aq-vac-zero` 和它的厄米共轭给出

.. math::
    a(q)\phi_0 = 0,\quad \phi_0^\dagger a^\dagger(q) = 0

也就是说, 任何产生算符从右边作用于真空态, 或者湮灭算符从左边作用于真空态, 都得零. 又注意到 :eq:`op-expr-cre-anni` 展开式的每一项中, 算符的乘积都是产生算符在左, 湮灭算符在右. 那么求 :eq:`op-expr-cre-anni` 在真空态的期望值, 只要有一个算符存在, 就必然给出零值. 所以非零项只能是 :math:`N = M = 0` 的项.

现在假设, 对于所有 :math:`\mathscr{O}` 的在 :math:`N` 和 :math:`M` 粒子态之间的矩阵元这也成立. 其中 :math:`N < L, M \le k` 或者 :math:`N \le L, M < K`. 也就是说, 这些矩阵元通过对应系数 :math:`C_{NM}` 的选择被给定了希望的值. 下面证明, 对于 :math:`\mathscr{O}` 的在 :math:`L` 和 :math:`K` 粒子态之间的矩阵元, 这也成立. 利用 :eq:`op-expr-cre-anni` 得

.. math::
    \Big( \phi_{q'_1\cdots q'_L}, \mathscr{O} \phi_{q_1\cdots q_K} \Big) =
        L!K! C_{LK} (q'_1\cdots q'_L q_1\cdots q_K) + \text{含有} C_{NM} \text{ 的项, 其中}
        N<L, M\le K \text{或者} N \le L, M < K

为了理解上面的式子, 首先注意到除了 :math:`C_{00}` 以外, :math:`C_{LK}` 都是 :math:`q_1,\cdots q_K,q'_1\cdots q'_L` 的函数, 因此不是说对于某一个 :math:`LK` 就只能取一个 :math:`C_{LK}`, 而是根据具体的量子态的量子数 :math:`q` 来决定 :math:`C_{LK}` 的取值. 齐次, :eq:`op-expr-cre-anni` 之中有一个对于各量子数的积分. 这个积分当考虑 :math:`\mathscr{O}` 在特定量子数的态之间的矩阵元时就会自动消失, 因为比如 :math:`a_{q'}` 从左边作用在特定的量子态 :math:`\phi_q` 上, 只有当 :math:`q' = q`, 才不为零. 而积分遍历了所有可能的 :math:`q'`, 最终只有包含了 :math:`a_{q'} = a_q` 的项留下来, 积分号消失. 而注意这种选择会有一个顺序的问题. 考虑右边的态是 :math:`\phi_{q_1q_2}`, 那么左边的湮灭算符当是 :math:`a_{q_1}a_{q_2}` 或者 :math:`a_{q_2}a_{q_1}` 的时候都会产生非零项, 并会产生一个额外的符号. 这两个不同顺序湮灭算符对应的项, 除了符号差别之外, :math:`C_{LK}` 系数也可以不同 (虽然 :math:`LK` 相同, 但是 :math:`C_{LK}` 的函数参数顺序不同). 如果规定当调整 :math:`C_{LK}` 的参数顺序时, 也像交换湮灭算符的顺序那样产生正负号, 那么最终各自产生的符号相互抵消, 全部都是正号. 这样如果考虑所有可能的顺序, 就解释了上面的式子中的 :math:`L!K!` 系数.

此外一个问题是, 如果这么规定, 那么就对不同量子数顺序的态对应的 :math:`C_{LK}` 做了限制. 但是态本身当交换指标顺序时, 正负号就按照费米统计或者玻色统计那样添加正负号, 因此对应 :math:`C_{LK}` 系数的变换是自洽的. 最后一个问题就是, 如果取矩阵元的两个态分别具有 :math:`L` 和 :math:`K` 个粒子, 那么在 :math:`\mathscr{O}` 的展开式中, 如果产生或湮灭算符的个数中任意一个超出 :math:`L` 和 :math:`K`, 那么势必要对真空态从左边进行湮灭或者从右边产生, 得到零. 由此可知, 在 :math:`\mathscr{O}` 的展开式中, 产生算符个数大于 :math:`L` 或者湮灭算符个数大于 :math:`M` 的项都是不用考虑的. 那么, 如果展开式中的项的算符个数小于态中的粒子个数, 那么就会得到两个多粒子态之间的内积. 这个内积的值就是包含在上式中 "含有 :math:`C_{NM}` 的项" 中的项.

最后, 从上面的式子可以看出, 无论含有 :math:`C_{NM}` 的项中 :math:`C_{NM}` 取何值, 很显然仍然可以通过选择 :math:`C_{LK}` 来给这个矩阵元任何希望的值.

当然, 算符不一定要表示成 :eq:`op-expr-cre-anni` 的形式, 其中所有产生算符都在湮灭算符的左边. (这通常叫做算符的正规程序 (normal order)). 但是, 如果某算符的公式中,  产生算符和湮灭算符具有别的顺序, 我们总可以把产生算符移到湮灭算符的左边, 通过重复使用对易或反对易规则, 并产生一些包含 :eq:`commute-cre-cre` 中 delta 函数的新项.

4 相加性算符
^^^^^^^^^^^^

例如, 考虑任何相加性算符 :math:`F` (例如动量, 电荷, 等等), 满足

.. math::
    F \phi_{q_1\cdots q_N} = \Big[ f(q_1) + \cdots + f(q_N) \Big] \phi_{q_1\cdots q_N}

这样的算符可以写为 :eq:`op-expr-cre-anni` 的形式, 但只使用 :math:`N = M = 1` 的项:

.. math::
    F = \int \D q a^\dagger(q) a(q) f(q)

特别地, 自由粒子哈密顿量总是写为 (因为能量作为动量的平方, 也是相加性的. 多个自由粒子互相没有相互作用, 总能量为各个粒子能量之和)

.. math::
    H_0 = \int \D q a^\dagger(q) a(q) E(q)

其中 :math:`E(q)` 是单粒子能量

.. math::
    E(\bm{p}, \sigma, n) = \sqrt{\bm{p}^2 + m_n^2}.

这里可能要问, 如果有两个一样的粒子, 那么 :math:`H_0` 就无法得到两个粒子能量的和. 实际上 :math:`q` 是复合指标, 其中已经包括了能区分所有粒子序号的指标. 因此上式中的 :math:`\D q` 就已经对每个可能的单个粒子都遍历了一遍.

5 变换性质
^^^^^^^^^^

下面我们需要研究产生和湮灭算符对于各种对称性的变换性质. 首先, 考虑非齐次固有正时洛伦兹变换. 我们已经知道 :math:`N` 粒子态具有如下的洛伦兹变换性质 (第三章 :eq:`multi-trans`)

.. math::
    U_0(\Lambda, \alpha) \phi_{\bm{p}_1\sigma_1 n_1,\bm{p}_2\sigma_2 n_2,\cdots}
    = \E^{-\I (\Lambda p_1)\cdot \alpha}\E^{-\I (\Lambda p_2)\cdot \alpha} \cdots
    \sqrt{\frac{(\Lambda p_1)^0(\Lambda p_2)^0\cdots}{p_1^0p_2^0\cdots}}
    \sum_{\overline{\sigma}_1\overline{\sigma}_2} D^{(j_1)}_{\overline{\sigma}_1,\sigma_1}\Big( W(\Lambda, p_1) \Big) D^{(j_2)}_{\overline{\sigma}_2,\sigma_2}\Big( W(\Lambda, p_2) \Big) \cdots
    \phi_{\bm{p}_{1\Lambda}\overline{\sigma}_1 n_1,\bm{p}_{2\Lambda}\overline{\sigma}_2 n_2,\cdots}

其中 :math:`\bm{p}_{\Lambda}` 是 :math:`\Lambda p` 的空间矢量部分. :math:`D^{(j)}_{\overline{\sigma},\sigma}` 是三维转动群的幺正自旋 :math:`j` 的表示, 和2.5节用到的一样. 而 :math:`W(\Lambda, p)` 是特殊转动

.. math::
    W(\Lambda, p) \equiv L^{-1}(\Lambda p)\Lambda L(p)

其中 :math:`L(p)` 是标准 "推进", 它把一个质量 :math:`m` 的粒子从静止变换到具有四动量 :math:`p^\mu`. (当然, :math:`m` 和 :math:`j` 依赖于粒子种类指标 :math:`n`. 这都是针对 :math:`m \neq = 0` 的情况而言的; 在下一章我们将考虑零质量粒子的情形. ) 现在, 这些态可以表示为 :eq:`creation-vac`

.. math::
    \phi_{\bm{p}_1\sigma_1 n_1,\bm{p}_2\sigma_2 n_2,\cdots} = a^\dagger(\bm{p}_1\sigma_1 n_1)
        a^\dagger(\bm{p}_2\sigma_2 n_2) \cdots \phi_0

其中 :math:`\phi_0` 是洛伦兹不变真空态

.. math::
    U_0(\Lambda, \alpha) \phi_0 = \phi_0

(注意这个关于真空态的式子, 和前面引用的第三章 :eq:`multi-trans` 是不矛盾的. )

使 :eq:`creation-vac` 按照合适的方式变换的充分必要条件使产生算符具有如下的变换规则

.. math::
    U_0(\Lambda, \alpha) a^\dagger(\bm{p}\sigma n) U_0^{-1}(\Lambda, \alpha)
        = \E^{-1(\Lambda p)\cdot \alpha} \sqrt{(\Lambda p)^0/p^0} \sum_{\overline{\sigma}}
        D^{(j)}_{\overline{\sigma},\sigma} a^\dagger(\bm{p}_\Lambda\overline{\sigma} n)
    :label: cre-lorentz-trans

上式的证明, 可以在 :eq:`creation-vac` 中每两个产生算符之间插入 :math:`1 = U_0^{-1}(\Lambda, \alpha) U_0(\Lambda, \alpha)`, 然后代入上式, 就得到第三章 :eq:`multi-trans`.

以同样的方式, 在自由粒子态上导致电荷共轭, 空间反射, 时间反演变换的算符 :math:`\mathsf{C}, \mathsf{P}, \mathsf{T}` 将产生算符按照如下方式变换

.. math::
    \mathsf{C} a^\dagger(\bm{p}\sigma n) \mathsf{C}^{-1} =&\ \xi_n a^\dagger(\bm{p}\sigma n^c) \\
    \mathsf{P} a^\dagger(\bm{p}\sigma n) \mathsf{P}^{-1} =&\ \eta_n a^\dagger(-\bm{p}\sigma n) \\
    \mathsf{T} a^\dagger(\bm{p}\sigma n) \mathsf{T}^{-1} =&\ \zeta_n (-1)^{j-\sigma}a^\dagger(-\bm{p}-\sigma n)

在前面一节已经提到, 尽管我们考虑的是在自由粒子态上的产生和湮灭粒子的算符, 整个推导也可以被应用在入态和出态, 我们可以以相同的方式引入算符 :math:`a_{\mathrm{in}}` 和 :math:`a_{\mathrm{out}}`, 并分别定义它们对入态和出态的作用. 这些算符满足的洛伦兹变换规则和 :eq:`cre-lorentz-trans` 一样, 但是是关于真正的洛伦兹变换算符 :math:`U(\Lambda, \alpha)` 而不是自由粒子算符 :math:`U_0(\Lambda, \alpha)`.

第三节 集团分解和连接振幅
-------------------------

1 集团分解原理
^^^^^^^^^^^^^^

物理 (实际上是所有科学) 有一个基本原理就是, 空间相隔足够远的实验的结果应该是不相关的. 在费米实验室测量的各种碰撞概率, 不应该依赖于同一时间 CERN 进行的各种实验. 如果这个原理不成立, 那么我们将无法对任何实验做出预测除非我们知道宇宙的一切.

在 :math:`S` 矩阵理论中, 集团分解原理是说, 如果多粒子过程 :math:`\alpha_1 \to \beta_1, \alpha_2 \to \beta_2, \cdots, \alpha_{\mathscr{N}} \to \beta_{\mathscr{N}}` 在 :math:`\mathscr{N}` 个相隔非常远的实验室进行研究, 那么对整个过程的 :math:`S` 矩阵元是可以分解的. 也就是说

.. math::
    S_{\beta_1+\beta_2+\cdots+\beta_{\mathscr{N}},\alpha_1+\alpha_2+\cdots+\alpha_{\mathscr{N}}}
    \to S_{\beta_1\alpha_1} S_{\beta_2\alpha_2} \cdots S_{\beta_{\mathscr{N}}\alpha_{\mathscr{N}}}
    :label: s-matrix-factor

上式成立的条件是对于所有 :math:`i \neq j`, 态 :math:`\alpha_i` 和 :math:`\beta_i` 中的所有粒子, 都和态 :math:`\alpha_j` 和 :math:`\beta_j` 中的所有粒子相距非常远. 这个对 :math:`S` 矩阵元的分解将确保一个对应的跃迁概率的分解, 这也就意味着实验结果将是不相关联的. (这里是说, 跃迁概率是实验可观测量, 而不是 :math:`S` 矩阵. )

2 连接矩阵元的定义
^^^^^^^^^^^^^^^^^^

利用一个组合技巧可以将 :eq:`s-matrix-factor` 写成一个更透明的形式. 假定我们定义 :math:`S` 矩阵的 **连接** (connected) 部分 :math:`S_{\beta\alpha}^{\mathrm{C}}` 为

.. math::
    S_{\beta\alpha} = \sum_{\mathrm{PART}} (\pm) S_{\beta_1\alpha_1}^{\mathrm{C}} S_{\beta_2\alpha_2}^{\mathrm{C}} \cdots
    :label: s-matrix-connected

这里是对所有把在态 :math:`\alpha` 的粒子分为集团 :math:`\alpha_1,\alpha_2,\cdots` 的所有不同方式, 以及类似地所有把在态 :math:`\beta` 的粒子分为集团 :math:`\beta_1,\beta_2,\cdots` 的所有不同方式求和, 但是如果只是在同一个集团内重新排列粒子, 或者对所有集团重新排列, 则不重复包括这样的项. 符号是 :math:`+` 或 :math:`-` 取决于重排列 :math:`\alpha \to \alpha_1 \alpha_2 \cdots` 和 :math:`\beta \to \beta_1\beta_2\cdots` 一起是否分别包括偶或奇数次费米子交换. 我们使用了 "连接的" 这个说法, 是因为下节我们将考虑将 :math:`S_{\beta\alpha}^{\mathrm{C}}` 解释为微扰论中包含不同贡献的图.

这个定义是递归的. 对每个 :math:`\alpha` 和 :math:`\beta` (这里并不是说上面的式子包含了不同 :math:`\alpha` 和 :math:`\beta`. 这里只是说上式对任一 :math:`\alpha` 和 :math:`\beta` 成立. ),  上式右边的求和包含一项 :math:`S_{\beta\alpha}^{\mathrm{C}}`, 再加上一个对所有两个或更多个 :math:`S^{\mathrm{C}}` 矩阵元的乘积的求和 :math:`\Sigma'`. 在这些 :math:`\Sigma'` 中的 :math:`S^{\mathrm{C}}` 项中, 每个 :math:`\alpha_j` 和 :math:`\beta_j` 态中包含的粒子数都小于 :math:`\alpha` 和 :math:`\beta` 态中的粒子 (因为既然要分解, 每个分出来的部分一定无法包括全部的粒子)

.. math::
    S_{\beta\alpha} = S_{\beta\alpha}^{\mathrm{C}} + {\sum_{\mathrm{PART}}}' (\pm) S_{\beta_1\alpha_1}^{\mathrm{C}} S_{\beta_2\alpha_2}^{\mathrm{C}} \cdots

假定在这个求和中, :math:`S^{\mathrm{C}}` 的矩阵元已经被选定, 从而上式 (或 :eq:`s-matrix-connected` 式) 对于包含比如小于 :math:`N` 粒子的 :math:`\beta,\alpha` 态是满足的. 那么对于总共含有 :math:`N` 粒子的上式, 我们总可以选择项 :math:`S_{\beta\alpha}^{\mathrm{C}}` 从而使得上式对于 :math:`N` 粒子的情况满足, 无论剩余的 :math:`\Sigma'` 项中的 :math:`S` 矩阵元是什么样. 因此 :eq:`s-matrix-connected` 仅仅是 :math:`S^{\mathrm{C}}` 的定义式, 它本身不包含任何信息. (这里是说 :math:`S^{\mathrm{C}}` 定义为 :eq:`s-matrix-connected`. 不应该将 :eq:`s-matrix-connected` 视为一个原理或者一个附加的条件. 这里的思想类似数学归纳法, 和之前证明算符的产生和湮灭算符展开的道理是一样的. 通过选定某些项使 :math:`N - 1` 的情况成立, 而对于 :math:`N` 的情况, 仍然有剩余的自由度使之成立. )

如果 :math:`\alpha` 和 :math:`\beta` 态各自都只包含一个粒子, 例如分别具有量子数 :math:`q` 和 :math:`q'`, 那么 :eq:`s-matrix-connected` 右边唯一的项就是 :math:`S_{\beta\alpha}^{\mathrm{C}}` 本身, 因此对单粒子态

.. math::
    S_{q'q}^{\mathrm{C}} \equiv S_{q'q} = \delta(q' - q)
    :label: s-matrix-single-state

(除了简并的情况, :math:`S_{q'q}` 和 :math:`\delta(q'-q)` 成正比是由于守恒定律 (因此粒子动量, 粒子种类等等都必须守恒.) 没有任何比例系数因子, 是基于入态和出态的合适的相对相位的选择. ) 这里假定单粒子态是稳定的, 因此不会有从单粒子态到任何其他态, 比如真空, 的跃迁.

对双粒子态的跃迁, :eq:`s-matrix-connected` 给出

.. math::
    S_{q'_1q'_2,q_1q_2} = S_{q'_1q'_2,q_1q_2}^{\mathrm{C}}
        +\delta(q'_1-q_1)\delta(q'_2-q_2) \pm \delta(q'_1-q_2)\delta(q'_2-q_1)
    :label: s-matrix-two-state

(这里我们利用了 :eq:`s-matrix-single-state`. ) 当两个粒子都是费米子, 符号 :math:`\pm` 是负号, 否则是正号. 可以发现两个 delta 函数加起来正好是两个双粒子态的内积 :eq:`norm-phi-q1-q2` (等于1), 因此我们有 :math:`S_{\beta\alpha}^{\mathrm{C}} = (S-1)_{\beta\alpha}`. 但一般的情况更加复杂.

对三粒子态或四粒子态之间的跃迁, :eq:`s-matrix-connected` 给出

.. math::
    S_{q'_1q'_2q'_3,q_1q_2q_3} =&\ S_{q'_1q'_2q'_3,q_1q_2q_3}^{\mathrm{C}} \\
    &\ +\delta(q'_1-q_1) S_{q'_2q'_3,q_2q_3}^{\mathrm{C}} \pm \text{置换} \\
    &\ +\delta(q'_1-q_1)\delta(q'_2-q_2)\delta(q'_3-q_3) \pm \text{置换}
    :label: s-matrix-three-state

和

.. math::
    S_{q'_1q'_2q'_3q'_4,q_1q_2q_3q_4} =&\ S_{q'_1q'_2q'_3q'_4,q_1q_2q_3q_4}^{\mathrm{C}} \\
    &\ +S_{q'_1q'_2,q_1q_2}^{\mathrm{C}} S_{q'_3q'_4,q_3q_4}^{\mathrm{C}} \pm \text{置换} \\
    &\ +\delta(q'_1-q_1) S_{q'_2q'_3q'_4,q_2q_3q_4}^{\mathrm{C}} \pm \text{置换} \\
    &\ +\delta(q'_1-q_1)\delta(q'_2-q_2) S_{q'_3q'_4,q_3q_4}^{\mathrm{C}} \pm \text{置换} \\
    &\ +\delta(q'_1-q_1)\delta(q'_2-q_2)\delta(q'_3-q_3)\delta(q'_4-q_4) \pm \text{置换}
    :label: s-matrix-four-state

(考虑所有置换, 在 :eq:`s-matrix-three-state` 中一共有 :math:`1+9+6=16` 项, 而在 :eq:`s-matrix-four-state` 中一共有 :math:`1+18+16+72+24=131` 项. 如果我们没有假设单粒子态是稳定的, 将会有更多项. 注意这里统计项数的方法. 按照 :eq:`s-matrix-two-state` 的形式, 带有 C 指标的项可以理解为是对应的反应 (某粒子集合 :math:`\alpha` 产生另一个粒子集合 :math:`\beta`) 在空间的一处进行, 而剩余的 delta 项是分开进行. 分开进行有多种分开方式, 但是作为粒子集合在一处进行的时候, 就不存在对应 :math:`S^{\mathrm{C}}` 项的指标的置换. 因此 :math:`S^{\mathrm{C}}` 项只需要考虑总的粒子集合是否相同. 因此对于 :eq:`s-matrix-three-state` 右边第二项, 第一个 delta 函数可以从集合中选出 :math:`q'_1` 或 :math:`q'_2` 或 :math:`q'_3`, 这贡献了因子3. 然后这个 :math:`q'_1` 可以和 :math:`q_1` 搭配 (作为 delta 函数的参数) 或者 :math:`q_2` 或 :math:`q_3`. 因此总的置换是 :math:`3\times3 = 9`. 右边第三项, 由于 :math:`\delta` 函数总的排列顺序不代表不同的项, 因此只有 :math:`q'` 和 :math:`q` 的不同匹配. 第一个 :math:`q'` 可以任选三个 :math:`q` 之一与之匹配, 第二个只能在剩余的两个中选, 因此置换数是 :math:`3!=6`. 类似地, :eq:`s-matrix-four-state` 右边第五项, 得 :math:`4!=24`. 右边第四项, 首先从四个 :math:`q'` 中选出两个, 顺序无关, 作为 delta 函数的参数. 然后这之中第一个 :math:`q'` 可以和四种 :math:`q` 之一匹配, 第二个可以和三种匹配. 因此置换数是 :math:`C_2^4\times (4\times 3) = 6 \times 12 =72`. 右边第三项, 首先从四个 :math:`q'` 中选出一个, 作为 delta 函数的参数. 然后这之中第一个 :math:`q'` 可以和四种 :math:`q` 之一匹配. 因此置换数是 :math:`4 \times 4 = 16`. 右边第二项, 是把一个集合分为两个集合. 首先从所有四个 :math:`q'` 选出两个作为 "第一个" :math:`S` 的集合, 共有 :math:`6` 种选法. 但是由于表达式中两个 :math:`S` 的排列顺序是无关的, 因此如果两个集合的顺序不重要, 也就没有所谓的第一个第二个之分, 因此需要除以2. 因此得系数 :math:`3`. 然后对其中的一个集合可以选与之匹配的 :math:`q`. 还是四选二, 因此总的置换数是 :math:`3 \times 6 = 18`. )

正如之前解释的那样, :math:`S_{\beta\alpha}^{\mathrm{C}}` 的定义是递归的: 我们使用 :eq:`s-matrix-two-state` 定义双粒子态的 :math:`S_{\beta\alpha}^{\mathrm{C}}`, 然后利用这个定义在 :eq:`s-matrix-three-state` 中定义三粒子态的 :math:`S_{\beta\alpha}^{\mathrm{C}}`, 然后利用这两个定义在 :eq:`s-matrix-four-state` 中定义四粒子态的 :math:`S_{\beta\alpha}^{\mathrm{C}}`, 以此类推.

3 集团分解原理的连接矩阵元表述
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

引入 :math:`S` 矩阵的连接部分的定义的意义在于, 集团分解原理等价于要求当任何一个或多个 :math:`\alpha` 和/或 :math:`\beta` 中的粒子在空间上距离其他粒子非常远的时候, :math:`S_{\beta\alpha}^{\mathrm{C}}` 为零. 证明如下. 假定在态 :math:`\beta` 和 :math:`\alpha` 中的粒子被分组为集团 :math:`\beta_1,\beta_2,\cdots` 和 :math:`\alpha_1,\alpha_2,\cdots`, 并且所有在集合 :math:`\alpha_i + \beta_i` 中的粒子都和满足 :math:`j \neq i` 的集合 :math:`\alpha_j + \beta_j` 中的粒子非常远. 那么如果 "当任何 :math:`\beta'` 和 :math:`\alpha'` 中的粒子相距非常远的时候 :math:`S_{\beta'\alpha'}^{\mathrm{C}}` 为零", 那么 "当任何 :math:`\beta'` 和 :math:`\alpha'` 中的粒子属于不同的集团 (按照上面的分组) 的时候 :math:`S_{\beta'\alpha'}^{\mathrm{C}}` 为零". 因此 :eq:`s-matrix-connected` 就变为 (注意在 :eq:`s-matrix-connected` 中求和是任意分组的, 但是按照上面的要求, 我们预先假定存在一种分组, 组与组之间是无相互作用的. 如果把属于上面预定分组中不同分组中的粒子组合起来, 那么 :eq:`s-matrix-connected` 中将给出为零的项. 于是最终的结果是, 非零的展开项只能是先按照上面指定的预定分组分, 然后每个预定分组内部再细分. 因此下面的 :math:`\alpha` 和 :math:`\beta` 都有两个指标, 第一个指标是上面分组的指标, 第二个是细分指标. 每一个求和部分是对于同一个预定分组的, 这意味着不同预定分组不能相互交叉. )

.. math::
    S_{\beta\alpha} \to {\sum}^{(1)} (\pm) S_{\beta_{11}\alpha_{11}}^{\mathrm{C}}
        S_{\beta_{12}\alpha_{12}}^{\mathrm{C}} \cdots \times
        {\sum}^{(2)} (\pm) S_{\beta_{21}\alpha_{21}}^{\mathrm{C}}
        S_{\beta_{22}\alpha_{22}}^{\mathrm{C}} \cdots \times \cdots

其中 :math:`\Sigma^{(j)}` 是对所有把集团 :math:`\beta_j` 和 :math:`\alpha_j` 分为子集团 :math:`\beta_{j1},\beta_{j2},\cdots` 和 :math:`\alpha_{j1},\alpha_{j2},\cdots` 的不同方法. 但是注意到上式正是可分解性质 :eq:`s-matrix-factor` (即集团分解原理).

例如, 假设在四粒子反应 :math:`1234 \to 1'2'3'4'` 中, 我们令粒子 :math:`1,2,1',2'` 和 :math:`3,4,3',4'` 相距非常远. 那么如果当任何 :math:`\alpha` 和/或 :math:`\beta` 中的粒子离其他粒子非常远时 :math:`S_{\beta\alpha}^{\mathrm{C}}` 为零, 在 :eq:`s-matrix-four-state` 中不为零的项是 (使用更加省略的记号)

.. math::
    S_{1'2'3'4',1234} \to &\ S^{\mathrm{C}}_{1'2',12} S^{\mathrm{C}}_{3'4',34} \\
        &\ + (\delta_{1'1}\delta_{2'2} \pm \delta_{1'2}\delta_{2'1} ) S^{\mathrm{C}}_{3'4',34} \\
        &\ + (\delta_{3'3}\delta_{4'4} \pm \delta_{3'4}\delta_{4'3} ) S^{\mathrm{C}}_{1'2',12} \\
        &\ + (\delta_{1'1}\delta_{2'2} \pm \delta_{1'2}\delta_{2'1}) (\delta_{3'3}\delta_{4'4} \pm \delta_{3'4}\delta_{4'3} ) \\
        =&\ \Big[ S^{\mathrm{C}}_{1'2',12} + \delta_{1'1}\delta_{2'2} \pm \delta_{1'2}\delta_{2'1} \Big]
        \Big[ S^{\mathrm{C}}_{3'4',34} + \delta_{3'3}\delta_{4'4} \pm \delta_{3'4}\delta_{4'3} \Big]

和 :eq:`s-matrix-two-state` 比较, 可以发现这就是所需要的可分解条件 :eq:`s-matrix-factor`

.. math::
    S_{1'2'3'4',1234} \to S_{1'2',12} S_{3'4',34}

4 动量空间的连接矩阵元
^^^^^^^^^^^^^^^^^^^^^^

我们已经在坐标空间推导了集团分解原理, 因为 :math:`S_{\beta\alpha}^{\mathrm{C}}` 为零的条件是任何态 :math:`\beta` 或 :math:`\alpha` 中的粒子距离其他粒子非常远. 在动量空间重新表述集团分解原理将是方便的. 坐标空间矩阵元定义为傅里叶变换

.. math::
    S_{\bm{x}'_1\bm{x}'_2\cdots, \bm{x}_1\bm{x}_2\cdots}^{\mathrm{C}} \int \D^3 \bm{p}'_1 \D^3 \bm{p}'_2
        \cdots \D^3 \bm{p}_1 \D^3 \bm{p}_2 \cdots
    S_{\bm{p}'_1\bm{p}'_2\cdots, \bm{p}_1\bm{p}_2\cdots}^{\mathrm{C}}
    \E^{\I \bm{p}'_1\cdot \bm{x}'_1} \E^{\I \bm{p}'_2\cdot \bm{x}'_2} \cdots
    \E^{\I \bm{p}_1\cdot \bm{x}_1} \E^{\I \bm{p}_2\cdot \bm{x}_2} \cdots
    :label: s-matrix-conn-x-p

(这里我们临时省略自旋和粒子种类指标, 这些省略的指标按照类似于动量或坐标指标的方式指定即可. 也就是说, :math:`\bm{x}_1 \to \bm{x}_1\sigma_1 n_1, \bm{p}'_2 \to \bm{p}'_2\sigma'_2 n'_2` 等等, 虽然这些放一起可以称为 :math:`\alpha` 或 :math:`\beta` 之类, 但是同一个 :math:`\alpha` 无法表示动量或坐标空间的两种表示. ) 如果 :math:`|S_{\bm{p}'_1\bm{p}'_2\cdots \bm{p}_1\bm{p}_2\cdots}|` 有足够良好的表现 (具体地, 它应该是勒贝格可积的) 那么根据黎曼-勒贝格定理, 当任何空间坐标的组合趋近于无穷大时上式的积分为零. 现在, 这很明显是个过强的要求. 平移不变性告诉我们, :math:`S` 矩阵的连接部分, 例如 :math:`S` 矩阵本身, 只能依赖于坐标矢量的差, 因此当 :math:`x_i` 和 :math:`x_j'` 一起变化时 (并保持它们的差不变), :math:`S` 矩阵的连接部分根本不会改变. 这要求在动量基底中, :math:`S` 的矩阵元, 和 :math:`S` 类似, 必须正比于三维 delta 函数. 这个 delta 函数确保了动量守恒 (并且使得 :math:`|S_{\bm{p}'_1\bm{p}'_2\cdots \bm{p}_1\bm{p}_2\cdots}|` 不是勒贝格可积的) 和散射理论所要求的能量守恒 delta 函数. 因此我们有

.. math::
    S_{\bm{p}'_1\bm{p}'_2\cdots, \bm{p}_1\bm{p}_2\cdots}^{\mathrm{C}} = \delta^3(\bm{p}'_1+\bm{p}'_2+\cdots
        -\bm{p}_1-\bm{p}_2-\cdots) \delta(E'_1+E'_2+\cdots - E_1-E_2-\cdots) C_{\bm{p}'_1\bm{p}'_2\cdots,\bm{p}_1\bm{p}_2\cdots}
    :label: s-matrix-p-coef

这不存在问题: 集团分解原理只要求当某些 :math:`\bm{x}_i` 和/或 :math:`\bm{x}'_i` 之间的差变得非常大的时候 :eq:`s-matrix-conn-x-p` 为零. (这里不存在问题是说, 之前说当 :math:`x_i` 和 :math:`x_j'` 一起变化时 (并保持它们的差不变), :math:`S` 矩阵的连接部分根本不会改变, 那么似乎如果 :math:`S` 矩阵不变的话, 那么就无法在集团分解原理要求的情况下 **变** 到零. 但是又注意到集团分解原理不关心整体变化, 因此和动量守恒并不矛盾. ) 但是如果上式中 :math:`C` 本身包含额外的3动量的线性组合的 delta 函数, 那么这个原理将无法得到满足 (这里的关键是, 集团分解原理在意的是整个系统内部的变化, 而不是整体的变化). 例如, 假定 :math:`C` 中有一个 附加 delta 函数要求某些粒子子集的动量 :math:`\bm{p}'_i` 和 :math:`-\bm{p}_j` 的和为零. 那么如果所有在那个集合中的粒子的 :math:`\bm{x}'_i` 和 :math:`\bm{x}_j` 同时移动 (并保持差不变) 远离所有其他 :math:`\bm{x}'_k` 和 :math:`\bm{x}_{\ell}`,  :eq:`s-matrix-conn-x-p` 将不会变化, 而这和集团分解原理矛盾. 具体地说, 这样的移动相当于对所有对应于集合中的 :math:`\bm{x}'_i` 和 :math:`\bm{x}_j` 项同时加上偏移 :math:`\bm{d}`. 而这些 :math:`\bm{x}` 项都出现在 :eq:`s-matrix-conn-x-p` 的 :math:`\E` 指数中. 因此可以把这些关于 :math:`\D` 的项提出来, 得

.. math::
    \E^{\I ({\sum}' \bm{p}'_i - \bm{p}_j) \cdot \bm{d}} = 1

其中的求和和是对那个粒子子集中的动量求和, 和附加 delta 函数的参数一致. 而由于附加 delta 函数的存在, 这个求和必须等于0, 因此整个多出来的 :math:`\E` 系数为1. 从而 :eq:`s-matrix-conn-x-p` 就不会因为 :math:`\bm{x}` 坐标的改变而改变. 既然 :eq:`s-matrix-conn-x-p` 在这个过程中无法变化, 但是集团分解原理要求在这些 :math:`\bm{x}` 移动得越来越远的过程中 :eq:`s-matrix-conn-x-p` 变为零, 于是就产生了矛盾.

粗略地说, 集团分解原理要求 :math:`S` **矩阵的连接部分, 和** :math:`S` **矩阵本身不同, 只包含单一的动量守恒 delta 函数**. (这里不考虑能量守恒 delta 函数的存在是因为, 和有没有能量守恒无关. 强调的是, 动量的 delta 函数不能有两个, 而不是说除了动量守恒 delta 函数以外不能有别的量的 delta 函数).

为了更精确地表述这个问题, 我们可以说 :eq:`s-matrix-p-coef` 中的系数函数 :math:`C_{\bm{p}'_1\bm{p}'_2\cdots,\bm{p}_1\bm{p}_2\cdots}` 是关于它的动量指标的光滑函数. 但是多光滑? 我们似乎可以直接要求在 :math:`\bm{p}'_1 = \bm{p}'_2 = \cdots =\bm{p}_1 = \bm{p}_2 = \cdots = 0` 处 :math:`C_{\bm{p}'_1\bm{p}'_2\cdots,\bm{p}_1\bm{p}_2\cdots}` 对所有动量是解析的. 这个要求事实上确实能保证 :math:`S_{\bm{x}'_1\bm{x}'_2\cdots, \bm{x}_1\bm{x}_2\cdots}^{\mathrm{C}}` 指数快地趋于零, 当任何 :math:`\bm{x}` 和 :math:`\bm{x}'` 距离任何其他的 :math:`\bm{x}` 和 :math:`\bm{x}'` 非常远时. 但是 :math:`S^{\mathrm{C}}` 的指数衰减并不是集团分解原理的关键部分, 并且事实上解析性的要求并不是在所有理论都可以满足. 最值得一提的是, 在无质量粒子理论中, :math:`S^{\mathrm{C}}` 可以在某些 :math:`\bm{p}` 和 :math:`\bm{p}'` 值处有奇点. 例如, 我们在第10章将看到, 如果在跃迁 :math:`1\to 3` 中可以释放一个无质量粒子, 这个粒子在跃迁 :math:`2\to 4` 中被吸收, 那么 :math:`S_{34,12}^{\mathrm{C}}` 将有一个正比于 :math:`1/(p_1-p_3)^2` 的项. 傅里叶变换之后, 这样的奇点导致 :math:`S_{\bm{x}'_1\bm{x}'_2\cdots, \bm{x}_1\bm{x}_2\cdots}^{\mathrm{C}}` 包含仅按坐标差的负指数幂趋于零的项. 并没有必要将集团分解原理按照非常强的方式来推导, 从而排除了上述较慢衰减的可能性. 因此 :math:`S^{\mathrm{C}}` 的 "光滑性" 条件应该理解为在某些 :math:`\bm{p}` 和 :math:`\bm{p}'` 值处允许各种奇点和分支, 但是没有像 delta 函数那样严重的奇异性.

第四节 相互作用结构
-------------------

我们现在要问, 怎样的哈密顿量将导致满足集团分解原理的 :math:`S` 矩阵? 从这里我们将看出产生和湮灭算符以它们自己的形式出现. 其解答是如下定理, 如果 (就我目前所知, 仅仅如果) 哈密顿量可以写为 :eq:`op-expr-cre-anni` 的形式, :math:`S` 矩阵将满足集团分解原理:

.. math::
    H =&\ \sum_{N=0}^\infty \sum_{M=0}^\infty \int \D q_1' \cdots \D q_N' \D q_1 \cdots \D q_M \\
        &\ \times a^\dagger (q_1') \cdots a^\dagger (q_N')a(q_M)\cdots a(q_1) \\
        &\ \times h_{NM}(q_1'\cdots q_N', q_1 \cdots q_M)
    :label: hamil-expr-cre-anni

其中系数函数 :math:`h_{NM}` 仅包含 **单一的** 三维动量守恒 delta 函数 (我们在这里暂时采用更加显式的记号)

.. math::
    &\ h_{NM}(\bm{p}'_1\sigma'_1n'_1\cdots \bm{p}'_N \sigma'_Nn'_N, \bm{p}_1\sigma_1n_1\cdots \bm{p}_M
        \sigma_M n_M) \\
    =&\ \delta^3(\bm{p}'_1 + \cdots + p'_N - \bm{p}_1 -\cdots - \bm{p}_M)
    \tilde{h}_{NM}(\bm{p}'_1\sigma'_1n'_1\cdots \bm{p}'_N \sigma'_Nn'_N, \bm{p}_1\sigma_1n_1\cdots \bm{p}_M
        \sigma_M n_M)

其中 :math:`\tilde{h}_{NM}` 不包含 delta 函数因子. 注意, :eq:`hamil-expr-cre-anni` 式本身不包含任何内容, 我们在 4.2 节看到, **任何** 算符都可以写成这种形式. 只有当 :eq:`hamil-expr-cre-anni` 式和 :math:`h_{NM}` 仅包含一个 delta 函数这个要求结合在一起, 才保证 :math:`S` 矩阵满足集团分解原理.

这个定理在微扰论的有效性, 在第六章我们发展费曼图形式体系的时候将变得明显. 读者可以跳过当前章节的剩余内容, 而在第五章考虑这个定理的推论. 但是, 这个证明有一些指导性的因素, 将帮助澄清在什么意义上下一章的场论是不可避免的.

为证明这个定理, 我们采用微扰论的的依赖时间的形式. (含时微扰论的一个优势是, 它使得集团分解原理的组合学更加透明; 如果 :math:`E` 是单粒子能量之和, 那么 :math:`\E^{-\I Et}` 是各自能量的函数的乘积, 而 :math:`[E-E_\alpha+\I \epsilon]^{-1}` 则不是.) :math:`S` 矩阵由 :eq:`dyson-s` 式给出

.. math::
    S_{\beta\alpha} = \sum_{n=0}^\infty \frac{(-\I)^n}{n!} \int_{-\infty}^{\infty}
    \D t_1\cdots \D t_n \Big( \phi_\beta, T\Big\{ V(t_1)\cdots V(t_n) \Big\} \phi_\alpha \Big),
    :label: s-matrix-sum-beta-alpha

(我们现在采用约定, 对于 :math:`n = 0` 上式中的时序乘积给出单位算符, 因此求和中 :math:`n=0` 的项仅仅给出 :math:`S_{\beta\alpha}` 中的 :math:`\delta(\beta-\alpha)` 项. 注意 :eq:`dyson-s` 式中求和从 :math:`n=1` 开始, 而多了一项1. 这里 :math:`n = 0` 实际上对应于没有积分, 得到 :math:`(\phi_\beta, \phi_\alpha) = \delta(\beta-\alpha)` 参考 :eq:`phi-norm` 式. ) 其中哈密顿量分裂为自由粒子部分 :math:`H_0` 和相互作用 :math:`V`, 并且 (参考 :eq:`ku-wu-commute` 上面的式子, 这里具体待研究)

.. math::
    V(t) \equiv \exp(\I H_0 t) V \exp(-\I H_0 t).

现在, 态 :math:`\phi_\alpha` 和 :math:`\phi_\beta` 可以表示成 :eq:`creation-vac` 的产生算符乘积作用在真空 :math:`\phi_0` 的形式, 并且 :math:`V(t)` 本身也是产生和湮灭算符的乘积, 因此在求和 :eq:`s-matrix-sum-beta-alpha` 中的每一项都可以写成产生湮灭算符的乘积在真空的期望值的和. 通过利用对易和反对易规则 :eq:`commute-cre-cre`, 我们可以把所有湮灭算符逐个移到产生算符的右边. 对于每个经过一个产生算符移到右边的湮灭算符, 我们有两项, 即把 :eq:`commute-cre-cre` 写为如下形式

.. math::
    a(q')a^\dagger(q) = \pm a^\dagger(q)a(q') + \delta(q' - q).

在第一项中, 把其他产生算符穿越湮灭算符 (移到左边) 产生更多的项. (由上式我们看出, 产生算符在右边的情况我们可以完全消去. 最后只剩下湮灭算符在右边的情况, 和 delta 函数的乘积) 但是 :eq:`aq-vac-zero` 表示任何湮灭算符移到右边作用于 :math:`\phi_0` 得到零, 因此最终只剩下 delta 函数. 以这种方式, 产生和湮灭算符的乘积在真空的期望值, 由不同项的和给出, 其中每一项等于 delta 函数的乘积和从对易子或反对易子得到的 :math:`\pm` 符号. 从而, :eq:`s-matrix-sum-beta-alpha` 可以表示为一系列项得乘积, 每一项等于 delta 函数, 从对易子或反对易子得到的 :math:`\pm` 号, 和由 :math:`V(t)` 贡献的任何因子的乘积, 对所有时间积分, 然后对 delta 函数的参数中的动量, 自旋, 粒子种类积分或求和.

以这种方式产生的每一项可以符号化为一个图. (这还不是完整的费曼图形式理论, 因为我们还没有把数值量和图形的组成部分联系起来; 我们在这里使用图形仅仅作为一种追踪三动量 delta 函数的方式. ) 画 :math:`n` 个点, 称为 **顶点** (vertices), 其中每个点对应于一个 :math:`V(t)` 算符. 对于每个在某个 :math:`V(t)` 算符的湮灭算符移经一个在初态 :math:`\phi_\alpha` 中的产生算符时产生的 delta 函数, 画一条从下方进入图的线, 到对应的顶点. 对每个在末态 :math:`\phi_\beta` 的共轭中的湮灭算符移经某个 :math:`V(t)` 算符中的产生算符时产生的 delta 函数, 画一条从对应的顶点向上离开图的线. 对于每个在某个 :math:`V(t)` 中的湮灭算符移经另一个 :math:`V(t)` 的产生算符时产生的 delta 函数, 在这两个顶点之间画一条线. 最后, 对于每个在末态的共轭中的湮灭算符移经初态中的产生算符时产生的 delta 函数, 画一条从底部到顶部的线, 直接穿过图形. 每个和某条线联系的 delta 函数保证了由线表示的一对产生和湮灭算符的动量参数的相等. 每个顶点也会贡献一个 delta 函数, 保证在顶点处总三动量守恒.

这样的图要么是连通的 (每个点都可以通过一些线和其他每个点连通), 如果不是连通的, 它可以分解为一些连通的部分. 在一个连通部分, 和一个顶点联系的 :math:`V(t)` 算符, 事实上与和在任何其他连通部分的任意顶点联系的 :math:`V(t)` 对易, 因为对这个图, 我们没有包括任何项, 在其中一个顶点的湮灭算符消灭了一个粒子, 而这个粒子由另一个顶点的产生算符产生 - 如果我们包含了这样的项, 这两个顶点将会在同一个连通部分. 因此 :eq:`s-matrix-sum-beta-alpha` 中的矩阵元可以表示为每个连通部分的贡献的 **乘积** 的和:

.. math::
    &\ \Big( \phi_\beta, T\Big\{ V(t_1)\cdots V(t_n) \Big\} \phi_\alpha \Big) \\
    =&\ \sum_{\mathrm{clusterings}} (\pm) \prod_{j=1}^{\nu}
    \Big( \phi_{\beta_j}, T\Big\{ V(t_{j1})\cdots V(t_{jn_j}) \Big\} \phi_{\alpha_j} \Big)_{\mathrm{C}}
    :label: s-matrix-clustering

这里, 求和是对分解入射粒子, 出射粒子和 :math:`V(t)` 算符为 :math:`\nu` 个集团的所有方法进行求和 (其中包括对 :math:`\nu` 从 1 到 :math:`n` 的求和), 其中 :math:`n_j` 个算符 :math:`V(t_{j1})\cdots V(t_{jn_j})` 和初态粒子的子集 :math:`\alpha_j` 和末态粒子的子集 :math:`\beta_j` 都在第 :math:`j` 个集团. 当然, 这意味着

.. math::
    n = n_1 + \cdots + n_{\nu}

并且集合 :math:`\alpha` 是所有子集 :math:`\alpha_1, \alpha_2, \cdots \alpha_\nu` 中的粒子的并, 对末态情况也类似. 在 :eq:`s-matrix-clustering` 中的某些集团可能不包含任何顶点, 即 :math:`n_j=0`; 对这些因子, 我们必须令 :eq:`s-matrix-clustering` 中对应的矩阵元因子为零, 除非 :math:`\beta_j` 和 :math:`\alpha_j` 都是单粒子态 (在这种情况下它成为一个 delta 函数 :math:`\delta(\alpha_j - \beta_j)`), 因为唯一的无顶点的连通图包含一个单一的线, 从图的底部连到顶部. 最重要的是, :eq:`s-matrix-clustering` 中的下标 C 表明我们排除任何对应于非连通图的贡献, 即, 任何 :math:`V(t)` 算符或者任何初态或末态粒子没有和其他部分通过一系列粒子产生和湮灭相连接的贡献.

现在我们在求和 :eq:`s-matrix-sum-beta-alpha` 中利用 :eq:`s-matrix-clustering`. 每个时间变量都从 :math:`-\infty` 到 :math:`\infty` 积分, 因此, :math:`t_1,\cdot t_n` 中的哪一个被分到每个集团并不导致任何区别 (这里这个阶乘因子不是很理解). 因此这个对集团的求和导致一个因子 :math:`n!/n_1!n_2!\cdots n_\nu!`, 等于把 :math:`n` 个顶点分到 :math:`\nu` 个集团, 每个集团包含 :math:`n_1, n_2, \cdots` 顶点的所有方法数:

.. math::
    &\ \int_{-\infty}^{\infty} \D t_1 \cdots \D t_n \Big( \phi_\beta, T\Big\{ V(t_1)\cdots V(t_n) \Big\} \phi_\alpha \Big) \\
    =&\ \sum_{\mathrm{PART}}(\pm) \sum_{\underset{n_1+\cdots+n_\nu=n}{n_1\cdots n_\nu}}
    \frac{n!}{n_1!n_2!\cdots n_\nu !} \prod_{j=1}^\nu \int_{-\infty}^{\infty} \D t_{j1}\cdots t_{jn_j}
    \Big( \phi_{\beta_j}, T\Big\{ V(t_{j1})\cdots V(t_{jn_j}) \Big\} \phi_{\alpha_j} \Big)_{\mathrm{C}}

这里第一个求和时对所有把初态和末态中的粒子分为集团 :math:`\alpha_1\cdots \alpha_\nu` 和 :math:`\beta_1\cdots \beta_\nu` 的求和 (包括对集团数 :math:`\nu` 的求和). 因子 :math:`n!` 抵消 :eq:`s-matrix-sum-beta-alpha` 中的 :math:`1/n!`, 而 :eq:`s-matrix-clustering` 微扰级数的因子 :math:`(-\I)^n` 可以写为乘积 :math:`(-\I)^{n_1}\cdots (-\I)^{n_\nu}` (这里说 :eq:`s-matrix-clustering` 的微扰级数, 其实就是 :eq:`s-matrix-sum-beta-alpha` 中的 因子 :math:`(-\I)^n`, 但是由于 :eq:`s-matrix-clustering` 是微扰级数中的一项, 所以可以指代), 因此, 本来是先对 :math:`n` 求和, 然后对 :math:`n_1, \cdots n_\nu` 求和, 但是加上限制 :math:`n_1+\cdots+n_\nu = n`, 现在关于 :math:`n` 本身的因子都可以消去了, 因此这个求和可以写为分别对 :math:`n_1, \cdots n_\nu` 求和 (移除了对 :math:`n` 求和以及总和为 :math:`n` 的限制. 因为依赖于 :math:`n` 的因子都被改写了, 而 :math:`n` 从 1 到 :math:`\infty` 求和相当于对 :math:`n` 没有限制), 这最终给出

.. math::
    S_{\beta\alpha} =\sum_{\mathrm{PART}}(\pm) \prod_{j=1}^\nu \sum_{n_j=0}^\infty \frac{(-\I)^{n_j}}{n_j!}
    \int_{-\infty}^\infty \D t_{j1} \cdots \D t_{jn_j} \Big( \phi_{\beta_j}, T\Big\{ V(t_{j1})\cdots V(t_{jn_j}) \Big\} \phi_{\alpha_j} \Big)_{\mathrm{C}}

把上式和 :eq:`s-matrix-connected` 对连接矩阵元 :math:`S_{\beta\alpha}^{\mathrm{C}}` 的定义比较, 我们可以看出这些矩阵元由这里乘积的因子给出

.. math::
    S_{\beta\alpha}^{\mathrm{C}} = \sum_{n=0}^\infty \frac{(-\I)^{n}}{n!}
    \int_{-\infty}^\infty \D t_{1} \cdots \D t_{n} \Big( \phi_{\beta}, T\Big\{ V(t_{1})\cdots V(t_{n}) \Big\} \phi_{\alpha} \Big)_{\mathrm{C}}

(这里去掉了所有 :math:`t` 和 :math:`n` 的下标 :math:`j`, 因为这些现在仅仅是积分和求和变量. ) 我们发现 :math:`S_{\beta\alpha}^{\mathrm{C}}` 由非常简单的方式计算: :math:`S_{\beta\alpha}^{\mathrm{C}}` 是所有对 :math:`S` 矩阵连接部分的贡献之和, 具体意思是, 我们去掉所有任何初态或末态粒子或任何算符 :math:`V(t)` 不和其他所有算符通过粒子产生和湮灭算符的序列连接的项. 这解释了对 :math:`S^{\mathrm{C}}` 的形容词 "连接的".

正如我们已经看到的, 在每个顶点, 沿每条线动量都是守恒的, 因此 :math:`S` 矩阵的连接部分各自保持动量守恒: :math:`S_{\beta\alpha}^{\mathrm{C}}` 包含因子 :math:`\delta^3(\bm{p}_\beta-\bm{p}_\alpha)`. 我们想证明的是 :math:`S_{\beta\alpha}^{\mathrm{C}}` 不包含其他 delta 函数.

我们现在假设在哈密顿量的产生和湮灭算符展开式 :eq:`hamil-expr-cre-anni` 中的系数部分 :math:`h_{NM}` 正比于一个 **单一的** 三维 delta 函数, 它确保动量守恒. 这对于自由粒子哈密顿量 :math:`H_0` 自动满足, 因此对于相互作用 :math:`V` 这也将满足. 回到我们已经使用的矩阵元的图形解释, 这意味着每个顶点贡献一个三维 delta 函数. (在矩阵元 :math:`V_{\gamma\delta}` 的其他 delta 函数仅仅保持不在对应顶点产生或消灭的其他粒子的动量不变. ) 现在, 这些 delta 函数中的大部分仅仅固定中间粒子的动量. 没有由这些 delta 函数固定的动量是那些在内线的圈中流转的. (任何一条线, 如果切断它将导致图形不再连通, 都携带一个动量, 这个动量由动量守恒固定为进入或退出图形的线的动量的某种线性组合. 如果图形有 :math:`L` 条线, 可以被同时切断, 而图形不会变得不连通, 那么我们说这个图有 :math:`L` 独立的圈, 并且有 :math:`L` 个动量没有被动量守恒固定. ) 当一个图有 :math:`V` 个顶点, :math:`I` 条内线, :math:`L` 个圈, 将有 :math:`V` 个 delta 函数, 其中 :math:`I - L` 将固定内部动量, 剩下 :math:`V - I + L` 个 delta 函数将入射和出射粒子的动量联系起来. 但是一个著名的拓扑恒等式表明, 对任意含 :math:`C` 连接部分的图, 顶点数, 内线数, 和圈数由下式联系

.. math::
    V-I+L=C
    :label: vilc

因此, 对一个连接矩阵元 :math:`S_{\beta\alpha}^{\mathrm{C}}`, 它出现在 :math:`C = 1` 的图, 我们将仅仅找到单一的三维 delta 函数 :math:`\delta^3(\bm{p}_\beta - \bm{p}_\alpha)`, 这就是要证明的.

在上面的论证中, 时间变量从 :math:`-\infty` 到 :math:`+\infty` 积分并不重要. 因此, 我们可以用完全一样的论证去证明, 如果哈密顿量的系数 :math:`h_{N,M}` 仅包含一个 delta 函数, 那么 :math:`U(t, t_0)` 也可以分解为连接部分, 其中每一部分包含单一的动量守恒 delta 函数因子. 另一方面, :math:`S` 矩阵的连接部分也包含一个能量守恒 delta 函数, 在第六章当我们讨论费曼图时, 我们将看到 :math:`S_{\beta\alpha}^{\mathrm{C}}` 仅包含一个单一的能量守恒 delta 函数, :math:`\delta(E_\beta - E_\alpha)`, 而 :math:`U(t,t_0)` 不包含能量守恒 delta 函数.

应该强调, 对 :eq:`hamil-expr-cre-anni` 式中 :math:`h_{NM}` 只有一个三维动量守恒 delta 函数因子的要求完全不是平庸的, 而是有非常重要的后果. 例如, 假设 :math:`V` 在双粒子态之间有非零矩阵元, 那么 :eq:`hamil-expr-cre-anni` 必须包含 :math:`N = M = 2` 的项及系数

.. math::
    v_{2,2}(\bm{p}'_1 \bm{p}'_2, \bm{p}_1\bm{p}_2 ) = V_{\bm{p}'_1 \bm{p}'_2, \bm{p}_1\bm{p}_2}.

(这里我们临时去掉自旋和粒子种类标记. ) 而相互作用在三粒子态之间的矩阵元就是

.. math::
    V_{\bm{p}'_1 \bm{p}'_2 \bm{p}'_3, \bm{p}_1\bm{p}_2\bm{p}_3} =
        v_{3,3}(\bm{p}'_1 \bm{p}'_2 \bm{p}'_3, \bm{p}_1\bm{p}_2\bm{p}_3)
        + v_{2,2}(\bm{p}'_1 \bm{p}'_2, \bm{p}_1\bm{p}_2 ) \delta^3(\bm{p}'_3 - \bm{p}_3)
        \pm \text{置换}
    :label: v-3-3-momentum

正如本章开始时提到的, 我们可能想实现一个不是场论的相对论量子理论, 通过选择 :math:`v_{2,2}` 使得两体 :math:`S` 矩阵是洛伦兹不变的, 并调整哈密顿量的剩余部分, 从而包含三个或更多粒子的态之间没有散射. 从而, 在上式中我们不得不选择 :math:`v_{3,3}` 使它消去其他项

.. math::
    v_{3,3}(\bm{p}'_1 \bm{p}'_2 \bm{p}'_3, \bm{p}_1\bm{p}_2\bm{p}_3)
    = -v_{2,2}(\bm{p}'_1 \bm{p}'_2, \bm{p}_1\bm{p}_2 ) \delta^3(\bm{p}'_3 - \bm{p}_3)
        \mp \text{置换}

但是, 这将意味着 :math:`v_{3,3}` 的每一项包含 **两个** delta 函数因子 (注意 :math:`v_{2,2}(\bm{p}'_1 \bm{p}'_2, \bm{p}_1\bm{p}_2 )` 有一个因子 :math:`\delta^3(\bm{p}'_1 + \bm{p}'_2 - \bm{p}_1 - \bm{p}_2)`) 而这将违背集团分解原理. 因此, 在一个满足集团分解原理的理论中, 两个粒子散射过程的存在使得三个或更多粒子的过程不可避免.

---------

当我们准备解决满足集团分解原理的量子理论的三体问题时, :eq:`v-3-3-momentum` 中的 :math:`v_{3,3}` 项没有造成特别的麻烦, 但是其他项中的额外 delta 函数使得李普曼-施温格方程非常难以直接求解. 问题在于, 这些 delta 函数使得这个方程的核 :math:`[E_\alpha - E_\beta + \I \epsilon]^{-1} V_{\beta\alpha}` 不是平方可积的, 即使我们移出一个整体动量守恒 delta 函数因子. 因此, 它不能被一个有限矩阵近似表示, 即使矩阵有非常大的秩. 为了解决有三个或更多粒子的问题, 有必要将李普曼-施温格方程替换为一个等式右边连通的版本. 对于三个或更多粒子, 这样的方程已经被找出, 并且在非相对论散射问题, 它们可以递归求解, 但在相对论理论中它们并没有被证明很有用. 因此这里我们将不讨论其细节.

但是, 以这种方式重写李普曼-施温格方程在另一个方面是有用的. 到目前为止, 我们在这一节的讨论依赖于微扰论. 我并不知道任何关于本节的主要定理的非微扰的证明, 但已经被证明的是, 这些重新推导的非微扰的动力学方程和要求 :math:`U^{\mathrm{C}}(t,t_0)` (并且从而 :math:`S^{\mathrm{C}}`) 应该包含一个单一的动量守恒 delta 函数 (正如集团分解原理所要求的) 是 **一致的**, 假定哈密顿量满足我们的条件, 即每个系数函数 :math:`h_{N,M}` 只包含一个单一的动量守恒 delta 函数.

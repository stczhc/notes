
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
    Sandeep Sharma, et al. JCP 136, 124121 (2012)

自旋适配的量子化学密度矩阵重整化群算法
=======================================

II. A. DMRG 中的阿贝尔对称性
----------------------------

阿贝尔对称性可以以一种直接的方式在 DMRG 中进行考虑. 这样的对称性包括例如, 自旋轴向分量 :math:`m`, 总粒子数 :math:`N`, 和阿贝尔点群对称性. 我们可以对每个块基态 :math:`|\mu\rangle` 用额外一组量子数 :math:`q` 进行标记. 这组量子数对应于所有可应用的的对称性的不可约表示, 即

.. math::
    |\mu\rangle \to |\mu q\rangle

对一个乘积态 [其实是直积. 有两个子空间的态构成新的更大空间的态, 这个大空间的态称为乘积态. ], 例如在分块步骤构成的乘积态, [分块步骤实际是指将块扩增一个位点的步骤. ], 阿贝尔对称性意味着乘积态的量子数就是各个原来的态的量子数之 "和"

.. math::
    |\mu q\rangle &=&\ |\mu_1q_1\mu_2q_2\rangle, \\
    q &=&\ q_1 \oplus q_2.
    :label: qnum-abelian

[注意上式和非阿贝尔情况的区别是, 对非阿贝尔情况新的态是旧的态的线性组合, 不是一一对应, 而是多对多. 但是组合系数是很容易算出的, 并且组合系数是固定的可以提前算好的. ] [注意这个式子实际上也是多对多, 因为即便没有量子数, 它的意义不是 :math:`\mu, \mu_1, \mu_2` 取固定值的等式. 而是说, :math:`\mu, \mu_1, \mu_2` 取遍空间中所有值, 如果没有量子数, :math:`\mu` 空间就是 :math:`\mu_1` 和 :math:`\mu_2` 的直积空间. 例如, 等式左边 :math:`\mu` 取 12 个不同的数, 等式右边 :math:`\mu_1` 取 3 个不同的数, :math:`\mu_2` 取 4 个不同的数, 一共 12 个独立的等式, 每个独立等式确实是一对一的. 因此 所有的 :math:`\mu` 都不是特指一个态. 不过确实对于任何独立的 :math:`\mu_1, \mu_2` 的选择, 都会给出一个独立 :math:`\mu`. 上面的阿贝尔情况的等式也是这么理解, 即需要取遍所有可能的数, 不存在组合系数的问题. 现在有了量子数, 量子数也要取遍所有数, 但是不再是直接直积, 当然满足 :math:`q` 的限制的时候, :math:`\mu` 内部还是直积. 对于 :math:`q` 的情况, 由于满足加法关系, 比如 :math:`q_1` 可取 8 个数, :math:`q_2` 可取 8 个数, 那么 :math:`q` 能取的数直接等于 :math:`q_1, q_2` 之和, 然后在确定的 :math:`q, q_1, q_2` 下, 再按之前的方法用直积算出 :math:`\mu`. 对于一种特定的 :math:`q` 选取来说, :math:`\mu` 还是直积的关系. 如果 :math:`\mu` 也确定, 那么等式就是一对一的. ]  对于量子数 :math:`N` 和 :math:`m`, :math:`\oplus` 由标准加法 (即 :math:`N = n_1 + n_2` [无限元素的群]) 给出, 而在点群的情况, 由模加法给出 [点群是有限元素的群].

从 DMRG 得到的目标本征态根据一个所需的不可约表示 [不同的不可约表示由不同的量子数指标标记] 来变换. 因此, 只有多体态 :math:`|a\rangle` 和 :math:`|b\rangle`, 其量子数的和为目标态的量子数时, 这些态才需要出现在波函数的展开式中,

.. math::
    |\Psi_q\rangle &=&\ \sum_{ab} \bm{C}_{aq_abq_b} |aq_a bq_b\rangle. \\
    q &=&\ q_a \oplus q_b

[注意这里的系数 :math:`\bm{C}` 是粗体大写, 这是最终要求的量. 和之前扩增的态是旧的态的线性组合系数无关. 那个系数是已知的. ] 因此阿贝尔对称性可以显著地减少 :math:`\bm{C}` 中系数的数目.

块中的算符, 也可以用阿贝尔对称性表示或者量子数 [这里写明了不可约表示和量子数两种表述之间的等价性. 当然非阿贝尔群的表示一般是矩阵, 因此对应一组量子数. ] 标记. 例如, :math:`a_{i\beta}^\dagger` [这是产生一个 :math:`-1/2` beta 粒子, 具有 :math:`m=-1/2` 量子数, 因为它会导致 :math:`m` 变化 :math:`-1/2`. 另外产生一个粒子即粒子数加一, 粒子数变化 :math:`N=1`. ] 由粒子数 1 和 :math:`m` 量子数 :math:`-1/2` 标记, 表示这个算符如何改变它所作用的态的量子数. 采用量子数标记算符, 允许我们使用选择定则来仅仅存储和操作算符的非零元. 这具有如下形式

.. math::
    \langle \mu_1 q_1 | \hat{X}_q | \mu_2 q_2 \rangle = \delta_{q_1,q\oplus q_2} \langle \mu_1 q_1 | \hat{X}_q | \mu_2 q_2 \rangle

[这表示, 对于一个量子数为 q 的算符, 它作用于右边的量子数 :math:`q_2` 会使其量子数变化 :math:`q`, 即成为 :math:`q+q_2 = q_1`. 因此对左边的态提出了一定的要求. 这个要求可以用 delta 因子表示. ]

因此采用阿贝尔对称性标记态和算符导致了如下的计算上的好处: 它减少了在每个块所需考虑的态的数目, 因为这些态需要被组合来得到目标波函数的量子数. [但是对于特定的目标量子数, 它可以写成两个子空间量子数的和, 有不止一种写法. 因此每个子空间还是要存储多种子空间量子数的量. 只是在转换的时候省了一些计算量. 非阿贝尔的情况转换的时候计算量稍微大一些, 但无论如何多种子空间量子数都是要存储的. ] 这限制了波函数展开式中的系数 :math:`\bm{C}`, 另外, 选择定则允许我们只考虑算符的非零元素.

III. DMRG 算法的自旋适配
------------------------

正如在介绍中提到的, 在 DMRG 算法中引入自旋对称性, 可能可以导致显著地计算上的好处. 最基本的好处和阿贝尔对称性情况类似: 消除那些不可能参与到最终目标波函数的块中的态, 限制波函数展开式中的系数, 以及利用选择定则来只考虑算符的非零元. 但是, SU(2) 李群的非阿贝尔特性带来了附加的因素. 例如, 和每个自旋态 :math:`S` 相联系的是 :math:`2S+1` 个简并多重态 [这里 manifold 不应该是流形的意思, 而只是表示多重这个意思, 和 multiplet 重复. ] 但如果我们只关心旋转不变算符的期望值, 例如哈密顿算符, 那么我们可以考虑多重态为一个单一实体 [这也就是说, 不需要考虑特定的自旋投影, 因为这些不同的投影只和选定何种空间坐标轴为投影轴有关, 而哈密顿量的本征值, 例如能量, 实际上和选取哪一个轴是无关的. 不同的 :math:`m` 的态将给出相同的能量本征值. 考虑多重态为单一实体也就是说, 只关心 :math:`S` 量子数, 而不关心 :math:`m` 量子数. ], 而不是考虑每个单个的态. [这里指单个的 :math:`|S, m\rangle` 态. ] 目标波函数因此展开为由多重态指标 [即 :math:`S`] 标记的 **约化系数**, 而不是态的指标. [因此 "约化" 一词也就专门指仅有 :math:`S` 指标而没有 :math:`m` 指标的情况. ] 类似地, 算符表示为 **约化矩阵元素**, 由多重态而不是态来标记. [这里不是指算符的 :math:`pq` 指标, 而是确定了 :math:`pq` 指标之后, 一个算符仍需要表示为一个矩阵, 这个矩阵原来是 :math:`M\times M` 的, 其中 :math:`M` 是对应于原来的态的键维度. 现在的键维度将按照多重态来确定. ]

对于一个给定的粒子数 :math:`N` [?? 这里应该是打字错误, 根据后面的公式, 应该是小写 :math:`n`] 以及尺寸为 :math:`k` 的轨道空间 [在上一篇 (Chan 2016) 中对应的标记为 :math:`K`. ] 具有自旋 :math:`S` 的多重态的数目的维数, 相对于具有轴自旋 :math:`m=S` 的态空间的维数, 这一相对值由一个比值给出, 分子是组态函数 (CSF) 数目的 Weyl 公式, 分母是行列式的数目, 即 [这里仅考虑 :math:`m=S` 是因为选哪个轴作为投影轴是任意的, 哈密顿量具有空间旋转不变性, 能量本征值和这个轴的选择无关. ]

.. math::
    \text{no. CSF} &=&\ \frac{2S+1}{k+1} \begin{pmatrix} k+1\\n/2-S\end{pmatrix}
        \begin{pmatrix} k+1\\n/2+S +1\end{pmatrix} \\
    \text{no. dets} &=&\ \begin{pmatrix} k \\ n/2 + m \end{pmatrix} \begin{pmatrix} k \\ n/2 - m \end{pmatrix}

[其中第二个公式即行列式的数目很好理解. 行列式表象就是原始 DMRG 使用的表象, 每个位点或者说轨道需要考虑粒子占据还是不占据, 自旋向上还是向下. 每个位点四种情况. 现在一共有 :math:`k` 个位点, 也就是 :math:`k` 个轨道. 每个轨道最多有 1 个每种自旋的粒子, 也可以没有, 也可以两种自旋各有一个. 所以两种自旋在轨道上的分布互不影响. 如果自旋投影是 m, 因为每个粒子贡献 :math:`1/2` 或 :math:`-1/2` 自旋投影, 因此 :math:`2m` 就是自旋向上和向下的粒子数的差. 即 :math:`n = n_\uparrow + n_\downarrow, 2m = n_\uparrow - n_\downarrow`, 解得 :math:`n_\downarrow = n/2 - m, n_\uparrow = n/2 + m`. 然后总的可能的行列式就是在 :math:`k` 个轨道中选择 :math:`n_\uparrow` 个轨道的方法数, 乘以在 :math:`k` 个轨道中选择 :math:`n_\downarrow` 个轨道的方法数. 这就解释了 no. dets 的计算结果. ]

[因此和 MEST 书第 2.5 节不同的是, 这里没有限制哪些轨道必须是单占据的. 我们事实上可以用 MEST 书第 2.5 节的公式推出这里的第一个公式. 细节如下. MEST 书的公式假定有 :math:`N_o` 个占据数为 1 的轨道, 总自旋为 :math:`S`, 自旋投影为 :math:`M`. 则具有总自旋 :math:`S` 和自旋投影 :math:`M` 的总的 CSF 数目是]

.. math::
    N_{S,M=S}^c = \frac{2S + 1}{\frac{1}{2}N_o + S + 1} \begin{pmatrix} N_o \\ \frac{1}{2} N_o - S \end{pmatrix}

[现在只知道总轨道数为 :math:`k`, 总电子数为 :math:`n`, 并不知道开放轨道数 :math:`N_o`. 由于自旋投影数为 :math:`m`, 未配对电子至少为 :math:`2m`. 如果假设其余电子都两两配对, 则我们得到开放轨道最小值为 :math:`N_o = 2m`. 最大的情况是所有电子都占据开放轨道, 即 :math:`N_o = n`. 另外, 对于每一种开放轨道, 也可能有不同的轨道组态. 即 :math:`01122` 的具体排列. 这相当于在 :math:`k` 个轨道中先选择 :math:`N_o` 个开放轨道, 再在剩余的 :math:`k - N_o` 个轨道中选择 :math:`\frac{n - N_o}{2}` 个双占据轨道 (这个表达式是因为, :math:`n-N_o` 是不在开放轨道的电子数, 这些电子数两两组合只能占据 :math:`\frac{n - N_o}{2}` 个轨道). 所以对于相同的 :math:`N_o` 的不同轨道组态数是这两个二项式系数的乘积. 因此我们要求的 CSF 数目为]

.. math::
    &\ \sum_{N_o = 2m}^N \begin{pmatrix} k \\ N_o \end{pmatrix} \begin{pmatrix} k - N_o \\ \frac{n-N_o}{2} \end{pmatrix}
        \frac{2S + 1}{\frac{1}{2}N_o + S + 1} \begin{pmatrix} N_o \\ \frac{1}{2} N_o - S \end{pmatrix} \\
    =&\ (2S+1) \sum_{N_o = 2m}^N \frac{k!}{N_o!(k-N_o)!} \frac{ (k-N_o)!}{\Big( \frac{n-N_o}{2}\Big)! \Big( k-\frac{n}{2} -\frac{N_o}{2} \Big)!} \frac{1}{\frac{1}{2}N_o + S + 1} \frac{N_o!}{ \Big(\frac{1}{2} N_o - S\Big)! \Big( \frac{1}{2} N_o + S\Big)!} \\
    =&\ (2S+1) \sum_{N_o = 2m}^N \frac{k!}{\Big( \frac{n-N_o}{2}\Big)! \Big( k-\frac{n}{2} -\frac{N_o}{2} \Big)!\Big(\frac{1}{2} N_o - S\Big)! \Big( \frac{1}{2} N_o + S + 1\Big)!} \\
    =&\ \frac{2S+1}{k+1} \sum_{N_o = 2m}^N \frac{(k+1)!}{\Big(\frac{n}{2}-S\Big)!\Big(k-\frac{n}{2}+S+1\Big)!} \frac{\Big(\frac{n}{2}-S\Big)!\Big(k-\frac{n}{2}+S+1\Big)!}{\Big( \frac{n-N_o}{2}\Big)! \Big( k-\frac{n}{2} -\frac{N_o}{2} \Big)!\Big(\frac{1}{2} N_o - S\Big)! \Big( \frac{1}{2} N_o + S + 1\Big)!} \\
    =&\ \frac{2S+1}{k+1} \begin{pmatrix} k + 1 \\ \frac{n}{2} - S  \end{pmatrix}
        \sum_{N_o = 2m}^N \frac{\Big(\frac{n}{2}-S\Big)!}{\Big( \frac{n-N_o}{2}\Big)! \Big(\frac{1}{2} N_o - S\Big)! }
        \frac{\Big(k-\frac{n}{2}+S+1\Big)!}{\Big( k-\frac{n}{2} -\frac{N_o}{2} \Big)! \Big( \frac{1}{2} N_o + S + 1\Big)!}
         \\
    =&\ \frac{2S+1}{k+1} \begin{pmatrix} k + 1 \\ \frac{n}{2} - S  \end{pmatrix}
        \sum_{N_o = 2m}^N \begin{pmatrix} \frac{n}{2}-S \\ \frac{n-N_o}{2}  \end{pmatrix}
        \begin{pmatrix} k-\frac{n}{2}+S+1 \\  k-\frac{n}{2} -\frac{N_o}{2} \end{pmatrix} \\
    =&\ \frac{2S+1}{k+1} \begin{pmatrix} k + 1 \\ \frac{n}{2} - S  \end{pmatrix}
        \sum_{N_o = 2m}^N \begin{pmatrix} \frac{n}{2}-S \\ \frac{n-N_o}{2}  \end{pmatrix}
        \begin{pmatrix} k+1-\frac{n}{2}+S \\  S + 1 +\frac{N_o}{2} \end{pmatrix} \\

[下面重点考虑右边求和的项. 注意求和指标中 :math:`2m = 2S`. 令]

.. math::
    x = \frac{n - N_o}{2}, \quad y = \frac{n}{2} - S

[则 :math:`N_o = 2S` 时, :math:`x = y`, :math:`N_o = n` 时, :math:`x = 0`. 于是求和项变为]

.. math::
    \sum_{x = 0}^y \begin{pmatrix} y \\ x  \end{pmatrix}
        \begin{pmatrix} k+1 - y \\  S + \frac{n}{2} + 1 - x \end{pmatrix}

[这其实等于从 :math:`k+ 1` 个物品中选 :math:`S + \frac{n}{2} + 1` 个的选法. 即]

.. math::
    \begin{pmatrix} k + 1 \\ S + \frac{n}{2} + 1  \end{pmatrix}

[因为假如给定常数 :math:`y`, 我们可以先把其中 :math:`y` 个物品标为红色. 然后先在标为红色的 :math:`y` 个物品里面选 :math:`x` 个, 然后在剩下的 :math:`y-x` 个物品里面选 :math:`S + \frac{n}{2} + 1 - x`. 遍历所有的 :math:`x`, 即 :math:`x` 从 :math:`0` 到 :math:`y`, 所有这些标色选法的总和就等于直接没标色的选法. 因此最终 CSF 数目是]

.. math::
    \frac{2S+1}{k+1} \begin{pmatrix} k + 1 \\ \frac{n}{2} - S  \end{pmatrix}
        \begin{pmatrix} k + 1 \\ S + \frac{n}{2} + 1  \end{pmatrix}

[和前面的结果完全一致. ]

因此和使用态空间 [行列式空间] 相比, 使用多重态空间的计算上的优势就是一个粒子数, 轨道数, 和自旋的函数. 从上面的公式, 我们发现当 :math:`S` 很小时, CSF 数目和行列式的数目的比值是最优的.

当然, 采用约化多重态表象会导致一些涉及 SU(2) 代数的复杂性. 我们现在回顾和 DMRG 相关的自旋本征态和自旋张量算符的理论, 然后描述它们在扫描迭代步骤中的应用.

A. 自旋本征态
^^^^^^^^^^^^^

自旋对称性引入了两个额外的量子数, :math:`S` 和 :math:`m`

.. math::
    |\mu\rangle \to |\mu S m \rangle.

[通过这个式子我们知道, :math:`\mu` 指标还是要存在, 它表示剩余的无法用 :math:`S, m` 衡量的自由度. ] 每个 :math:`S` 都与一个由 :math:`2S + 1` 个态组成的简并的多重态相关联 [这里的简并的意思应该是说相对于哈密顿量是简并的, 即能量一样. 而问题的输入也就只有哈密顿量, 因此也无法说具体指定某一个特定的 :math:`m` 态. ]. 这些态之间 [指一个多重态内部的那些态之间] 通过旋转来相互转换. 自旋的非阿贝尔性会显现, 当我们从两个作为构成部分的自旋来构建自旋本征态. [这就是说, 在耦合自旋态来构建原来两个空间的直积空间的自旋态时, 才会有非阿贝尔性的问题. ] 在这个情况下, :math:`|Sm\rangle` 并不是自旋本征态的组合 :math:`|S_1m_1S_2m_2\rangle` [也就是说, :math:`|Sm\rangle \neq |S_1m_1S_2m_2\rangle`, 注意这里即便在阿贝尔情况下是等号, 但是等号要在取定确定的量子数后理解. ], 而是具有不同 :math:`m_1, m_2` 的态的乘积态的线性组合, 由 Clebsch-Gordan 系数 :math:`c_{mm_1m_2}^{SS_1S_2}` 耦合. [这里强调 :math:`m_1, m_2` 而不是 :math:`S_1, S_2` 的理由是, 并不是说 :math:`S_1, S_2` 不耦合 (实际上按后面的理解 :math:`S` 确实不耦合), 但是这里的关键是, 当只考虑 :math:`m` 量子数时, 它是阿贝尔的情况, 因此某个确定 :math:`m`, 下, :math:`\mu` 的选择按顺序一一对应到 :math:`\mu_1 m_1 \mu_2 m_2` 的选择. 虽然说一个 :math:`m` 对应于 :math:`m_1 + m_2 = m`, 可以取不同的具体 :math:`m_1, m_2`, 但是每种具体的取法都只指派到不同的 :math:`\mu`. 现在由于非阿贝尔性, 一个确定的 :math:`m` 和一个确定的 :math:`\mu` 也要写成不同的态的线性组合, 而这些态具有不同的 :math:`m_1, m_2`. 而实际上, 在这里线性组合的只有 :math:`m`, 没有 :math:`S`. 所以实际上 :math:`S` 的情况在这里是阿贝尔的情况. 也就是说, 对于确定 :math:`S`, 确定的 :math:`\mu`, 它一定是由具有确定的 :math:`S_1, S_2` 的态线性组合来得到的 (这里需要线性组合只是因为对确定的 :math:`S_1, S_2` 仍有各种 :math:`m_1, m_2` 待确定). 即混合的只是 :math:`m`. ] [注意下面式子省略了 :math:`\mu`. ]

.. math::
    |Sm\rangle =&\ \sum_{m_1 m_2} c_{mm_1m_2}^{SS_1S_2} |S_1m_1S_2m_2\rangle \\
    m =&\ m_1+m_2 \\

.. math::
    S \in \{ |S_1 - S_2|, |S_1 - S_2|+1, \cdots , S_1 + S_2\}.
    :label: s-range

:eq:`s-range` 是对阿贝尔情况 :eq:`qnum-abelian` 对自旋对称性的推广. [也就是说 :math:`S` 本身差不多相当于阿贝尔的情况. ] [对于 :math:`m` 的情况, 其限制条件和阿贝尔的情况是一样的, 因此线性组合和限制条件是两回事, 限制条件本身不是一对一的, 它让一个 :math:`m` 对应到一系列 :math:`m_1, m_2`. 这在阿贝尔和非阿贝尔都是一样的. 但是这些 :math:`m_1, m_2` 仍可以通过指定不同的 :math:`\mu` 来对应到同一个 :math:`m`, 这样不会出现线性组合, 也可以通过线性组合对应到同一个 :math:`\mu` 和同一个 :math:`m`, 这就是非阿贝尔的情况. ] 因为这个关于所允许的 :math:`S_1, m_1, S_2, m_2` 的限制, 我们发现自旋提供了和阿贝尔对称性类似的优势在 DMRG 计算中: 在 :math:`\mathcal{A}, \mathcal{B}` 中的块态并不需要被考虑, 如果他们不能组合来产生目标波函数中的 :math:`S, m` 量子数. [按照这篇文章的标记, :math:`\mathcal{A}, \mathcal{B}` 是扩展后的块的标记. 它们组合起来就构成超块, 用于计算整个体系的目标波函数. ] 

正如上面提到的, 当求解带有自旋对称性的薛定谔方程时, 我们可以把多重态看作一个单一的量, 而不是利用单个的态, 因为 :math:`\hat{H}` 是旋转不变的. [这里的意思应该是, 仅仅当求解哈密顿量时可以这样做. 在其他的分块过程, 算符延展等等过程中, 仍需要完整的表示, 因为算符毕竟不能不考虑 :math:`m`.] **约化量** 仅仅由 :math:`S` 标记, 而 **约化** 波函数写为

.. math::
    ||\Psi_S \rangle = \sum_{aS_a bS_b} \bm{C}_{aS_a bS_b} || aS_a bS_b\rangle

[注意这里 :math:`a, b` 就相当于之前的 :math:`\mu`, 而 :math:`\bm{C}` 是待求的量. ] 在多重态表象的约化系数和态表象的系数 :math:`\bm{C}_{aS_am_abS_bm_b}` 是相联系的, [疑问?? 这里似乎应该是 :math:`\bm{C}_{Sm,aS_am_abS_bm_b}`, 不然下面的等式指标不平衡, 但这里似乎是为了强调对于一个特定问题, :math:`S, m` 应该是输入参数, 并不会改变, 因此这个系数并不需要这个指标, 也就是说, 理解为 :math:`S, m` 是全局的量. ]

.. math::
    |\Psi_{Sm}\rangle = \sum_{aS_am_abS_bm_b} \bm{C}_{aS_am_abS_bm_b}|aS_am_abS_bm_b\rangle

其中

.. math::
    \bm{C}_{aS_am_abS_bm_b} = c_{m_am_bm}^{S_aS_bS} \bm{C}_{aS_abS_b}.

约化系数 :math:`\bm{C}_{aS_abS_b}` 的数目很明显比原始的波函数系数 :math:`\bm{C}_{aS_am_abS_bm_b}` 的数目要少.

B. 自旋张量算符
^^^^^^^^^^^^^^^

在考虑自旋对称性时, 算符也可以具有标记 :math:`S, m`. 根据不可约自旋表象进行变换的算符被称为不可约 (自旋) 张量算符. 和自旋多重态类似, 由 :math:`S` 标记的张量算符和 :math:`2S+1` 个算符组成的流形相关联, 流形中的算符互相之间通过旋转来变换. 一个简单的方式来表征一个张量算符, 是观察它在一个自旋 :math:`S = 0` 的态上的作用. 例如 :math:`a_{i\alpha}^\dagger` 和 :math:`a_{i\beta}^\dagger` 是 :math:`S=\frac{1}{2}` (双重态) 张量算符 :math:`\hat{a}_i^{1/2}` 的两个分量, 因为它们作用在真空态 (真空态的自旋 :math:`S= 0`) 会产生自旋为 :math:`\frac{1}{2}` 的自旋本征态. [疑问?? 注意, 如果所考虑的张量算符右边是一个湮灭算符, 那么作用在真空态上可能得到零. 这时候这个方法就没什么用. 实际的情况下, 作用于真空态上如果不为零, 则产生的态才好判断. 将产生的态再用 :math:`\hat{S}_z` 或 :math:`\hat{S}^2` 作用, 就能知道这张量算符对应于怎样的 :math:`S, M`. 如果为零, 则只能求它和 :math:`\hat{S}_\pm, \hat{S}_z` 的对易子来判断, 即定义式. ] 考虑算符 :math:`a_{i\alpha}^\dagger a_{j\alpha}, a_{i\alpha}^\dagger a_{j\beta}, a_{i\beta}^\dagger a_{j\alpha}, a_{i\beta}^\dagger a_{j\beta}`, 它们合起来张开了 :math:`S = 0` 单重态和 :math:`S = 1` 三重态流形. :math:`S = 0` 单重态算符定义为

.. math::
    \hat{B}_{ij}^{0,0} = \frac{1}{\sqrt{2}} \Big( a_{i\alpha}^\dagger a_{j\alpha} + a_{i\beta}^\dagger a_{j\beta} \Big),

而 :math:`S=1` 三重态算符定义为

.. math::
    \hat{B}_{ij}^{1,-1} =&\ a_{i\beta}^\dagger a_{j\alpha}, \\
    \hat{B}_{ij}^{1,0} =&\ \frac{1}{\sqrt{2}} \Big( a_{i\alpha}^\dagger a_{j\alpha} - a_{i\beta}^\dagger a_{j\beta} \Big),\\
    \hat{B}_{ij}^{1,1} =&\ -a_{i\alpha}^\dagger a_{j\beta}.

在自旋适配 DMRG 算法中用到的张量算符的完整列表在 表 2 给出.

张量算符允许我们工作于约化算符矩阵元, 仅仅用多重态标记 [根据这里, 似乎对于算符, 也是使用多重态而不是单个的态. ]

.. math::
    \bm{X}^S_{\mu_1 S_1 \mu_2 S_2} = \langle \mu_1 S_1 || \hat{X}^S || \mu_2 S_2 \rangle.

完整矩阵元可以从约化矩阵元利用 Wigner-Eckart 定理得到 (和之前波函数系数的公式类似)

.. math::
    \bm{X}_{\mu_1S_1m_1\mu_2S_2m_2}^{Sm} = c_{m_2mm_1}^{S_2SS_1} \bm{X}_{\mu_1S_1\mu_2S_2}^S.

张量算符的伴算符也是张量算符. 这里, 我们定义伴算符为带有一个附加的符号因子来保持在角动量阶梯算符中用的 Condon-Shortley 相因子约定. [MEST 2.3 节] 为了表示这个具有附加相因子的伴算符运算, 我们使用符号 :math:`\ddagger`. 例如

.. math::
    \bm{X}^{S,m\ddagger} = (-1)^{S+m} \bm{X}^{S,-m\dagger}.

[注意, 这里的约定似乎有问题, 应该写 :math:`\bm{X}^{S,m\ddagger} = (-1)^{S+m} \bm{X}^{S,m\dagger}`, 然后说明 :math:`\bm{X}^{S,m\ddagger}` 是一个属于本征值 :math:`S, -m` 的张量算符. 这样 :math:`\ddagger` 和 :math:`\dagger` 的区别就仅仅只是相因子的区别. 需要在后面用到这个符号的地方验证一下, 是否有矛盾. 但是在这篇文章中, 用到 :math:`\ddagger` 的地方都不出现 :math:`m`, 因此实际上这个 :math:`m` 的符号差并没有什么体现. ] 注意, 一个张量算符的伴算符的约化密度矩阵, 并不是这个算符的约化密度矩阵的共轭. 具有自旋 :math:`S = 0,\frac{1}{2}, 1` 的张量算符的约化矩阵元和对应的伴算符的约化矩阵元之间的关系, 在附录 D 中给出. [疑问?? 这个问题一定要自己好好算一下. 或者可以参考其他文献. ]

和自旋本征态的情况一样, 一个具有量子数 :math:`S,m` 的乘积张量算符包括具有量子数 :math:`S_1, m_1` 和 :math:`S_2, m_2` 的张量算符的线性组合, 通过 Clebsch-Gordan 系数耦合

.. math::
    \Big(\hat{X}_1^{\hat{S}_1} \hat{X}_2^{\hat{S}_2} \Big)^{Sm}
        =\sum_{m_1m_2} c_{m_1m_2m}^{S_1S_2S} \hat{X}_1^{S_1m_1} \hat{X}_2^{S_2m_2}.
    :label: prod-tensor-op

我们可以得到乘积算符 :math:`\Big(\hat{X}_1^{\hat{S}_1} \hat{X}_2^{\hat{S}_2} \Big)^{S}` 的约化矩阵元, 直接通过算符 :math:`\hat{X}_1` 和 :math:`\hat{X}_2` [?? 这里原文是 :math:`\hat{X}` 和 :math:`\hat{Y}`] 的约化矩阵元, 使用 Wigner 9-j 系数

.. math::
    \langle \mu \nu S_{\mu\nu} || \Big(\hat{X}_1^{\hat{S}_1} \hat{X}_2^{\hat{S}_2} \Big)^{S} || \mu'\nu' S_{\mu'\nu'} \rangle
    = \begin{bmatrix} \end{bmatrix} \langle \mu S_{\mu} || \hat{X}_1^{\hat{S}_1} || \mu' S_{\mu'} \rangle \langle \nu S_{\nu} || \hat{X}_2^{\hat{S}_2} || \nu' S_{\nu'} \rangle.
    :label: prod-tensor-rmat

我们定义自旋适配的张量积 :math:`\otimes_S` 为

.. math::
    \bm{X}_1^{S_1} \otimes_S \bm{X}_2^{S_2} = \Big(\bm{X}_1^{\hat{S}_1} \bm{X}_2^{\hat{S}_2} \Big)^{S},

它是 :eq:`prod-tensor-op` 的约化矩阵的形式, 而 :math:`\Big(\bm{X}_1^{\hat{S}_1} \bm{X}_2^{\hat{S}_2} \Big)^{S}` 的约化矩阵元按照 :eq:`prod-tensor-rmat` 来进行计算.

现在继续讨论上述建立的自旋代数如何应用到扫描迭代的计算中.

C. 自旋适配的扫描迭代
^^^^^^^^^^^^^^^^^^^^^

**分块** 在实现自旋适配的时候, 对分块有两个修改:

(i) 使用表 II 定义的张量算符而不是表 I 的算符.
(ii) 因为我们使用张量算符, 我们仅操作和存储算符的约化矩阵元. 这意味着我们把张量乘法 :math:`\otimes` 替换为自旋适配的张量乘法 :math:`\otimes_S`.

考虑 :math:`A_{ij}^S[\mathcal{A}]` 自旋张量算符作为一个例子. 对应于 :math:`A_{ij}^0[\mathcal{A}]` 的约化矩阵元的矩阵由下式得到

.. math::
    i, j \in \mathcal{L} \Rightarrow&\ \bm{A}_{ij}^0[\mathcal{L}] \otimes_0 \bm{1}^0[\bullet_l], \\
    i \in \mathcal{L}, j\in \bullet_l \Rightarrow&\ \bm{a}_i^{1/2}[\mathcal{L}]
        \otimes_0 \bm{a}_j^{1/2}[\bullet_l], \\
    i,j \in \bullet_l \Rightarrow&\ \bm{1}^0[\mathcal{L}] \otimes_0 \bm{A}_{ij}^0[\bullet_l].

超块哈密顿量的二分也和无自旋适配的版本类似. 这里我们注意到哈密顿量是一个 :math:`S=0` 的算符, [因为它是无自旋算符] 因此我们写 :math:`\bm{H}^0`. 那么

.. math::
    \bm{H}^0[\mathcal{A}] =&\ \bm{H}^0[\mathcal{L}] \otimes_0 \bm{1}^0[\bullet_l]
        + \bm{1}^0[\mathcal{L}] \otimes_0 \bm{H}^0[\bullet_l] \\
        &\ +2\sum_{i\in \mathcal{L}} \Big(
        \bm{a}_i^{1/2}[\mathcal{L}] \otimes_0 \bm{R}_i^{1/2\ddagger}[\bullet_l]
        + \bm{a}_i^{1/2\ddagger} [\mathcal{L}] \otimes_0 \bm{R}_i^{1/2}[\bullet_l]
        \Big) \\
        &\ +2\sum_{i\in \bullet_l} \Big(
        \bm{a}_i^{1/2}[\bullet_l] \otimes_0 \bm{R}_i^{1/2\ddagger}[\mathcal{L}]
        + \bm{a}_i^{1/2\ddagger} [\bullet_l] \otimes_0 \bm{R}_i^{1/2}[\mathcal{L}]
        \Big) \\
        &\ +\sum_{ij\in \bullet_l} \Big( - \sqrt{3} \bm{B}_{ij}^1[\bullet_l]
            \otimes_0 \bm{Q}_{ij}^1 [\mathcal{L}]
            +\bm{B}_{ij}^0[\bullet_l]
            \otimes_0 \bm{Q}_{ij}^0 [\mathcal{L}] \Big) \\
        &\ +\frac{\sqrt{3}}{2} \sum_{ij\in \bullet_l} \Big(
        \bm{A}_{ij}^1[\bullet_l] \otimes_0 \bm{P}_{ij}^1[\mathcal{L}]
        + \bm{A}_{ij}^{1\ddagger}[\bullet_l] \otimes_0 \bm{P}_{ij}^{1\ddagger}[\mathcal{L}]
        \Big) \\
        &\ + \frac{1}{2} \sum_{ij \in \bullet_l} \Big( \bm{A}_{ij}^0[\bullet_l] \otimes_0
            \bm{P}_{ij}^0[\mathcal{L}] + \bm{A}_{ij}^{0\ddagger}[\bullet_l] \otimes_0
            \bm{P}_{ij}^{0\ddagger}[\mathcal{L}]\Big).

**波函数求解** 在波函数求解的步骤, 自旋适配的哈密顿量波函数积 [指哈密顿量乘以波函数得到期望值] 可以完全以约化算符矩阵元和约化波函数系数的形式来进行. 和在非自旋适配的 DMRG 算法一样, 完整的哈密顿矩阵永远不会生成, 而乘积是对上式中求和的每一项进行的. 例如, 非自旋版本的

.. math::
    \Big( \bm{A}_{ij}[\mathcal{A}] \otimes \bm{P}_{ij}[\mathcal{B}] \Big) \cdot \bm{C} = \bm{A}_{ij}[\mathcal{A}] \bm{C} \bm{P}_{ij}^T [\mathcal{B}]

[这里 :math:`\bm{C}` 本来是一个矢量, 代表波函数振幅. 现在写成一个矩阵, 因为把指标按子空间划分为两部分, 行代表左块, 列代表右块. 所以本来是矩阵乘矢量, 现在变成了三个矩阵相乘得矩阵, 得到的矩阵行仍然是左块, 列仍然是右块. ] 成为

.. math::
    \bm{C}_{a'S_a'b'S_b'} = \sum_{S_aS_b}
    \begin{bmatrix} S_b & S_a & S \\ S_J & S_I & 0 \\ S'_b & S'_a & S' \end{bmatrix}
    \langle S'_b || \bm{O}_J^{S_J}[\mathcal{B}] ||S_b\rangle
    \langle S'_a || \bm{O}_I^{S_I}[\mathcal{A}] ||S_a\rangle
    \bm{C}_{aS_abS_b}.

注意, 和非自旋适配的版本一样, 这个可以通过中间量来把计算复杂度降低到 :math:`O(M^3)`. 但是, 由于对 :math:`S_a, S_b` 的求和, 算符乘积不会分解为单一的一对解耦合的矩阵乘积 [指现在左空间相乘, 再在右空间相乘. 共两个矩阵乘积] (像非自旋适配的情况那样), 而是对求和中每个 :math:`S_a, S_b` 都必须执行一对矩阵乘积, 如果对应的 9-j 系数非零. 整个操作是非自旋操作的复杂度乘以一个常数, 其中常数依赖于非零 9-j 系数的数目.

**重整化和截断** 在自旋适配的重整化和截断步骤, 我们不寻求一个简单的 :math:`\mathcal{A}` 态的最优截断, 而是对一个和自旋对称性自洽的态的集合 (即纯自旋态的集合) 的最优截断. 这些无法通过 :math:`\mathcal{A}` 的约化密度矩阵的本征矢量来得到, 因为它和块 :math:`\mathcal{A}` 的自旋算符 :math:`\hat{S}^2` 不对易. 正如 McCulloch 和 Gulacsi 的工作显示的那样, 在这个情形中使用的密度矩阵是赝密度矩阵, 它是在通常的密度矩阵中令非对角块 [注意此处不是非对角矩阵元] 为零. 因为这些非对角块使得不同自旋的态耦合. 所有重整化和截断步骤的操作都可以在多重态表象完成, 工作于约化波函数系数和约化密度矩阵元. 赝密度矩阵的约化矩阵元通过约化波函数系数得到

.. math::
    \bm{\Gamma}_{aS_a,a'S_a} = \sum_{bS_b} \bm{C}_{aS_abS_b}\bm{C}^*_{a'S_abS_b}.

[注意这里尽管存在 :math:`a, a'` 两种指标, 但是对 :math:`S_a` 指标只有对角元, 即不同自旋耦合的部分被忽略了. ]

赝密度矩阵的本征矢给出约化形式的变换矩阵

.. math::
    \hat{\Gamma} || l_S\rangle = \sigma_{l,S}||l_S\rangle.

在得到新的重整化的基之后, 在多重态表象的算符利用和 :math:`\bm{X}[\mathcal{L}] = \bm{L}^\dagger \bm{X}[\mathcal{A}]\bm{L}` 类似的公式来变换.

注意, 当在多重态表象中仅保留赝密度矩阵的 :math:`M` 个本征矢时, 我们实际上保留了 :math:`M` 个自旋多重态集合. 这对应于一个大得多的态空间, 而这当然是工作于自旋适配的方式的好处. **但是, 我们将还是采用术语** :math:`M` **个态来表示自旋适配算法中的重整化基**.

IV. 计算上的考虑
----------------

自旋适配的 DMRG 算法的计算实现和非自旋适配的 DMRG 是相似的, 这里我们聚焦于它们之间在计算上的不同.

* 在自旋适配 DMRG 中存储的算符总数大约是非自旋适配的 DMRG 的一半.  DMRG 算法中最多种类的算符是那些具有两个轨道指标的, 即 :math:`\hat{A}_{ij}, \hat{B}_{ij}, \hat{P}_{ij}, \hat{Q}_{ij}`. 在非自旋适配的情况, 对每个空间轨道对 :math:`ij` 存在四个不同的 :math:`\hat{A}_{ij}` 算符, 即 :math:`\hat{A}_{i\alpha j\alpha}, \hat{A}_{i\beta j\alpha},\hat{A}_{i\alpha j\beta}, \hat{A}_{i\beta j\beta}`. 在自旋适配的情况, 只有两个张量算符: :math:`\hat{A}^0_{ij}` 和 :math:`\hat{A}_{ij}^1`. :math:`\hat{A}_{ij}^1` 包含三个 :math:`m` 分量, 但是 Wigner-Eckart 定理意味着我们只需要存储 **一个** 约化矩阵元的矩阵.

* 自旋适配算法的空间依赖是 :math:`O(M^2)`, 和非自旋适配算法一样. 但是, 在自旋适配情况, 复杂度的常数因子更大. 这是由于自旋对称性的非阿贝尔特性. 例如, 如果我们考虑一个算符, 例如 :math:`\hat{B}_{ij}^1`, 下面的约化矩阵元非零: :math:`\langle \mu_1 S || \hat{B}_{ij}^1 || \mu_2 S-1\rangle, \langle \mu_1 S || \hat{B}_{ij}^1 || \mu_2 S\rangle` 和 :math:`\langle \mu_1 S || \hat{B}_{ij}^1 || \mu_2 S+1\rangle`. 即, 一些不同的左矢和右矢之间的耦合是允许的. 当使用阿贝尔对称性, :math:`\hat{B}_{i\alpha j \beta}` 只在单一的对称类型的态之间有非零矩阵元, 即 :math:`\langle \mu_1 m |` 和 :math:`|\mu_2 m\rangle`. [疑问?? 这里按定义, :math:`\hat{B}_{i\alpha j \beta} = a_{i\alpha}^\dagger a_{j\beta}`, 一定会导致 :math:`m` 量子数变化 1, 那么如果左矢右矢量子数都是 :math:`m`, 矩阵元应该是零. ]

* 算法的主要复杂度来自于波函数求解步骤的计算哈密顿量和波函数的乘积, 以及在重整化和截断步骤的算符变换. 在自旋适配的情况, 哈密顿量乘以波函数的复杂度是 :math:`O(k^2M^3)` 每个扫描步骤, 和非自旋适配的算法类似. 在自旋适配算法中, 9-j 耦合系数的出现阻止了哈密顿量波函数乘积分解为两个子步骤. 这个步骤的常数因子因此依赖于必须考虑的 9-j 耦合 [系数] 的数目. 对单重态, 自旋适配的计算复杂度常数因子和非自旋适配的情形类似, 但是对于高自旋态, 它可以更大. 在自旋适配算法中的算符变换和非自旋适配情形非常类似 (复杂度是 :math:`O(k^3M^2)` 每个扫描步 [疑问?? 这里原文是 :math:`O(k^2M^3)`]) 但是一些算符和先前段落描述的相比更加密集.

* 对大规模计算需要一个高效并行的代码. 我们以和非自旋适配的 DMRG 完全相同的方式进行并行.

A. 单重态嵌入
^^^^^^^^^^^^^

当使用自旋适配的 DMRG 来研究高自旋态时, 会出现一些劣势. 第一, 约化系数矩阵 :math:`\bm{C}_{aS_abS_b}` 变得更密集. 在单重态的情形 [:math:`S = 0`], 只有在块 :math:`\mathcal{A}` 和 :math:`\mathcal{B}` 中具有相等自旋的量子态才能耦合 [因为 :math:`S` 的取值范围中, 最小是 :math:`|S_1-S_2|`. 若 :math:`S_1, S_2` 不同, 这个最小值便大于零, 那么 :math:`S` 就无法取到 0. ], 而对于, 例如三重态, 附加的耦合 (:math:`S_b = S_a \pm 1`) 变为可能的. 第二个劣势 (和第一个相关) 是, 对于非单重态, 块 :math:`\mathcal{A}` 和块 :math:`\mathcal{B}` 的赝密度矩阵不是等价的. 我们用一个简单的例子说明这一点. 考虑一个约化波函数, 写为

.. math::
    ||\Psi_{S=1}\rangle = \frac{1}{\sqrt{2}} ||aS_a = 1\rangle
        \Big( ||bS_b = 0\rangle + ||bS_b=2\rangle \Big).

块 :math:`\mathcal{A}` 的赝密度矩阵有一个非零的本征值, 而对块 :math:`\mathcal{B}` 有两个非零的本征值. 这个非等价性意味着, 在一次计算中, 从前向和后向扫描得到的丢弃权重 (分别对应于块 :math:`\mathcal{A}` 和块 :math:`\mathcal{B}` 的赝密度矩阵) 是不同的, 而这使得采用丢弃权重的 DMRG 能量外推变得有歧义.

为了克服这些劣势, 很明显最好只将自旋适配算法用于单重态目标态. 那么我们如何研究高自旋态的系统呢? 一种方式是使用我们称为单重态嵌入的技术, 最早由 Tatsuaki 引入. 这里我们注意到我们总可以增加辅助的无相互作用的轨道集合, 到晶格 [这里指位点序列, 实际就是轨道序列], 它和物理轨道耦合, 最后总体上产生一个单重态. 一般地, 组合的物理和辅助轨道的波函数 :math:`||\Psi\rangle` 具有如下形式

.. math::
    ||\tilde{\Psi}_{S=0}\rangle = ||\Psi_S\rangle ||\Phi_S\rangle,

其中 :math:`||\Phi_S\rangle` 是辅助非相互作用轨道的态. 因为辅助轨道没有在能量上和物理系统耦合, 而且它们自己没有能量, 因此, 它们不影响物理系统的能量. 在我们的计算中, 单重态嵌入被实现为一个选项, 在下面描述.

V. 约化密度矩阵求值
-------------------

单体和两体密度矩阵是重要的, 不仅仅因为它们提供了能让我们解释电子结构的量, 还因为它们提供了从活性空间关联方法到动态关联处理之间的连接, 例如基于微扰论, 组态相互作用, 或正则变换的动态关联处理方法. 从 DMRG 波函数来高效计算单体和两体密度矩阵在之前的研究已有描述, 我们建议读者借助那些引用来了解其中的细节. 两体约化密度矩阵的高效求值在 "单点" 形式是最方便的 (见第 II 节) 因为它可以简单地和标准 DMRG 扫描算法结合起来. 在这个情况下, 约化密度矩阵元可以使用和求能量时使用的同样的 DMRG 算符来求值 (即表 II 中的算符) 在不同的块构型, 在收敛的 DMRG 扫描中. 例如, 为了求两体约化密度矩阵的元素 :math:`\Gamma_{ijkl}` (我们假设 :math:`i<j<k<l`) 我们使用一个具有指标 :math:`i, j \in \mathcal{L}, k \in \bullet_\mathcal{L}` 和 :math:`l \in \mathcal{R}` 的块构型. 事实上, 对于大多数两体约化密度矩阵的元素来说, 我们可以找到对应的块构型, 其中不多于两个指标出现在任何块中. (例外是, 对于多于两个指标指向同一个空间轨道的情况, 但是那些并不构成计算量的主要部分. ) 储存所需的两指标算符所需的内存的量级是 :math:`O(k^2M^2)`, 和 DMRG 扫描算法一样.

下面, 我们采用罗马字母 :math:`i, j, \cdots` 来代表空间轨道, 而希腊字母 :math:`\tau, \beta, \cdots` 表示这些轨道的自旋. 自旋轨道两体约化密度矩阵有 :math:`(2k)^4` 个矩阵元, 即, 元素是 :math:`\langle \hat{a}_{i\tau}^\dagger \hat{a}_{j\sigma}^\dagger \hat{a}_{k\gamma}\hat{a}_{l\delta}\rangle`, 其中空间轨道两体约化密度矩阵可以通过将上式中的自旋积分掉来定义, 即, 其元素是 :math:`\sum_{\tau\sigma} \langle \hat{a}_{i\tau}^\dagger \hat{a}_{j\sigma}^\dagger \hat{a}_{k\sigma}\hat{a}_{l\tau}\rangle`. [这里 :math:`\langle \cdot \rangle` 代表在收敛的 DMRG 态上求算符的期望值. ] 因为我们在自旋适配的 DMRG 中有自旋适配的波函数和算符, 因此, 可以直接计算空间轨道两体约化密度矩阵, 使用表 II 的算符, 而并不需要预先构建自旋轨道两体约化密度矩阵.

以下两式展示空间轨道两体密度矩阵元 :math:`\Gamma_{ijkl}` 和 :math:`\Gamma_{ikjl}` 是如何计算的, 其中 :math:`i<j<k<l` 并且指标是在一个 :math:`1,1,2` 的排列, 即, 第一个指标 :math:`i\in \mathcal{L}`, 第二个指标 :math:`j \in \bullet_{\mathcal{L}}`, 即 :math:`i,j \in \mathcal{A}`, 而最后两个指标 :math:`k, l \in \mathcal{B}`.

.. math::
    \sum_{\tau\sigma}\langle \hat{a}_{i\tau}^\dagger \hat{a}_{j\sigma}^\dagger 
        \hat{a}_{k\sigma}\hat{a}_{l\tau}\rangle
    =&\ -\sqrt{3} \Big\langle \hat{A}_{ij}^1[\mathcal{A}] \otimes_0 \hat{A}_{kl}^{1,\ddagger}[\mathcal{B}] \Big\rangle + \Big\langle \hat{A}_{ij}^0[\mathcal{A}] \otimes_0 \hat{A}_{kl}^{0,\ddagger}[\mathcal{B}] \Big\rangle \\
    \sum_{\tau\sigma}\langle \hat{a}_{i\tau}^\dagger \hat{a}_{k\sigma}^\dagger 
        \hat{a}_{j\sigma}\hat{a}_{l\tau}\rangle
    =&\ \sqrt{3} \Big\langle \hat{B}_{ij}^1[\mathcal{A}] \otimes_0 \hat{B}_{kl}^{1,\ddagger}[\mathcal{B}] \Big\rangle - \Big\langle \hat{B}_{ij}^0[\mathcal{A}] \otimes_0 \hat{B}_{kl}^{0,\ddagger}[\mathcal{B}] \Big\rangle.

对于排列 :math:`1,2,1`, 即 :math:`i\in \mathcal{L}, j, k \in \bullet_{\mathcal{L}}` 和 :math:`l \in \mathcal{R}`, 采用不同的公式, 例如

.. math::
    \sum_{\tau\sigma}\langle \hat{a}_{i\tau}^\dagger \hat{a}_{j\sigma}^\dagger 
        \hat{a}_{k\sigma}\hat{a}_{l\tau}\rangle = 2\Big\langle \Big( \hat{a}_i^{1/2}[\mathcal{L}] \otimes_{1/2} \hat{B}_{jk}^0 [\bullet_l] \Big) \otimes_0
        \hat{a}_l^{1/2\ddagger}[\mathcal{R}] \Big\rangle,

其他对应于不同的在块中的指标分布的 :math:`\Gamma_{ijkl}` 可以类似地生成.

在讨论自旋轨道两体约化密度矩阵之前, 我们注意到对每个空间轨道元素, 总共有 :math:`2^4 = 16` 个元素 [每个产生或湮灭算符的指标都可以取 :math:`\alpha` 或 :math:`\beta`], 但是如果波函数保持 :math:`S_z` 守恒, 只有 6 个元素是非零的. [因为密度矩阵是在波函数上求值的, 如果波函数保持 :math:`S_z` 守恒, 也就是说, 波函数是 :math:`S_z` 的本征态, 那么波函数对应于特定的一个 :math:`m` 量子数. 也就是说左矢和右矢都将具有这个量子数, 那么如果中间的算符序列的效果是更改了 :math:`m` 量子数, 那么由于不同 :math:`m` 量子数正交, 必然得到零矩阵元. 反之, 如果波函数不是 :math:`S_z` 本征态, 那么比如右矢是不同 :math:`m` 的线性组合. 这样即使密度矩阵的算符序列更改了 :math:`m`, 仍然可以在左矢中找到另一个对应于更改后的 :math:`m` 的分量来得到不为零的矩阵元. ] 这 6 个元素是 :math:`\langle \hat{a}_{i\alpha}^\dagger \hat{a}_{j\alpha}^\dagger \hat{a}_{k\alpha} \hat{a}_{l\alpha} \rangle`, :math:`\langle \hat{a}_{i\alpha}^\dagger \hat{a}_{j\beta}^\dagger \hat{a}_{k\beta} \hat{a}_{l\alpha} \rangle`, :math:`\langle \hat{a}_{i\beta}^\dagger \hat{a}_{j\alpha}^\dagger \hat{a}_{k\alpha} \hat{a}_{l\beta} \rangle`, :math:`\langle \hat{a}_{i\beta}^\dagger \hat{a}_{j\alpha}^\dagger \hat{a}_{k\beta} \hat{a}_{l\alpha} \rangle`, :math:`\langle \hat{a}_{i\alpha}^\dagger \hat{a}_{j\beta}^\dagger \hat{a}_{k\alpha} \hat{a}_{l\beta} \rangle` 和 :math:`\langle \hat{a}_{i\beta}^\dagger \hat{a}_{j\beta}^\dagger \hat{a}_{k\beta} \hat{a}_{l\beta} \rangle`. 这些自旋轨道密度矩阵元可以使用恰当的表 II 中的张量算符的组合来计算. 例如, 我们还是使用 :math:`1,1,2` 排列的指标 :math:`i,j,k,l`, 即 :math:`i, j \in \mathcal{A}, k, l \in \mathcal{B}`. 我们首先计算在下式右边的 6 个期望值. 然后, 自旋轨道约化密度矩阵的 6 个非零元可以通过求解线性方程组来得到.

.. math::
    \begin{pmatrix}
    0 & -\frac{1}{2} & -\frac{1}{2} & \frac{1}{2} & \frac{1}{2} & 0 \\
    \frac{1}{\sqrt{3}} & \frac{1}{\sqrt{12}} & \frac{1}{\sqrt{12}} &
    \frac{1}{\sqrt{12}} & \frac{1}{\sqrt{12}} & \frac{1}{\sqrt{3}} \\
    0 & -\frac{1}{2} & \frac{1}{2} & \frac{1}{2} & -\frac{1}{2} & 0 \\
    0 & -\frac{1}{2} & \frac{1}{2} & -\frac{1}{2} & \frac{1}{2} & 0 \\
    \frac{1}{\sqrt{2}} & 0 & 0 & 0 & 0 & -\frac{1}{\sqrt{2}} \\
    \frac{1}{\sqrt{6}} & -\frac{1}{\sqrt{6}} & -\frac{1}{\sqrt{6}} &
    -\frac{1}{\sqrt{6}} & -\frac{1}{\sqrt{6}} & \frac{1}{\sqrt{6}}
    \end{pmatrix}
    \begin{pmatrix}
    \langle \hat{a}_{i\alpha}^\dagger \hat{a}_{j\alpha}^\dagger \hat{a}_{k\alpha} \hat{a}_{l\alpha} \rangle \\
    \langle \hat{a}_{i\alpha}^\dagger \hat{a}_{j\beta}^\dagger \hat{a}_{k\beta} \hat{a}_{l\alpha} \rangle \\
    \langle \hat{a}_{i\beta}^\dagger \hat{a}_{j\alpha}^\dagger \hat{a}_{k\alpha} \hat{a}_{l\beta} \rangle \\
    \langle \hat{a}_{i\beta}^\dagger \hat{a}_{j\alpha}^\dagger \hat{a}_{k\beta} \hat{a}_{l\alpha} \rangle \\
    \langle \hat{a}_{i\alpha}^\dagger \hat{a}_{j\beta}^\dagger \hat{a}_{k\alpha} \hat{a}_{l\beta} \rangle \\
    \langle \hat{a}_{i\beta}^\dagger \hat{a}_{j\beta}^\dagger \hat{a}_{k\beta} \hat{a}_{l\beta} \rangle
    \end{pmatrix} =
    \begin{pmatrix}
    \Big\langle \hat{A}_{ij}^0[\mathcal{A}] \otimes_0
        \hat{A}_{lk}^{0,\ddagger}[\mathcal{B}] \Big\rangle \\
    \Big\langle \hat{A}_{ij}^1[\mathcal{A}] \otimes_0
        \hat{A}_{lk}^{1,\ddagger}[\mathcal{B}] \Big\rangle \\
    \Big\langle \hat{A}_{ij}^0[\mathcal{A}] \otimes_1
        \hat{A}_{lk}^{1,\ddagger}[\mathcal{B}] \Big\rangle \\
    \Big\langle \hat{A}_{ij}^1[\mathcal{A}] \otimes_1
        \hat{A}_{lk}^{0,\ddagger}[\mathcal{B}] \Big\rangle \\
    \Big\langle \hat{A}_{ij}^1[\mathcal{A}] \otimes_1
        \hat{A}_{lk}^{1,\ddagger}[\mathcal{B}] \Big\rangle \\
    \Big\langle \hat{A}_{ij}^1[\mathcal{A}] \otimes_2
        \hat{A}_{lk}^{1,\ddagger}[\mathcal{B}] \Big\rangle
    \end{pmatrix}

对于不同的指标排列, 采用不同的线性方程组. 注意这个过程对于单重态波函数可以简化, [注意 :math:`\otimes_S` 中的 :math:`S` 指标标记算符的 :math:`S`. 如果波函数是 :math:`S=0` 的本征态, 那么算符也只能是 :math:`S = 0` 的算符否则矩阵元为零. ] 因为方程右边最后四个表达式是零. [但是这种情况下方程的个数并没有减少. 但是似乎因为对于后四个方程系数和右边系数都已知, 可以将后面四个未知数先表示出来. ]

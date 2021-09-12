
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
        \renewcommand{\Tr}{\mathrm{Tr}}
        \newcommand{\dt}{\frac{\D}{\D t}}
        \newcommand{\E}{\mathrm{e}}
        \renewcommand{\bm}{\mathbf}

.. note::
    Helgaker, T., Jorgensen, P., & Olsen, J. (2014). *Molecular electronic-structure theory.* John Wiley & Sons.

第十四章 微扰论 (D)
===================

第四节 闭壳层体系的 Moller-Plesset 理论
---------------------------------------

在讨论了一般意义的 Moller-Plesset 理论之后,
现在我们考虑它在闭壳层电子体系的实现.
在第1小节, 我们通过进行一些和闭壳层波函数参数化相关的准备.
在第2和第3小节, 我们考虑能量计算所需的微扰振幅.
最后, 在第4小节, 我们推导闭壳层系统的 Moller-Plesset 能量修正,
并以 MO 积分和轨道能量表示.

1 闭壳层零阶体系
^^^^^^^^^^^^^^^^

和在自旋轨道基一样, 我们将闭壳层体系的哈密顿量分解为零阶福克算符, 一阶张落势和核贡献:

.. math::
    \hat{H} = \hat{f} + \hat{\Phi} + h_{nuc}

在正则轨道基组, 福克算符由下式给出

.. math::
    \hat{f} = \sum_p \epsilon_p E_{pp}

其中轨道能量是非活性福克矩阵的本征值

.. math::
    \epsilon_p = {}^I F_{pq} \delta_{pq}

对闭壳层福克算符和张落势的讨论, 参见第 10.4 节.

对闭壳层 Moller-Plesset 微扰论, 我们应该使用第 14.3 节的指数 CCPT 参数化.
为了计算直到四阶的能量, 我们必须决定单重态波函数直到二阶,
并从单重, 双重和三重算符构建单重态自旋对称性的簇算符 :math:`\hat{T}`.
我们将采用如下形式的算符

.. math::
    \hat{T}_1 =&\ \sum_{ai} t_i^a E_{ai} \\
    \hat{T}_2 =&\ \frac{1}{2} \sum_{ab,ij} t_{ij}^{ab} E_{ai} E_{bj} \\
    \hat{T}_3 =&\ \frac{1}{6} \sum_{abc,ijk} t_{ijk}^{abc} E_{ai} E_{bj} E_{ck}
    :label: pert-mppt-cs-ex

其中关于占据和虚的轨道指数的求和是自由的,
并且存在下列对称关系

.. math::
    t_{ij}^{ab} =&\ t_{ji}^{ba} \\
    t_{ijk}^{abc} =&\ t_{ikj}^{acb} = t_{jik}^{bac}
     = t_{jki}^{bca} = t_{kij}^{cab} = t_{kji}^{cba}
    :label: pert-mppt-cs-symm-perm

和自旋轨道基组不同, 不存在分别的关于占据指标或者关于虚指标的轮换对称性.
[也就是说, 这里改变了 ijk 的顺序, abc 的顺序也要响应改变. 而在自旋轨道的情况, 可以单独限制 :math:`i<j`.
即改变了 ijk 后 abc 不需要改变. 在自旋轨道的情况, 它们可以独立变化.]

当作用到 Hartree-Fock 态, :eq:`pert-mppt-cs-ex` 的激发算符产生激发 CSF 的单重态组合,
[实际上是单重态的行列式组合. 单重态本身就是 CSF. ]
我们使用下列记号

.. math::
    \left| \begin{matrix} a \\ i \end{matrix} \right\rangle
        =&\ E_{ai} |\mathrm{HF}\rangle \\
    \left| \begin{matrix} ab \\ ij \end{matrix} \right\rangle
        =&\ E_{ai} E_{bj} |\mathrm{HF}\rangle \\
    \left| \begin{matrix} abc \\ ijk \end{matrix} \right\rangle
        =&\ E_{ai} E_{bj} E_{ck} |\mathrm{HF}\rangle

[注意一次只能激发一个电子. 每个轨道的两个电子至少在二重激发才能完全激发.]

我们也会使用下面的一般记号表示激发组态的簇算符

.. math::
    \hat{T} =&\ \sum_\mu g_\mu t_\mu \hat{\tau}_\mu \\
    |\mu\rangle =&\ \hat{\tau}_\mu | \mathrm{HF} \rangle

其中, 求和遍历自旋适配的激发算符, 并且求和是无限制的, 和 :eq:`pert-mppt-cs-ex` 一致. [自由的]
简并因子 :math:`g_\mu` 包括簇算符定义中的常数, 即 :math:`1, \frac{1}{2}` 和 :math:`\frac{1}{6}`,
分别对应于单重, 双重, 和三重激发.

对于单重和双重激发, 簇算符的单重态参数化在 13.7.1 讨论.
我们将不进行一个类似的, 严格的对于三重激发  :eq:`pert-mppt-cs-ex` 的第三式的推导,
但是注意到对于三重态空间, 给定的参数化是冗余的.
因此, 对于一组三个不同的虚轨道, :math:`a, b` 和 :math:`c`,
和三个不同的占据轨道 :math:`i, j` 和 :math:`k`,
有六个振幅 [3!=6]
:math:`t_{ijk}^{abc}, t_{ikj}^{abc}, t_{jik}^{abc}, t_{jki}^{abc}, t_{kij}^{abc}`
和 :math:`t_{kji}^{abc}` 并不由轮换对称性 :eq:`pert-mppt-cs-symm-perm` 相联系.
但是, 从我们对于第 2.6 节系谱耦合方案的讨论, 我们知道通过将六个电子放置于六个轨道, 只可能产生五个独立的单重态,
见图 2.1 的分支图.

[这里假定 ijk 和 abc 互不相同, 因此产生的单重态对应的占据数只能是 111111.
这对应5个单重态组态, 分别为 +++---, ++--+-, ++-+--, +-++--, +-+-+-.]

因此, 它们不能是相互独立的, 我们对于三重态的参数化因此是冗余的.
事实上, 在练习 14.4, 可以证明如下的三重激发算符的线性组合是零:

.. math::
    E_{ai}E_{bj}E_{ck} + E_{ai}E_{bk}E_{cj} + E_{aj}E_{bi}E_{ck}
    + E_{aj}E_{bk}E_{ci} + E_{ak}E_{bi}E_{cj} + E_{ak}E_{bj}E_{ci} = 0

:eq:`pert-mppt-cs-ex` 的第二式的双重激发算符, 作为对比, 不是冗余的.
这可以通过检查分支图来验证, [对于 1111 的情况, [2!=2], 有两个耦合模式: ++--, +-+-.]
它显示可以通过将四个电子分配在四个 [空间] 轨道来产生两个单重态组态.

对这个三重态空间建立一个无冗余参数化是可能的.
但是, 产生的参数化将会更复杂, 包括激发算符的线性组合.
在实践上, 更容易采用三重态空间的冗余参数化即 :eq:`pert-mppt-cs-ex` 的第三式.
上式显示的冗余性不会干涉我们求解薛定谔方程.
我们将得到正确的微扰能量,
只要我们能够满足 CCPT 方程.
但是, 冗余性会导致, 存在很多不同 **振幅** 满足 CCPT 方程, 但是这些振幅全部导致同样的能量.

2 闭壳层变分拉格朗日量
^^^^^^^^^^^^^^^^^^^^^^

现在我们对于通过 :eq:`pert-mppt-cs-ex` 的簇算符参数化的闭壳层态, 建立 CCPT 拉格朗日量.
我们将遵循第 14.3 节的方法, 仅仅指出所需的改动.
首先, 我们推导 14.3 节中福克算符和激发算符的对易子, 但是对于单重态福克算符和单重态簇算符.
很容易得到下列关系

.. math::
    [\hat{f}, \hat{T}_1] =&\ \sum_{ai} \epsilon_i^a t_i^a E_{ai} \\
    [\hat{f}, \hat{T}_2] =&\ \frac{1}{2} \sum_{aibj} \epsilon_{ij}^{ab} t_{ij}^{ab}
        E_{ai} E_{bj} \\
    [\hat{f}, \hat{T}_3] =&\ \frac{1}{6} \sum_{aibjck} \epsilon_{ijk}^{abc} t_{ijk}^{abc}
        E_{ai} E_{bj} E_{ck}

其中, 例如

.. math::
    \epsilon_{ijk}^{abc} = \epsilon_a + \epsilon_b + \epsilon_c
        - \epsilon_i - \epsilon_j - \epsilon_k

我们可以将这些对易子写为一般形式

.. math::
    [ \hat{f}, \hat{T} ] = \sum_\mu g_\mu \epsilon_\mu t_\mu \hat{\tau}_\mu

并且对相似变换的闭壳层福克算符有

.. math::
    \hat{f}^T = \hat{f} + \sum_\mu g_\mu \epsilon_\mu t_\mu \hat{\tau}_\mu

和自旋轨道表象的 :eq:`pert-ccpt-fock-tr` 类似.

对于轨道表象必须的修改变得明显, 当我们考虑投影的耦合簇方程.
对于单重和双重激发, 我们应该还是假定
:math:`\langle \bar{\mu}_1|` 和 :math:`\langle \bar{\mu}_2|`
和 :math:`\langle \mu_1|` 和 :math:`\langle \mu_2|`
按照双正交的方式 (13.7.54) 和 (13.7.55) 联系

.. math::
    \Bigg\langle \overline{\begin{matrix} a \\ i \end{matrix}}
    \Bigg\lvert  \begin{matrix} c \\ k \end{matrix}
    \Bigg\rangle =&\ \delta_{ai,ck} \\
    \Bigg\langle \overline{\begin{matrix} ab \\ ij \end{matrix}}
    \Bigg\lvert  \begin{matrix} cd \\ kl \end{matrix}
    \Bigg\rangle =&\ P_{ij}^{ab} \delta_{aibj,ckdl}
    = P_{kl}^{cd} \delta_{aibj,ckdl}

其中

.. math::
    P_{ij}^{ab} A_{ij}^{ab} = A_{ij}^{ab} + A_{ji}^{ba}

由于三重激发算符是冗余的, 我们不能建立一个投影基组 :math:`\langle \bar{\mu}|`
和 CSF :math:`|\mu\rangle` 的线性组合双正交.
我们应该直接假定 :math:`\langle \bar{\mu}_3|`
构成一个线性无关基组, 对于线性相关的 :math:`\langle \mu_3|` 张成的空间,
但是我们将不指定它们的具体形式.


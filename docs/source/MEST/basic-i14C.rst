
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

第十四章 微扰论 (C)
===================

第三节 耦合簇微扰论
-------------------

我们已经看到, RSPT 提供了每阶微扰大小延展的能量修正.
RSPT 中的大小延展性是引人注目的,
因为能量修正是在线性参数化波函数的框架中生成的,
而这正如在 4.3.2 节讨论的, 并不能自动给出大小延展的能量.
然而, RSPT 并不令人满意, 因为大小延展性作为能量表达式中非物理项的抵消的结果而出现;
参见 14.1.4 节.
在 Moller-Plesset 理论, 我们可以通过将能量表示为对易子形式消去这些项.
这产生的对易子表达式不仅是逐阶大小延展的, 还是逐项大小延展的.

在这一节, 我们展示 MPPT 的一个替代形式,
它被设计为给出逐项大小延展的修正.
在 13.3 节, 逐项大小延展性被看作从耦合簇方程的相似变换表象中出现.
在同样的表象中发展微扰论, 我们会发现, 某些在 MPPT 费力得到的结果,
例如, 逐项大小延展性和四重项在二阶的贡献的分解, 现在可以轻松得到.

1 CCPT 的相似变换的指数拟设
^^^^^^^^^^^^^^^^^^^^^^^^^^^

在我们到目前为止对微扰论的讨论中, 我们假设了波函数的线性参数化.
现在我们采取不同的方法, 对于微扰波函数采用指数拟设

.. math::
    |0\rangle = \exp(\hat{T}) |\mathrm{HF}\rangle
    :label: pert-ccpt-ansatz

其中 :math:`\hat{T}` 是在自旋轨道表象的簇算符; 参见 13.2 节.
因此, 我们采用通常的记号

.. math::
    \hat{T} = \sum_{\mu} t_\mu \hat{\tau}_\mu

其中 :math:`t_\mu` 是 (实的) 簇振幅, 而 :math:`\hat{\tau}_\mu`
是关于 Hartree-Fock 态的激发算符:

.. math::
    |\mu\rangle = \hat{\tau}_\mu |\mathrm{HF}\rangle

激发算符, 在 14.2.1 引入, 和它们自己对易, 但是不和它们的厄米共轭对易.
在自旋轨道基组, 从上式的激发算符产生的行列式是正交归一的.

正如在 13.2.3 节讨论的, 完整 (未截断的) 耦合簇能量可以从如下表达式计算

.. math::
    E = \langle \mathrm{HF} | \exp(-\hat{T})\hat{H}\exp(\hat{T})
        \mathrm{HF}\rangle
    :label: pert-ccpt-ener

其中振幅满足投影薛定谔方程

.. math::
    \langle \mu | \exp(-\hat{T}) \hat{H} \exp(\hat{T}) |\mathrm{HF}\rangle = 0
    :label: pert-ccpt-sch

指定了未微扰系统以后, 波函数的表达式 :eq:`pert-ccpt-ansatz`, 电子能量表达式 :eq:`pert-ccpt-ener`
和薛定谔方程 :eq:`pert-ccpt-sch` 组成了这一节对于微扰论的起始点.
正如第 14.2.1 节的 MPPT, 我们将哈密顿量分为零阶福克算符 :math:`\hat{f}`, 一阶张落势 :math:`\hat{\Phi}`
和核-核推斥:

.. math::
    \hat{H} = \hat{f} + \hat{\Phi} + h_{nuc}

零阶波函数是 Hartree-Fock 态和激发行列式 :math:`|\mu\rangle`.
在 **耦合簇微扰论** (CCPT), 我们将完整耦合簇波函数 :eq:`pert-ccpt-ansatz`,
耦合簇电子能量 :eq:`pert-ccpt-ener` 和相似变换的薛定谔方程 :eq:`pert-ccpt-sch`
展开为张落势的阶, 并以这种方式, 产生和 MPPT 等价,
但是从理论和实践的角度看更加方便, 的表达式.

在我们研究 CCPT 展开的任何细节之前,
将电子能量和薛定谔方程按照福克算符和张落势重写是方便的.
从福克算符和激发算符的对易子
:math:`[\hat{f}, \hat{\tau}_\mu]=\epsilon_\mu \hat{\tau}_\mu`,
我们得到下面的福克和簇算符之间的对易子

.. math::
    [\hat{f}, \hat{T}] =&\ \sum_\mu \epsilon_\mu t_\mu \hat{\tau}_\mu \\
    [[\hat{f}, \hat{T}], \hat{T}] =&\ [[[\hat{f}, \hat{T}], \hat{T}], \hat{T}] = \cdots = 0

[注意更高阶的对易子为零, 是因为 :math:`\hat{\tau}_\mu` 对于任何 :math:`\mu` 相互对易.]

利用这些关系, 我们可以将相似变换后的福克算符写为如下形式

.. math::
    \hat{f}^T = \hat{f} + \sum_\mu \epsilon_\mu t_\mu \hat{\tau}_\mu
    :label: pert-ccpt-fock-tr

[注意上式是利用 :eq:`matrix-exp-formula`]

采用第 13.2.3 节定义的记号

.. math::
    \hat{A}^T = \exp (-\hat{T}) \hat{A} \exp(\hat{T})

注意相似变换的算符不是厄米的.

:eq:`pert-ccpt-fock-tr` 式给出包括相似变换的福克算符的矩阵元的下列简单表达式:

.. math::
    \langle \mathrm{HF} |\hat{f}^T | \mathrm{HF} \rangle
    =&\ \sum_I \epsilon_I = E_0 \\
    \langle \mu | \hat{f}^T | \mathrm{HF} \rangle =&\ \epsilon_\mu t_\mu
    :label: pert-ccpt-ener-t

[其中分别用到 :math:`\hat{f}^T` 展开式的第一和第二项.]

耦合簇能量和相似变换的耦合簇方程现在可以写为

.. math::
    E =&\ E_0 + \langle \mathrm{HF} |\hat{\Phi}^T |\mathrm{HF}\rangle + h_{nuc} \\
    \epsilon_\mu t_\mu =&\ -\langle \mu | \hat{\Phi}^T | \mathrm{HF}\rangle
    :label: pert-ccpt-sch-t

这些方程, 将能量和振幅表示为相似变换后的涨落势, 将在我们 CCPT 的讨论中被大量用到.

2 CCPT 振幅方程
^^^^^^^^^^^^^^^

CCPT 波函数和能量是以簇算符 :math:`\hat{T}` 参数化的.
因此, 在考虑展开波函数和能量之前,
我们必须决定簇算符按张落势的阶的展开

.. math::
    \hat{T} = \hat{T}^{(0)} + \hat{T}^{(1)} + \hat{T}^{(2)} + \cdots

以及对应的簇振幅的展开

.. math::
    t_\mu = t_\mu^{(0)} + t_\mu^{(1)} + t_\mu^{(2)} + \cdots

将这些振幅带入到薛定谔方程 :eq:`pert-ccpt-sch-t`,
我们得到振幅方程

.. math::
    \epsilon_\mu t_\mu^{(n)} = -\langle \mu | [\hat{\Phi}^T]^{(n)}|\mathrm{HF}\rangle

其中 :math:`[\hat{\Phi}^T]^{(n)}` 包括相似变换后的张落势的 n 阶部分.
零阶振幅为零, 因为张落势不包含零阶的项

.. math::
    t_\mu^{(0)} = 0

直到三阶微扰, 微扰方程变为

.. math::
    \epsilon_\mu t_\mu^{(1)} =&\ -\langle \mu | \hat{\Phi} |\mathrm{HF}\rangle \\
    \epsilon_\mu t_\mu^{(2)} =&\ -\langle \mu | [\hat{\Phi},\hat{T}^{(1)}] |\mathrm{HF}\rangle \\
    \epsilon_\mu t_\mu^{(3)} =&\ -\langle \mu | [\hat{\Phi},\hat{T}^{(2)}] |\mathrm{HF}\rangle
        - \frac{1}{2} \langle \mu | [[\hat{\Phi},\hat{T}^{(1)}], \hat{T}^{(1)}] |\mathrm{HF}\rangle
    
[还是利用 :eq:`matrix-exp-formula` 展开 exp.]

这些方程可以逐个求解, 产生振幅和簇算符的越来越高阶的修正.
[注意第二式需要 :math:`\hat{T}^{(1)}`, 因此需要先解出第一式得到振幅 :math:`t_\mu^{(1)}`.
因此, 需要逐个按顺序求解.]

这里, 对激发级别和微扰阶之间的关系进行一些评论是合适的.
按照上面的第一式, 直到张落势的一阶,
只有二重激发有贡献 - 单重激发无贡献, 因为 Brillouin 定理,
并且更高阶激发不能和 Hartree-Fock 态通过双电子算符 [即张落势] 耦合.
对于双重项的进一步修正由更高阶方程产生.

在二阶方程, 即上面的第二式, 单重项和三重项才出现, 并且这些贡献通过振幅的高阶修正修改.
四重项没有进入二阶, 由于 :math:`\hat{\Phi}` 和 :math:`\hat{T}^{(1)}` 的对易子是三电子算符,
参见 13.2.8 节对于激发秩和对易子的讨论. 一般地, n 阶激发第一次进入到 n - 1 阶,
由于在 n - 1 阶的方程的对易子的粒子秩最多是 n.
唯一的例外是对于单重项, 由于 Brillouin 定理, 进入二阶方程.
这些结果总结为表 14.2.

**表14.2** CCPT 对簇算符的非零微扰修正

+-----------------+-+-----------------------+-----------------------+-----------------------+
|                 |0|                      1|                      2|                      3|
+=================+=+=======================+=======================+=======================+
|:math:`\hat{T}_1`|0|           0 [#refta]_ |:math:`\hat{T}_1^{(2)}`|:math:`\hat{T}_1^{(3)}`|
+-----------------+-+-----------------------+-----------------------+-----------------------+
|:math:`\hat{T}_2`|0|:math:`\hat{T}_2^{(1)}`|:math:`\hat{T}_2^{(2)}`|:math:`\hat{T}_2^{(3)}`|
+-----------------+-+-----------------------+-----------------------+-----------------------+
|:math:`\hat{T}_3`|0|                      0|:math:`\hat{T}_3^{(2)}`|:math:`\hat{T}_3^{(3)}`|
+-----------------+-+-----------------------+-----------------------+-----------------------+
|:math:`\hat{T}_4`|0|                      0|                      0|:math:`\hat{T}_4^{(3)}`|
+-----------------+-+-----------------------+-----------------------+-----------------------+

.. [#refta] 由于 Brillouin 定理, 没有一阶贡献.

3 CCPT 波函数
^^^^^^^^^^^^^

将耦合簇波函数按照微扰的阶展开, 我们得到

.. math::
    |0\rangle = |0^{(0)}\rangle + |0^{(1)}\rangle + |0^{(2)}\rangle + \cdots

按照上一小节讨论的微扰簇振幅的知识, 我们可以根据如下的表达式计算上式的波函数到任意阶

.. math::
    |0^{(n)}\rangle = [\exp(\hat{T})]^{(n)} |\mathrm{HF}\rangle

将上式中 :math:`\hat{T}` 的指数按照不通阶展开, 并收集相同张落势阶的项, 我们得到下列微扰波函数的表达式

.. math::
    |0^{(0)} \rangle =&\ |\mathrm{HF}\rangle \\
    |0^{(1)} \rangle =&\ \hat{T}^{(1)} |\mathrm{HF}\rangle \\
    |0^{(2)} \rangle =&\ \Big( \hat{T}^{(2)} +
        \frac{1}{2} \hat{T}^{(1)} \hat{T}^{(1)} \Big) |\mathrm{HF}\rangle \\
    |0^{(3)} \rangle =&\ \Big( \hat{T}^{(3)} +
        \hat{T}^{(2)} \hat{T}^{(1)} +
        \frac{1}{6} \hat{T}^{(1)} \hat{T}^{(1)} \hat{T}^{(1)} \Big)
        |\mathrm{HF}\rangle

为了得到这些表达式, 我们利用了 :math:`t_\mu^{(0)} = 0`, 即 :math:`\hat{T}^{(0)}` 为零,
以及簇算符互相对易 [:math:`\hat{T}` 和自己对易, 因为任何行列式不能用 :math:`\hat{\tau}_\mu` 作用两次,
不论两次的 :math:`\mu \neq 0` 是否相同].

[推导如下]

.. math::
    \exp(\hat{T}) =&\ 1 + \hat{T} + \frac{1}{2} \hat{T}^2 + \frac{1}{6} \hat{T}^3
    + \cdots \\
    =&\ 1 + \hat{T}^{(1)}
    + \big[ \frac{1}{2} \hat{T}^{(1)} \hat{T}^{(1)} + \hat{T}^{(2)} \big] \\
    &\ + \big[ \frac{1}{6} \hat{T}^{(1)} \hat{T}^{(1)} \hat{T}^{(1)}
    + \frac{1}{2} \cdot 2 \hat{T}^{(1)} \hat{T}^{(2)}
    + \hat{T}^{(3)} \big] + \cdots

按照 表 14.2 展开为激发级别的项, 得

.. math::
    |0^{(1)} \rangle =&\ \hat{T}_2^{(1)} |\mathrm{HF}\rangle \\
    |0^{(2)} \rangle =&\ \Big( \hat{T}_1^{(2)} + \hat{T}_2^{(2)} + \hat{T}_3^{(2)} +
        \frac{1}{2} \hat{T}_2^{(1)} \hat{T}_2^{(1)} \Big) |\mathrm{HF}\rangle \\
    |0^{(3)} \rangle =&\ \Big( \hat{T}_1^{(3)} +
        \hat{T}_2^{(3)} + \hat{T}_3^{(3)} + \hat{T}_4^{(3)} \\
    &\ + \hat{T}_1^{(2)} \hat{T}_2^{(1)}
    + \hat{T}_2^{(2)} \hat{T}_2^{(1)}
    + \hat{T}_3^{(2)} \hat{T}_2^{(1)}
     +   \frac{1}{6} \hat{T}_2^{(1)} \hat{T}_2^{(1)} \hat{T}_2^{(1)} \Big)
        |\mathrm{HF}\rangle \\
    =&\ \hat{T}_1^{(3)} |\mathrm{HF}\rangle
        + \hat{T}_2^{(3)} |\mathrm{HF}\rangle
        + \Big( \hat{T}_3^{(3)} + \hat{T}_1^{(2)} \hat{T}_2^{(1)} \Big) |\mathrm{HF}\rangle \\
    &\ + \Big( \hat{T}_4^{(3)} + \hat{T}_2^{(2)} \hat{T}_2^{(1)} \Big) |\mathrm{HF}\rangle
        + \hat{T}_3^{(2)} \hat{T}_2^{(1)} |\mathrm{HF}\rangle
        + \frac{1}{6} \hat{T}_2^{(1)} \hat{T}_2^{(1)} \hat{T}_2^{(1)} |\mathrm{HF}\rangle
    :label: pert-ccpt-wfn-123

和 MP1 表达式 :eq:`pert-mp1-wfn` 一致, 一阶波函数, 即上式第一式,
只包含联通双重项. 上式第二式, 即二阶波函数, 出现了来自非联通四重项和联通单重项, 双重项, 和三重项的贡献.
这和 MP2 表达式 :eq:`pert-mp2-wfn` 一致.
但是, MPPT 表达式是通过大量代数处理得到的, 上式第二式是从 CCPT 的一般表达式以很简单的方法得到.
对于高阶, 例如上式第三式, 大量非联通簇振幅出现在波函数修正.

4 CCPT 能量
^^^^^^^^^^^

现在我们考虑耦合簇能量修正的求值:

.. math::
    E = E^{(0)} + E^{(1)} + E^{(2)} + \cdots

根据第 14.1.1 节的讨论, 我们可以从下面的方程计算这些能量

.. math::
    E^{(n)} = \langle 0^{(0)} | \hat{\Phi} | 0^{(n-1)} \rangle

通过将微扰波函数的表达式带入. 看起来, 计算给定阶的能量会是一个相当复杂的事情,
因为需要组合大量非联通的振幅贡献, 例如参考 :eq:`pert-ccpt-wfn-123` 的最后一式.
但是, 当考虑粒子秩, 大量项都为零.

这里我们不从上面给出的一般的 RSPT 表达式计算能量,
而是采用从耦合簇能量得到等价形式 :eq:`pert-ccpt-ener-t` (参考这小节最后的讨论), 将能量修正写为

.. math::
    E^{(n)} = \langle \mathrm{HF} | [\hat{\Phi}^T ]^{(n)} | \mathrm{HF} \rangle,
    \quad n > 0

现在我们展开相似变换后的张落势, 按照 (13.2.37) 的 BCH 级数.
从粒子秩的考虑 (参见 13.2.8 节的讨论), 只有单重和双重对易子对微扰能量由贡献, 可以写为如下形式

.. math::
    E^{(n)} = \langle \mathrm{HF} | \hat{\Phi}^{(n)} | \mathrm{HF} \rangle
    + \langle \mathrm{HF} | [\hat{\Phi},\hat{T}_2]^{(n)} | \mathrm{HF} \rangle
    + \frac{1}{2} \langle \mathrm{HF} |
        [[\hat{\Phi},\hat{T}_1],\hat{T}_1]^{(n)} | \mathrm{HF} \rangle,
    \quad n > 0
    :label: pert-ccpt-ener-n

其中 :math:`\hat{\Phi}^{(n)}` 除了一阶以外, 都为零,
[这个记号等价于 :math:`\hat{\Phi}`, 只是为了方便, 将其表示为有多阶的量, 因此它只有一阶不为零.]
并且只有单重和双重振幅对能量有贡献.
在推导上式的过程中, 我们也使用了 Brillouin 定理.

和 n + 1 规则一致 (即 n 阶波函数决定直到 n + 1 阶的能量), 直到四阶的 CCPT 能量为

.. math::
    E^{(0)} =&\ E_0 \\
    E^{(1)} =&\ \langle \mathrm{HF} | \hat{\Phi} | \mathrm{HF} \rangle \\
    E^{(2)} =&\ \langle \mathrm{HF} | [\hat{\Phi}, \hat{T}_2^{(1)}] | \mathrm{HF} \rangle \\
    E^{(3)} =&\ \langle \mathrm{HF} | [\hat{\Phi}, \hat{T}_2^{(2)}] | \mathrm{HF} \rangle \\
    E^{(4)} =&\ \langle \mathrm{HF} | [\hat{\Phi}, \hat{T}_2^{(3)}] | \mathrm{HF} \rangle
    :label: pert-ccpt-ener-4

[注意, 由于最后非联通项只有至少需要 :math:`\hat{T}_1^{(2)}`, 即至少为 1+2+2 = 5 阶.]
其中我们采用了 :math:`\hat{T}_1^{(1)} = 0` 来化简表达式.
直到四阶微扰, 在能量中没有非联通项.
事实上, 当能量通过 n + 1 规则计算, 第一个非联通贡献出现在五阶微扰:

.. math::
    E^{(5)} = \langle \mathrm{HF} | [\hat{\Phi}, \hat{T}_2^{(4)}] | \mathrm{HF} \rangle
    + \frac{1}{2} \langle \mathrm{HF} | [[\hat{\Phi}, \hat{T}_1^{(2)}], \hat{T}_1^{(2)}]
        | \mathrm{HF} \rangle

在这个意义上, CCPT 能量的计算比 CCPT 波函数的计算更简单.
对于第 13.2.4 节的耦合簇理论, 只有单重和双重振幅直接对能量有贡献.
但是, 尽管三重和更高级振幅不直接贡献, 它们还是会产生间接贡献; 见第2小节.
在第8小节我们将看到, 在遵守 2n+1 规则而不是 n+1 规则的 CCPT 能量表达式中,
非联通波函数贡献会在低阶出现.

在这一小节推导的 CCPT 能量都按照对易子表达.
为了澄清和 RSPT 表达式 :math:`E^{(n)} = \langle 0^{(0)} | \hat{\Phi} | 0^{(n-1)} \rangle`
的关系, 我们可以将 :eq:`pert-ccpt-ener-n` 中的对易子展开,
仅保留所有簇算符出现在 :math:`\hat{\Phi}` 右边的项.
这些项可以舍去, 因为 :math:`\langle \mathrm{HF}|\hat{T}^{(k)}` 对所有 :math:`k` 都为零.
最终的表达式和对应的 RSPT 表达式在所有阶都一样,
这是期望的, 因为在计算微扰能量的情况, 两种方法具有基本的等价性.

5 CCPT 中的大小延展性
^^^^^^^^^^^^^^^^^^^^^

下面对于 CCPT 的大小延展性的讨论承接 13.3 节的对于联通耦合簇理论的讨论.
因此, 尽管波函数的指数拟设导致能量的逐阶大小延展性,
逐项大小延展性通过采用相似变换的哈密顿量来实现,
假定零阶福克算符和一阶张落势都可以分解为对应各无相互作用系统的部分.

现在我们考虑 CCPT 表达式的大小延展性的更多细节.
在第2小节和第4小节, 我们发现 CCPT 簇振幅和能量, 在每阶,
可以表示为涨落算符和簇算符的对易子.
对于无相互作用系统, 簇算符可分解.
这可以通过归纳法来说明.
假定簇算符直到 n 阶都可分, 并采用对易子的可分性

.. math::
    [\hat{\Phi}_{AB}, \hat{T}_{AB}^{(n)} ]
    = [\hat{\Phi}_{A} + \hat{\Phi}_{B}, \hat{T}_{A}^{(n)} + \hat{T}_{B}^{(n)} ]
    = [ \hat{\Phi}_{A}, \hat{T}_{A}^{(n)} ] + [ \hat{\Phi}_{B}, \hat{T}_{B}^{(n)} ]

来证明, 簇算符直到 n + 1 阶都可分.
从这些观察, 我们得到结论, 即包含两个无相互作用系统的 CCPT 表达式,
不含和两个系统都相关的项, 因此给出的能量修正是逐项大小延展的.

让我们接着考虑两个无相互作用系统地 CCPT 波函数.
由于簇算符 :math:`\hat{T}_{AB}` 对于这样的系统, 是可分的, 我们可以将指数算符写为

.. math::
    [\exp(\hat{T}_{AB})]^{(n)}
        = [\exp(\hat{T}_{A})\exp(\hat{T}_{B})]^{(n)}
    = \sum_{k=0}^n [\exp(\hat{T}_{A})]^{(n-k)}[\exp(\hat{T}_{B})]^{(k)}

因此, n 阶 CCPT 波函数约化为直到两个子系统总和 n 阶的所有可能的乘积态的线性组合

.. math::
    |0_{AB}^{(n)}\rangle = \sum_{k=0}^n |0_A^{(n-k)} 0_B^{(k)}\rangle

正如对无相互作用系统的大小延展处理 :eq:`pert-size-wfn-n` 所预期的那样.

6 CCPT 拉格朗日量
^^^^^^^^^^^^^^^^^

在我们到目前为止对 CCPT 的讨论中,
我们还没有得到满足 Wigner 2n+1 规则的表达式.
在第 4 小节展示的能量修正满足 n+1 规则, 而不是 2n + 1 规则,
由于需要 n 阶的波函数来计算 n+1 阶的能量.
为了推导满足 2n+1 规则的能量表达式, 并同时保留 CCPT 的逐项大小延展性,
我们和 14.1.2 节一样, 为 CCPT 能量建立一个变分拉格朗日量.

CCPT 能量通过能量表达式 :eq:`pert-ccpt-sch-t` 第一式计算, 并具有第二式的约束.
对于每个约束引入拉格朗日未定乘子 :math:`\bar{t}_\mu` (即对每个振幅 :math:`t_\mu` 有一个乘子),
我们得到 CCPT 拉格朗日量

.. math::
    L(\bm{t}, \bar{\bm{t}}) = E_0 + \sum_\mu \epsilon_0 t_\mu \bar{t}_\mu
    + \langle \mathrm{HF} | \hat{\Phi}^T | \mathrm{HF} \rangle
    + \langle \bar{t} | \hat{\Phi}^T | \mathrm{HF} \rangle
    :label: pert-ccpt-lag

其中

.. math::
    \langle \bar{t} | = \sum_\mu \bar{t}_\mu \langle \mu |

CCPT 拉格朗日量的变分条件由下式给出

.. math::
    L_\mu =&\ \frac{\partial L}{\partial \bar{t}_\mu} = 0 \\
    \bar{L}_\mu =&\ \frac{\partial L}{\partial t_\mu} = 0
    :label: pert-ccpt-var-cond

对所有微扰强度都成立. 注意到

.. math::
    \frac{\partial \hat{\Phi}^T}{\partial t_\mu} = [\hat{\Phi}^T, \hat{\tau}_\mu]

我们得到微分的拉格朗日量的下列表达式

.. math::
    L_\mu =&\ \epsilon_\mu t_\mu + \langle \mu | \hat{\Phi}^T | \mathrm{HF} \rangle \\
    \bar{L}_\mu =&\ \epsilon_\mu \bar{t}_\mu +
        \langle  \mathrm{HF} | \hat{\Phi}^T | \mu \rangle
        + \langle \bar{t} | [\hat{\Phi}^T, \hat{\tau}_\mu ] | \mathrm{HF} \rangle
    :label: pert-ccpt-lag-diff

[注意 :math:`\hat{\Phi}^T` 和乘子无关, 偏导数为零. 以及]

.. math::
     \frac{\partial}{\partial \bar{t}_\mu}
        \langle \bar{t} | \hat{\Phi}^T | \mathrm{HF} \rangle
        =&\ \frac{\partial}{\partial \bar{t}_\mu} \sum_\mu \bar{t}_\mu \langle \mu| \hat{\Phi}^T | \mathrm{HF} \rangle
        = \langle \mu | \hat{\Phi}^T | \mathrm{HF} \rangle \\
    \frac{\partial}{\partial t_\mu} \langle \mathrm{HF} | \hat{\Phi}^T | \mathrm{HF} \rangle
        =&\ \langle \mathrm{HF} | [\hat{\Phi}^T, \hat{\tau}_\mu] | \mathrm{HF} \rangle
        = \langle  \mathrm{HF} | \hat{\Phi}^T | \mu \rangle

其中第一个变分条件和原始的振幅方程 :eq:`pert-ccpt-sch-t` 第二式完全一样,
而第二个变分条件决定了拉格朗日乘子. 注意,
由于 :math:`\hat{\Phi}^T` 并不是厄米的, 上式第二式的第二项不同于上式第一式的第二项, 即使是对实自旋轨道.

为了得到 CCPT 能量, 我们现在将拉格朗日量展开为微扰级数

.. math::
    L = L^{(0)} + L^{(1)} + L^{(2)} + \cdots

接着, 我们决定微扰振幅和乘子, 通过展开变分条件

.. math::
    L_\mu =&\ L_\mu^{(0)} + L_\mu^{(1)} + L_\mu^{(2)} + \cdots \\
    \bar{L}_\mu =&\ \bar{L}_\mu^{(0)} + \bar{L}_\mu^{(1)} + \bar{L}_\mu^{(2)} + \cdots

并分别在每一阶求解

.. math::
    L_\mu^{(0)} = L_\mu^{(1)} = L_\mu^{(2)} = \cdots =&\ 0 \\
    \bar{L}_\mu^{(0)} = \bar{L}_\mu^{(1)} = \bar{L}_\mu^{(2)} = \cdots =&\ 0

这些振幅方程的解 (在下一小节求解) 给出微扰振幅和乘子

.. math::
    t_\mu =&\ t_\mu^{(0)} + t_\mu^{(1)} + t_\mu^{(2)} + \cdots \\
    \bar{t}_\mu =&\ \bar{t}_\mu^{(0)} + \bar{t}_\mu^{(1)} + \bar{t}_\mu^{(2)} + \cdots

在一个给定的阶 :math:`n`, 能量通过将微扰振幅和乘子插入到 :math:`n` 阶拉格朗日的表达式得到.
通过优化振幅和乘子计算得到的能量 :math:`E^{(n)}` 和拉格朗日量 :math:`L^{(n)}`
是完全一致的, 因为对于优化的振幅和乘子, 约束是满足的.

为了化简能量的拉格朗日量表达式,
我们应该 (在第8小节) 利用微扰拉格朗日量的变分性质, 来得到满足 2n +1 规则的表达式:
偶数阶拉格朗日量 :math:`L^{(2n)}` 和奇数阶拉格朗日量 :math:`L^{(2n+1)}`
对所有大于 n 阶的参数都是线性的;
所有包含这些参数的项因此可以舍弃, 因为变分条件.
对于偶数阶拉格朗日量, 额外的化简是可能的, 因为从和 2n+1 规则一致的 :math:`L^{(2n)}`
中移除振幅和乘子并不影响包含 :math:`n` 阶的参数的项.
因此拉格朗日量还是关于这些参数变分的.
由于乘子 :math:`\bar{\bm{t}}^{(n)}` 线性地在拉格朗日量出现,
我们可以从 :math:`L^{(2n)}` 消去所有包括 :math:`\bar{\bm{t}}^{(n)}` 的项,
和对于乘子的 2n+2 规则一致.
作为对比, 对参数 :math:`\bm{t}^{(n)}`, 这样的化简是不可能的, 因为 :math:`\bm{t}^{(n)}`
以二次出现在拉格朗日量. 第 14.1.2 节给出 2n+1 和 2n+2 规则更细节的讨论.

7 CCPT 变分方程
^^^^^^^^^^^^^^^

计算 CCPT 能量所需的振幅和乘子, 直到张落势的五阶,
可以通过求解 :eq:`pert-ccpt-var-cond` 直到二阶来得到. 对一阶微扰, 我们有 [参见 :eq:`pert-ccpt-lag-diff`]

.. math::
    \epsilon_\mu t_\mu^{(0)} =&\ 0 \\
    \epsilon_\mu \bar{t}_\mu^{(0)} =&\ 0 \\
    \epsilon_\mu t_\mu^{(1)} =&\ -\langle \mu |\hat{\Phi}|\mathrm{HF}\rangle \\
    \epsilon_\mu \bar{t}_\mu^{(1)} =&\
        -\langle \mathrm{HF} |\hat{\Phi}| \mu \rangle
    :label: pert-ccpt-mag-1

[这里首先注意到 :eq:`pert-ccpt-lag-diff` 各项都包含一阶项, 因此零阶振幅为零.
基于零阶振幅为零, :math:`\langle \bar{t}|` 就至少是一阶, 乘以张落势至少是二阶,
因此对易子项不会出现在一阶振幅.]

[另注意上式没有暗示求和, 这本书从来不使用隐式求和. 因此对于每个 :math:`\mu` 都有一个等式.]

假定实自旋轨道 [这里的表达式已经没有相似变换, 因此没有非厄米性的问题],
振幅和乘子在零阶和一阶都完全相等:

.. math::
    t_\mu^{(0)} =&\ \bar{t}_\mu^{(0)} = 0 \\
    \bar{t}_\mu^{(1)} =&\ t_\mu^{(1)}

正如上式第一式显示的, 零阶参数为零.
从 Brillouin 条件, 我们得到结论, 一阶振幅和乘子只包含双重激发.
从一阶振幅和乘子, 我们可以计算直到张落势三阶的能量.

为了计算四阶和五阶能量, 我们还需要二阶振幅和乘子.
在变分条件收集二阶项, 我们得到

.. math::
    \epsilon_\mu t_\mu^{(2)} =&\ -\langle \mu |
        [ \hat{\Phi}, \hat{T}^{(1)}] |\mathrm{HF}\rangle \\
    \epsilon_\mu \bar{t}_\mu^{(2)} =&\
        -\langle \mathrm{HF} |
        [ \hat{\Phi}, \hat{T}^{(1)}] | \mu \rangle
        - \langle \bar{t}^{(1)} |
        [ \hat{\Phi}, \hat{\tau}_\mu ] | \mathrm{HF}\rangle

由于 :math:`[\hat{\Phi}, \hat{T}^{(1)}]` 是粒子秩为3的算符,
上式第一式右边对于 [:math:`\mu`] 高于三重激发是零.
因此, 二阶振幅只包含单重, 双重, 和三重项, 和 MPPT 不同 :eq:`pert-mp2-wfn-pre`,
二阶四重振幅在 CCPT 是零.

关于上式第二式的微扰乘子, 我们注意到右边第一项对于所有激发都为零.

[这里, 首先 :math:`\langle \mathrm{HF} | \hat{T}^{(1)}` 为零,
因为从右边作用于左矢必须是厄米共轭的 :math:`\hat{T}^{(1)}` 算符.
然后考虑对易子的另一项, 这里要利用前面的结论, 即 "一阶振幅和乘子只包含双重激发".
因此, :math:`\hat{T}^{(1)} |\mu\rangle` 实际是 :math:`\hat{T}_2^{(1)} |\mu\rangle`.
必然造成二重以上激发, 而这个激发无法通过 :math:`\hat{\Phi}` 还原为 HF. 因此这一项为零.]

对于实自旋轨道, 乘子方程因此可以写为如下形式

.. math::
    \epsilon_\mu \bar{t}_\mu^{(2)} =
        -\langle \mathrm{HF} | [[ \hat{\tau}_\mu^\dagger, \hat{\Phi}], \hat{T}^{(1)} ]
            |\mathrm{HF}\rangle

[这里首先利用前面关于一阶的结论, 得]

.. math::
    \langle \bar{t}^{(1)} | = \langle t^{(1)} |
    = \langle \mathrm{HF} | \hat{T}^{(1)\dagger}

[取厄米共轭得]

.. math::
    \langle \mathrm{HF} | \hat{T}^{(1)\dagger} [ \hat{\Phi}, \hat{\tau}_\mu ] | \mathrm{HF}\rangle
    = \langle \mathrm{HF} | [ \hat{\tau}^\dagger_\mu, \hat{\Phi} ] \hat{T}^{(1)} | \mathrm{HF}\rangle
    = \langle \mathrm{HF} | [[ \hat{\tau}^\dagger_\mu, \hat{\Phi} ], \hat{T}^{(1)}] | \mathrm{HF}\rangle

利用雅克比恒等式 (1.8.17), 这个表达式还可以进一步整理, 和二阶振幅的表达式合并得

.. math::
    \epsilon_\mu \bar{t}_\mu^{(2)} =&\ \epsilon_\mu t_\mu^{(2)}
        -\langle \mathrm{HF} | [\hat{\Phi}, [ \hat{T}^{(1)}, \hat{\tau}_\mu^\dagger ]]
            |\mathrm{HF}\rangle \\
    =&\ \epsilon_\mu t_\mu^{(2)}
         + \langle \mathrm{HF} | \hat{\Phi} \hat{\tau}^\dagger_\mu \hat{T}^{(1)}
            -  \hat{\tau}^\dagger_\mu \hat{T}^{(1)} \hat{\Phi}
            |\mathrm{HF}\rangle

[最后一个等式对易子展开有四项. 先展开外层. 然后 :math:`\hat{\Phi}` 在左边时,
只能是 :math:`\hat{T}^{(1)}` 在右边.
:math:`\hat{\Phi}` 在右边时, 只能是 :math:`\hat{\tau}^\dagger_\mu` 在左边. ]

[然后看第一个等号如何推导. 雅克比恒等式为]

.. math::
    [\hat{A}, [\hat{B}, \hat{C}]] +
    [\hat{C}, [\hat{A}, \hat{B}]] +
    [\hat{B}, [\hat{C}, \hat{A}]] = 0

[二阶振幅表达式可以改写为]

.. math::
    \epsilon_\mu t_\mu^{(2)} = -\langle \mu |
        [ \hat{\Phi}, \hat{T}^{(1)}] |\mathrm{HF}\rangle
    = -\langle \mathrm{HF} | [\hat{\tau}_\mu^\dagger, 
        [ \hat{\Phi}, \hat{T}^{(1)}]] |\mathrm{HF}\rangle

[即]

.. math::
    \hat{A} = \hat{\tau}_\mu^\dagger, \quad
    \hat{B} = \hat{\Phi},\quad
    \hat{C} = \hat{T}^{(1)}

[因此]

.. math::
    \epsilon_\mu t_\mu^{(2)}
        -\langle \mathrm{HF} | [\hat{\Phi}, [ \hat{T}^{(1)}, \hat{\tau}_\mu^\dagger ]]
            |\mathrm{HF}\rangle
    =&\ -\langle \mathrm{HF} | [\hat{\tau}_\mu^\dagger, 
        [ \hat{\Phi}, \hat{T}^{(1)}]] |\mathrm{HF}\rangle
     -\langle \mathrm{HF} | [\hat{\Phi}, [ \hat{T}^{(1)}, \hat{\tau}_\mu^\dagger ]]
            |\mathrm{HF}\rangle \\
    =&\ \langle \mathrm{HF} | [\hat{T}^{(1)}, 
        [ \hat{\tau}_\mu^\dagger, \hat{\Phi}]] |\mathrm{HF}\rangle

[推导完毕.]

由于 Brillouin 定理, 最后一项为零, 除非 :math:`\mu` 对应于四重激发.

[这里注意 :math:`\hat{\Phi}` 最多只能造成二重激发, 而由于 Brillouin 定理, 不可能造成单重激发.
首先假定 :math:`\hat{\Phi}` 不造成激发, 即 :math:`\hat{\Phi}` 作用还得到 HF. 则等价于]

.. math::
    \langle \mathrm{HF} | \hat{\Phi} | \mathrm{HF} \rangle \langle \mathrm{HF} | \hat{\tau}^\dagger_\mu \hat{T}^{(1)} |\mathrm{HF}\rangle
            -  \langle \mathrm{HF} | \hat{\tau}^\dagger_\mu \hat{T}^{(1)} | \mathrm{HF} \rangle \langle \mathrm{HF} | \hat{\Phi}
            |\mathrm{HF}\rangle

[可见对易子两项抵消, 结果为零. 因此只能考虑 :math:`\hat{\Phi}` 造成二重激发. 此时第一项
:math:`\hat{\Phi} \hat{\tau}^\dagger_\mu \hat{T}^{(1)}`
要求
:math:`\mu` 必须为零, 因为左右两边都是二重激发. 但是 :math:`\mu = 0` 此处不在考虑范围之内.
因此这一项为零. 第二项,
:math:`\hat{T}^{(1)} \hat{\Phi} |\mathrm{HF}\rangle` 就必须造成四重激发.
因此这一项不为零, 但限制 :math:`\mu` 必须为四重激发.]

更进一步, 我们已经推导出二阶振幅除了对于单重, 双重和三重激发, 都为零.
从这些观察, 我们得到结论, 二阶振幅和乘子对于单重, 双重和三重激发都是相同的.
对于四重激发, 振幅为零, 而乘子从上式得到.
对于五重和更高级激发, 振幅和乘子都为零.
上式因此可以写为

.. math::
    \bar{t}_{\mu_n}^{(2)} =
    \begin{cases}
    t_{\mu_n}^{(2)} & n = 1,2,3 \\
    -\epsilon_{\mu_n}^{-1} \langle \mu_n | \hat{T}^{(1)} \hat{H} | \mathrm{HF}\rangle &
    n = 4
    \end{cases}

和 :eq:`pert-mp2-wfn-pre` 比较, 我们发现 CCPT 的二阶乘子和 MPPT 的振幅一样,
对于四重以及低阶激发.

总之, 直到 CCPT 二阶, 振幅和乘子完全一样, 除了二阶四重项, 它对振幅为零.
和 MPPT 相比, 振幅完全一样, 除了二阶四重项,
它在 MPPT 为非零并且和 CCPT 乘子完全相同.
但是, 二阶波函数在 MPPT 和 CCPT 完全一样:
在 CCPT, 四重项出现为非联通振幅;
在 MPPT, 它们从二阶方程产生, 并没有利用这些振幅的非联通性质, 见 14.2.3 节的讨论.

8 满足 2n+1 规则的 CCPT 能量
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

在推导了直到二阶的决定振幅和乘子的方程之后, 我们现在转向能量.
在第 4 小节, 我们给出了 CCPT 能量的表达式, 它们和 n+1 规则一致.
在二阶, 这些表达式也和 2n+1 规则一致, 见 :eq:`pert-ccpt-ener-4`.
为了完整性, 我们这里列出一阶和二阶能量:

.. math::
    E^{(1)} =&\ \langle \mathrm{HF} | \hat{\Phi} | \mathrm{HF} \rangle \\
    E^{(2)} =&\ \langle \mathrm{HF} | [\hat{\Phi}, \hat{T}^{(1)}] | \mathrm{HF} \rangle

读者可以容易验证这些表达式可以从变分拉格朗日量 :math:`L^{(1)}` 和 :math:`L^{(2)}` 得到,
在舍去不和 2n+1 和 2n+2 规则相适应的项之后.

[这里根据 :eq:`pert-ccpt-lag` 展开为各阶贡献]

.. math::
    L^{(1)} =&\ \langle \mathrm{HF} | \hat{\Phi} | \mathrm{HF} \rangle \\
    L^{(2)} =&\ \sum_\mu \epsilon_\mu t_{\mu}^{(1)} \bar{t}_{\mu}^{(1)}
        + \langle \mathrm{HF} | [\hat{\Phi}, \hat{T}^{(1)}] | \mathrm{HF} \rangle
        + \langle \bar{t}^{(1)} | \hat{\Phi} | \mathrm{HF} \rangle \\
    =&\ - \sum_\mu \bar{t}_{\mu}^{(1)} \langle \mu | \hat{\Phi} | \mathrm{HF} \rangle
        + \langle \mathrm{HF} | [\hat{\Phi}, \hat{T}^{(1)}] | \mathrm{HF} \rangle
        + \langle \bar{t}^{(1)} | \hat{\Phi} | \mathrm{HF} \rangle

[这里利用了 :eq:`pert-ccpt-mag-1` 第三式. 然后最后一式发现第一项和最后一项抵消.]

为了计算三阶 CCPT 能量, 我们收集 :eq:`pert-ccpt-lag` 中所有三阶项

.. math::
    L^{(3)} =&\ \sum_\mu \epsilon_\mu t_{\mu}^{(1)} \bar{t}_{\mu}^{(2)}
        + \sum_\mu \epsilon_\mu t_{\mu}^{(2)} \bar{t}_{\mu}^{(1)}
        + \langle \mathrm{HF} | [\hat{\Phi}, \hat{T}^{(2)}] | \mathrm{HF} \rangle
        + \frac{1}{2} \langle \mathrm{HF} |
            [[\hat{\Phi}, \hat{T}^{(1)}], \hat{T}^{(1)}] | \mathrm{HF} \rangle \\
    &\ + \langle \bar{t}^{(1)} | [\hat{\Phi}, \hat{T}^{(1)}] | \mathrm{HF} \rangle
    + \langle \bar{t}^{(2)} | \hat{\Phi} | \mathrm{HF} \rangle

由于这个表达式是变分的, 我们可以省略所有包含线性参数 :math:`\bm{t}^{(2)}` 或 :math:`\bm{t}^{(2)}`
项, 和 2n+1 规则一致.
[这里由于拉格朗日量是 2n+1 阶, n=1, 那么大于n 的项必须是线性, 如果不是线性, 则 (n+1)+(n+1) 至少为2n+2,
超过了拉格朗日量本身的阶数. 因此可以省略所有指标 (2) 的项. 这和 2n+1规则的精神也是一致的.]
除此之外, 上式第四项为零, 因为对易子的激发级数至少为2.
[这里的讨论和粒子秩还不太一样. 这里因为出现了两个 :math:`\hat{T}^{(1)}`,
至少为四级激发, 而 :math:`\hat{\Phi}` 最多降两级, 所以最终结果至少为两级激发,
无法在两个HF得到非零矩阵元.]
于是只剩下一项

.. math::
    E^{(3)} = \langle \bar{t}^{(1)} | [\hat{\Phi}, \hat{T}^{(1)}] | \mathrm{HF} \rangle

和 n+1 表达式 :eq:`pert-ccpt-ener-4` 比较,
我们发现我们不能推导上式直接省略 :eq:`pert-ccpt-ener-4` 中包含 :math:`\bm{t}^{(2)}`.
我们必须先建立拉格朗日量 :math:`L^{(3)}`, 然后只省略不被 2n+1 规则需要的项.

对于四阶能量按照相同的方式处理, 我们首先建立变分拉格朗日量

.. math::
    L^{(4)} =&\ \sum_\mu \epsilon_\mu t_\mu^{(1)} \bar{t}_\mu^{(3)}
        + \sum_\mu \epsilon_\mu t_\mu^{(2)} \bar{t}_\mu^{(2)}
        + \sum_\mu \epsilon_\mu t_\mu^{(3)} \bar{t}_\mu^{(1)}
        + \langle \mathrm{HF} | [\hat{\Phi}, \hat{T}^{(3)}] | \mathrm{HF} \rangle \\
    &\ + \langle \mathrm{HF} |
            [[\hat{\Phi}, \hat{T}^{(2)}], \hat{T}^{(1)}] | \mathrm{HF} \rangle
       + \frac{1}{6} \langle \mathrm{HF} |
            [[[\hat{\Phi}, \hat{T}^{(1)}], \hat{T}^{(1)}], \hat{T}^{(1)}]
            | \mathrm{HF} \rangle
    + \langle \bar{t}^{(1)} | [\hat{\Phi}, \hat{T}^{(2)}] | \mathrm{HF} \rangle \\
    &\ + \frac{1}{2}
    \langle \bar{t}^{(1)} | [[\hat{\Phi}, \hat{T}^{(1)}], \hat{T}^{(1)}] | \mathrm{HF} \rangle
    + \langle \bar{t}^{(2)} | [\hat{\Phi}, \hat{T}^{(1)}] | \mathrm{HF} \rangle
    + \langle \bar{t}^{(3)} | \hat{\Phi} | \mathrm{HF} \rangle

接着, 我们舍去所有包含 :math:`\bm{t}^{(3)}` 的项, 和 2n+1 规则一致,
以及所有包含 :math:`\bar{\bm{t}}^{(2)}` 和 :math:`\bar{\bm{t}}^{(3)}` 的项,
和 2n+2 规则一致.
除此之外, 我们发现第五第六项为零, 因为对易子包含了太高的激发级别.
最终我们只剩下两项

.. math::
    E^{(4)} = \langle \bar{t}^{(1)} | [\hat{\Phi}, \hat{T}^{(2)}] | \mathrm{HF} \rangle
     + \frac{1}{2}
        \langle \bar{t}^{(1)} | [[\hat{\Phi}, \hat{T}^{(1)}], \hat{T}^{(1)}]
            | \mathrm{HF} \rangle

这个公式是对 :eq:`pert-ccpt-ener-4` 的一个很明显的改进. 为了后面的引用,
我们也推导五阶表达式. 对拉格朗日量的直接展开, 并按照 2n+1 规则消去项给出下列表达式

.. math::
    E^{(5)} =&\ \frac{1}{2} \langle \mathrm{HF} |
            [[\hat{\Phi}, \hat{T}^{(2)}], \hat{T}^{(2)}] | \mathrm{HF} \rangle
    + \langle \bar{t}^{(1)} | [[\hat{\Phi}, \hat{T}^{(2)}], \hat{T}^{(1)}] | \mathrm{HF} \rangle
    \\
    &\ + \langle \bar{t}^{(2)} | [\hat{\Phi}, \hat{T}^{(2)}] | \mathrm{HF} \rangle
    + \frac{1}{2}
    \langle \bar{t}^{(2)} | [[\hat{\Phi}, \hat{T}^{(1)}], \hat{T}^{(1)}] | \mathrm{HF} \rangle

其中只出现二阶微扰的振幅和乘子.

我们因此得到了一组紧凑的微扰能量表达式, 并且和 Wigner 的 2n+1 规则一致, 并且逐项和逐阶大小延展.
作为总结, 我们在表 14.3 列出了各种激发级别对于 CCPT 能量的贡献.
在二阶和三阶, 只有来自联通双重项的贡献.
单重和三重在四阶首次出现. 四重在五阶能量有非联通贡献.

**表14.3** CCPT 能量中来自联通振幅和乘子的贡献

+----+---------------+---------------+---------------+---------------+---------------+
|能量|:math:`E^{(1)}`|:math:`E^{(2)}`|:math:`E^{(3)}`|:math:`E^{(4)}`|:math:`E^{(5)}`|
+====+===============+===============+===============+===============+===============+
|激发|             HF|              D|              D|            SDT|  SDT* [#refq]_|
+----+---------------+---------------+---------------+---------------+---------------+

.. [#refq] 乘子中包含非联通四重项的贡献.

9 CCPT 拉格朗日量的大小延展性
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

在我们在第5小节对于大小延展性的讨论中,
我们发现满足 n+1 规则的 CCPT 能量是逐项以及逐阶大小延展的.
由于拉格朗日乘子可能对无相互作用系统不可分,
我们必须类似地确保从变分拉格朗日量 :eq:`pert-ccpt-lag` 推导的能量是以同样的方式大小延展的.

从我们之前的讨论, 我们注意到, 对两个无相互作用系统, 拉格朗日量可以写为如下形式

.. math::
    L_{AB} =&\ E_{0A} + E_{0B} + \sum_{\mu A} \epsilon_{\mu A} t_{\mu A} \bar{t}_{\mu A}
         + \sum_{\mu B} \epsilon_{\mu B} t_{\mu B} \bar{t}_{\mu B} \\
    &\ + \langle \mathrm{HF} | \hat{\Phi}_A^T | \mathrm{HF} \rangle
    + \langle \mathrm{HF} | \hat{\Phi}_B^T | \mathrm{HF} \rangle
    + \langle \bar{t}_{AB} | \hat{\Phi}_B^T | \mathrm{HF} \rangle
    + \langle \bar{t}_{AB} | \hat{\Phi}_A^T | \mathrm{HF} \rangle

很明显, 只有关于单个子系统 (A 或者 B) 的乘子对总拉格朗日量有贡献.
这确保了从拉格朗日量得到的能量是逐项大小延展的.

[这里其实还是利用了 :math:`\hat{\Phi}_A^T` 的对易子形式.
必须由低阶的可分, 导出对易子可分, 然后 :math:`\mu AB` 对应的项没有出现在上述表达式中,
因为由于后面的积分元完全可分, 关于 :math:`\mu AB` 的项应该都为零.]

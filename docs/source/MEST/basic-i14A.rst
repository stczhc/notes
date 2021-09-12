
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

第十四章 微扰论 (A)
===================

在许多情形, 容易 (就计算时间和资源而言) 得到一个相当程度准确的对于精确波函数的描述, 用于定性或者初步的研究.
我们可以, 例如, 对一个单一行列式波函数应用变分原理, 来得到 Hartree-Fock 态.
这个解通常可以覆盖高于 99% 的总电子能量, 并且其他的分子性质的计算也可以达到精确值 5-10% 的范围之内的误差.
尽管这个精度对于一些目的是足够的, 在很多情形, 更高的精度是需要的, 因此必须对 HF 解应用修正. 在第 13 章, 我们探索一种可能性, 即耦合簇方法, 它能够提供薛定谔方程的高精度解,
并且和 FCI 解足够接近从而得到化学精度的结果.
但是, 耦合簇波函数的计算很昂贵, 从而, 探索一种精确计算的替代方法可能是有益的:
**微扰论**. 微扰论提供求解薛定谔方程的一个不同路径,
允许我们以一种系统地方式接近精确解, 基于一个对波函数和能量逐阶展开.

这一章, 展示非简并微扰论, 在分子电子结构理论的上下文, 分为七节.
在 14.1 节, 我们讨论瑞利-薛定谔微扰论 (RSPT), 推导任意阶能量和波函数,
并讨论 Wigner :math:`2n+1` 规则, Hylleraas 泛函和大小延展性.
接下来, 在 14.2 节, 我们展示 Moller-Plesset 微扰论 (MPPT),
最成功的 RSPT 在量子化学的应用, 其中在正则表象的福克算符和 Slater 行列式
构成了零阶体系. 在低阶的情况, 对应的微扰展开给出
一种计算电子能量的高效方法.

尽管 MP 能量修正在每一阶的微扰是大小延展的, 它们并不是逐项大小延展的 -
即, 贡献到每一阶微扰的个体项并不是大小延展的.
这个问题, 常见于基于瑞利-薛定谔理论标准机制的所有方法,
通过引入第 14.3 节的耦合簇微扰论 (CCPT) 得以解决,
其中微扰能量修正在耦合簇理论的相似变换形式框架内推导.
其导致的表达式, 在微扰的每一阶, 等价于 MPPT 的表达式, 
但只包括大小延展的贡献, 并且没有 MPPT 中非物理项的相互抵消.
接着, 在 14.4 节, 我们考虑 MP 修正的显式求值到第四阶微扰,
基于理论的逐项大小延展 CCPT 形式.

尽管微扰论构成量子化学的一个实际工具, 值得记住在很多情形,
微扰展开并不收敛, 这在第 5.8.4 节展示过. 因此, 在这一章包括一个关于
电子结构理论中围绕展开的收敛性质的讨论是合适的.
这样的讨论在第 14.5 节给出.

在 14.6 节, 我们检查耦合簇理论和微扰论之间的关系.
在耦合簇模型的微扰分析之后, 我们考虑各种混合方法,
其中微扰修正应用 (迭代的或者非迭代的) 在耦合簇理论的框架内.
特别地, 我们对于 CCSD 能量应用一个三重激发修正,
得到 FCI 电子能量的高度成功的 CCSD(T) 近似.

这一章的大多数理论仅仅考虑对于单个电子构型主导的态的微扰修正,
这个态通常由一个 HF 波函数表示.
但是, 在 14.7 节, 我们考虑 MP 微扰论的多参考推广,
尤其是二阶微扰论在 CASSCF 理论框架的发展.

第一节 瑞利-薛定谔微扰论
------------------------

量子力学微扰论的基本想法是将哈密顿算符分为两部分

.. math::
    \hat{H} = \hat{H}_0 + \hat{U}

其中 :math:`\hat{H}_0` 是一种零阶哈密顿量, 并且

.. math::
    \hat{U} = \hat{H} - \hat{H}_0

是微扰项. 零阶哈密顿量的正交归一本征解是

.. math::
    \hat{H}_0 | i^{(0)} \rangle = E_i^{(0)} | i^{(0)} \rangle

这个本征解接着被用来展开精确哈密顿量的本征函数 :math:`|0\rangle`:

.. math::
    \hat{H} |0\rangle = E |0\rangle
    :label: pert-sch-eq

对于这个目的, 我们选择合适的零阶态 :math:`|0^{(0)}\rangle` 并且以
:math:`\hat{U}` 的阶来展开差 :math:`|0\rangle - |0^{(0)}\rangle` 和
:math:`E-E_0^{(0)}`. 我们将微扰展开的收敛性的细节讨论推迟到第 14.5 节,
这里我们仅仅指出这样的一个逐阶过程可以收敛, 如果 :math:`\hat{H}_0` 包括了
:math:`\hat{H}` 的主要特征, 并且 :math:`\hat{U}` 在某种意义上
显著比 :math:`\hat{H}_0` 小.

在当前节, 我们不指定哈密顿算符的具体形式.
这里得到的结果因此对于零阶算符的任何选择和微扰算符的任何选择都是有效的.
在这一章的剩余节, 我们会降低一般性, 并且指定未微扰的和微扰的哈密顿算符的细节.
特别地, 我们将考虑微扰论在计算电子相关能的应用, 但是应该将这里展示的技术理解为
在其他情形也有效. 例如, 这里展示的 RSPT 提供了一个方便的理论框架
来系统研究含时分子性质.

我们通过推导 RSPT 能量和波函数的一般表达式来开始这一节.
对于直到 :math:`n` 阶能量的计算, 这里推导的表达式需要直到 :math:`n-1` 阶的波函数.
在下一小节, 我们发展一个替代方法, 其中直到 :math:`n` 阶的波函数决定了
:math:`2n + 1` 阶的能量, 在很多情形减少了计算的开销.
接着, 在 14.1.3 节, 我们考虑 Hylleraas 泛函, 通过它偶数阶 RSPT 能量可以通过
变分最小化得到. 最终, 在 14.1.4 节我们考虑 RSPT 的大小延展性.

1 RSPT 能量和波函数
^^^^^^^^^^^^^^^^^^^

我们假定我们已经对哈密顿算符进行了某种划分, 并且我们已经有了
零阶哈密顿量的精确解.
完整哈密顿量的精确波函数和能量的零阶近似是 :math:`|0^{(0)}\rangle`
和 :math:`E^{(0)}` 并且, 对于更高精度, 可以按照微扰的阶展开:

.. math::
    |0\rangle =&\ \sum_{k=0}^\infty |0^{(k)}\rangle \\
    E =&\ \sum_{k=0}^\infty E^{(k)}

在这些表达式中, 零阶项是已知的. 为了决定高阶项 (即修正),
我们将这些表达式带入薛定谔方程 :eq:`pert-sch-eq`

.. math::
    (\hat{H}_0 + \hat{U}) \sum_{k=0}^\infty |0^{(k)}\rangle
    = \left( \sum_{k=0}^\infty E^{(k)} \right)
    \sum_{k=0}^\infty |0^{(k)}\rangle

收集微扰中直到 :math:`n` 阶的项, 我们得到

.. math::
    (\hat{H}_0 - E^{(0)}) |0^{(n)}\rangle
    = - \hat{U} |0^{(n-1)}\rangle
    + \sum_{k=1}^n E^{(k)} |0^{(n-k)}\rangle
    :label: pert-master-eq

其中我们已经将零阶薛定谔方程关于 :math:`n` 阶波函数 :math:`|0^{(n)}\rangle`
的残差 (方程的左边) 表示为所有低阶波函数 (方程的右边).
我们将递归应用这个方程, 产生从低阶波函数产生更高阶的修正.
但是, 我们指出, 上式不能决定 :math:`|0^{(n)}\rangle` 的分量
:math:`|0^{(0)}\rangle`, 因为, 对于任何标量 :math:`a`,

.. math::
    (\hat{H}_0 - E^{(0)}) (|0^{(n)}\rangle + a|0^{(0)}\rangle)
    = (\hat{H}_0 - E^{(0)}) |0^{(n)}\rangle

[这里的意思是, 高阶波函数可以混合进任意的零阶分量, 上式根据零阶波函数必须满足的零阶薛定谔方程即可推导出. 为了解决这个不唯一的问题, 不允许混合进零阶波函数即可. ] 我们移除这个任意性, 通过要求修正和零阶波函数正交

.. math::
    \langle 0^{(0)}|0^{(k)}\rangle = 0,\quad k > 0

这个条件等价于要求 :math:`|0\rangle` 是中间量归一化的 [这里考虑 :math:`|0^{(0)}\rangle` 是 :math:`|0\rangle` 的一个粗略估计, 即中间量, 而我们要求精确波函数和这个
中间量归一化]

.. math::
    \langle 0^{(0)}|0\rangle
    = \sum_{k=0}^\infty \langle 0^{(0)}|0^{(k)}\rangle
    = \langle 0^{(0)}|0^{(0)}\rangle = 1

通过施加这个条件, 主方程 :eq:`pert-master-eq`
以低阶修正和零阶波函数唯一决定 :math:`n` 阶修正.

在中间量归一化, 精确能量和它的修正可以表示为一个特别简单的形式.
因此, 我们通过在薛定谔方程 :eq:`pert-sch-eq` 左边乘以零阶波函数来提取精确能量

.. math::
    E = \langle 0^{0} | \hat{H} |0\rangle
    :label: pert-exact-ener

以同样的方式, 零阶能量也可以通过零阶方程左乘零阶波函数来提取

.. math::
    E^{(0)} = \langle 0^{0} | \hat{H} |0^{0} \rangle

最后, 零阶能量的所有修正都可以从主方程 :eq:`pert-master-eq`
得到, 通过左乘零阶波函数:

.. math::
    E^{(n)} = \langle 0^{0} | \hat{U} |0^{n-1} \rangle,
    \quad n > 0
    :label: pert-n-ener

注意, 在这个形式, 直到 :math:`n-1` 阶的波函数决定 :math:`n` 阶的能量.
精确能量 :eq:`pert-exact-ener` 通过对所有能量修正求和来得到.

[这里推导一下主方程]

首先将级数中的 :math:`\infty` 截断到 :math:`n = 1`, 得

.. math::
    (\hat{H}_0 + \hat{U}) (|0^{(0)}\rangle + |0^{(1)}\rangle)
    =&\ (E^{(0)} + E^{(1)}) (|0^{(0)}\rangle + |0^{(1)}\rangle) \\
    \hat{H}_0 |0^{(0)}\rangle + \hat{U}|0^{(0)}\rangle
    + \hat{H}_0 |0^{(1)}\rangle + \hat{U}|0^{(1)}\rangle
    =&\ E^{(0)} |0^{(0)}\rangle + E^{(1)} |0^{(0)}\rangle
    + E^{(0)} |0^{(1)}\rangle + E^{(1)} |0^{(1)}\rangle

注意, :math:`\hat{U}` 和所有带有 :math:`(1)` 指标的都是一级小量,
而 :math:`E^{(1)} |0^{(1)}\rangle` 和 :math:`\hat{U} |0^{(1)}\rangle` 是二级小量, 可以忽略. 因此

.. math::
    (\hat{H}_0 - E^{(0)}) |0^{(0)}\rangle
    + (\hat{H}_0 - E^{(0)}) |0^{(1)}\rangle
     = -\hat{U}|0^{(0)}\rangle + E^{(1)} |0^{(0)}\rangle
    
而由于零阶波函数是零阶哈密顿量的解, 因此

.. math::
    (\hat{H}_0 - E^{(0)}) |0^{(0)}\rangle = 0

从而我们得到主方程在 :math:`n=1` 的情况, 即

.. math::
    (\hat{H}_0 - E^{(0)}) |0^{(1)}\rangle
     = -\hat{U}|0^{(0)}\rangle + E^{(1)} |0^{(0)}\rangle

接下来假定 :math:`n - 1` 的情况成立, 即

.. math::
    (\hat{H}_0 - E^{(0)}) |0^{(n-1)}\rangle
     = -\hat{U}|0^{(n-2)}\rangle + \sum_{k=1}^{n-1} E^{(k)} |0^{(n-1-k)}\rangle
    
我们考虑直到 :math:`n` 阶的截断. 注意

.. math::
    \sum_{j = 0}^{n} \sum_{k = 0}^j E^{(k)} | 0^{(j-k)} \rangle
    =&\ \sum_{k = 0}^0 E^{(k)} | 0^{(0-k)} \rangle
    + \sum_{j = 1}^{n} E^{(0)} | 0^{(j)} \rangle
    + \sum_{j = 1}^{n}
        \sum_{k = 1}^j E^{(k)} | 0^{(j-k)} \rangle \\
    =&\ \sum_{k = 0}^{n} E^{(0)} | 0^{(k)} \rangle
    + \sum_{j = 1}^{n}
        \sum_{k = 1}^j E^{(k)} | 0^{(j-k)} \rangle

即

.. math::
    \hat{H}_0 \sum_{k = 0}^n |0^{(k)}\rangle
    + \hat{U} \sum_{k = 0}^{n - 1} |0^{(k)}\rangle
    =&\ \sum_{k = 0}^{n} E^{(0)} | 0^{(k)} \rangle
    + \sum_{j = 1}^{n}
        \sum_{k = 1}^j E^{(k)} | 0^{(j-k)} \rangle \\
    \hat{H}_0 \sum_{k = 0}^n |0^{(k)}\rangle
    + \hat{U} |0^{(n-1)}\rangle
    + \hat{U} \sum_{j = 1}^{n - 1} |0^{(j-1)}\rangle
    =&\ \sum_{k = 0}^{n} E^{(0)} | 0^{(k)} \rangle
    + \sum_{j = 1}^{n - 1}
        \sum_{k = 1}^j E^{(k)} | 0^{(j-k)} \rangle
    + \sum_{k = 1}^n E^{(k)} | 0^{(n-k)} \rangle

于是

.. math::
    (\hat{H}_0 - E^{(0)}) \sum_{k = 0}^n |0^{(k)}\rangle
    + \hat{U} |0^{(n-1)}\rangle
    = \sum_{j = 1}^{n - 1} \left[ -\hat{U}  |0^{(j-1)}\rangle
    + \sum_{k = 1}^j E^{(k)} | 0^{(j-k)} \rangle \right]
        + \sum_{k = 1}^n E^{(k)} | 0^{(n-k)} \rangle

带入数学归纳法的前提条件, 得

.. math::
    (\hat{H}_0 - E^{(0)}) \sum_{k = 0}^n |0^{(k)}\rangle
    + \hat{U} |0^{(n-1)}\rangle
    =&\ (\hat{H}_0 - E^{(0)}) \sum_{j = 1}^{n - 1} |0^{(j)}\rangle
        + \sum_{k = 1}^n E^{(k)} | 0^{(n-k)} \rangle \\
    (\hat{H}_0 - E^{(0)}) |0^{(n)}\rangle
    =&\ -\hat{U} |0^{(n-1)}\rangle
    + \sum_{k = 1}^n E^{(k)} | 0^{(n-k)} \rangle

其中应用了 :math:`(\hat{H}_0 - E^{(0)}) |0^{(0)}\rangle = 0`.

[主方程推导结束.]

为了得到波函数修正的封闭形式表达式, 我们在主方程左边乘以 :math:`\hat{H}_0 - E^{(0)}`
的逆. 这个算符当它作用于具有 :math:`|0^{(0)}` 分量的波函数时有一个奇点.
但是主方程的两边都不包括零阶波函数分量 [主方程本身不用于零阶波函数].
在左边, 零阶波函数不存在, 因为我们采用了中间量归一化.
对于右边, 利用 :eq:`pert-n-ener` [我们可以计算它和零阶波函数的重叠]

.. math::
    \langle 0^{(0)} | \left( - \hat{U} |0^{(n-1)}\rangle
    + \sum_{k=1}^n E^{(k)} |0^{(n-k)}\rangle \right)
    = -E^{(n)} + E^{(n)} = 0

因此 :math:`\hat{H}_0 - E^{(0)}` 的逆是良好定义的, 当作用于主方程的两边.
因此, 我们可以写

.. math::
    |0^{(n)} \rangle = -(\hat{H}_0 - E^{(0)})^{-1}
    \left( \hat{U} |0^{(n-1)}\rangle
    - \sum_{k=1}^n E^{(k)} |0^{(n-k)}\rangle \right)

通过引入投影算符

.. math::
    \hat{P} = 1 - |0^{(0)}\rangle \langle 0^{(0)}|

我们可以将这方程写成更方便的形式. 注意, :math:`|0^{(n)}\rangle` 或者
主方程的右边都不包含任何 :math:`|0^{(0)}\rangle` 分量, 我们立即得到
[这里对于大括号里面整个投影完和投影之前等于没投影, 另外对于 :math:`|0^{(0)}\rangle`
投影或者不投影也一样, 因此, 等号两边都作用 :math:`\hat{P}` 相当于只在右边作用. 这就是下式两个 :math:`\hat{P}` 的由来]

.. math::
    |0^{(n)} \rangle = -\hat{P} (\hat{H}_0 - E^{(0)})^{-1}
    \hat{P} \left( \hat{U} |0^{(n-1)}\rangle
    - \sum_{k=1}^n E^{(k)} |0^{(n-k)}\rangle \right)

上式看起来, 就相当于在逆算符的左右两边填补了投影算符 [即 :math:`O\rightarrow POP` 的意思.] 由于 :math:`\hat{P}` 湮灭上式最后一项中的零阶波函数分量, 我们可以写

.. math::
    |0^{(n)} \rangle = -\hat{P} (\hat{H}_0 - E^{(0)})^{-1}
    \hat{P} \left( \hat{U} |0^{(n-1)}\rangle
    - \sum_{k=1}^{n-1} E^{(k)} |0^{(n-k)}\rangle \right)
    :label: pert-n-wfn

[注意, 这么写以后, :math:`\hat{P}` 不能去掉, 因为 :math:`\hat{U}` 的作用可能产生 :math:`|0^{(0)}\rangle` 分量, 本来没有 :math:`\hat{P}` 的时候, 这些分量可以通过
附带的 :math:`|0^{(0)}\rangle` 分量抵消, 但是移除了附带的 :math:`|0^{(0)}\rangle` 分量之后, 就只能通过 :math:`\hat{P}` 将其投影掉了. ]

因此, 假定对于 :math:`k < n` 的 :math:`|0^{(k)}\rangle` 和 :math:`E^{(k)}`
都知道, 式 :eq:`pert-n-ener` 和 :eq:`pert-n-wfn` 的关系唯一决定
:math:`E^{(n)}` 和 :math:`|0^{(n)}\rangle`.

现在我们推导了 瑞利-薛定谔微扰论 (RSPT) 的基本方程. 为了展示瑞利-薛定谔等级,
现在我们显式写出最低阶能量修正

.. math::
    E^{(1)} =&\ \langle 0^{(0)} | \hat{U} | 0^{(0)} \rangle \\
    E^{(2)} =&\ \langle 0^{(0)} | \hat{U} | 0^{(1)} \rangle \\
    E^{(3)} =&\ \langle 0^{(0)} | \hat{U} | 0^{(2)} \rangle
    :label: pert-ener-123

以及波函数的修正

.. math::
    |0^{(1)}\rangle =&\ -\hat{P}(\hat{H}_0-E^{(0)})^{-1} \hat{P}
        \hat{U}|0^{(0)}\rangle \\
    |0^{(2)}\rangle =&\ -\hat{P}(\hat{H}_0-E^{(0)})^{-1} \hat{P}
        (\hat{U} - E^{(1)}) |0^{(1)}\rangle \\
    |0^{(3)}\rangle =&\ -\hat{P}(\hat{H}_0-E^{(0)})^{-1} \hat{P}
        \Big[ (\hat{U} - E^{(1)} )|0^{(2)}\rangle
        - E^{(2)} |0^{(1)}\rangle \Big]
    :label: pert-wfn-123

很明显, 我们有了一个系统提升对于电子系统的描述的过程.
正如在第 5.8 节展示的, 这个技术对于电子相关能量的计算可以非常有效,
并且提供了一个有吸引力的替代方法, 不同于第 11 和 13 章
的 CI 和耦合簇方法.

其他形式的微扰论也被提出. 例如, 在 Brillouin-Wigner 微扰论 (BWPT),
能量通过一个迭代过程得到, 在练习 14.1 讨论.
但是, BWPT 并不是尺寸延展的, 并被证明不如 RSPT 有用.

2 Wigner 2n+1 规则
^^^^^^^^^^^^^^^^^^

根据上一小节的微扰论, :math:`n` 阶能量是通过 :math:`n-1` 阶的波函数来得到.
例如, 我们通过二阶波函数得到三阶能量. 但是, 这个表达式不一定是最好的,
按照计算的观点来看. 对于三阶能量更方便的表达式是
在三阶能量的表达式中带入二阶波函数, 并且利用一阶波函数表达式化简:

.. math::
    E^{(3)} =&\ \langle 0^{(0)} | \hat{U} | 0^{(2)} \rangle \\
    =&\ \langle 0^{(0)} | \hat{U} \hat{P}(\hat{H}_0-E^{(0)})^{-1}
        \hat{P} (E^{(1)} - \hat{U}) |0^{(1)}\rangle \\
    =&\ \langle 0^{(1)} |  \hat{U} - E^{(1)} |0^{(1)}\rangle

[其中最后一步, 在左矢部分通过 :math:`|0^{(1)}\rangle` 的表达式进行了代换.]

因此, 这演示了三阶能量可以直接从一阶波函数和能量来计算得到.
在二阶波函数很难计算的情形, 上式和原始表达式相比, 可以导致显著的计算节约.

现在的问题是, 我们可以达到怎样的节约, 通过对于高于3阶的能量表达式进行调整.
更具体地, 我们可以问为了计算 :math:`n` 阶能量, 我们需要多少阶的波函数.
答案是, 我们可以通过 :math:`n` 阶及更低阶的波函数来计算 :math:`2n+1` 阶的能量.
参考练习 14.2. 这个结果, 通常称为 **Wigner 2n+1 规则**, 可以导致显著的计算节约
因此它对于微扰论作为一个量子化学的实践工具的高效实现有重要意义.
因此, 这里我们可以展示瑞利-薛定谔理论的一个替代推导,
这个推导, 和第一小节的方法不同, 将直接得到和 Wigner 2n+1 规则相一致的能量表达式.
这个过程是基于 4.2.8 节描述的变分拉格朗日量技术.

这一小节的材料是自我包含的, 并且和第一小节的结果独立.
采用的记号和前面的小节也有所不同, 是基于电子态和算符的矢量-矩阵表示.
因此, 我们在某个离散正交归一基组 :math:`|i\rangle` 展开精确和微扰波函数:

.. math::
    |0\rangle =&\ \sum_i C_i |i\rangle \\
    |0^{(n)} =&\ \sum_i C_i^{(n)} |i\rangle

[在实际计算中, 可能并不需要找到这样的基组, 这里只是理论表述的需要.]
在标准矩阵记号, 精确态的薛定谔方程可以写为

.. math::
    \bm{H}(\alpha) \bm{C}(\alpha) = E(\alpha) \bm{C}(\alpha)

其中 :math:`\alpha` 是一个表示微扰强度的参数. 上式哈密顿矩阵现在分为
零阶矩阵 :math:`\bm{H}_0` 和微扰 :math:`\bm{U}`

.. math::
    \bm{H}(\alpha) = \bm{H}_0 + \alpha \bm{U}

我们希望决定波函数 :math:`\bm{C}(\alpha)` 和能量 :math:`E(\alpha)` 对于
:math:`\alpha` 的依赖, 并且为了这个目的, 引入幂级数展开

.. math::
    E(\alpha) =&\ E^{(0)} + \alpha E^{(1)} + \alpha^2 E^{(2)} + \cdots \\
    \bm{C}(\alpha) =&\ \bm{C}^{(0)} + \alpha \bm{C}^{(1)}
        + \alpha^2 \bm{C}^{(2)} + \cdots

因此我们的任务是推导对于计算 :math:`E^{(n)}` 和 :math:`\bm{C}^{(n)}` 的有用公式,
到一个给定 :math:`n` 阶. 从这些表达式,
我们可以提取在有微扰的情况的精确能量和精确波函数的近似, 通过设定 :math:`\alpha = 1`.
显然, 计算的能量和波函数的质量依赖于在展开式中截断的级别, 当然在级数收敛的情况下.

我们假定在 :math:`\alpha = 0` 的零阶能量和零阶波函数是已知的:

.. math::
    \bm{H}_0\bm{C}^{(0)} = E^{(0)} \bm{C}^{(0)}

为了寻求矩阵薛定谔方程的逐阶的解, 采用中间量归一化是方便的

.. math::
    \bm{C}^{(0)T} \bm{C}(\alpha) = 1

引入投影到未微扰的参考态的正交分量的投影算符

.. math::
    \bm{P} = \bm{1} - \bm{C}^{(0)} \bm{C}^{(0)T}

我们可以将解矢量 :math:`\bm{C}(\alpha)` 写为如下形式

.. math::
    \bm{C}(\alpha) = \bm{C}^{(0)} + \bm{P}\bm{C}(\alpha)
    :label: pert-mat-normal

这个直接限定了中间量归一化.

我们通过投影技术求解矩阵薛定谔方程. 这个方式和 13.2 节
耦合簇能量和波函数应用的非常相似.
因此, 原始矩阵薛定谔方程等价于如下两个方程, 通过投影到
零阶态和它的正交分量:

.. math::
    \bm{C}^{(0)T} [\bm{H}(\alpha)-E(\alpha) \bm{1} ] \bm{C}(\alpha) =&\ 0 \\
    \bm{P} [\bm{H}(\alpha)-E(\alpha) \bm{1} ] \bm{C}(\alpha) =&\ \bm{0} \\

[其中根据薛定谔方程已知
:math:`[\bm{H}(\alpha)-E(\alpha) \bm{1} ] \bm{C}(\alpha)` 为向量零.
那么第一式将这个向量零求内积当然还是零, 第二式用矩阵乘以这个零向量当然也还是零.
当然, 如果只解其中一个方程, 那么得到的 :math:`\bm{C}(\alpha)` 只满足投影的方程,
却未必是原始薛定谔方程的解. ]

从第一个投影我们得到能量

.. math::
    E(\alpha) =&\ \bm{C}^{(0)T} \bm{H}(\alpha) \bm{C}(\alpha) \\
    =&\ \bm{C}^{(0)T} \bm{H}(\alpha) \bm{C}^{(0)}
    + \bm{C}^{(0)T} \bm{H}(\alpha) \bm{P}\bm{C}(\alpha) \\
    =&\ \bm{C}^{(0)T} \bm{H}(\alpha) \bm{C}^{(0)}
    + \bm{C}^{(0)T} \bm{H}_0 \bm{P}\bm{C}(\alpha)
    + \alpha \bm{C}^{(0)T} \bm{U} \bm{P}\bm{C}(\alpha) \\
    =&\ \bm{C}^{(0)T} \bm{H}(\alpha) \bm{C}^{(0)}
    + \alpha \bm{C}^{(0)T} \bm{U} \bm{P}\bm{C}(\alpha)
    :label: pert-mat-ener

[其中最后一个等号, 利用零阶薛定谔方程以及 :math:`\bm{P}`
作用完和零阶波函数正交, 我们有]

.. math::
    \bm{C}^{(0)T} \bm{H}_0 \bm{P}\bm{C}(\alpha)
    = E_0 \bm{C}^{(0)T} \bm{P}\bm{C}(\alpha) = 0

而第二个投影决定了电子态 :math:`\bm{C}(\alpha)`

.. math::
    \bm{P} [\bm{H}(\alpha)-E(\alpha) \bm{1} ] \bm{P} \bm{C}(\alpha)
    + \bm{P} [\bm{H}(\alpha)-E(\alpha) \bm{1} ] \bm{C}^{(0)}
    =&\ \bm{0} \\
    \bm{P} [\bm{H}(\alpha)-E(\alpha) \bm{1} ] \bm{P} \bm{C}(\alpha)
    + \bm{P} [\bm{H}_0 + \alpha \bm{U} -E(\alpha) \bm{1} ] \bm{C}^{(0)}
    =&\ \bm{0} \\
    \bm{P} [\bm{H}(\alpha)-E(\alpha) \bm{1} ] \bm{P} \bm{C}(\alpha)
    + \alpha \bm{P} \bm{U} \bm{C}^{(0)}
    + [E_0  -E(\alpha) ] \bm{P} \bm{C}^{(0)}
    =&\ \bm{0} \\
    \bm{P} [\bm{H}(\alpha)-E(\alpha) \bm{1} ] \bm{P} \bm{C}(\alpha)
    + \alpha \bm{P} \bm{U} \bm{C}^{(0)}
    =&\ \bm{0}
    :label: pert-mat-wfn

[其中最后一式利用了零阶波函数的投影为零 :math:`\bm{P} \bm{C}^{(0)} = 0`.]

为了得到以上两式, 我们利用了 :math:`\bm{C}(\alpha)` 的 :eq:`pert-mat-normal`
并且采用了 :math:`\bm{C}^{(0)}` 的零阶薛定谔方程.

在第一小节, 我们通过按照微扰阶展开以上两式,
以及分别求解因此得到的方程到每一阶,
来得到微扰能量和波函数.
现在这里我们将采用另一种方式继续, 但是读者可以先从以上两式推导能量和波函数的修正, 具有以下
形式, 并且认识到这些是 :eq:`pert-n-ener` 和 :eq:`pert-n-wfn` 的矩阵形式

.. math::
    E^{(n)} = \bm{C}^{(0)T} \bm{U} \bm{C}^{(n-1)}
    :label: pert-mat-ener-n

.. math::
    \bm{C}^{(n)} = -\bm{P} (\bm{H}_0 - E^{(0)} \bm{1})^{-1}
    \bm{P} \left(
    \bm{U}\bm{C}^{(n-1)} - \sum_{k=1}^{n-1} E^{(k)}\bm{C}^{(n-k)}
    \right)
    :label: pert-mat-wfn-n

[下面推导一下以上两式. 方法是展开为 :math:`\alpha` 的级数,
然后收集不同阶的项. 对于能量我们有]

.. math::
    E(\alpha)
    =&\ \bm{C}^{(0)T} \bm{H}(\alpha) \bm{C}^{(0)}
    + \alpha \bm{C}^{(0)T} \bm{U} \bm{P}\bm{C}(\alpha) \\
    E^{(0)} + \alpha E^{(1)} + \alpha^2 E^{(2)} + \cdots
    =&\ \bm{C}^{(0)T} \bm{H}_0 \bm{C}^{(0)}
    + \alpha \bm{C}^{(0)T} \bm{U} [
        \bm{C}^{(0)} + \alpha \bm{C}^{(1)} + \alpha^2 \bm{C}^{(2)}
        + \cdots]

[其中回代了 :eq:`pert-mat-normal`] 收集不同 :math:`\alpha` 幂的项, 得

.. math::
    E^{(0)} =&\ \bm{C}^{(0)T} \bm{H}_0 \bm{C}^{(0)} \\
    E^{(1)} =&\ \bm{C}^{(0)T} \bm{U} \bm{C}^{(0)} \\
    E^{(2)} =&\ \bm{C}^{(0)T} \bm{U} \bm{C}^{(1)} \\
    E^{(3)} =&\ \bm{C}^{(0)T} \bm{U} \bm{C}^{(2)} \\
    \cdots =&\ \cdots \\
    E^{(n)} =&\ \bm{C}^{(0)T} \bm{U} \bm{C}^{(n - 1)}

下面考虑波函数. 我们有

.. math::
    \bm{P} [\bm{H}(\alpha)-E(\alpha) \bm{1} ] \bm{P} \bm{C}(\alpha)
    + \alpha \bm{P} \bm{U} \bm{C}^{(0)}
    =&\ \bm{0} \\
    \bm{P} [\bm{H}_0 + \alpha \bm{U} - (E^{(0)} + \alpha E^{(1)} + \alpha^2 E^{(2)} + \cdots) \bm{1} ] \bm{P} [
        \bm{C}^{(0)} + \alpha \bm{C}^{(1)} + \alpha^2 \bm{C}^{(2)}
        + \cdots]
    + \alpha \bm{P} \bm{U} \bm{C}^{(0)}
    =&\ \bm{0} \\
    \bm{P} [\bm{H}_0 + \alpha \bm{U} - (E^{(0)} + \alpha E^{(1)} + \alpha^2 E^{(2)} + \cdots) \bm{1} ] \bm{P} [
        \bm{C}^{(1)} + \alpha \bm{C}^{(2)} + \alpha^2 \bm{C}^{(3)}
        + \cdots]
    + \bm{P} \bm{U} \bm{C}^{(0)}
    =&\ \bm{0}

下面按 :math:`\alpha` 的阶分开, 得

.. math::
    \bm{P}[\bm{H}_0 - E^{(0)}] \bm{P} \bm{C}^{(1)} + \bm{P} \bm{U} \bm{C}^{(0)} =&\ \bm{0} \\
    \sum_{j = 2}^\infty \alpha^{j-1} \bm{P}\sum_{k=1}^{j-1} E^{(k)}\bm{P}\bm{C}^{(j-k)} + \bm{P} [\bm{H}_0 - E^{(0)} + \alpha \bm{U} ] \bm{P}
    \sum_{j=1}^\infty \alpha^{j-1}\bm{C}^{(j)} + \bm{P}\bm{U}\bm{C}^{(0)} =&\ \bm{0} \\
    \sum_{j = 2}^\infty \alpha^{j-1} \bm{P} \sum_{k=1}^{j-1} E^{(k)}\bm{P}\bm{C}^{(j-k)} + \bm{P} [\bm{H}_0 - E^{(0)}]\bm{P} \sum_{j=1}^\infty \alpha^{j-1}\bm{C}^{(j)} + \bm{P} \bm{U} \bm{P}
    \sum_{j=2}^\infty \alpha^{j-1}\bm{C}^{(j-1)} + \bm{P}\bm{U}\bm{C}^{(0)} =&\ \bm{0} \\
    \sum_{j = 2}^\infty \alpha^{j-1} \bm{P} \left[ \bm{U} \bm{P} \bm{C}^{(j-1)} + \sum_{k=1}^{j-1} E^{(k)}\bm{P}\bm{C}^{(j-k)} \right] + \bm{P} [\bm{H}_0 - E^{(0)}]\bm{P} \sum_{j=1}^\infty \alpha^{j-1}\bm{C}^{(j)} + \bm{P}\bm{U}\bm{C}^{(0)} =&\ \bm{0}

注意 :math:`\bm{H}_0 - E^{(0)}` 从左边或右边作用 :math:`|0^{(0)}\rangle` 均得零,
因此, :math:`\bm{P}[\bm{H}_0 - E^{(0)}] \bm{P} = \bm{H}_0 - E^{(0)}`.

于是

.. math::
    \bm{C}^{(1)} =&\ -[\bm{H}_0 - E^{(0)}]^{-1}\bm{P} \bm{U} \bm{C}^{(0)} \\
    \bm{C}^{(n)} =&\ -[\bm{H}_0 - E^{(0)}]^{-1}\bm{P}
    \left[ \bm{U} \bm{P} \bm{C}^{(n-1)} + \sum_{k=1}^{n-1} E^{(k)}\bm{P}\bm{C}^{(n-k)} \right]

或者 [这里, 把中括号里面的 :math:`\bm{P}` 去掉的理由是, 我们已经改变 :math:`\bm{P}` 移到每个波函数 :math:`\bm{C}^{(n)}` 的定义式等号右边, 这样每个 :math:`\bm{C}^{(n)}`
都是投影过后的, 在带入后面表达式时, 就不再需要再投影.]

.. math::
    \bm{C}^{(1)} =&\ -\bm{P}[\bm{H}_0 - E^{(0)}]^{-1}\bm{P} \bm{U} \bm{C}^{(0)} \\
    \bm{C}^{(n)} =&\ -\bm{P} [\bm{H}_0 - E^{(0)}]^{-1}\bm{P}
    \left[ \bm{U} \bm{C}^{(n-1)} + \sum_{k=1}^{n-1} E^{(k)}\bm{C}^{(n-k)} \right]

[推导结束.]

为了推导和 Wigner 2n+1 规则相适配的微扰能量表达式,
我们为瑞利-薛定谔能量引入变分拉格朗日量.
因此, 我们认为 :eq:`pert-mat-ener` 是在 :eq:`pert-mat-wfn` 的约束中变分计算的.
在这个意义上, 我们用一组拉格朗日乘子 :math:`\bar{\bm{C}}(\alpha)` 乘以约束
:eq:`pert-mat-wfn`, 并将这个结果加到能量 :eq:`pert-mat-ener` 上.
稍微整理后, 得到的 RSPT **拉格朗日量** 可以写为如下形式

.. math::
    L[\alpha,\bm{C}(\alpha), \bar{\bm{C}}(\alpha)]
        =&\ \bm{C}^{(0)T} \bm{H}(\alpha) \bm{C}^{(0)}
    + \alpha \bm{C}^{(0)T} \bm{U} \bm{P}\bm{C}(\alpha)\\
    &\ +\bar{\bm{C}}^T(\alpha)
    \left[ \bm{P} [\bm{H}(\alpha)-E(\alpha) \bm{1} ] \bm{P} \bm{C}(\alpha)
    + \alpha \bm{P} \bm{U} \bm{C}^{(0)} \right] \\
    =&\ \bm{C}^{(0)T} \bm{H}(\alpha) \bm{C}^{(0)}
    + \alpha  \bm{C}^T(\alpha) \bm{P} \bm{U} \bm{C}^{(0)}\\
    &\ + \bar{\bm{C}}^T(\alpha)
    \bm{P} [\bm{H}(\alpha)-E(\alpha) \bm{1} ] \bm{P} \bm{C}(\alpha)
    + \alpha \bar{\bm{C}}^T(\alpha) \bm{P} \bm{U} \bm{C}^{(0)}  \\
    =&\ \bm{C}^{(0)T} \bm{H}(\alpha) \bm{C}^{(0)}
    + \alpha \left[ \bm{C}(\alpha) + \bar{\bm{C}}(\alpha) \right]^T \bm{P} \bm{U} \bm{C}^{(0)}\\
    &\ + \bar{\bm{C}}^T(\alpha)
    \bm{P} [\bm{H}(\alpha)-E(\alpha) \bm{1} ] \bm{P} \bm{C}(\alpha)
    :label: pert-mat-lag

其中, :math:`\bm{C}(\alpha)` 和与之相关联的乘子矢量 :math:`\bar{\bm{C}}(\alpha)`
以一种对称的方式出现. [这里对称的意思是, 交换这两个矢量, 拉格朗日量的函数形式不变.]
我们同时注意到, 由于投影算符的存在, 我们可以添加任意 :math:`\bm{C}^{(0)}` 的倍数
到拉格朗日乘子而不改变拉格朗日量的值

.. math::
    L[\alpha,\bm{C}(\alpha), \bar{\bm{C}}(\alpha) + a\bm{C}^{(0)}]
    = L[\alpha,\bm{C}(\alpha), \bar{\bm{C}}(\alpha)]

我们通过插入中间量归一化来消除这个任意性

.. math::
    \bm{C}^{(0)T} \bar{\bm{C}}(\alpha) = 1

或者等价地

.. math::
    \bar{\bm{C}}(\alpha) = \bm{C}^{(0)} + \bm{P} \bar{\bm{C}}(\alpha)

这个方式和处理原始参数组 :math:`\bm{C}(\alpha)` 的一样.

现在我们考虑 RSPT 拉格朗日量的变分条件.
对拉格朗日量求导, 我们得到

.. math::
    \frac{\partial L(\alpha)}{\partial \bar{\bm{C}}(\alpha)}
    = \bm{P} [\bm{H}(\alpha)-E(\alpha) \bm{1} ] \bm{P} \bm{C}(\alpha)
    + \alpha \bm{P} \bm{U} \bm{C}^{(0)} = \bm{0} \\
    \frac{\partial L(\alpha)}{\partial \bm{C}(\alpha)}
    = \bm{P} [\bm{H}(\alpha)-E(\alpha) \bm{1} ] \bm{P} \bar{\bm{C}}(\alpha)
    + \alpha \bm{P} \bm{U} \bm{C}^{(0)} = \bm{0}
    :label: pert-mat-var-cond

上述的变分条件很明显, 对于波函数参数 :math:`\bm{C}(\alpha)` 和它们的乘子
:math:`\bar{\bm{C}}(\alpha)` 是一样的. 由于零阶参数 [在中间量归一化中令 :math:`\alpha = 0` 得 :math:`\bar{\bm{C}}^{(0)} = \bm{C}^{(0)}`.] 和零阶乘子也是一样的,
我们得到结论: 在任意阶 :math:`\bm{C}(\alpha)` 和 :math:`\bar{\bm{C}}(\alpha)`
必须完全一样

.. math::
    \bar{\bm{C}}^{(n)} = \bm{C}^{(n)}

其中

.. math::
    \bar{\bm{C}}(\alpha) = \bar{\bm{C}}^{(0)}
        + \alpha \bar{\bm{C}}^{(1)}
        + \alpha^2 \bar{\bm{C}}^{(1)} + \cdots

正如我们将看到的, 这个等价性将显著简化拉格朗日量的级数展开,
并导致和 2n+1 规则一致的计算微扰能量的实践上的表达式.

现在我们考虑 RSPT 拉格朗日关于微扰强度 :math:`\alpha` 的函数形式.
关于 :math:`\alpha` 的幂级数展开给出表达式

.. math::
    L(\alpha) = L^{(0)} + \alpha L^{(1)} + \alpha^2 L^{(2)} + \cdots

其中零阶项由下式给出

.. math::
    L^{(0)} = \bm{C}^{(0)T} \bm{H}(\alpha) \bm{C}^{(0)} = E^{(0)}

而对于更高阶我们有

.. math::
    L^{(n)} =&\ \bm{C}^{(0)T} \bm{U} \bm{C}^{(n-1)}
        + \sum_{k=1}^{n-1} \bar{\bm{C}}^{(k)T} (\bm{H}_0 -E^{(0)}\bm{1})
        \bm{C}^{(n-k)} \\
    &\ + \sum_{k=1}^{n-1} \bar{\bm{C}}^{(k)T} \bm{U} \bm{C}^{(n-k-1)}
        -\sum_{k=1}^{n-2} \sum_{m=1}^{n-k-1} E^{(k)}\bar{\bm{C}}^{(m)T}
        \bm{C}^{(n-k-m)}
    :label: pert-mat-lag-n

这些表达式可以直接从 :eq:`pert-mat-lag` 给出的拉格朗日量的函数形式, 通过收集 :math:`n` 阶的项得到. 在这个过程, 我们重复使用了如下事实: 投影算符 :math:`\bm{P}` 会投影掉零阶参数
:math:`\bm{C}^{(0)}` 和乘子 :math:`\bar{\bm{C}}^{(0)}`.

[下面推导这个式子.]

从 :eq:`pert-mat-lag` 即

.. math::
    L[\alpha,\bm{C}(\alpha), \bar{\bm{C}}(\alpha)]
    =&\ \bm{C}^{(0)T} \bm{H}(\alpha) \bm{C}^{(0)}
    + \alpha \left[ \bm{C}(\alpha) + \bar{\bm{C}}(\alpha) \right]^T \bm{P} \bm{U} \bm{C}^{(0)}\\
    &\ + \bar{\bm{C}}^T(\alpha)
    \bm{P} [\bm{H}(\alpha)-E(\alpha) \bm{1} ] \bm{P} \bm{C}(\alpha)

得

.. math::
    &\ L^{(0)} + \alpha L^{(1)} + \alpha^2 L^{(2)} + \cdots \\
    =&\ \bm{C}^{(0)T} \bm{H}_0 \bm{C}^{(0)}
    + \alpha \bm{C}^{(0)T} \bm{U} \bm{C}^{(0)}
    + \left[ \alpha^2 \bm{C}^{(1)} + \alpha^2 \bar{\bm{C}}^{(1)} + \cdots \right]^T \bm{P} \bm{U} \bm{C}^{(0)} \\
    &\ + \left[ \bar{\bm{C}}^{(0)} + \alpha \bar{\bm{C}}^{(1)} + \cdots \right]^T
    \bm{P} \left[\bm{H}_0 - E^{(0)} \bm{1} + \alpha \bm{U}
    - \alpha E^{(1)} - \alpha^2 E^{(2)} - \cdots \right] \bm{P}
    \left[ \bm{C}^{(0)} + \alpha \bm{C}^{(1)} + \cdots \right] \\
    =&\ \bm{C}^{(0)T} \bm{H}_0 \bm{C}^{(0)}
    + \alpha \bm{C}^{(0)T} \bm{U} \bm{C}^{(0)}
    + \left[ \alpha^2 \bm{C}^{(1)} + \alpha^2 \bar{\bm{C}}^{(1)} + \cdots \right]^T \bm{P} \bm{U} \bm{C}^{(0)} \\
    &\ + \left[ \alpha \bar{\bm{C}}^{(1)} + \cdots \right]^T
    \bm{P} \left[\bm{H}_0 - E^{(0)} \bm{1} + \alpha \bm{U}
    - \alpha E^{(1)} - \alpha^2 E^{(2)} - \cdots \right] \bm{P}
    \left[ \alpha \bm{C}^{(1)} + \cdots \right] \\
    =&\ \bm{C}^{(0)T} \bm{H}_0 \bm{C}^{(0)}
    + \alpha \bm{C}^{(0)T} \bm{U} \bm{C}^{(0)}
    + \alpha  \left[ \alpha \bm{C}^{(1)} + \alpha \bar{\bm{C}}^{(1)} + \cdots \right]^T \bm{P} \bm{U} \bm{C}^{(0)} \\
    &\ + \alpha^2 \left[ \bar{\bm{C}}^{(1)} + \cdots \right]^T
    \bm{P} \left[\bm{H}_0 - E^{(0)} \bm{1} \right] \bm{P}
    \left[ \bm{C}^{(1)} + \cdots \right]
    + \alpha \left[ \alpha \bar{\bm{C}}^{(1)} + \cdots \right]^T
    \bm{P} \bm{U} \bm{P}
    \left[ \alpha \bm{C}^{(1)} + \cdots \right] \\
    &\ - \alpha^3 \left[ \bar{\bm{C}}^{(1)} + \cdots \right]^T
    \bm{P} \left[ E^{(1)} + \alpha E^{(2)} + \cdots \right] \bm{P}
    \left[ \bm{C}^{(1)} + \cdots \right]

其中 :math:`n = 0` 和 :math:`n - 1` 对应于等号右边前两项

.. math::
    L^{(0)} =&\ \bm{C}^{(0)T} \bm{H}_0 \bm{C}^{(0)} \\
    L^{(1)} =&\ \bm{C}^{(0)T} \bm{U} \bm{C}^{(0)}

对后面的项有

.. math::
    \sum_{n = 2}^\infty \alpha^n L^{(n)} =&\
        \bm{C}^{(0)T} \bm{U} \sum_{n = 2}^\infty \alpha^n \bm{C}^{(n-1)}
    + \sum_{n = 2}^\infty \alpha^n \sum_{k = 1}^{n - 1}
        \bar{\bm{C}}^{(k)T} \left[\bm{H}_0 - E^{(0)} \bm{1} \right] \bm{C}^{(n-k)} \\
    &\ + \sum_{n = 2}^\infty \alpha^n \sum_{k = 1}^{n - 1}
        \bar{\bm{C}}^{(k)T} \bm{U} \bm{C}^{(n-1-k)}
    - \sum_{n = 3}^\infty \alpha^n \sum_{k = 1}^{n - 2}
        \sum_{m = 1}^{n-k-1}
        \bar{\bm{C}}^{(k)T} E^{(m)} \bm{C}^{(n - k - m)}

[推导结束.]

现在我们发现, 对于 :math:`\bm{C}(\alpha)` 和 :math:`\bar{\bm{C}}(\alpha)` 的最优选择,
拉格朗日量 :eq:`pert-mat-lag` 和原始能量表达式 :eq:`pert-mat-ener` 对于所有
:math:`\alpha` 都相同, 因为拉格朗日量中的乘子项互相抵消 [将变分条件带入拉格朗日量].
拉格朗日和能量表达式因此必须在每个第 :math:`n` 阶相等

.. math::
    E^{(n)}_{\mathrm{opt}} = L^{(n)}_{\mathrm{opt}}

因此我们可以从 :eq:`pert-mat-lag-n` 计算微扰能量, 而不是从 :eq:`pert-mat-ener-n`.
粗略看来, 这个方法并不显得尤其有用, 因为微扰的拉格朗日量的表达式 :eq:`pert-mat-lag-n`
的函数形式显著比微扰能量 :eq:`pert-mat-ener-n` 更复杂.
但是, 这两个表达式的关键不同是 :eq:`pert-mat-lag-n` 对于微扰波函数
:math:`\bm{C}^{(k)}` 即它们关联的乘子 :math:`\bar{\bm{C}}^{(k)}` 是变分的

.. math::
    \frac{\partial L^{(n)}}{\partial \bm{C}^{(k)}} =&\ \bm{0} \\
    \frac{\partial L^{(n)}}{\partial \bar{\bm{C}}^{(k)}} =&\ \bm{0}
    :label: pert-mat-var-cond-n

这些变分关系从 :eq:`pert-mat-var-cond` 很容易得到. [下面是推导过程.]
考虑, 例如, 上述第一式的条件. 采用链式法则, 我们可以把变分条件写为如下形式

.. math::
    \frac{\partial L(\alpha)}{\partial C_i^{(k)}}
    = \sum_m \frac{\partial L(\alpha)}{\partial C_m(\alpha)}
    \frac{\partial C_m(\alpha)}{\partial C_i^{(k)}} = 0

由于上式对于任意 :math:`\alpha` 的取值都成立, 关于 :math:`\alpha` 的各阶导数必须分别为零

.. math::
    \frac{\partial^n}{\partial \alpha^n}
    \frac{\partial L(\alpha)}{\partial \bm{C}^{(k)}}
    = \frac{\partial L^{(n)}}{\partial \bm{C}^{(k)}} = \bm{0}

变分条件 :eq:`pert-mat-var-cond-n`, 虽然没法用于更简单的能量表达式 :eq:`pert-mat-ener-n`,
但可以生成波函数和乘子的修正. 这里, 我们将仅使用这些条件来化简微扰能量 :eq:`pert-mat-lag-n`.

首先, 我们有一个一般的观察, 即任何线性并且关于某参数变分的函数, 必须和这个参数无关,
因为变分条件强制函数中乘以这个参数的项为零. 因此, 我们可以使用关于参数 :math:`\bm{C}^{(k)}`
和 :math:`\bar{\bm{C}}^{(k)}` 的变分条件来消除拉格朗日量中仅仅线性出现的参数.
这里消除一个给定的参数, 我们指的是所有包含这个参数的项同时被舍弃.
例如, 在 :eq:`pert-mat-lag-n` 的拉格朗日量 :math:`L^{(n)}` 中,
所有乘子都线性地出现 [即没有类似 :math:`\bar{\bm{C}}^{(k)T}\bar{\bm{C}}^{(k)}` 的二次项.]
这样, 它们都是消除的候选, 尽管这只会让我们退回到原始的能量表达式 :eq:`pert-mat-ener-n`.
显然, 采用这个策略不会有任何进展, 尤其是由于, 对于每个消除的矢量 :math:`\bar{\bm{C}}^{(k)}`,
存在一个剩余的等价矢量 :math:`\bm{C}^{(k)}`.

显然, 我们必须采用更高明的方式选择要消去的矢量.
我们首先注意到, 如果两个不同的矢量出现在拉格朗日量的同一项,
只有其中一个可以被消去, 尽管他们都在拉格朗日量中线性出现.
这个 "排除原则" 的原因是, 从表达式移除第一个矢量改变了 :math:`L^{(n)}` 对第二个矢量的依赖,
由于, 通过舍弃包含第一个矢量的所有项, 我们也舍弃了至少一个包含第二个矢量的项.
因此, 在消去第一个矢量之后, 拉格朗日量对第二个矢量不再是变分的,
因此我们必须保持拉格朗日量的形式.
以这个原则为指导, 我们检查所有出现在拉格朗日量的
:math:`\bar{\bm{C}}^{(k)}` 和 :math:`\bm{C}^{(l)}` 对,
并考虑消去其中高阶的部分.
尤其是, 我们将尝试同时消去 :math:`\bar{\bm{C}}^{(k)}` 和 :math:`\bm{C}^{(k)}`,
由于它们数值上是相同的, 并且消去其中一个不会带来任何计算节省.
[这么做的前提是, 它们不在同一项出现.]

对于偶数阶 :math:`2n` 的 RSPT 拉格朗日量, 观察 :eq:`pert-mat-lag-n` 我们发现矢量
:math:`k>n-1` 的 :math:`\bar{\bm{C}}^{(k)}` 和 :math:`k>n` 的 :math:`\bm{C}^{(k)}`
从不会在同一项出现. 因此, 它们不会彼此干扰, 可以被同时消去, 给出表达式

.. math::
    L^{(2n)} = \bar{\bm{C}}^{(n - 1)T} \bm{U} \bm{C}^{(n)}
        -\sum_{k=1}^{2n-2} \sum_{m=\max(1, n-k)}^{\min(n-1,2n-k-1)} E^{(k)}\bar{\bm{C}}^{(m)T} \bm{C}^{(2n-k-m)}

[这里, :eq:`pert-mat-lag-n` 等号右边第二项要求同时出现, 需要 :math:`k = 2n - k` 即 :math:`k = n`. 第三项不可能同时出现. 第四项需要 :math:`m = 2n - k - m` 即
:math:`k = 2(n - m)`. 由于 :math:`k \ge 1`, 得 :math:`m < n`. 由于 :math:`m`
即同时出现的项的指标, 因此, 同时出现项的指标必须满足 :math:`< n`. 综上,
同时出现的项指标 :math:`(k)` 必须满足 :math:`k \le n`.
换句话说, 满足 :math:`k > n` 的 :math:`\bar{\bm{C}}^{(k)}` 和 :math:`\bm{C}^{(k)}` 一定不会同时出现. 对于 :math:`k = n`, 它们会同时出现, 但是我们可以选择其中一个, 这里选择
:math:`\bar{\bm{C}}^{(k)}`. 因此我们消去满足 :math:`k > n-1` 的
:math:`\bar{\bm{C}}^{(k)}` 和满足 :math:`k>n` 的 :math:`\bm{C}^{(k)}`.
这构成了一共 :math:`n + n - 1 = 2n - 1` 项, 于是 :eq:`pert-mat-lag-n` 等号后面
第二项都全部消去, 第三项只有一项保留. 但是最后一项按情况保留. 消去的项满足 :math:`m > n - 1` 或者
:math:`2n - k - m > n`, 即 :math:`m < n - k`.
因此保留的项满足 :math:`m < n` 并且 :math:`m \ge n - k`, 同时 :math:`m`
还必须满足原来的求和指标约束 :math:`1 \le m \le 2n - k - 1`.
]

因此 :math:`2n` 阶的拉格朗日量, 可以从 :math:`k \le n - 1` 阶的乘子和 :math:` k \le n`
的波函数参数来计算. 对于奇数阶微扰, 可以进行类似的分析, 我们发现矢量
:math:`k>n` 的 :math:`\bar{\bm{C}}^{(k)}` 和 :math:`k>n` 的 :math:`\bm{C}^{(k)}`
从不会在 :math:`2n + 1` 阶的拉格朗日量的同一项出现. 消去这些项导致如下表达式,
只包括 :math:`k \le n` 阶的矢量

.. math::
    L^{(2n+1)} = \bar{\bm{C}}^{(n)T} \bm{U} \bm{C}^{(n)}
        -\sum_{k=1}^{2n-1}
        \sum_{m=\max(1, n-k+1)}^{\min(n-1,2n-k)}
        E^{(k)}\bar{\bm{C}}^{(m)T} \bm{C}^{(2n+1-k-m)}

综合偶数和奇数阶微扰的结果, 我们得到结论是直到 :math:`n` 阶的波函数决定
直到 :math:`2n+1` 阶的 RSPT 拉格朗日量 (**Wigner 2n+1 规则**)
以及直到 :math:`n` 阶的关联的乘子决定直到 :math:`2n+2` 阶的拉格朗日量 (**2n+2** 规则).

由于对于波函数和乘子的最优值, 拉格朗日量和能量相同, 我们得到微扰能量的如下表达式

.. math::
    L^{(2n+i)} = \bm{C}^{(n+i-1)T} \bm{U} \bm{C}^{(n)}
        -\sum_{k=1}^{2n+i-2} \sum_{m=\max(1, n-k+i)}^{\min(n+i-1,2n+i-k-1)} E^{(k)}\bm{C}^{(m)T} \bm{C}^{(2n+i-k-m)}

这里我们通过引入整数 :math:`i` 合并了偶数和奇数阶的表达式, 其中 :math:`i = 0`
是对于偶数阶能量, 而 :math:`i=1` 是对于奇数阶的能量.
并且, 我们这里把能量完全写为波函数参数 :math:`\bm{C}^{(k)}` [即去掉了乘子参数], 由于
矢量 :math:`\bar{\bm{C}}^{(k)}` 和 :math:`\bm{C}^{(k)}` 是在任意阶彼此相等的.

上式是我们关于微扰能量的最终表达式.
它将 :math:`2n + 1` 阶的能量表示为 :math:`n` 阶和更低阶的波函数修正,
和 Wigner 2n +1 规则一致. 这样, 这个表达式比原始的 :eq:`pert-mat-ener-n` 更好,
因为原始的表达式需要直到 :math:`n-1` 阶的波函数修正来计算 :math:`n` 阶能量.
从上式, 很容易生成和 Wigner 2n + 1 规则适配的任意阶的能量修正.
为了便于引用, 我们这里给出 5 阶以内的表达式

.. math::
    E^{(1)} =&\ \bm{C}^{(0)T}\bm{U} \bm{C}^{(0)} \\
    E^{(2)} =&\ \bm{C}^{(0)T}\bm{U} \bm{C}^{(1)} \\
    E^{(3)} =&\ \bm{C}^{(1)T}(\bm{U} - E^{(1)}\bm{1}) \bm{C}^{(1)} \\
    E^{(4)} =&\ \bm{C}^{(1)T}(\bm{U} - E^{(1)}\bm{1}) \bm{C}^{(2)}
        - E^{(2)} \bm{C}^{(1)T} \bm{C}^{(1)} \\
    E^{(5)} =&\ \bm{C}^{(2)}(\bm{U} - E^{(1)}\bm{1}) \bm{C}^{(2)}
        - 2E^{(2)}\bm{C}^{(1)T} \bm{C}^{(2)}
        - E^{(3)} \bm{C}^{(1)T} \bm{C}^{(1)}
    :label: pert-mat-ener-5

只有前两个能量和从原始 RSPT 表达式得到的一致.
所有其他的表达式包含低阶能量修正的贡献. 波函数修正从 :eq:`pert-mat-wfn-n` 得到.

在结束这个主题之前有一些评论.
首先, 尽管满足 2n+1 规则的能量表达式通过变分拉格朗日量的方式得到,
应该意识到这些最终表达式本身不是变分的.
事实上, 拉格朗日量的变分性质在消去的过程中消失了.
并且, 使得这个消去成为可能的变分性质和上限 (在 Hartree 和 CI 能量的意义) 无关,
只和变分参数的稳定要求有关. 因此, 尽管拉格朗日量 :eq:`pert-mat-lag-n` 是变分的,
它不表示所计算能量的上限.

在我们关于微扰能量的讨论中, 我们发现 :math:`n` 阶波函数参数决定 :math:`2n+1` 阶的能量,
但是拉格朗日乘子满足一个更强的 :math:`2n+2` 规则. 这个 :math:`2n+2`
规则是一个一般结果, 对于任何变分拉格朗日量的乘子, 并且是因为拉个朗日量以线性方式进入拉格朗日量.
:math:`2n+2` 规则具有显著计算重要性, 在例如, 计算能量导数的时候.
对于前五个能量修正, 我们在表 1 列出了所需的波函数和乘子修正.
但是目前的情况是特殊的, 因为乘子逐阶数值上和波函数参数一样.
因此, :math:`2n+2` 规则的好处对于计算 RSPT 能量并没有重要意义.

**表1** Wigner 对于波函数参数的 2n + 1 规则和拉格朗日乘子的 2n + 2 规则

+--------------------------+---------------+---------------+---------------+---------------+---------------+---------------+
|                          |:math:`E^{(0)}`|:math:`E^{(1)}`|:math:`E^{(2)}`|:math:`E^{(3)}`|:math:`E^{(4)}`|:math:`E^{(5)}`|
+==========================+===============+===============+===============+===============+===============+===============+
|:math:`\bm{C}^{(k)}`      |              0|              0|              1|              1|              2|              2|
+--------------------------+---------------+---------------+---------------+---------------+---------------+---------------+
|:math:`\bar{\bm{C}}^{(k)}`|              0|              0|              0|              1|              1|              2|
+--------------------------+---------------+---------------+---------------+---------------+---------------+---------------+

3 Hylleraas 泛函
^^^^^^^^^^^^^^^^

存在一组泛函体系, 从它们可以通过变分过程得到偶数阶的瑞利-薛定谔能量和任意阶的波函数.
在 **Hylleraas 泛函方法** 中, :math:`2n` 阶的能量通过最小化
:math:`2n` 阶的 **Hylleraas 泛函** 得到

.. math::
    E^{(2n)} = \min_{\bm{\zeta}} J_H^{(2n)}(\bm{\zeta})

在 Hylleraas 泛函的最小值处 (在后面进行构造), 变分参数 :math:`\bm{\zeta}` 决定
:math:`n` 阶的波函数. 在某些情况, Hylleraas 方法是标准微扰论的一个有用替代,
我们将在当前小节看到这一点.

Hylleraas 泛函和瑞利-薛定谔理论的变分拉格朗日量 :eq:`pert-mat-lag-n` 很容易联系起来.
我们知道 RSPT 拉格朗日量 :math:`L^{(2n)}(\bm{C}^{(k)}, \bar{\bm{C}}^{(k)})`
关于波函数参数 :math:`\bm{C}^{(k)}` 和乘子 :math:`\bar{\bm{C}}^{(k)}` 是对称的,
并且最优的 :math:`\bm{C}^{(k)}` 和 :math:`\bar{\bm{C}}^{(k)}` 的值是相等的.
现在我们引入按照如下表达式的约化拉格朗日量

.. math::
    J^{(2n)}(\bm{C}^{(k)}) = L^{(2n)}(\bm{C}^{(k)}, \bm{C}^{(k)})

显然, 约化拉格朗日量的稳定点和完整拉格朗日量的稳定点一样.
除此之外, 约化拉格朗日量对于 :math:`k>n` 的 :math:`\bm{C}^{(k)}` 是线性的,
正如完整拉格朗日量那样. 因此, 我们可以对约化拉格朗日量进行和 拉格朗日量
:eq:`pert-mat-lag-n` 一样的操作. 因此, 我们从如下条件产生瑞利-薛定谔波函数修正

.. math::
    \frac{\partial J^{(2n)}}{\partial \bm{C}^{(k)}}
    = 2 \frac{\partial L^{(2n)}}{\partial \bm{C}^{(k)}} = \bm{0},
    \quad k > n

并从约化拉格朗日量的稳定点计算偶数阶能量

.. math::
    E_{\mathrm{opt}}^{(2n)} = J_{\mathrm{opt}}^{(2n)}

在上述变分条件定义的稳定点, 我们根据 2n+1 规则化简约化拉格朗日量, 得到如下形式的表达式

.. math::
    J_{\mathrm{opt}}^{(2n)} =&\
        \bm{C}^{(n)T} (\bm{H}_0 - E^{(0)}\bm{1}) \bm{C}^{(n)}
        + 2 \bm{C}^{(n)T} \left(
        \bm{U} \bm{C}^{(n-1)} - \sum_{k=1}^{n-1} E^{(k)}\bm{C}^{(n-k)}
            \right) \\
    &\ -\sum_{k=1}^{2n-2} \sum_{m=\max(1,n-k+1)}^{\min(n-1,2n-k-1)}
    E^{(k)}\bm{C}^{(m)T}\bm{C}^{(2n-k-m)}

在推导这个表达式的过程中, 我们没有更改或者消除任何包括 :math:`\bm{C}^{(n)}`
的项. 上式的约化拉格朗日量因此保留了关于 :math:`\bm{C}^{(n)}` 的变分性.
根据这个观察, 我们引入如下的 **Hylleraas 泛函**

.. math::
    J_H^{(2n)}(\bm{\zeta}) =&\
        \bm{\zeta}^T (\bm{H}_0 - E^{(0)}\bm{1}) \bm{\zeta}
        + 2 \bm{\zeta}^T \left(
        \bm{U} \bm{C}^{(n-1)} - \sum_{k=1}^{n-1} E^{(k)}\bm{C}^{(n-k)}
            \right) \\
    &\ -\sum_{k=1}^{2n-2} \sum_{m=\max(1,n-k+1)}^{\min(n-1,2n-k-1)}
    E^{(k)}\bm{C}^{(m)T}\bm{C}^{(2n-k-m)}

其中 :math:`\bm{\zeta}` 要求和 :math:`\bm{C}^{(0)}` 正交.
注意, Hylleraas 泛函是一个仅仅关于 :math:`\bm{\zeta}` 的函数.
剩余参数 :math:`k<n` 的 :math:`\bm{C}^{(k)}` 是固定的, 
并且必须是已知的, 在构造泛函之前.
对上式关于 :math:`\bm{\zeta}` 求导并和瑞利-薛定谔修正 :eq:`pert-mat-wfn-n` 比较,
读者很容易验证 Hylleraas 泛函的稳定点出现在 :math:`\bm{\zeta} = \bm{C}^{(n)}`.
除此之外, 稳定点是是最小点 (对基态计算), 由于 Hylleraas 泛函的 Hessian 矩阵

.. math::
    \frac{\mathrm{d}^2 J_H^{(2n)}}{\mathrm{d} \bm{\zeta}^2}
    = 2 (\bm{H}_0 - E^{(0)} \bm{1})

是半正定的. [这里要求 :math:`E^{(0)}` 是基态能量, 则 :math:`\bm{H}_0`
的所有特征值都大于或等于 :math:`E^{(0)}`, 变换到自然轨道基组,
:math:`\bm{H}_0 - E^{(0)} \bm{1}` 的所有特征值都大于等于零, 因此是半正定的. ]
最后, 根据 :math:`E_{\mathrm{opt}}^{(2n)} = J_{\mathrm{opt}}^{(2n)}`,
最小值处的函数值给出 :math:`2n` 阶能量.

总之, 我们可以通过最小化 Hylleraas 泛函 :math:`J_H^{(2n)}`
来计算 :math:`n` 阶的基态波函数的瑞利-薛定谔修正.
泛函的最小值对应于能量 :math:`E^{(2n)}`.
这个方法构成了 **Hylleraas 变分方法**.
通过重复应用 Hylleraas 变分方法, 我们可以产生任意阶微扰的波函数.

在某些情形, 通过 Hylleraas 变分方法计算 :math:`E^{(2n)}` 比通过标准表达式更好.
假定, 我们得到的不是精确波函数 :math:`\bm{C}^{(n)}` 而是一个近似

.. math::
    \tilde{\bm{C}}^{(n)} = \bm{C}^{(n)} + \bm{\delta}

将近似矢量 :math:`\tilde{\bm{C}}^{(n)}` 插入 Hylleraas 泛函中, 我们得到

.. math::
    J_H^{(2n)}(\tilde{\bm{C}}^{(n)})  =
        \bm{\delta}^T (\bm{H}_0 - E^{(0)}\bm{1}) \bm{\delta}

[注意这里还有一个线性项为]

.. math::
    2 \bm{\delta}^T \left[ (\bm{H}_0 - E^{(0)}\bm{1})\bm{C}^{(n)}
        + \bm{U} \bm{C}^{(n-1)} - \sum_{k=1}^{n-1} E^{(k)}\bm{C}^{(n-k)} \right]

[带入 :eq:`pert-mat-wfn-n` 可发现中括号中的内容为零, 因此没有线性项.]

因此, 如果 :math:`\bm{C}^{(n)}` 中的误差是 :math:`\lVert \bm{\delta} \rVert`,
那么 :math:`E^{(2n)}` 中的误差将是正的, 并且正比于
:math:`\lVert \bm{\delta} \rVert^2`, 只要能量是从 Hylleraas 泛函得到.
如果我们使用了标准拉格朗日量, 并化简以适应 2n+1 和 2n+2 规则,
波函数 :math:`\bm{C}^{(n)}` 中幅度 :math:`\lVert \bm{\delta} \rVert`
的误差会导致能量中正比于 :math:`\lVert \bm{\delta} \rVert` 的误差 (正的或负的).

Hylleraas 变分方法有一个优势, 即我们可以计算波函数修正 :math:`\bm{C}^{(n)}`
通过定义电子态的一组非线性参数. 因此我们并不限制于线性变分空间.
作为一个附加好处, :math:`E^{(2n)}` 的误差是二次的, 关于 :math:`n` 阶波函数.
但是, 低阶修正 (:math:`k <n` 的 :math:`\bm{C}^{(k)}`) 必须准确求出.

4 RSPT 中的大小延展性
^^^^^^^^^^^^^^^^^^^^^

RSPT 中的大小延展性问题是困难的.
尽管很容易验证低阶的情况下, 我们得到的大小延展的能量,
作者并不知道对于一个可分的零阶哈密顿量, RSPT 的大小延展性的一般证明.
这里我们将检查 RSPT 能量直到三阶的表达式, 验证它们是大小延展的.
同时, 我们将看到 RSPT 能量不是逐项大小延展的.
简单来说, 在瑞利-薛定谔理论, 大小延展性逐阶出现, 而不是逐项出现.
在第 3 节我们将展示, 在 CCPT, 大小延展性逐项并且逐阶出现,
使得这个特别的微扰论的形式特别适合分子计算.

我们考虑包括两个无相互作用的子系统 :math:`A` 和 :math:`B` 的超系统.
哈密顿量是可分的

.. math::
    \hat{H}_{AB} = \hat{H}_A + \hat{H}_B

并且, 我们假设未微扰的哈密顿量 (以及微扰, 作为附带作用) 也是可分的

.. math::
    \hat{H}_{0,AB} =&\ \hat{H}_{0,A} + \hat{H}_{0,B} \\
    \hat{U}_{AB} =&\ \hat{U}_A + \hat{U}_B

由于零阶哈密顿量是可加性可分的, 零阶波函数 (作为零阶哈密顿量的一个本征函数)
是可乘性可分的

.. math::
    |0_{AB}^{(0)}\rangle = |0_A^{(0)} 0_B^{(0)}\rangle

我们现在检查 RSPT 能量的大小延展性到三阶. 这些能量由 :eq:`pert-mat-ener-5` 给出.

一阶瑞利-薛定谔能量可以从未微扰复合态给出

.. math::
    E_{AB}^{(1)}
        =&\ \langle 0_A^{(0)}0_B^{(0)}|\hat{U}_A+\hat{U}_B|0_A^{(0)}0_B^{(0)}\rangle \\
        =&\ \langle 0_A^{(0)}|\hat{U}_A|0_A^{(0)}\rangle
        \langle 0_B^{(0)}| 0_B^{(0)}\rangle
        + \langle 0_A^{(0)}|0_A^{(0)}\rangle
        \langle 0_B^{(0)}\hat{U}_B|  0_B^{(0)}\rangle \\
        =&\ E_A^{(1)} + E_B^{(1)}

因此, 一阶能量是大小延展的, 它成为通过将 RSPT 分别应用到两个子系统的能量之和.

对于二阶和三阶瑞利-薛定谔能量,
我们需要一阶波函数. 对于复合系统, 这可以写为如下形式

.. math::
    |0_{AB}^{(1)}\rangle = -(\hat{K}_A + \hat{K}_B)^{-1}(\hat{V}_A + \hat{V}_B)
        |0_{AB}^{(0)}\rangle

其中我们引入了如下记号

.. math::
    \hat{K}_A =&\ \hat{H}_{0,A} - E_A^{(0)} \\
    \hat{V}_A =&\ \hat{U}_{A} - E_A^{(1)}

以及类似的对于系统 B 的记号. 波函数 :math:`|0_{AB}^{(1)}\rangle` 包含两部分贡献.
应用算符恒等式

.. math::
    (\hat{A} + \hat{B})^{-1} = \hat{A}^{-1} - (\hat{A} + \hat{B})^{-1}\hat{B}\hat{A}^{-1}

[验证如下]

.. math::
    \hat{1} = (\hat{A} + \hat{B})^{-1} (\hat{A} + \hat{B})
    =&\ (\hat{A} + \hat{B})^{-1} \hat{A} + (\hat{A} + \hat{B})^{-1} \hat{B} \\
    \hat{A}^{-1} =&\
        (\hat{A} + \hat{B})^{-1} \hat{A}\hat{A}^{-1} + (\hat{A}
        + \hat{B})^{-1} \hat{B}\hat{A}^{-1} \\
    (\hat{A} + \hat{B})^{-1} =&\ \hat{A}^{-1} - (\hat{A} + \hat{B})^{-1} \hat{B}\hat{A}^{-1}

第一项贡献可以写为

.. math::
    -(\hat{K}_A + \hat{K}_B)^{-1}\hat{V}_A |0_{AB}^{(0)}\rangle
    =&\ -\hat{K}_A^{-1}\hat{V}_A |0_{AB}^{(0)}\rangle
    +(\hat{K}_A + \hat{K}_B)^{-1} \hat{K}_B\hat{K}_A^{-1} \hat{V}_A |0_{AB}^{(0)}\rangle\\
    =&\ -\hat{K}_A^{-1}\hat{V}_A |0_{AB}^{(0)}\rangle
    = |0_A^{(1)}0_B^{(0)} \rangle

其中, 我们对易了 :math:`\hat{K}_B` 和 :math:`\hat{K}_A^{-1}\hat{V}_A` 并使用了如下关系

.. math::
    \hat{K}_B|0_B^{(0)} \rangle = 0

第二项贡献可以按照同样的方式重写, 最终我们得到简单表达式

.. math::
    |0_{AB}^{(1)} \rangle = |0_A^{(1)}0_B^{(0)}\rangle + |0_A^{(0)}0_B^{(1)}\rangle

对于一阶微扰的复合波函数. 因此, 微扰波函数可以写为两个态的叠加,
其中每个都是未微扰的子系统和微扰的子系统的积.
意识到微扰波函数 **不是** 乘积形式很重要, 即, 它不是可乘性可分的.
实际上, 它包括直到一阶正确的乘积波函数. 但是, 上式的形式, 对于确保二阶和三阶能量的大小延展性是足够的.
我们现在考虑这个问题.

二阶 RSPT 能量的大小延展性很容易建立.
因此, 将上式微扰波函数插入能量表达式 :eq:`pert-mat-ener-5`, 我们得到大小延展的修正

.. math::
    E_{AB}^{(2)} =&\ \langle 0_{AB}^{(0)}|\hat{U}_A + \hat{U}_B | 0_{AB}^{(1)} \rangle \\
        =&\ \langle 0_{A}^{(0)} 0_{B}^{(0)}|\hat{U}_A | 0_{A}^{(1)} 0_{B}^{(0)} \rangle
        + \langle 0_{A}^{(0)} 0_{B}^{(0)}|\hat{U}_B | 0_{A}^{(0)} 0_{B}^{(1)} \rangle \\
    =&\ E_A^{(2)} + E_B^{(2)}

[注意其中第二个等号, :math:`\hat{U}_A` 不会和 B 子系统有作用, 并且在 A 子系统态 :math:`| 0_{A}^{(0)}\rangle` 的期望值为 :math:`E^{(1)}`, 尽管如此, 由于 :math:`\langle 0_{B}^{(0)} | 0_{B}^{(1)} \rangle = 0`, 这一项 :math:`\langle 0_{A}^{(0)} 0_{B}^{(0)}|\hat{U}_A | 0_{A}^{(0)} 0_{B}^{(1)} \rangle` 还是为零.]

最后, 我们考虑三阶能量, 它在记号

.. math::
    \hat{V}_{AB} = \hat{V}_A + \hat{V}_B

可以写为

.. math::
    E_{AB}^{(3)} =&\ \langle 0_{AB}^{(1)}|\hat{V}_{AB} | 0_{AB}^{(1)} \rangle \\
    =&\ \langle 0_{A}^{(1)} 0_{B}^{(0)}|\hat{V}_{AB} | 0_{A}^{(1)} 0_{B}^{(0)} \rangle
    + \langle 0_{A}^{(1)} 0_{B}^{(0)}|\hat{V}_{AB} | 0_{A}^{(0)} 0_{B}^{(1)} \rangle \\
    &\ + \langle 0_{A}^{(0)} 0_{B}^{(1)}|\hat{V}_{AB} | 0_{A}^{(1)} 0_{B}^{(0)} \rangle
    + \langle 0_{A}^{(0)} 0_{B}^{(1)}|\hat{V}_{AB} | 0_{A}^{(0)} 0_{B}^{(1)} \rangle

对于上式的第一个贡献, 我们有

.. math::
    \langle 0_{A}^{(1)} 0_{B}^{(0)}|\hat{V}_{AB} | 0_{A}^{(1)} 0_{B}^{(0)} \rangle
    = \langle 0_{A}^{(1)} |\hat{V}_{A} | 0_{A}^{(1)} \rangle
    \langle 0_{B}^{(0)} | 0_{B}^{(0)} \rangle
    + \langle 0_{A}^{(1)} | 0_{A}^{(1)} \rangle
    \langle 0_{B}^{(0)} |\hat{V}_{B} | 0_{B}^{(0)} \rangle

其中最后一项为零, 因为

.. math::
    \langle 0_{B}^{(0)} |\hat{V}_{B} | 0_{B}^{(0)} \rangle =
        \langle 0_{B}^{(0)} |\hat{U}_{B} | 0_{B}^{(0)} \rangle - E_B^{(1)} = 0

应该强调, 当乘以 :math:`\langle 0_{A}^{(1)} | 0_{A}^{(1)} \rangle`,
上式中两项都导致不大小延展性的能量贡献.
这样的不大小延展性的项的相互抵消是 RSPT 的一个一般特性, 并且在微扰的每一阶精确出现.
RSPT 能量修正因此不是逐项大小延展的.

总之, 我们得到三阶能量的第一个贡献

.. math::
    \langle 0_{A}^{(1)} 0_{B}^{(0)}|\hat{V}_{AB} | 0_{A}^{(1)} 0_{B}^{(0)} \rangle
    = E_A^{(3)}

以同样的方式, 第四项产生

.. math::
    \langle 0_{A}^{(0)} 0_{B}^{(1)}|\hat{V}_{AB} | 0_{A}^{(0)} 0_{B}^{(1)} \rangle
    = E_B^{(3)}

而剩余两项相互抵消, 由于不同子系统的态正交.

[这本质上是由于, :math:`\hat{V}_{AB}` 是两个子系统的和, 拆开后,
最多只能和一个子系统的态有非零期望值, 那么另一个子系统的左矢和右矢必须直接内积, 而它们是正交的得零.
因此无论前一个子系统期望值如何, 最终的结果为零. 例如]

.. math::
    \langle 0_{A}^{(1)} 0_{B}^{(0)}|\hat{V}_{AB} | 0_{A}^{(0)} 0_{B}^{(1)} \rangle
    =&\ \langle 0_{A}^{(1)} 0_{B}^{(0)}|\hat{V}_{A} | 0_{A}^{(0)} 0_{B}^{(1)} \rangle
     + \langle 0_{A}^{(1)} 0_{B}^{(0)}|\hat{V}_{B} | 0_{A}^{(0)} 0_{B}^{(1)} \rangle \\
    =&\ \langle 0_{A}^{(1)} |\hat{V}_{A}| 0_{A}^{(0)} \rangle
        \langle 0_{B}^{(0)}| 0_{B}^{(1)} \rangle
     + \langle 0_{A}^{(1)} |0_{A}^{(0)} \rangle
        \langle 0_{B}^{(0)}| \hat{V}_{B}| 0_{B}^{(1)} \rangle \\
    =&\ \langle 0_{A}^{(1)} |\hat{V}_{A}| 0_{A}^{(0)} \rangle \cdot 0
    + 0\cdot \langle 0_{B}^{(0)}| \hat{V}_{B}| 0_{B}^{(1)} \rangle  = 0

因此我们发现三阶 RSPT 能量是大小延展的

.. math::
    E_{AB}^{(3)} = \langle 0_{AB}^{(1)}|\hat{V}_{AB} | 0_{AB}^{(1)} \rangle
        = E_A^{(3)} + E_B^{(3)}

但是这个大小延展性仅仅发生在抵消 :math:`\langle 0_{AB}^{(1)}|\hat{V}_{AB} | 0_{AB}^{(1)} \rangle`
中各自不大小延展的项之后. 更一般地, 不大小延展的项的存在可以从 2n+1 形式的 RSPT 能量的表达式的观察预知.
这些项的存在, 是计算上不方便的, 并且理论上也是不令人满意的.
尤其是, 当对 RSPT 能量做近似或者修改, 我们需要非常小心, 由于省略个别项将违背大小延展性.

现在回到 n + 1 形式的 RSPT 能量 :eq:`pert-mat-ener-n`.
我们指出, 这个形式不违背逐项大小延展性的要求.
事实上, 如果 RSPT 能量从 :eq:`pert-mat-ener-n` 计算 (不建议这样做, 因为违背了 2n + 1 规则),
那么大小延展性是保证的, 如果我们假定微扰波函数可以写为如下形式

.. math::
    |0_{AB}^{(n)}\rangle = \sum_{k=0}^n |0_A^{(n-k)}0_B^{(k)}\rangle
    :label: pert-size-wfn-n

这个形式最好理解为, 一个乘积波函数, 而我们从这个乘积中提取了在微扰中所有 :math:`n` 阶修正的项.
为了看到上式如何导致大小延展性, 我们发现

.. math::
    E_{AB}^{(n)} =&\ \langle 0_{AB}^{(0)} | \hat{U}_A + \hat{U}_B | 0_{AB}^{(n-1)}\rangle
    = \sum_{k=0}^{n-1} \langle 0_A^{(0)} 0_B^{(0)}| \hat{U}_A + \hat{U}_B
    |0_A^{(n-k-1)} 0_B^{(k)}\rangle \\
    =&\ \langle 0_{A}^{(0)} | \hat{U}_A | 0_{A}^{(n-1)}\rangle
    + \langle 0_{B}^{(0)} | \hat{U}_B | 0_{B}^{(n-1)}\rangle
    = E_A^{(n)} + E_B^{(n)}

这显示直到 :math:`n` 阶的能量是大小延展的.
因此, 很自然地希望寻找一个形式, 其中微扰波函数以 :eq:`pert-size-wfn-n` 形式出现,
因此保证大小延展性. 我们将在第三节回到这个问题.

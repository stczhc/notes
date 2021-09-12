
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

第十四章 微扰论 (B)
===================

第二节 Moller-Plesset 微扰论
----------------------------

在第一节, 我们讨论了一般意义上的微扰论, 没有指定零阶哈密顿量.
微扰论的成功关键性地依赖于我们提供一个合适的零阶算符的能力.
在电子结构理论, 最普遍的零阶哈密顿量是福克算符,
在正则自旋轨道表象, 这可以以轨道能量写为

.. math::
    \hat{H}_0^{MP} = \sum_{p\sigma} \epsilon_{p\sigma} a_{p\sigma}^\dagger a_{p\sigma}

零阶态是 Hartree-Fock 行列式, 以及相对于这个态的激发行列式.
这导致的理论称为 **Moller-Plesset 微扰论 (MPPT)**.
对于具有小的静态相关贡献的体系, Hartree-Fock 波函数提供了一个足够好的 FCI 波函数的零阶近似.
在这些情况, 哈密顿量的 Moller-Plesset 分割既是吸引人的, 也是具有很好动机的:
平均电子-电子相互作用被包含在零阶算符中, 并且微扰算符 (涨落势) 表示平均和瞬时相互作用之间的差.

一个相关的微扰方法是基于哈密顿量的 Epstein-Nesbet 分割,
其中零阶算符包含哈密顿量中维持自旋轨道占据数不变的部分

.. math::
    \hat{H}_0^{EN} = \sum_p h_{pp} \sum_{\sigma} a_{p\sigma}^\dagger a_{p\sigma}
    + \frac{1}{2} \sum_{pq} g_{ppqq} \sum_{\sigma\tau} a_{p\sigma}^\dagger a_{q\tau}^\dagger
        a_{q\tau}a_{p\sigma}
    + \frac{1}{2} \sum_{pq} g_{pqqp} \sum_{\sigma} a_{p\sigma}^\dagger a_{q\sigma}^\dagger
        a_{p\sigma}a_{q\sigma}

和 Fock 算符一样, 零阶 Epstein-Nesbet 哈密顿量的本征态是行列式.
尽管偶尔被使用, Epstein-Nesbet 方法显著没有 MPPT 成功.

如果波函数包含几个具有大权重的行列式, 因为大的静态关联贡献, 应该被使用基于多参考的技术,
而不是例如 MPPT 的单参考方法. 这些体系的微扰处理比单参考体系的处理更加复杂.
我们在第七节讨论多参考微扰.

1 零阶 MPPT 系统
^^^^^^^^^^^^^^^^

在这一节, 我们考虑 **自旋非限制的 MPPT**, 将自旋非限制的 Hartree-Fock 波函数作为我们的未微扰态,
将福克算符作为我们的零阶哈密顿量.
对闭壳层态适用的自旋限制处理在第四节给出, 在第三节 CCPT 的讨论之后.

在正则表象, 第 10.4 节的 Fock 矩阵是对角的, 从而 **零阶 Moller-Plesset 哈密顿量** 可以写为

.. math::
    \hat{H}_0^{MP} = \hat{f} = \sum_P \epsilon_P a_P^\dagger a_P

其中 :math:`\epsilon_P` 是轨道能量, 而求和遍及所有自旋轨道.
我们采用和之前同样的约定: 指标 :math:`P, Q, R` 和 :math:`S` 用来表示未指定的 (占据的和虚的)
自旋轨道; :math:`I, J, K` 和 :math:`L` 表示占据的自旋轨道;
而 :math:`A, B, C` 和 :math:`D` 表示虚的自旋轨道.
采用这个记号, 电子哈密顿量变为

.. math::
    \hat{H} = \sum_{PQ} h_{PQ} a_P^\dagger a_Q
        + \frac{1}{2} \sum_{PQRS} g_{PQRS} a_P^\dagger a_R^\dagger a_S a_Q + h_{nuc}

微扰算符

.. math::
    \hat{\Phi} = \hat{H} - \hat{f} - h_{nuc}
    :label: pert-fluc-pot

称为 **涨落势**, 因为它产生了电子关于 Hartree-Fock 理论的平均场描述的涨落.
Hartree-Fock 参考态满足零阶薛定谔方程

.. math::
    \hat{f} | \mathrm{HF} \rangle = \sum_I
        \epsilon_I | \mathrm{HF} \rangle = E_{MP}^{(0)} | \mathrm{HF} \rangle
    :label: pert-mp0-ener

[注意这里求和限制为了占据轨道.]

而它的正交互补空间由所有激发行列式展开. 为了保持和 13.7.5 节的记号一致,
我们按照如下的方式写出单, 双, 和三重激发行列式

.. math::
    \left| \begin{matrix} A \\ I \end{matrix} \right\rangle
    =&\ \hat{\tau}_I^A |\mathrm{HF}\rangle = a_A^\dagger a_I |\mathrm{HF}\rangle \\
    \left| \begin{matrix} A B \\ I J \end{matrix} \right\rangle
    =&\ \hat{\tau}_{IJ}^{AB} |\mathrm{HF}\rangle =
        a_A^\dagger a_I a_B^\dagger a_J |\mathrm{HF}\rangle,\quad
        \begin{cases} A> B \\ I >J \end{cases} \\
    \left| \begin{matrix} ABC \\ IJK \end{matrix} \right\rangle
    =&\ \hat{\tau}_{IJK}^{ABC} |\mathrm{HF}\rangle =
        a_A^\dagger a_I a_B^\dagger a_J a_C^\dagger a_K |\mathrm{HF}\rangle,\quad
        \begin{cases} A> B>C \\ I >J>K \end{cases}

更高阶的激发可以用这个方法的一个显然的推广来生成,
通过施加合适的对自旋轨道指标的限制来避免重复和固定相因子 [费米子交换相因子].
一个未指定行列式可以写为 [这里列出所有行列式, 然后最后的电子相关波函数需要在这些行列式展开.]

.. math::
    |\mu\rangle = \hat{\tau}_\mu | \mathrm{HF} \rangle
    :label: pert-excited-det

其中 :math:`\hat{\tau}_0` 解释为恒等算符, 它产生 Hartree-Fock 基态.
Hartree-Fock 和激发行列式构成了一个正交归一的态组

.. math::
    \langle \mu | \nu \rangle = \delta_{\mu\nu}

在第四节的闭壳层 Moller-Plesset 理论, 正交归一基组的构建更加复杂,
我们将使用一个双正交表象作为替代.

和 Hartree-Fock 行列式类似, 零阶激发态 :eq:`pert-excited-det` 是 Fock 算符的本征函数

.. math::
    \hat{f} |\mu\rangle = E_\mu^{(0)} |\mu\rangle = (E_{MP}^{(0)} + \epsilon_\mu) |\mu\rangle
    :label: pert-excited-det-ener

其中, 例如 [这里 :math:`\mu` 指标的一个特殊化是 :math:`ABIJ`.
而 :math:`\epsilon_\mu` 表示激发行列式能量和零阶基态能量的差.]

.. math::
    \epsilon_{ABIJ} = \epsilon_A + \epsilon_B - \epsilon_I - \epsilon_J

我们也注意到下面的简单对易关系

.. math::
    [\hat{f}, \hat{\tau}_\mu] = \epsilon_\mu \hat{\tau}_\mu

[相当于, 先激发, 然后再求轨道能量之和, 减去先求轨道能量之和再激发.
得到的是轨道能量之和的差值, 增加的能量是激发目标轨道, 减少的能量是激发的源轨道.
:math:`\hat{f}` 只会产生一个系数, 不会改变态矢. ]

它对所有激发算符都成立, 包括恒等算符 :math:`\hat{\tau}_0` 因为 :math:`\epsilon_0` 是零.

根据第 10.2.3 节的 Brillouin 定理, 哈密顿量不会将 Hartree-Fock 波函数和单激发行列式耦合

.. math::
    \bigg\langle \begin{matrix} A \\ I \end{matrix} \bigg| \hat{H} \bigg|
    \mathrm{HF} \bigg\rangle = \langle \mathrm{HF} | \hat{\tau}_I^{A\dagger}
    \hat{H} |\mathrm{HF}\rangle = 0

并且, 由于哈密顿量是一个双电子算符, 它不会耦合有多于两级激发的不同的行列式.
因此, 只有双激发组态通过哈密顿算符直接和 Hatree-Fock 态相互作用,
这简化了将 RSPT 应用到 Hartree-Fock 波函数生成的表达式.

2 MP1 波函数
^^^^^^^^^^^^

根据瑞利-薛定谔理论的一般表达式 :eq:`pert-wfn-123`, 一阶 Moller-Plesset 波函数为

.. math::
    |\mathrm{MP1}\rangle = -\hat{P}(\hat{f} - E_{MP}^{(0)})^{-1}\hat{P}\hat{\Phi}
    |\mathrm{HF}\rangle

采用恒等分解, 我们得到

.. math::
    |\mathrm{MP1}\rangle = - \sum_{\mu > 0} \hat{P}(\hat{f} - E_{MP}^{(0)})^{-1}
        | \mu \rangle \langle \mu | \hat{\Phi} |\mathrm{HF}\rangle
    = - \sum_{\mu > 0} (E_\mu^{(0)} - E_{MP}^{(0)})^{-1}
        | \mu \rangle \langle \mu | \hat{\Phi} |\mathrm{HF}\rangle

其中, 求和只遍及激发行列式. 注意到

.. math::
    \langle \mu | \hat{\Phi} | \mathrm{HF}\rangle
    = \langle \mu | \hat{H} | \mathrm{HF}\rangle,\quad \mu > 0

[这是由于 :math:`\hat{H}` 除了 :math:`\hat{\Phi}` 的部分就是福克算符,
而所有激发行列式都是福克算符的本征态, 因此福克算符不会混合 :math:`|\mu\rangle (\mu > 0)` 和
HF 态, 所以福克算符部分的重叠积分为零.]

并采用 :eq:`pert-excited-det-ener` 来化简能量分母, 我们得到 MP1 波函数的如下表达式

.. math::
    |\mathrm{MP1}\rangle = -\sum_{\mu > 0} |\mu\rangle \epsilon_\mu^{-1}
        \langle \mu | \hat{H} | \mathrm{HF} \rangle

尽管求和是对整个激发行列式集合, 只有双重激发态有贡献,
正如在第1小节讨论的那样. 因此我们可以将 MP1 修正写为如下形式

.. math::
    |\mathrm{MP1}\rangle = -\sum_{\mu_2} |\mu_2\rangle \epsilon_{\mu_2}^{-1}
        \langle \mu_2 | \hat{H} | \mathrm{HF} \rangle

其中 :math:`\mu_2` 是对双重激发行列式的一个一般记号.

将 MP1 修正认为是通过一个算符作用到 Hartree-Fock 态上来产生是有用的

.. math::
    |\mathrm{MP1}\rangle =&\ \hat{T}_2^{(1)} |\mathrm{HF}\rangle \\
    \hat{T}_2^{(1)} =&\ \sum_{\mu_2} t_{\mu_2}^{(1)}\hat{\tau}_{\mu_2}
    =\sum_{a>B, I>J} t_{IJ}^{AB(1)} a_A^\dagger a_I a_B^\dagger a_J
    :label: pert-mp1-wfn

其中微扰算符 :math:`\hat{T}_2^{(1)}` 是模仿耦合簇理论中的双重簇算符.
它是激发算符的线性组合, 其中每一个都乘以如下形式的一阶振幅

.. math::
    t_{IJ}^{AB(1)} = -\frac{\langle \mathrm{HF} | [a_J^\dagger a_B a_I^\dagger a_A, \hat{H}]
        |\mathrm{HF}\rangle }
        {\epsilon_A + \epsilon_B - \epsilon_I -\epsilon_J}
    :label: pert-mp1-wfn-amp

为了得到上式, 我们利用了如下事实, 即 :math:`\hat{T}_2^{(1)}` 作用于左矢 :math:`\langle \mathrm{HF}|`
得零. 这里和耦合簇理论的联系是紧密的, 我们将在 14.3 节进一步探索.
目前, 读者可能希望将上式, 即 Moller-Plesset 的振幅表达式, 和基于微扰的耦合簇波函数优化表达式进行比较.

3 MP2 波函数
^^^^^^^^^^^^

在建立了 MP1 波函数修正的形式之后, 现在我们考虑更复杂的 MP2 修正.
根据一般表达式 :eq:`pert-wfn-123`, 我们可以将 MP2 波函数修正写为如下形式

.. math::
    |\mathrm{MP2}\rangle = -\hat{P} (\hat{f} - E_{MP}^{(0)})^{-1}
        \hat{P} (\hat{\Phi} - E_{MP}^{(1)}) | \mathrm{MP1} \rangle

然后, 采用恒等分解, 我们有

.. math::
    |\mathrm{MP2}\rangle = -\sum_{\mu > 0} |\mu\rangle \epsilon_\mu^{-1}
        \langle \mu | \hat{\Phi} - E_{MP}^{(1)} | \mathrm{MP1} \rangle

MP1 修正 :eq:`pert-mp1-wfn` 是双重激发 Slater 行列式的线性组合.
因此, 通过观察上式, 我们得到结论, 二阶修正包括从 Hartree-Fock 态的单重, 双重, 三重, 和四重激发:

.. math::
    |\mathrm{MP2}\rangle =
        (\hat{T}_1^{(2)} + \hat{T}_2^{(2)} + \hat{T}_3^{(2)} + \hat{T}_4^{(2)})
        |\mathrm{HF}\rangle

MP2 修正的每个贡献可以写成如下形式

.. math::
    \hat{T}_n^{(2)} |\mathrm{HF}\rangle = -\sum_{\mu_n}
        |\mu_n\rangle \epsilon_{\mu_n}^{-1} \langle \mu_n |
        \hat{\Phi} - E_{MP}^{(1)} |\mathrm{MP1}\rangle
    :label: pert-mp2-wfn-contri-n

其中 :math:`n \le 4`. 在这个表达式出现的 MP1 波函数由 :eq:`pert-mp1-wfn` 给出,
但是一阶能量 :math:`E_{MP}^{(1)}` 的表达式还没有推导.

Moller-Plesset 能量修正在第4小节讨论. 这里我们仅需要一阶修正, 这根据一般的瑞利-薛定谔表达式,
可以根据张落势在 Hartree-Fock 的期望值来计算

.. math::
    E_{MP}^{(1)} = \langle \mathrm{HF}| \hat{\Phi} |\mathrm{HF}\rangle

采用这个表达式作为 MP1 能量, 以及 :eq:`pert-mp1-wfn` 用于 MP1 波函数, 我们得到
[这是直接把 :math:`|\mathrm{MP1}\rangle` 替换为 :math:`\hat{T}_2^{(1)}|\mathrm{HF}\rangle`]

.. math::
    \langle \mu_n | \hat{\Phi} - E_{MP}^{(1)} |\mathrm{MP1}\rangle
    = \langle \mu_n | \hat{\Phi} \hat{T}_2^{(1)}|\mathrm{HF}\rangle
        - \langle \mu_n | \hat{T}_2^{(1)}|\mathrm{HF}\rangle
            \langle \mathrm{HF}| \hat{\Phi} |\mathrm{HF}\rangle

在第二项采用恒等分解, 得

.. math::
    \langle \mu_n | \hat{\Phi} - E_{MP}^{(1)} |\mathrm{MP1}\rangle
    =&\ \langle \mu_n | [\hat{\Phi}, \hat{T}_2^{(1)}]|\mathrm{HF}\rangle
    + \langle \mu_n | \hat{T}_2^{(1)} \hat{\Phi} |\mathrm{HF}\rangle
    - \langle \mu_n | \hat{T}_2^{(1)}|\mathrm{HF}\rangle
            \langle \mathrm{HF}| \hat{\Phi} |\mathrm{HF}\rangle \\
    =&\ \langle \mu_n | [\hat{\Phi}, \hat{T}_2^{(1)}]|\mathrm{HF}\rangle
    + \sum_\mu \langle \mu_n | \hat{T}_2^{(1)} |\mu\rangle \langle \mu | \hat{\Phi} |\mathrm{HF}\rangle
    - \langle \mu_n | \hat{T}_2^{(1)}|\mathrm{HF}\rangle
            \langle \mathrm{HF}| \hat{\Phi} |\mathrm{HF}\rangle \\
    =&\ \langle \mu_n | [\hat{\Phi}, \hat{T}_2^{(1)}]|\mathrm{HF}\rangle
    + \sum_{\mu>0} \langle \mu_n | \hat{T}_2^{(1)} |\mu\rangle \langle \mu | \hat{\Phi} |\mathrm{HF}\rangle \\
    =&\ \langle \mu_n | [\hat{\Phi}, \hat{T}_2^{(1)}]|\mathrm{HF}\rangle
    + \sum_{\mu_2} \langle \mu_n | \hat{T}_2^{(1)} |\mu_2\rangle \langle \mu_2 | \hat{H} |\mathrm{HF}\rangle

其中我们采用了恒等分解, 这个恒等分解对第一项产生了一个对易子,
而求和限制为 :math:`\mu_2` 因为 Brillouin 定理.
上式第一项对于 :math:`n = 4` 为零, 因为对易子是秩为3的算符,
[参考1.8节. 两个半整数串的反对易子, 以及所有其他串的对易子会让串的秩减一.]
最后一项对于 :math:`n \neq 4` 为零, 因为 :math:`\hat{T}_2^{(1)}|\mu_2\rangle`
是四重激发行列式的线性组合.
对于四重激发, 最后一项可以写为更紧凑的形式, 通过再一次 [反向] 采用恒等分解

.. math::
    \sum_{\mu_2} \langle \mu_4 | \hat{T}_2^{(1)} |\mu_2\rangle \langle \mu_2 | \hat{H} |\mathrm{HF}\rangle = \langle \mu_4 | \hat{T}_2^{(1)} \hat{H} |\mathrm{HF}\rangle

代入 :eq:`pert-mp2-wfn-contri-n`, 得

.. math::
    \hat{T}_n^{(2)}|\mathrm{HF}\rangle
    = \begin{cases}
    -\sum_{\mu_n} |\mu_n\rangle \epsilon_n^{-1} \langle \mu_n |
    [\hat{\Phi}, \hat{T}_2^{(1)}]|\mathrm{HF}\rangle & n = 1,2,3 \\
    -\sum_{\mu_n} |\mu_n\rangle \epsilon_n^{-1} \langle \mu_n |
    \hat{T}_2^{(1)} \hat{H} |\mathrm{HF}\rangle & n = 4
    \end{cases}
    :label: pert-mp2-wfn-pre

对于 MP2 波函数的四个贡献. 对于 :math:`n = 1` 和 :math:`n = 3`,
我们可以用 :math:`\hat{H}` 替换 :math:`\hat{\Phi}`;
对于 :math:`n = 2`, 替换是不可能的.

对于 :eq:`pert-mp2-wfn-pre` 中的四重项可以推导一个更加紧凑的表达式.
将 :math:`\hat{T}_2^{(1)}` 展开为振幅和激发算符, 对于四重项我们得到

.. math::
    \hat{T}_4^{(2)}|\mathrm{HF}\rangle
    = -\sum_{\mu_2} \sum_{\mu_4}
        |\mu_4\rangle \epsilon_4^{-1} t_{\mu_2}^{(1)} \langle \mu_4 |
    \hat{\tau}_{\mu_2} \hat{H} |\mathrm{HF}\rangle

为了化简这个表达式, 我们首先注意到它可以写为更加显式的形式

.. math::
    \hat{T}_4^{(2)}|\mathrm{HF}\rangle
    =&\ -\frac{1}{(4!)^2} \sum_{ABCD,IJKL}
    a_A^\dagger a_I a_B^\dagger a_J a_C^\dagger a_K a_D^\dagger a_L |\mathrm{HF}\rangle \\
    &\ \times \frac{1}{(2!)^2}
    \sum_{A'B',I'J'} t_{I'J'}^{A'B'(1)}
    \frac{\langle \mathrm{HF}|
    a_L^\dagger a_D a_K^\dagger a_C a_J^\dagger a_B a_I^\dagger a_A
    a_{A'}^\dagger a_{I'} a_{B'}^\dagger a_{J'} \hat{H}
    |\mathrm{HF}\rangle}
    {\epsilon_A + \epsilon_B + \epsilon_C + \epsilon_D
    - \epsilon_I - \epsilon_J - \epsilon_K - \epsilon_L}

出现阶乘是因为求和是自由的, 而不是有约束的 [:math:`A>B>C, I>J>K` 等等].
现在我们可以按通常的方式缩并分母 [分子?] 中的算符串, 并注意到两个虚指标 :math:`A'` 和 :math:`B'`
可能匹配指标 :math:`A, B, C, D` 以 :math:`4 \times 3 = 12` 种不同方式.
对于占据指标也有类似的情况. 得

.. math::
     \hat{T}_4^{(2)}|\mathrm{HF}\rangle = -\frac{(4\times 3)^2}{(2!)^2(4!)^2}
     \sum_{ABCD,IJKL} a_A^\dagger a_I a_B^\dagger a_J a_C^\dagger a_K a_D^\dagger a_L
     |\mathrm{HF}\rangle
     \frac{
     t_{IJ}^{AB(1)} \langle \mathrm{HF}|
     a_L^\dagger a_D a_K^\dagger a_C \hat{H} |\mathrm{HF}\rangle
     }{\epsilon_A + \epsilon_B + \epsilon_C + \epsilon_D
    - \epsilon_I - \epsilon_J - \epsilon_K - \epsilon_L}

而这和如下表达式等价

.. math::
    \hat{T}_4^{(2)}|\mathrm{HF}\rangle = -\sum_{\mu_2\nu_2}
        |\mu_2 \nu_2\rangle (\epsilon_{\mu_2} + \epsilon_{\nu_2})^{-1}
        t_{\mu_2}^{(1)} \langle \nu_2 |\hat{H}|\mathrm{HF}\rangle
    :label: pert-mp2-wfn-t4

[注意 :math:`\frac{(4\times 3)^2}{(2!)^2(4!)^2} = \frac{1}{(2!)^4}`.]

注意乘积态的分母就是各个态的分母之和. 根据 :eq:`pert-mp1-wfn-amp`, 我们可以写

.. math::
    \langle \nu_2 |\hat{H}|\mathrm{HF}\rangle = -t_{\nu_2}^{(1)} \epsilon_{\nu_2}

因此 :eq:`pert-mp2-wfn-t4` 化简为

.. math::
    \hat{T}_4^{(2)}|\mathrm{HF}\rangle = \sum_{\mu_2\nu_2}
        |\mu_2 \nu_2\rangle (\epsilon_{\mu_2} + \epsilon_{\nu_2})^{-1}
        \epsilon_{\nu_2} t_{\mu_2}^{(1)} t_{\nu_2}^{(1)}

对称化指标, 我们得到下面的对 MP2 态的四重贡献的简单表达式

.. math::
    \hat{T}_4^{(2)}|\mathrm{HF}\rangle = \frac{1}{2} \sum_{\mu_2\nu_2}
        t_{\mu_2}^{(1)} t_{\nu_2}^{(1)} |\mu_2 \nu_2\rangle
    = \frac{1}{2} {\hat{T}_2^{(1)}}^2 |\mathrm{HF}\rangle

[注意对称化意味着交换 :math:`\mu, \nu` 并相加. 然后注意到]

.. math::
    \frac{\epsilon_{\nu_2}}{\epsilon_{\mu_2} + \epsilon_{\nu_2}}
    + \frac{\epsilon_{\mu_2}}{\epsilon_{\mu_2} + \epsilon_{\nu_2}} = 1

因此我们最终可以将 MP2 修正写为

.. math::
    |\mathrm{MP2}\rangle = (\hat{T}_1^{(2)} + \hat{T}_2^{(2)} + \hat{T}_3^{(2)}
        +\frac{1}{2} {\hat{T}_2^{(1)}}^2 ) |\mathrm{HF}\rangle
    :label: pert-mp2-wfn

因此, 二阶四重激发解耦合成为两个一阶双重激发的积.
剩余的二阶修正并不按这种方式解耦合.
四重激发的解耦合是 Moller-Plesset 理论的一个特殊特征.

现在, 比较 Moller-Plesset 修正 :eq:`pert-mp1-wfn` 和 :eq:`pert-mp2-wfn` 和 13.2.2
节分析的耦合簇波函数, 尤其考虑 (13.2.12) 到 (13.2.15).
MP1 修正仅包含联通一阶二重项 - 没有不连通的项出现在这一级别.
在二阶, MP2 修正包含来自二阶单重项, 双重项, 和三重项的振幅的联通贡献, 以及一个来自一阶双重项的不连通贡献.
在 MP2 波函数中, 没有贡献来自联通四重项.

从技术的观点来看, 我们发现将 MP2 四重项识别为非联通的双重项的积并不容易,
需要相当的冗长代数.
显然, 如果在 Moller-Plesset 波函数中识别联通和非联通项能变得直接, 会变得方便很多.
我们就不需要再对每个情形进行大量的代数操作. 这将会在 14.3 节的 CCPT 实现.

4 Moller-Plesset 能量
^^^^^^^^^^^^^^^^^^^^^

讨论了波函数的 Moller-Plesset 修正之后,
现在我们将注意力转向能量.
从前一小节讨论的 MP2 波函数,
原则上我们可以计算直到张落势的五阶的能量.
这里我们要求低一些, 仅考虑直到三阶微扰修正的能量.
根据 2n+1 规则, 我们可以从第2小节讨论的一阶波函数计算这些修正.

在开始之前, 值得一提的是, 零阶 Moller-Plesset 能量并不对应 Hartree-Fock 能量,
而是占据的 Hartree-Fock 自旋轨道能量之和, 参见 :eq:`pert-mp0-ener`.
为了得到 Hartree-Fock 能量, 我们还必须计算一阶能量修正 :eq:`pert-ener-123`.
从涨落势的定义 :eq:`pert-fluc-pot`, 我们得到

.. math::
    E_{MP}^{(1)} = \langle \mathrm{HF} |\hat{\Phi}| \mathrm{HF} \rangle
    = \langle \mathrm{HF} |\hat{H}| \mathrm{HF} \rangle
    - \langle \mathrm{HF} |\hat{f}| \mathrm{HF} \rangle - h_{nuc}
    :label: pert-mp1-ener

Hartree-Fock 能量因此等于零阶和一阶 Moller-Plesset 能量之和
(并加上核推斥能): [注意
:math:`\langle \mathrm{HF} |\hat{H}| \mathrm{HF} \rangle`
就是 HF 能量.]

.. math::
    E_{HF} = E_{MP}^{(0)} + E_{MP}^{(1)} + h_{nuc}

因此, 到涨落的一阶, 电子相互作用处理为平均场近似;
关联修正在二阶和更高阶出现. [这里严格说来, 一阶也是字面意义上的关联,
因为零阶正好是各个轨道能量分别相加.
只是因为在量子化学将电子关联定义为和 HF 的差, 所以一阶也就不算在关联能量中了.]

作为电子关联能的第一个估计, 我们考虑 MP2 能量. 根据 RSPT 理论, 这由下式给出

.. math::
    E_{MP}^{(2)} = \langle \mathrm{HF} | \hat{\Phi} |\mathrm{MP1}\rangle
    = \langle \mathrm{HF} | \hat{H}\hat{T}_2^{(1)} |\mathrm{HF}\rangle

这里我们将张落势 :eq:`pert-fluc-pot` 替换为了完整哈密顿量,
并引入了 :eq:`pert-mp1-wfn` 形式的一阶波函数.
作为对二级能量表达式的最后调整,
我们引入哈密顿量和簇算符的一个对易子

.. math::
    E_{MP}^{(2)} =
        \langle \mathrm{HF} | [\hat{H}, \hat{T}_2^{(1)}] |\mathrm{HF}\rangle
    :label: pert-mp2-ener

后面我们将看到, 任何 Moller-Plesset 能量修正都可以写为这样的对易子在
Hartree-Fock 的期望值.
正如在 13.3.2 讨论的, 这些对易子对于建立逐项大小延展性是重要的.

现在让我们对三阶 Moller-Plesset 能量应用相同的策略.
我们从标准三阶 RSPT 表达式 :eq:`pert-mat-ener-5` 开始

.. math::
    E_{MP}^{(3)} = \langle \mathrm{MP1} | \hat{\Phi} - E_{MP}^{(1)} |\mathrm{MP1}\rangle

引入簇算符 :eq:`pert-mp1-wfn`, 并插入一阶微扰能量的表达式 :eq:`pert-mp1-ener`, 得

.. math::
    E_{MP}^{(3)} = \langle \mathrm{HF} | \hat{T}_2^{(1)\dagger} \hat{\Phi}
        \hat{T}_2^{(1)} |\mathrm{HF}\rangle
    - \langle \mathrm{HF} | \hat{T}_2^{(1)\dagger}
        \hat{T}_2^{(1)} |\mathrm{HF}\rangle
        \langle \mathrm{HF} | \hat{\Phi} |\mathrm{HF}\rangle

下面, 引入恒等分解, 我们得到

.. math::
    \langle \mathrm{HF} | \hat{T}_2^{(1)\dagger} \hat{T}_2^{(1)}
        \hat{\Phi} |\mathrm{HF}\rangle
    = \langle \mathrm{HF} | \hat{T}_2^{(1)\dagger} \hat{T}_2^{(1)}
    |\mathrm{HF}\rangle \langle \mathrm{HF} |
        \hat{\Phi} |\mathrm{HF}\rangle

因为只有 Hartree-Fock 态和
:math:`\langle \mathrm{HF} | \hat{T}_2^{(1)\dagger} \hat{T}_2^{(1)}`
有非零重叠.
因此, 我们可以将三阶能量修正写为如下形式

.. math::
    E_{MP}^{(3)} = \langle \mathrm{HF} | \hat{T}_2^{(1)\dagger} \hat{\Phi}
        \hat{T}_2^{(1)}
        \hat{T}_2^{(1)\dagger} \hat{T}_2^{(1)}
        \hat{\Phi} |\mathrm{HF}\rangle

这很容易表示为对易子形式

.. math::
    E_{MP}^{(3)} = \langle \mathrm{HF} |
        [\hat{T}_2^{(1)\dagger}, [\hat{\Phi}, \hat{T}_2^{(1)}]]
        |\mathrm{HF}\rangle
    :label: pert-mp3-ener

现在, 这是我们对三阶能量修正的最终形式,
我们成功将 MP3 能量表示为包含张落势的对易子的 Hartree-Fock 期望值.

5 MPPT 波函数和能量的显式表达式
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

Moller-Plesset 能量的基于积分和轨道能量的显式表达式将会在 14.4 节推导 (对闭壳层系统),
而这不是这一节的主要内容.
但是, 为了可以对我们到目前为止得到的表达式的内容做一些了解,
我们应该暂停, 并以更多细节考虑最低阶 Moller-Plesset 波函数和能量修正,
采用简单的自旋非限制表象.

MP1 波函数在第 2 小节, 并由 :eq:`pert-mp1-wfn` 给出.
只有哈密顿量的双电子部分对 :eq:`pert-mp1-wfn-amp` 有贡献.
将这部分哈密顿量插入, 并执行一些直接的代数, 我们得到振幅的如下表达式

.. math::
    t_{IJ}^{AB(1)} = -\frac{1}{2}\sum_{PQRS}
    \frac{g_{PQRS} \langle \mathrm{HF} |
        [a_J^\dagger a_B a_I^\dagger a_A, a_P^\dagger a_R^\dagger a_S a_Q]
        |\mathrm{HF}\rangle }
        {\epsilon_A + \epsilon_B - \epsilon_I -\epsilon_J}
    = -\frac{g_{AIBJ}^a}{\epsilon_A + \epsilon_B - \epsilon_I -\epsilon_J}

[这里注意对易子在 HF 的期望值.
这里 IJ 必须是占据轨道, AB 必须是空轨道, 因此, ABIJ 作用完一定是
双重激发行列式, 这就限制了 PRSQ 只能按照原来方式返回 HF. 求和也就只剩四项.
如果 ABIJ 没有这些取值限制, AB = IJ 的话, 问题就复杂得多了.
现在没有这些复杂性, PR, QS 必须分别和 AB, IJ 匹配. 共有4中匹配方式.
另注意 :math:`g_{PQRS} = g_{RSPQ}`]

.. math::
    t_{IJ}^{AB(1)} \epsilon_{IJ}^{AB} =&\ -\frac{1}{2} \big[
        g_{AIBJ} \mathrm{HF} |
        a_J^\dagger a_B a_I^\dagger a_A a_A^\dagger a_B^\dagger a_J a_I
        |\mathrm{HF}\rangle 
    + g_{AJBI} \mathrm{HF} |
        a_J^\dagger a_B a_I^\dagger a_A a_A^\dagger a_B^\dagger a_I a_J
        |\mathrm{HF}\rangle \\
    &\ + g_{BIAJ} \mathrm{HF} |
        a_J^\dagger a_B a_I^\dagger a_A a_B^\dagger a_A^\dagger a_J a_I
        |\mathrm{HF}\rangle
    + g_{BJAI} \mathrm{HF} |
        a_J^\dagger a_B a_I^\dagger a_A a_B^\dagger a_A^\dagger a_I a_J
        |\mathrm{HF}\rangle \big] \\
    =&\ -\frac{1}{2} \big[ g_{AIBJ} - g_{AJBI} - g_{BIAJ} + g_{BJAI} \big] \\
    =&\ -\frac{1}{2} \big[ 2g_{AIBJ} - 2g_{AJBI} \big] \\
    =&\ - \big[ g_{AIBJ} - g_{AJBI} \big] 

其中, 我们引入了反对称双电子积分

.. math::
    g_{AIBJ}^a = g_{AIBJ} - g_{AJBI}

将上面 :math:`t_{IJ}^{AB(1)}` 的振幅插入到波函数 :eq:`pert-mp1-wfn`,
我们得到 MPI 波函数修正的最终表达式

.. math::
    |\mathrm{MP1}\rangle = -\sum_{A>B,I>J}
    \frac{g_{AIBJ}^a}{\epsilon_A + \epsilon_B - \epsilon_I - \epsilon_J}
    \left| \begin{matrix} AB \\ IJ \end{matrix} \right\rangle

每个双重激发行列式对 MP1 波函数有一个正比于反对称的双电子积分
按照包含联系的轨道能量的分母加权的贡献.

现在我们考虑在第4小节考虑的二阶能量修正.
在 :eq:`pert-mp2-ener` 中代入哈密顿量的双电子部分的表达式,
以及微扰的双重算符 :math:`\hat{T}_2^{(1)}` 的表达式,
在一些代数之后, 我们得到, 下面的对于能量修正的简单表达式

.. math::
    E_{MP}^{(2)} = -\sum_{A>B,I>J}
    \frac{|g_{AIBJ}^a|^2}{\epsilon_A + \epsilon_B - \epsilon_I - \epsilon_J}

[推导如下. 首先注意 :math:`[A,B]^\dagger = [B^\dagger, A^\dagger]`. 根据 :eq:`pert-mp1-wfn-amp`]

.. math::
    t_{IJ}^{AB(1)} \epsilon_{IJ}^{AB}
    = -\langle \mathrm{HF} |
        [a_J^\dagger a_B a_I^\dagger a_A, \hat{H}]
        |\mathrm{HF}\rangle
    = - \langle \mathrm{HF} |
        [\hat{H}, a_A^\dagger a_I a_B^\dagger a_J]
        |\mathrm{HF}\rangle

.. math::
    E_{MP}^{(2)} =&\ \langle \mathrm{HF} | [\hat{H}, \hat{T}_2^{(1)}] | \mathrm{HF}\rangle \\
    =&\ \sum_{A>B,I>J} t_{IJ}^{AB(1)}
        \langle \mathrm{HF} | [\hat{H}, a_A^\dagger a_I a_B^\dagger a_J]
        | \mathrm{HF} \rangle \\
    =&\ -\sum_{A>B,I>J} t_{IJ}^{AB(1)} t_{IJ}^{AB(1)} \epsilon_{IJ}^{AB} \\
    =&\ -\sum_{A>B,I>J} (g_{AIBJ}^{a})^2 (\epsilon_{IJ}^{AB})^{-1}

正如二阶 RSPT 通常的那样, 能量修正是负的.
对每个双重激发行列式有一个贡献, 来自对反对称双电子积分平方按照联系的轨道能量的差加权.
MP2 能量的计算的标度是系统尺寸的四次方,
尽管双电子积分的初始转换从 AO 到 MO 基组更昂贵, 标度是五次方.
我们将推导一个类似的表达式, 更适用于闭壳层计算, 参见 14.4 节.

在这里, 我们强调一下术语的问题.
术语 "MP2 能量" 通常指总电子能量, 通过对所有直到二阶的修正求和得到

.. math::
    E_{MP2} = E_{MP}^{(0)} + E_{MP}^{(1)} + E_{MP}^{(2)}
        + h_{nuc} = E_{HF} + E_{MP}^{(2)}

对应地, 我们应该将上式的个别贡献称为 "能量修正",
并且例如, 将 :math:`E_{MP}^{(2)}` 称为 "MP2 能量修正" 而不是 "MP2 能量".

6 Moller-Plesset 理论的大小延展性
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

在第 4 小节, 我们提出将 Moller-Plesset 能量修正表示为嵌套的对易子是有好处的.
在这一小节, 我们将看到这样的对易子表达式是方便的,
因为它们使得能量修正逐项大小延展,
就像耦合簇理论的相似变换形式使得耦合簇方程逐项大小延展那样,
这在 13.3.2 已经展示.
我们先考虑两个无相互作用系统的微扰波函数, 然后继续考虑 Moller-Plesset 能量的可分性.

对于两个无相互作用系统 A 和 B, 一阶 Moller-Plesset 波函数可以写为如下形式

.. math::
    |\mathrm{MP1}_{AB}\rangle = \hat{T}_{2AB}^{(1)}
        |\mathrm{HF}_{AB}\rangle = \sum_{\mu_{2AB}}
        t_{\mu_{2AB}}^{(1)} |\mu_{2AB}\rangle
    :label: pert-mp1-wfn-ab

其中振幅由下式给出

.. math::
    t_{\mu_{2AB}}^{(1)} = -\epsilon_{\mu_{2AB}}^{-1}
        \langle \mathrm{HF}_{AB} |
        [\hat{\tau}_{\mu_{2AB}}^\dagger, \hat{H}_{AB}]
        | \mathrm{HF}_{AB}\rangle

上式中的逆激发算符可以写为两个算符的乘积, 其中一个影响系统 A, 而另一个影响系统 B:

.. math::
    \hat{\tau}_{\mu_{2AB}}^\dagger =
        \hat{\tau}_A^\dagger \hat{\tau}_B^\dagger

算符 :math:`\hat{\tau}_A^\dagger` 可以是恒等算符
(在这种情况, 它不影响 Hartree-Fock 右矢)
或者, 它可以是分别对占据自旋轨道的产生和对虚自旋轨道的湮灭算符的串
(在这种情况, 它湮灭 Hartree-Fock 右矢).
相同的考虑对 :math:`\hat{\tau}_{AB}^\dagger` 也适用.
[但这两个不能同时是恒等算符.]
由于对不同的无相互作用的子系统的算符相互对易, 我们可以将矩阵元
:math:`t_{\mu_{2AB}}^{(1)}` 写为

.. math::
    \langle \mathrm{HF}_{AB} |
        [\hat{\tau}_{\mu_{2AB}}^\dagger, \hat{H}_{AB}]
        | \mathrm{HF}_{AB}\rangle
    = \langle \mathrm{HF}_{AB} |
        [\hat{\tau}_{A}^\dagger, \hat{H}_{A}] \hat{\tau}_B^\dagger
        | \mathrm{HF}_{AB}\rangle
    + \langle \mathrm{HF}_{AB} |
        [\hat{\tau}_{B}^\dagger, \hat{H}_{B}] \hat{\tau}_A^\dagger
        | \mathrm{HF}_{AB}\rangle

[这里首先将 :math:`H_{AB}` 拆开, 得到两个对易子, 每个对易子再拆开第一项,
得到一共4个对易子. 但是其中两个对易子是 A 和 B 子系统之间的对易子, 因此为零. ]

上式对于所有对两个系统都造成影响的激发算符为零.

[这里考虑第一项的算符, 它是两个子系统算符的乘积. 对 A 子系统是 :math:`[\hat{\tau}_{A}^\dagger, \hat{H}_{A}]`, 这个先不管. 对 B 子系统是 :math:`\hat{\tau}_B^\dagger`. 但是要将 :math:`\hat{\tau}_B^\dagger` 在 HF 态求期望值,
要使这个期望值不为零, :math:`\hat{\tau}_B^\dagger` 只能是恒等算符.
因此对于 :math:`\hat{\tau}_{\mu_{2AB}}^\dagger = \hat{\tau}_A^\dagger \hat{\tau}_B^\dagger` 有三种情况. 第一种情况, :math:`\hat{\tau}_A^\dagger` 为恒等,
即激发只对子系统 B 造成影响 (另一个一定不为恒等). 第二种情况, :math:`\hat{\tau}_B^\dagger` 为恒等 (另一个一定不为恒等),
即激发只对子系统 A 造成影响. 第三种情况, :math:`\hat{\tau}_A^\dagger` 都不为恒等,
这时就是 上式为零的情况. 根据上面的讨论, 不存在两个都是恒等的情况.
]

因此我们得到结论, 对于所有表示两个子系统的同时激发的行列式,
:eq:`pert-mp1-wfn-ab` 中的一阶振幅为零.
更进一步, 剩余的系统内振幅变得从分开的子系统计算得到的振幅相同.
因此, 我们可以将一阶双重振幅写为

.. math::
    \hat{T}_{2AB}^{(1)} = \hat{T}_{2A}^{(1)} + \hat{T}_{2B}^{(1)}
    :label: pert-t2ab-sep

和 RSPT 的一般公式一致. 我们看到, 由哈密顿量的可加性和修正的对易子表达式,
直接导致了振幅的可分性.

转到二阶微扰论, 我们希望验证无相互作用系统的 MP2 波函数和一般 RSPT 表达式
:eq:`pert-size-wfn-n` 一致.
正如在第3小节讨论的 MP2 波函数可以写为 :eq:`pert-mp2-wfn` 形式,
包括非联通的四重项贡献, 和联通的单重, 双重和三重贡献.
联通贡献可以写为 :eq:`pert-mp2-wfn-pre` 的对易子形式

.. math::
    \hat{T}_{nAB}^{(2)} |\mathrm{HF}_{AB}\rangle
    = -\sum_{\mu_{nAB}} |\mu_{nAB}\rangle \epsilon_{\mu_{nAB}}^{-1}
    \langle \mathrm{HF}_{AB} |
    [ \hat{\tau}_{nAB}^\dagger, [\hat{\Phi}_{AB},
    \hat{T}_{2AB}^{(1)} ]] | \mathrm{HF}_{AB} \rangle,
    \quad n = 1,2,3
    :label: pert-tnab-pre

展开内层对易子, 我们发现, 所有和两个系统都相关的项为零,
由于两个无相互作用系统的算符对易:

.. math::
    [\hat{\Phi}_{AB}, \hat{T}_{2AB}^{(1)} ]
    = [\hat{\Phi}_{A} + \hat{\Phi}_{B},
    \hat{T}_{2A}^{(1)} + \hat{T}_{2B}^{(1)} ]
    = [\hat{\Phi}_{A}, \hat{T}_{2A}^{(1)} ]
    + [\hat{\Phi}_{B}, \hat{T}_{2B}^{(1)} ]
    :label: pert-size-comm-2

现在我们可以利用导出一阶振幅的可加性 :eq:`pert-t2ab-sep` 一样的论证,
来推导出 :eq:`pert-tnab-pre` 的可加性.

[这里利用上一部分关于 :math:`\hat{T}_{2AB}^{(1)}` 可分性的结论,
得到了上式, 即内层对易子的可分性. 然后只要在上一部分的讨论中,
将 :math:`\hat{H}_{AB}` 的可加性替换为内层对易子的可分性,
我们即按照同样的逻辑, 可以导出外层对易子
:math:`[ \hat{\tau}_{nAB}^\dagger, [\hat{\Phi}_{AB},\hat{T}_{2AB}^{(1)} ]]`
的可分性.]

因此, 在 MP2 波函数中的联通贡献可以写为和一阶修正同样的形式:

.. math::
    T_{nAB}^{(2)} = \hat{T}_{nA}^{(2)} + \hat{T}_{nB}^{(2)},
    \quad n = 1,2,3

作为对比, 非联通四重项并不像上式那样可分.

[这里有一个问题, 如果仅仅直接把四重项带入上面的讨论, 为什么不成立.
很简单, 因为根据 :eq:`pert-mp2-wfn-pre`, :math:`n=4` 的项并不能写为嵌套对易子形式.]

将 :eq:`pert-t2ab-sep` 代入四重项的表达式,
我们得到

.. math::
    \hat{T}_{4AB}^{(2)}
    = \frac{1}{2} (\hat{T}_{2AB}^{(1)})^2
    = \hat{T}_{4A}^{(2)} + \hat{T}_{4B}^{(2)}
    + \hat{T}_{2A}^{(1)} \hat{T}_{2B}^{(1)}

乘积 :math:`\hat{T}_{2A}^{(1)} \hat{T}_{2B}^{(1)}` 对于得到一个
和 :eq:`pert-size-wfn-n` 自洽的波函数是必要的

.. math::
    |\mathrm{MP2}_{AB}\rangle =&\
        (\hat{T}_{1AB}^{(2)} + \hat{T}_{2AB}^{(2)} + \hat{T}_{3AB}^{(2)}
        + \hat{T}_{4AB}^{(2)}) |\mathrm{HF}_{AB}\rangle \\
     =&\ (\hat{T}_{1A}^{(2)} + \hat{T}_{2A}^{(2)} + \hat{T}_{3A}^{(2)}
        + \hat{T}_{4A}^{(2)}) |\mathrm{HF}_{AB}\rangle 
        + (\hat{T}_{1B}^{(2)} + \hat{T}_{2B}^{(2)} + \hat{T}_{3B}^{(2)}
        + \hat{T}_{4B}^{(2)}) |\mathrm{HF}_{AB}\rangle \\
    &\ + \hat{T}_{2A}^{(1)} \hat{T}_{2B}^{(1)} |\mathrm{HF}_{AB}\rangle

并且 MP2 波 [函数] 算符可以相应地写为如下形式

.. math::
    \hat{T}_{AB}^{(2)} = \hat{T}_A^{(2)} + \hat{T}_B^{(2)}
        + \hat{T}_A^{(1)} \hat{T}_B^{(1)}

正如从 :eq:`pert-size-wfn-n` 所期待的那样.
MP2 波函数修正因此从各自系统的算符, 和这些算符的积来生成.

在考虑了 MP1 和 MP2 波函数修正之后, 我们通过考虑能量修正来结束这一小节.
一阶修正平凡地可分, 从张落势的可加性:

.. math::
    E_{MPAB}^{(1)} = \langle \mathrm{HF}_{AB}|
    \hat{\Phi}_A + \hat{\Phi}_B | \mathrm{HF}_{AB} \rangle
    = E_{MPA}^{(1)} + E_{MPB}^{(1)}

以同样的方式, 二阶修正的可加性从对易子的可加性 :eq:`pert-size-comm-2` 得到

.. math::
    E_{MPAB}^{(2)} =&\ \langle \mathrm{HF}_{AB}|
    [\hat{\Phi}_{AB}, \hat{T}_{2AB}^{(1)}] | \mathrm{HF}_{AB} \rangle \\
    =&\ \langle \mathrm{HF}_{AB}|
    [\hat{\Phi}_{A}, \hat{T}_{2A}^{(1)}]
    + [\hat{\Phi}_{B}, \hat{T}_{2B}^{(1)}] | \mathrm{HF}_{AB} \rangle \\
    =&\ E_{MPA}^{(2)} + E_{MPB}^{(2)}

读者可以验证类似地, 系统间项在三阶能量修正 :eq:`pert-mp3-ener` 中并不存在.
[相当于将 :eq:`pert-mp3-ener` 中的 :math:`\hat{T}_{2AB}^{(1)\dagger}`
换为振幅, 按照前面嵌套对易子的讨论验证. ]
因此, 将张落势和振幅分为关于每个子系统的项, 并展开嵌套对易子, 我们得到

.. math::
    E_{MPAB}^{(3)}
        = \langle \mathrm{HF}_{AB}|
        [  \hat{T}_{2AB}^{(1)\dagger},
    [\hat{\Phi}_{AB}, \hat{T}_{2AB}^{(1)}]] | \mathrm{HF}_{AB} \rangle
    = E_{MPA}^{(3)} + E_{MPB}^{(3)}

再一次, 我们发现复合系统地能量可以直接分为子系统的能量.

对易子形式对于能量修正的优势现在很明显了.
对易子保证了能量的可加性直接从 Hartree-Fock 波函数的可分性,
以及张落势和振幅的可加性得到.
能量修正是 **逐项可分的**, 没有违背大小一致的项产生, 也没有抵消发生.
我们有时将这个称为对易子提供了一个能量修正的 **联通** 形式.

作为结论, 重构 Moller-Plesset 能量和波函数修正是可能的,
从而它们的可分性和大小延展性变得很明显.
但是, 修正的可分性在原始的 Moller-Plesset 理论并不明显,
而是变得透明, 仅仅当对易子被引入. 在 14.3 节,
我们将发展耦合簇微扰论, 其中联通的 (逐项大小延展的) 对易子形式自然出现,
而不必手动重构表达式.

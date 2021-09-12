
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

第十四章 微扰论 (E)
===================

第七节 多组态微扰论
-------------------

除了第14.1节的一般理论,
到目前为止我们发展的微扰论限制为单个电子构型主导的系统.
对于多组态系统, 标准的 Moller-Plesset 理论不适用.
首先, 选择哪个行列式作为零阶态并不显然.
其次, 即使我们可以做出一个唯一选择,
低阶修正通常会不准确, 而高阶修正发散.
为了处理这样的系统, 我们必须发展一个更一般的微扰论,
其中零阶态是多组态.
在这一节, 我们检查这样的理论中最重要的一个, **CAS 微扰论** (CASPT),
其中零阶态选择为一个 CASSCF 波函数.
CASPT 的重要性在于, 目前, 它代表唯一的一般意义上可用的的方法,
来做开壳层和闭壳层多组态电子系统的动态相关效应的从头算.

1 零阶 CASPT 哈密顿量
^^^^^^^^^^^^^^^^^^^^^

基于 Moller-Plesset 理论对于由单个电子构型主导的系统的成功,
很自然考虑 Moller-Plesset 的零阶哈密顿算符可以拓展到多组态系统.
我们知道, 在 Moller-Plesset 理论, 我们正则表象的福克算符作为零阶哈密顿量,
见 14.2.1 节. 在轨道空间拓展福克算符到多组态 CASSCF 波函数 :math:`|0\rangle`,
我们得到 CASSCF 福克算符

.. math::
    \hat{f} = \sum_{pq} f_{pq} E_{pq} =
        \frac{1}{2} \sum_{pq} \sum_\sigma \langle 0 |
        [a_{q\sigma}^\dagger, [a_{p\sigma}, \hat{H} ]]_+ |0\rangle E_{pq}
    :label: pert-mcpt-fock

在 Moller-Plesset 理论, :math:`\hat{f}` 应该变为以单参考零阶态为本征态的对角形式.
我们现在检查 CASSCF 福克算符, 并观察如何将它修改为零阶哈密顿量,
并以 CASSCF 态为一个本征态.

福克矩阵可以根据将轨道分为非活性, 活性, 和次级空间来分开.
从 (10.8.38) 和第 12.5.1 节的讨论, 我们注意到福克矩阵 :math:`f_{ia}`
的非活性-次级矩阵元和 CASSCF 轨道梯度对应的元素成正比

.. math::
    4 f_{ia} = 4 ({}^I F_{ia} + {}^A F_{ia}) = {}^o E_{ia}^{(1)}

因此, 对于一个优化的态, 它为零.
由于 CASSCF 福克矩阵是对称的, 次级-非活性矩阵元 :math:`f_{ai}` 也为零.
在另一方面, 剩下的福克矩阵的非活性-活性和活性-次级矩阵元,
并不直接和 CASSCF 轨道梯度的对应元素相联系, 因此对优化的波函数不为零.
最后, 福克矩阵的三个对角块可以分别对角化, 来得到正则轨道,
通过进行冗余的空间内 (非活性-非活性, 活性-活性, 和次级-次级) 旋转;
见第 12.2.6 节的讨论.
这些结果总结在图 14.11, 其中福克矩阵在优化的 CASSCF 态的正则表象表示.

一般地, 福克算符 :eq:`pert-mcpt-fock` 并不以 CASSCF 波函数 :math:`|0\rangle`
作为一个本征函数, :math:`\hat{f}|0\rangle` 可以是从 :math:`|0\rangle` 的单激发的和:

.. math::
    \hat{f} |0\rangle = \sum_{pq} f_{pq} E_{pq} |0\rangle

但是, 零阶哈密顿量算符 :math:`\hat{H}_0` 必须以 :math:`|0\rangle` 作为一个本征态.
为了达到这个, 我们选择

.. math::
    \hat{H}_0 = E^{(0)} |0\rangle \langle 0| + \hat{P} \hat{f} \hat{P}
    :label: pert-mcpt-h0

其中 :math:`\hat{P}` 是投影算符

.. math::
    \hat{P} = 1 - |0\rangle \langle 0|

而 :math:`E^{(0)}` 是零阶能量, 选为 CASSCF 福克矩阵的期望值

.. math::
    E^{(0)} = \langle 0 | \hat{f} | 0 \rangle

这个 :math:`E^{(0)}` 的选择确保了, 当 :math:`|0\rangle` 约化为单行列式闭壳层态,
零阶哈密顿量 :eq:`pert-mcpt-h0` 约化为 Moller-Plesset 福克算符.

算符 :eq:`pert-mcpt-h0` 可以用来产生微扰展开.
但是, 这个零阶算符的选择并不方便, 因为修正将在一阶就已经包含属于 FCI 展开的所有行列式.
为了看到这一点, 考虑波函数的一阶修正, 在 :eq:`pert-mat-wfn-n` 中令 :math:`n = 1` 得

.. math::
    \bm{C}^{(1)} = -\bm{P}(\bm{H}_0 - E^{(0)} \bm{1})^{-1}
        \bm{P} \bm{U} \bm{C}^{(0)}

在行列式表象, 零阶算符 :eq:`pert-mcpt-h0` 变为一个稀疏矩阵 :math:`\bm{H}_0`, 并不是块对角的.
由于这个矩阵的逆是一个完整矩阵, 一阶修正将包括来自所有 FCI 波函数的行列式,
即使 :math:`\bm{U}\bm{C}^{(0)}` 仅仅对于最多关于零阶态二重激发的行列式为非零.

为了避免长微扰向量, 我们对 :math:`\bm{H}_0` 施加一个块对角结构.
这通过定义零阶 CASPT 算符为

.. math::
    \hat{H}_0 = E^{(0)} |0\rangle \langle 0| + \hat{P}_K
        \hat{f} \hat{P}_K + \hat{P}_{SD} \hat{f} \hat{P}_{SD}
        + \hat{P}_{TQ} \hat{f} \hat{P}_{TQ} + \cdots
    :label: pert-caspt-h0

其中正交投影算符

.. math::
    1 = \langle |0\rangle \langle 0| + \hat{P}_K + \hat{P}_{SD}
        + \hat{P}_{TQ} + \cdots

其中 :math:`\hat{P}_K` 投影到 CAS 空间中和 :math:`|0\rangle` 正交的部分,
:math:`\hat{P}_{SD}` 投影到空间中由 :math:`|0\rangle` 的单重和双重激发, 并不包括在 CAS 空间的部分,
:math:`\hat{P}_{TQ}` 投影到空间中由 :math:`|0\rangle` 的三重和四重激发, 并正交于 CAS 空间的部分,
等等. 由于仅仅关于 CAS 空间的激发可以完全按照 CAS 波函数的行列式来描述
[即 CAS 空间内部的激发. 这些轨道可以是对角福克的.], 它们从 :math:`\hat{P}_{SD}`, :math:`\hat{P}_{TQ}`
等等中排除. 在图 14.12, 我们描述了最终的在福克空间的零阶 CASPT 哈密顿矩阵.
由投影算符施加的块对角结构确保了波函数的修正在一个激发的有限级截断.
例如, 一阶修正包含最多双重激发, 而二阶修正包含不高于四重激发.

2 CASPT 中的大小延展性
^^^^^^^^^^^^^^^^^^^^^^

为了设置大小延展微扰论, 零阶哈密顿量必须可加性可分.
这里我们将展示, 对于可乘性可分的零阶波函数, CASSCF 福克算符和零阶能量都是可加性可分的,
但是投影算符的出现, 无论如何, 使得零阶 CASPT 哈密顿量 :math:`\hat{H}_0`
不可分. 为了保持简单, 我们应该考虑零阶算符 :eq:`pert-mcpt-h0` 而不是更复杂的 CASPT哈密顿量
:eq:`pert-caspt-h0`.
我们假定对于无相互作用子系统 A 和 B, 额外的 CASSCF 计算已经被执行,
给出归一化的参考波函数

.. math::
    |0_A\rangle =&\ \hat{\psi}_A |\mathrm{vac}\rangle \\
    |0_B\rangle =&\ \hat{\psi}_B |\mathrm{vac}\rangle

并且, 除此之外, 已经选择了活性空间对于复合系统 AB, 从而复合波函数是可乘性可分的:

.. math::
    |0_{AB}\rangle = \hat{\psi}_{AB} |\mathrm{vac}\rangle
        = \hat{\psi}_{A} \hat{\psi}_{B} |\mathrm{vac}\rangle

福克算符的可分性现在来自于哈密顿量的可加性可分性, 以及波函数的可乘性可分性

.. math::
    \hat{f}_{AB} =&\ \frac{1}{2} \sum_{pq}\sum_\sigma
    \langle 0_{AB} | [a_{q\sigma}^\dagger, [a_{p\sigma}, \hat{H}_{AB}]]_+
    |0_{AB}\rangle E_{pq} \\
    =&\ \frac{1}{2} \sum_{pAqA}\sum_\sigma
    \langle 0_{A} | [a_{qA\sigma}^\dagger, [a_{pA\sigma}, \hat{H}_{A}]]_+
    |0_{A}\rangle E_{pAqA}
    + \frac{1}{2} \sum_{pBqB}\sum_\sigma
    \langle 0_{B} | [a_{qB\sigma}^\dagger, [a_{pB\sigma}, \hat{H}_{B}]]_+
    |0_{B}\rangle E_{pBqB} \\
    =&\ \hat{f}_A + \hat{f}_B

而零阶能量的可分性可以平凡地得到

.. math::
    E_{AB}^{(0)} = \langle 0_{AB} | \hat{f}_{AB} | 0_{AB} \rangle
    = \langle 0_A | \hat{f}_A | 0_A \rangle
    + \langle 0_B | \hat{f}_B | 0_B \rangle = E_A^{(0)} + E_B^{(0)}

复合系统的零阶哈密顿量现在可以写为

.. math::
    \hat{H}_{0AB} =&\ \hat{P}_{AB} \hat{f}_{AB} \hat{P}_{AB}
        + E_{AB}^{(0)} |0_{AB}\rangle \langle 0_{AB}| \\
    =&\ \hat{f}_A + \hat{f}_B - (\hat{f}_{AB} - E_{AB}^{(0)})
    |0_{AB}\rangle \langle 0_{AB}| - |0_{AB}\rangle \langle 0_{AB}|
    - |0_{AB}\rangle \langle 0_{AB}| - |0_{AB}\rangle \langle 0_{AB}|
    (\hat{f}_{AB} - E_{AB}^{(0)})

另一方面, 无相互作用子系统的零阶哈密顿量和由下式给出

.. math::
    \hat{H}_{0A} + \hat{H}_{0B} =&\
        \hat{P}_{A} \hat{f}_{A} \hat{P}_{A}
        + \hat{P}_{B} \hat{f}_{B} \hat{P}_{B}
        + E_{A}^{(0)} |0_{A}\rangle \langle 0_{A}|
        + E_{B}^{(0)} |0_{B}\rangle \langle 0_{B}| \\
    =&\ \hat{f}_A + \hat{f}_B - (\hat{f}_A - E_A^{(0)}) |0_A\rangle\langle 0_A|
        - |0_A\rangle\langle 0_A| (\hat{f}_A - E_A^{(0)}) \\
    &\ - (\hat{f}_B - E_B^{(0)}) |0_B\rangle\langle 0_B|
        - |0_B\rangle\langle 0_B| (\hat{f}_B - E_B^{(0)})

比较以上两式, 我们发现 :math:`\hat{H}_{0AB}` 和 :math:`\hat{H}_{0A} + \hat{H}_{0B}`
不相等. 一个相似的讨论会显示零阶 CASPT 哈密顿量不是可加性可分的.

对于一个单行列式闭壳层 Hartree-Fock 态, 零阶 CASPT 算符 :eq:`pert-caspt-h0`
约化为闭壳层福克算符.
在这个极限, 算符 :math:`\hat{f}_A` 和 :math:`\hat{f}_B` 以
:math:`|0_A\rangle` 和 :math:`|0_B\rangle` 作为本征函数

.. math::
    \hat{f}_A |0_A\rangle =&\ E_A^{(0)} |0_A\rangle \\
    \hat{f}_B |0_B\rangle =&\ E_B^{(0)} |0_B\rangle

在零阶 CASPT 哈密顿量中的不可分贡献为零, :math:`\hat{H}_{0AB}` 变得可分

.. math::
    \hat{H}_{0AB} = \hat{f}_A + \hat{f}_B = \hat{H}_{0A} + \hat{H}_{0B}

对一个以单一行列式为主导的 CASSCF 参考波函数, 我们因此期望能量中来自不大小延展的项的贡献很小.
反之, 对于有好几个行列式有大权重的参考波函数, 我们期望更大的不可分贡献.

3 CASPT 波函数和能量
^^^^^^^^^^^^^^^^^^^^

在这一小节, 我们考虑 **一阶 CASPT (CASPT1) 波函数修正** 和 **二阶 CASPT (CASPT2) 能量修正**.
我们采用 **内收缩方案**, 其中 CASPT1 修正写为所有从 :math:`|0\rangle` 的单和双激发的线性组合:

.. math::
    |0^{(1)}\rangle = \sum_{pq} C_{pq}^{(1)} E_{pq} |0\rangle
     + \sum_{pq \ge rs} C_{pqrs}^{(1)} e_{pqrs} |0\rangle

其中, 在求和中指标 :math:`q` 和 :math:`s` 是占据的 (即, 非活性或活性),
:math:`p` 和 :math:`r` 是非非活性的 (即, 活性或次级).
在上式, 没有包括所有指标都是活性的项.
在下面将展示, 对于按照 :eq:`pert-caspt-h0` 选择的 :math:`\hat{H}_0`,
这样的项对一阶波函数没有贡献.
类似地, 从 :math:`|0\rangle` 的三重和更高级激发没有贡献.

在上式中收缩的构型构成一个非正交基组.
虽然第一节的讨论和基组无关, 并且 :eq:`pert-wfn-123` 不需要由于非正交性被修改,
:eq:`pert-mat-wfn-n` 的展开必须被修改.
对 CASPT1 波函数修正, 我们得到 (见练习 14.7)

.. math::
    \bm{C}^{(1)} = -\bm{P} (\bm{H}_0 - E^{(0)} \bm{S})^{-1} \bm{P} \bm{U} \bm{C}^{(0)}

其中

.. math::
    S_{ij} =&\ \langle i | j \rangle \\
    \bm{P} =&\ \bm{1} - \bm{C}_0 \bm{C}_0^T

以及 :math:`|i\rangle` 表示收缩组态 :math:`E_{pq}|0\rangle` 或者 :math:`e_{pqrs}|0\rangle`
中的一个. 一阶和二阶 CASPT 能量修正可以按照和之前一样的方式计算

.. math::
    E^{(1)} =&\ \bm{C}^{(0)T} \bm{U} \bm{C}^{(0)} \\
    E^{(2)} =&\ \bm{C}^{(1)T} \bm{U} \bm{C}^{(0)}

在 CASPT1 波函数, 属于 CAS 空间的分量变为

.. math::
    C_k^{(1)} = -\sum_l [ \bm{P} (\bm{H}_0 - E^{(0)} \bm{S})^{-1} ]_{kl}
        \langle l | \bm{P} \bm{U} | 0\rangle

其中我们采用了零阶哈密顿量 :eq:`pert-caspt-h0` 并且 :math:`k` 和 :math:`l`
都指 CAS 空间中的行列式. 矩阵元

.. math::
    \langle l | \bm{P} \bm{U} | 0\rangle
        = \langle l | \bm{P} \bm{H} | 0\rangle

为零, 因为我们假定 :math:`|0\rangle` 是一个 CASSCF 波函数,
它的 CI 梯度 (12.2.26) 是零.
因此, 属于 CAS 空间的分量在一阶修正为零.
除此之外, 由于 :math:`\bm{P}\bm{U}\bm{C}^{(0)}` 的元素对应于从 :math:`|0\rangle`
的三重和更高激发的为零,
一阶修正对于这些分量也为零.

在 CASPT 中采用内收缩组态导致了一种相当复杂的形式,
包括, 例如, 在 CASPT2 能量需要活性轨道的三粒子密度矩阵.
一个更直接, 但是计算上更费时的方法是将波函数修正在 Slater 行列式展开,
重新定义 :eq:`pert-caspt-h0` 中的投影算符,
从而例如, :math:`\hat{P}_{SD}` 对应于从完整 CAS 行列式的单重和双重激发, 而不是从 :math:`|0\rangle`.
内收缩和行列式形式给出类似的能量修正.

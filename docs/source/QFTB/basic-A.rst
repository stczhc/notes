
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

2019-01-07
----------

1 反对易数 (Grassmann 变量)
^^^^^^^^^^^^^^^^^^^^^^^^^^^

考虑单一变量 :math:`\theta`.

.. math::
    \{ \theta, \theta \} = 0, \quad \Rightarrow \theta^2 = 0

因为二次以上的项都为零, 最一般的函数为

.. math::
    f(\theta) = a + b \theta

考虑 :math:`n` 个 Grassmann 变量 :math:`\theta_i, i = 1, \cdots n`. 有

.. math::
    \{ \theta_i, \theta_j \} = 0

:math:`n = 2` 时, 有

.. math::
    f(\theta_1, \theta_2) = c_0 + c_1\theta_1 + c_2\theta_2 + c_3 \theta_1 \theta_2

:math:`\{ \theta_i \}` 是 Grassmann 代数 :math:`\mathscr{A}` 的生成元.

最一般的函数为

.. math::
    f(\{ \theta_i \}) = c_0 + c_i \theta_i + c_{ij} \theta_i \theta_j + c_{ijk} \theta_i \theta_j \theta_k
        + \cdots + c_{i_1i_2\cdots i_n} \theta_{i_1} \theta_{i_2} \cdots \theta_{i_n}

其中 :math:`c_{i_1i_2\cdots i_n}` 应是全反对称的. 对应于 :math:`n = 2` 的情况有

.. math::
    f(\{ \theta_i \}) =&\ c_0 + c_1 \theta_1 + c_2 \theta_2 + c_{12} \theta_1 \theta_2
        + c_{21} \theta_2 \theta_1 \\
    =&\ c_0 + c_1 \theta_1 + c_2 \theta_2 + c_{12} \big( \theta_1 \theta_2 - \theta_2 \theta_1 \big) \\
    =&\ c_0 + c_1 \theta_1 + c_2 \theta_2 + 2 c_{12} \theta_1 \theta_2

因此和之前的定义不一样. 即 :math:`c_3 = 2 c_{12}`.

我们有

.. math::
    c_{i_1i_2\cdots i_n} = c \epsilon_{i_1i_2\cdots i_n}

其中

.. math::
    \epsilon_{i_1i_2\cdots i_n} = \begin{cases} 1 & \text{偶置换} \\ -1 & \text{奇置换} \end{cases}

有用的公式

.. math::
    \prod_{i=1}^n \theta_i = \frac{1}{n!} \epsilon^{i_1i_2\cdots i_n} \theta_{i_1} \theta_{i_2} \cdots \theta_{i_n}
    :label: thetai-prod

反过来有

.. math::
    \epsilon^{i_1i_2\cdots i_n} \prod_{j=1}^n \theta_j = \theta_{i_1} \theta_{i_2} \cdots \theta_{i_n}

其中利用了

.. math::
    \epsilon^{ij\cdots l} \epsilon_{ij\cdots l} = n!

2 积分
^^^^^^

定义积分为映射

.. math::
    \int \D \theta : \mathscr{A} \to \mathbb{R} \text{或} \mathbb{C}

并要求它具有平移不变性

.. math::
    \int \D \theta f(\theta) = \int \D \theta f(\theta + \eta)

其中 :math:`\eta` 是另一个 Grassmann 数.

考虑 :math:`n = 1`, 如果 :math:`f(\theta) = c_0 + c_1 \theta`, 则

.. math::
    \int \D \theta f(\theta) = \int \D \theta [ c_0 + c_1 \theta ] = \int \D \theta [ c_0 + c_1 \theta
        + c_1 \eta ]

因此如果令

.. math::
    \int \D \theta [ c_0 + c_1 \theta ] = c_1

也就是说, 积分只取一次项系数 (类似于求导). 即

.. math::
    \int \D \theta = 0, \quad \int \D \theta \theta = 1, \quad \int \D \theta \eta = 0

一般地, 对于 :math:`n` 个变量

.. math::
    \int \D \theta_i = 0,\quad \int \D \theta_i \theta_i = 1

其中对 :math:`i` 不求和. 因此

.. math::
    \int \D \theta_i \theta_j = \delta_{ij}

例如

.. math::
    \int \D \theta_1 \int \D \theta_2 \theta_1 \theta_2 = -\int \D \theta_1 \int \D \theta_2 \theta_2 \theta_1
        = -\int \D \theta_1 \theta_1 = -1

引入规则

.. math::
    \{ \D \theta_i, \D \theta_j \} = 0, \quad \{ \D \theta_i, \theta_j \} = 0

注意本来就有

.. math::
    \{ \theta_i, \theta_j \} = 0

因此这些全部是反对易的. 于是上面的例子可以重新理解为

.. math::
    \int \D \theta_1 \int \D \theta_2 \theta_1 \theta_2 = -\int \D \theta_2 (\int \D \theta_1 \theta_1) \theta_2
    = -\int \D \theta_2 \theta_2 = -1

考虑 "高斯" 积分, :math:`n = 2` 的例子为

.. math::
    \int \D \theta_1 \D \theta_2 \E^{- \theta_1 a \theta_2} = \int \D \theta_1 \D \theta_2 \E^{-\frac{1}{2}\theta_i
        A_{ij} \theta_j }

一般地

.. math::
    \int [\D \theta] \E^{-\frac{1}{2} \theta^T \cdot A \cdot \theta }

其中

.. math::
    \theta = \begin{pmatrix} \theta_1 \\ \theta_2 \end{pmatrix},\quad A_{ij} = a \epsilon_{ij},\quad
    A = a \begin{pmatrix} 0 & 1 \\ -1 & 0 \end{pmatrix}

因此上式等于

.. math::
    \int \D \theta_1 \D \theta_2 [ 1- a\theta_1\theta_2]
    = -a \int \D \theta_1 \D \theta_2 \theta_1\theta_2 = a\int \D \theta_1 \D \theta_2 \theta_2\theta_1 = a
    = \sqrt{\det A}

而

.. math::
    \int \D \theta_1 \D \theta_2 \theta_1 \theta_2 \E^{- \theta_1 a \theta_2}
    =&\ \int \D \theta_1 \D \theta_2 \theta_1 \theta_2 \E^{- \frac{1}{2} \theta^T \cdot A \cdot \theta} \\
    =&\ \int \D \theta_1 \D \theta_2 \theta_1 \theta_2 [ 1 - \theta_1 a \theta_2 ] \\
    =&\ \int \D \theta_1 \D \theta_2 \theta_1 \theta_2 \cdot 1 = -1 = -\frac{1}{a} a \\
    =&\ -\sqrt{\det A^{-1}} \sqrt{\det A}

如果有 :math:`2n` 个变量, 可以配对. 例如 :math:`n = 1` 时有

.. math::
    \theta = \frac{1}{\sqrt{2}} (\theta_i + \I\theta_2),\quad
    \theta^* = \frac{1}{\sqrt{2}} (\theta_i - \I\theta_2)

设有一个线性变换

.. math::
    \theta_i' = \xtensor{U}{_i}{^j} \theta_j

其中 :math:`\xtensor{U}{_i}{^j}` 构成幺正正交基组. 那么利用 :eq:`thetai-prod`

.. math::
    \prod_{k=1}^n \theta_k' =&\ \frac{1}{n!} \epsilon^{i_1i_2\cdots i_n} \theta'_{i_1} \theta'_{i_2} \cdots \theta'_{i_n} \\
    =&\ \frac{1}{n!} \epsilon^{i_1i_2\cdots i_n}
    \xtensor{U}{_{i_1}}{^{j_1}} \xtensor{U}{_{i_2}}{^{j_2}} \cdots \xtensor{U}{_{i_n}}{^{j_n}} \theta_{j_1}
        \theta_{j_2} \cdots \theta_{j_n} \\
    =&\ \frac{1}{n!} \epsilon^{i_1i_2\cdots i_n}
    \xtensor{U}{_{i_1}}{^{j_1}} \xtensor{U}{_{i_2}}{^{j_2}} \cdots \xtensor{U}{_{i_n}}{^{j_n}} \epsilon_{j_1j_2\cdots j_n} \prod_{k=1}^n \theta_k \\
    =&\ (\det U) \prod_{k=1}^n \theta_k

因此如果 :math:`U` 是幺正正交的 :math:`\det U = 1`, 从而

.. math::
    \prod_{k=1}^n \theta_k' = (\det U) \prod_{k=1}^n \theta_k = \prod_{k=1}^n \theta_k

一般的积分

.. math::
    \left[ \prod_{k=1}^n \int \D \theta_k^* \D \theta_k \right] f(\theta, \theta^*) =&\
    \left[ \prod_{k=1}^n \int \D \theta_k^* \D \theta_k \right] \left[ c_0 + c_i \theta_i + c_i^* \theta_i^*
        + c_{ij} \theta_i^* \theta_j + \cdots
        + c \epsilon^{i_1\cdots i_n} \theta_{i_1} \theta_{i_2} \cdots \theta_{i_n}
        \epsilon^{j_1\cdots j_n} \theta^*_{j_1} \theta^*_{j_2} \cdots \theta^*_{j_n}
        \right] \\
    =&\ \left[ \prod_{k=1}^n \int \D \theta_k^* \D \theta_k \right]
        c \epsilon^{i_1\cdots i_n} \epsilon^{j_1\cdots j_n}
        \theta_{i_1} \theta_{i_2} \cdots \theta_{i_n}\theta^*_{j_1} \theta^*_{j_2} \cdots \theta^*_{j_n}

也就是说, 只有最高次数项才不为零. 因为积分变量包含所有 :math:`2n` 个变量, 而按照积分的定义, 若被积函数中某变量没有出现, 则积分的值为零. 所以只有最高次 (含有 :math:`2n` 个变量) 才能不使积分的值为零.

现在考虑

.. math::
    \left[ \prod_{k=1}^n \int \D \theta_k^* \D \theta_k \right] \exp \left( -\theta_i^* A_{ij} \theta_j \right)
        = \left[ \prod_{k=1}^n \int \D {\theta'}_k^* \D \theta'_k \right]
        \exp \left( -\sum_i {\theta'}^*_i a_i \theta'_i \right)

其中 :math:`\{ a_i \}` 是 :math:`A` 的本征值. 现在由于任何二次项都为零, 不包括所有 :math:`2n` 个变量的项也等于零, 所以

.. math::
    \left[ \prod_{k=1}^n \int \D \theta_k^* \D \theta_k \right] \exp \left( -\theta_i^* A_{ij} \theta_j \right)
        = \left[ \prod_{k=1}^n \int \D \theta_k^* \D \theta_k \right] \prod_{i=1}^n (-1) a_i {\theta'}^*_i \theta'_i

由于同时移动两个变量 :math:`ABCD \to CABD \to CDAB` 经过 4 次交换, 不变号, 因此有

.. math::
    \left[ \prod_{k=1}^n \int \D \theta_k^* \D \theta_k \right] \exp \left( -\theta_i^* A_{ij} \theta_j \right)
        = \prod_{k=1}^n a_k \int \D \theta_k^* \D \theta_k {\theta'}_k {\theta'}^*_k = \prod_{k=1}^n a_k
        = \det A

综上

.. math::
    \left[ \prod_{k=1}^n \int \D \theta_k^* \D \theta_k \right] \exp \left( -\theta_i^* A_{ij} \theta_j \right)
    = \int [\D\theta^*] [\D\theta] \E^{-\theta^*\cdot A \cdot \theta} = \det A

注意, 如果定义复数共轭为 :math:`(\theta \eta)^* \equiv \eta^* \theta^* = -\theta^* \eta^*`, 那么

.. math::
    \big( \theta_i^* A_{ij} \theta_j \big)^* = \theta_j^* A^*_{ij} \theta_i =
        \theta_j^* A^T_{ij} \theta_i = \theta_j^* A_{ji} \theta_i = \theta^* \cdot A \cdot \theta

这里有点问题. 似乎假设了 :math:`A_{ji}^\dagger = A_{ji}`.

更一般地, 考虑

.. math::
    \left[ \prod_{k=1}^n \int \D \theta_k^* \D \theta_k \right] \E^{-\theta_i^* A_{ij} \theta_j + J_i^*\theta_i
        + \theta_i^* J_i}

配方得

.. math::
    \theta_i^* A_{ij} \theta_j - J_i^*\theta_i - \theta_i^* J_i
    = (\theta^* - \theta^*_0) \cdot A \cdot (\theta - \theta_0) - J^*\cdot A^{-1}\cdot J

其中 :math:`\theta_0 \equiv A^{-1} \cdot J, \theta^*_0 \equiv J^*\cdot A^{-1}`. 验证可得

.. math::
    &\ (\theta^* - \theta^*_0) \cdot A \cdot (\theta - \theta_0) - J^*\cdot A^{-1}\cdot J\\ =&\
    \theta^*\cdot A \cdot\theta - \theta^*_0 \cdot A \cdot \theta - \theta^* \cdot A \cdot \theta_0
        + \theta_0^* \cdot A \cdot \theta_0 - J^*\cdot A^{-1}\cdot J \\
    =&\ \theta^*\cdot A \cdot\theta + J^*\cdot A^{-1} \cdot A \cdot \theta - \theta^* \cdot A \cdot A^{-1} \cdot J + J^*\cdot A^{-1} \cdot A \cdot A^{-1} \cdot J - J^*\cdot A^{-1}\cdot J \\
    =&\ \theta^*\cdot A \cdot\theta + J^*\cdot \theta - \theta^* \cdot J + J^* \cdot A^{-1} \cdot J - J^*\cdot A^{-1}\cdot J \\
    =&\ \theta^*\cdot A \cdot\theta + J^*\cdot \theta - \theta^* \cdot J

因此 (注意平移积分变量不改变积分的值)

.. math::
    \left[ \prod_{k=1}^n \int \D \theta_k^* \D \theta_k \right] \E^{-\theta_i^* A_{ij} \theta_j + J_i^*\theta_i
        + \theta_i^* J_i} =&\ \left[ \prod_{k=1}^n \int \D \theta_k^* \D \theta_k \right]
        \E^{-(\theta^* - \theta^*_0) \cdot A \cdot (\theta - \theta_0) + J^*\cdot A^{-1}\cdot J} \\
    =&\ \left[ \prod_{k=1}^n \int \D \theta_k^* \D \theta_k \right] \E^{-\theta^* \cdot A \cdot \theta} \E^{J^*\cdot A^{-1}\cdot J} = \det A \E^{J^*\cdot A^{-1}\cdot J}

相应的泛函公式为

.. math::
    \int [\D \theta] [\D \eta] \E^{-\theta \cdot A \cdot \eta} =&\ \det A \\
    \int [\D \theta] \E^{-\frac{1}{2}\theta \cdot A \cdot \theta} =&\ \sqrt{\det A}

其中 :math:`\theta,\eta` 是 :math:`n` 维独立实变量.

3 微分
^^^^^^

定义微分为映射

.. math::
    \frac{\partial}{\partial \theta_i} : \mathscr{A} \to \mathscr{A}

有

.. math::
    \frac{\D }{\D \theta} f(\theta) =&\ \frac{\D}{\D \theta} (a_0 + a_1 \theta) \equiv a_1 \\
    \frac{\D }{\D \theta} \theta f(\theta) =&\ \frac{\D}{\D \theta} \left[ \theta (a_0 + a_1 \theta) \right] = \frac{\D}{\D \theta} \theta a_0 = a_0

因此

.. math::
    \theta \frac{\D}{\D \theta} f + \frac{\D}{\D \theta} (\theta f) = \theta a_1 + a_0 = f(\theta)

即

.. math::
    \left( \theta \frac{\D}{\D \theta} + \frac{\D}{\D \theta} \theta \right) f = f,\quad
    \left\{ \theta, \frac{\D}{\D \theta} \right\} = 1

另外注意

.. math::
    \frac{\D}{\D \theta} \frac{\D}{\D \theta} f = 0,\quad \left\{ \frac{\D}{\D \theta}, \frac{\D}{\D \theta} \right\} f = 0

因此, 对 :math:`n` 个变量, 微分定义为

.. math::
    \left\{ \theta_i , \frac{\partial}{\partial \theta_j} \right\} = \delta_{ij},\quad
    \left\{ \frac{\partial}{\partial \theta_i}, \frac{\partial}{\partial \theta_j} \right\} = 0

因此

.. math::
    \frac{\partial}{\partial \eta} \theta \eta = -\frac{\partial}{\partial \eta} \eta \theta = -\theta

或者

.. math::
    \frac{\partial}{\partial \eta} \theta \eta = -\theta \frac{\partial}{\partial \eta}\eta = -\theta

注意

.. math::
    \int \D \theta_i g = \frac{\partial}{\partial \theta_i} g,\quad
    \int \D \theta_i \theta_j = \frac{\partial}{\partial \theta_i} \theta_j = \delta_{ij}

注意前面已经得到

.. math::
    \int [\D \theta^*] [\D \theta] \E^{-\theta^* \cdot A \cdot \theta + J^*\cdot \theta + \theta^* \cdot J} = (\det A) \E^{J^*\cdot A^{-1}\cdot J}

考虑

.. math::
    \frac{\D}{\D J^*_i} \frac{\D}{\D J_j} \int [\D \theta^* \D \theta]
        \E^{-\theta^*\cdot A \cdot \theta + J^*\cdot \theta + \theta^*\cdot J}

注意到

.. math::
    \frac{\D}{\D J_j}\E^{\theta^*\cdot J} =&\ \frac{\D}{\D J_j}\E^{\theta_j^*J_j} \E^{\sum_{l\neq j}\theta_l^*J_l}
    = -\theta_j^* \E^{\sum_{l\neq j}\theta_l^*J_l} \\
    \frac{\D}{\D J^*_i} \E^{J^*\cdot \theta} =&\ \frac{\D}{\D J^*_i} \E^{J_i^*\cdot \theta_i} \E^{\sum_{l\neq i} J_l^*\cdot \theta_l} = \theta_i \E^{\sum_{l\neq i} J_l^*\cdot \theta_l}

因此

.. math::
    \frac{\D}{\D J^*_i} \frac{\D}{\D J_j} \int [\D \theta^* \D \theta]
        \E^{-\theta^*\cdot A \cdot \theta + J^*\cdot \theta + \theta^*\cdot J}
    =&\ \frac{\D}{\D J^*_i} \int [\D \theta^* \D \theta]
        \E^{-\theta^*\cdot A \cdot \theta + J^*\cdot \theta} \frac{\D}{\D J_j}\E^{\theta^*\cdot J} \\
    =&\ \frac{\D}{\D J^*_i} \int [\D \theta^* \D \theta] (-\theta_j^*)
        \E^{-\theta^*\cdot A \cdot \theta + J^*\cdot \theta} \E^{\sum_{l\neq j}\theta_l^*J_l} \\
    =&\ \int [\D \theta^* \D \theta] (+\theta_j^*)
        \E^{-\theta^*\cdot A \cdot \theta} \E^{\sum_{l\neq j}\theta_l^*J_l} \frac{\D}{\D J^*_i} \E^{ J^*\cdot \theta} \\
    =&\ \int [\D \theta^* \D \theta] (\theta_j^* \theta_i)
        \E^{-\theta^*\cdot A \cdot \theta} \E^{\sum_{l\neq j}\theta_l^*J_l} \E^{\sum_{l\neq i} J_l^*\cdot \theta_l}

加上 :math:`l = j` 和 :math:`l = i` 项后, 这些加上的项展开后与前面多出的系数将构成 :math:`\theta_j^{*2}` 和 :math:`\theta_i^2` 这些贡献为零. 因此可以不写 :math:`l = j, l = i`. 即

.. math::
    \frac{\D}{\D J^*_i} \frac{\D}{\D J_j} \int [\D \theta^* \D \theta]
        \E^{-\theta^*\cdot A \cdot \theta + J^*\cdot \theta + \theta^*\cdot J} = \int [\D \theta^* \D \theta] (\theta_j^* \theta_i)
        \E^{-\theta^*\cdot A \cdot \theta} \E^{\theta^*J} \E^{J^*\cdot \theta}


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
        \renewcommand{\bm}{\boldsymbol}

.. note::
    Helgaker, T., Jorgensen, P., & Olsen, J. (2014). *Molecular electronic-structure theory.* John Wiley & Sons.

第三章 轨道变换
================

第一章介绍的 Fock 空间，是以一组正交自旋轨道定义的. 在很多情形 - 例如, 在优化一个电子态的过程中, 或者在计算一个电子态对一个外部微扰的响应的时候 - 我们需要进行不同正交自旋轨道组进行变换. 在这一章, 我们考虑产生和湮灭算符的幺正变换, 以及 Fock 空间的态的幺正变换, 这些变换是由采用的自旋轨道基组的变换生成的. 特别地, 我们将看到, 在二次量子化, 幺正变换如何方便地通过写为激发算符的线性组合的反厄米算符的幂来进行.

幺正算符的指数参数化是独立的, 因为, 不存在对于算符中数值参数的允许值的限制 - 任何数值参数的选择都导致一个真正的幺正算符. 但是, 在很多情形, 我们希望进行带有限制的自旋轨道和普通轨道变换, 从而, 例如, 可以保持电子态的自旋对称性. 这样的受限制的变换也在这一章进行考虑, 这包括在二次量子化, 对于幺正轨道旋转算符的对称性质的分析. 但是, 我们从对幺正矩阵和矩阵幂的讨论开始, 来探索二次量子化的自旋轨道和轨道旋转.

第一节 幺正变换和矩阵幂
------------------------

一个 **幺正矩阵** :math:`\bm{U}` 由下列关系表征

.. math::
    \bm{U}^\dagger \bm{U} = \bm{U} \bm{U}^\dagger = \bm{1}
    :label: matrix-unitary-relation

其中 :math:`\bm{U}^\dagger` 是 :math:`\bm{U}` 的共轭转置 (通过转置接着复数共轭得到). 在这一节我们的任务是得到幺正矩阵的一种参数化, 从而, 任何幺正矩阵可以按照这个参数化来产生; 只会产生幺正矩阵; 并且所有参数相互独立. :math:`\bm{U}` 的矩阵元不能直接用于这个目的, 因为它们按照 :eq:`matrix-unitary-relation` 进行耦合 [因此不独立]. 我们因而需要得到独立 (即无限制) 的参数化, 通过将幺正矩阵写为一个指数矩阵. 但是, 在考虑第二小节指数幺正参数化之前, 我们先引入并讨论矩阵幂, 在第一小节.

1. 矩阵幂
^^^^^^^^^

我们将 **矩阵** :math:`\bm{A}` **的幂** 定义为

.. math::
    \exp (\bm{A}) = \sum_{n = 0}^\infty \frac{\bm{A}^n}{n!}
    :label: exp-matrix-def

其中 :math:`\bm{A}^0` 是单位矩阵. 倾向数学的读者可能希望证明上式的求和是收敛的, 对于任何有限维数矩阵. 按照上述定义, 存在下列关系:

.. math::
    \exp(-\bm{A}) \exp(\bm{A}) =&\ \bm{1} \\
    \exp(\bm{A})^\dagger =&\ \exp(\bm{A}^\dagger) \\
    \bm{B} \exp(\bm{A}) \bm{B}^{-1} =&\ \exp(\bm{B}\bm{A}\bm{B}^{-1}) \\
    \exp(\bm{A} + \bm{B}) =&\ \exp(\bm{A})\exp(\bm{B}) \Leftarrow [\bm{A}, \bm{B}] = \bm{0} \\
    \exp(-\bm{A})\bm{B}\exp(\bm{A}) =&\ \bm{B} + [\bm{B},\bm{A}] + \frac{1}{2!}
        [[\bm{B}, \bm{A}], \bm{A}] + \frac{1}{3!} [[[\bm{B}, \bm{A}], \bm{A}], \bm{A}] + \cdots
    :label: matrix-exp-formula

在最后一式中以 :math:`-\bm{A}` 替换 :math:`\bm{A}`, 我们得到等价的展开

.. math::
    \exp(\bm{A})\bm{B}\exp(-\bm{A}) = \bm{B} + [\bm{A},\bm{B}] + \frac{1}{2!}
        [\bm{A}, [\bm{A}, \bm{B}]] + \frac{1}{3!} [\bm{A}, [\bm{A}, [\bm{A}, \bm{B}]]] + \cdots
    
以上两式是 **Baker-Campbell-Hausdorff (BCH) 展开** 的两个实现 [参考 QFTW-2A-引理2-29-1]. 上述关系的证明见练习3.1.

2. 幺正矩阵的指数表示
^^^^^^^^^^^^^^^^^^^^^

现在我们将证明, 任何幺正矩阵 :math:`\bm{U}` 可以写为一个反厄米矩阵的幂:

.. math::
    \bm{U} = \exp(\bm{X}), \quad \bm{X}^\dagger = -\bm{X}

我们先证明, 对任何幺正矩阵 :math:`\bm{U}`, 我们总可以找到一个反厄米矩阵 :math:`\bm{X}` 从而满足上式 [存在性]. 为了这个目的, 谱定理表明任何幺正矩阵可以对角化为

.. math::
    \bm{U} = \bm{V} \bm{\epsilon} \bm{V}^\dagger

其中 :math:`\bm{V}` 是幺正的, 而 :math:`\bm{\epsilon}` 是复数对角矩阵, 它的元素可以写为下列形式

.. math::
    \epsilon_k = \exp(\I \delta_k)

其中参数 :math:`\delta_k` 是实数 [即 :math:`\bm{U}` 的特征值都是单位模的复数]. 引入带有元素 :math:`\delta_k` 的对角矩阵 :math:`\bm{\delta}`, 我们通过 :eq:`matrix-exp-formula` 第三式得到

.. math::
    \bm{U} = \bm{V} \exp(\I \bm{\delta}) \bm{V}^\dagger = \exp(\I \bm{V}\bm{\delta}\bm{V}^\dagger )

由于 :math:`\I \bm{V}\bm{\delta}\bm{V}^\dagger` 是反厄米的, 我们显示了任何幺正矩阵可以写为指数形式.

现在, 我们满足了幺正参数化的三个要求的第一个 [任何幺正矩阵都可以产生]. 为了满足第二个条件 [只可以产生幺正矩阵], 我们注意到, 对于任何反厄米矩阵 :math:`\bm{X}`, 指数 :math:`\exp(\bm{X})` 总是幺正的, 从关系 :math:`\bm{X}=-\bm{X}^\dagger`, 我们得到

.. math::
    \exp(\bm{X})^\dagger \exp(\bm{X}) = \exp(-\bm{X}) \exp(\bm{X}) = \bm{1}
    :label: unitary-property

最后, 第三个要求 [参数是独立的] 也满足, 由于反厄米矩阵平庸地表示为一组独立参数. 我们可以, 例如, 采用对角元和对角元之下的矩阵元, 作为独立参数, 然后产生矩阵的剩余矩阵元, 从反厄米条件 :math:`X_{pq}^* = -X_{qp}`. 注意反厄米矩阵的对角元是纯虚数, 而非对角元是复数.

3. 特殊幺正矩阵
^^^^^^^^^^^^^^^

上述的 :eq:`exp-matrix-def` 幺正矩阵的指数参数化是最一般的形式, 在所有情形都适用. 我们现在考虑幺正矩阵的更加特殊的形式. 我们先将反厄米矩阵 :math:`\bm{X}` 写为如下形式

.. math::
    \bm{X} = \frac{\bm{X} + \bm{X}^T}{2} + \I \frac{\bm{X} + \bm{X}^T}{2\I}

其中 :math:`\bm{X}^T` 是 :math:`\bm{X}` 的转置. 任何反厄米矩阵因此可以唯一分解为

.. math::
    \bm{X} = {}^R\bm{X} +\I ({}^D \bm{X} + {}^I \bm{X})

[实部, (纯虚) 对角部分, 虚部] 其中 :math:`{}^R\bm{X}` 是实反对称矩阵

.. math::
    {}^R\bm{X} = \frac{\bm{X} - \bm{X}^T}{2}

而 :math:`{}^D\bm{X}` 是实对角矩阵, :math:`{}^I\bm{X}` 是实对称矩阵, 其对角元为零

.. math::
    {}^D\bm{X} + {}^I\bm{X} = \frac{\bm{X} + \bm{X}^T}{2\I}

:eq:`exp-matrix-def` 的幺正矩阵因此可以写为

.. math::
    \bm{U} = \exp(\I{}^D\bm{X} + {}^R\bm{X} + \I {}^I\bm{X})

即表示为实对称和反对称矩阵. 如果对角矩阵 :math:`{}^D\bm{X}` 设为等于零, 则产生的幺正矩阵有等于1的行列式

.. math::
    \det[\exp({}^R\bm{X} + \I{}^I\bm{X})] = \exp[\Tr({}^R\bm{X} + \I {}^I\bm{X})] = 1

[注意 :math:`{}^R\bm{X} + \I {}^I\bm{X}` 的对角元皆为零, 而 :math:`\exp(0) = 1`. 一般的幺正矩阵的行列式则为 :math:`\exp(\I \delta)` 得到一个单位复数 (这个复数的模是1)] 我们使用了恒等式 (练习 3.2 进行证明)

.. math::
    \det[\exp(\bm{A})] = \exp(\Tr\ \bm{A})

以及, :math:`{}^R\bm{X} + \I {}^I\bm{X}` 具有零对角元, 因此零迹. 以下形式的幺正矩阵

.. math::
    \bm{O} = \exp({}^R\bm{X} + \I {}^I\bm{X})

因此具有等于1的行列式, 是 **特殊幺正矩阵** 的例子, 一般地, 按照 :eq:`exp-matrix-def` 对于一个无迹矩阵 :math:`\bm{X}`.

可以证明, 任何幺正矩阵可以写为一个幺正对角矩阵乘以特殊幺正矩阵

.. math::
    \bm{U} = \exp(\I {}^D\bm{X} + {}^R\bm{X} + \I {}^I\bm{X}) = \exp(\I {}^D\tilde{\bm{X}})\exp({}^R\tilde{\bm{X}} + \I {}^I\tilde{\bm{X}})
    :label: special-unitary-matrix-relation

其中, 一般地, 对给定矩阵 :math:`\bm{U}`, 实矩阵 :math:`{}^D\tilde{\bm{X}}, {}^R\tilde{\bm{X}}` 和 :math:`{}^I\tilde{\bm{X}}` 和实矩阵 :math:`{}^D\bm{X}, {}^R\bm{X}` 和 :math:`{}^I\bm{X}` 并不相同. 上式因此给出两种不同的幺正矩阵指数参数化. 对角幺正矩阵 :math:`\exp(\I {}^D\tilde{\bm{X}})` 引入 **复相移**, 在我们的工作中这通常是多余的, 我们只需要特殊幺正矩阵.

4. 正交矩阵
^^^^^^^^^^^

在很多情形, 我们关心实矢量而不是复矢量之间的幺正变换. 这样的变换成为 **正交的**, 而与之相关的 **实正交矩阵** 满足下列关系

.. math::
    \bm{Q}^T\bm{Q} = \bm{Q}\bm{Q}^T = \bm{1}

和 :eq:`matrix-unitary-relation` 类似. 从 :eq:`special-unitary-matrix-relation` 我们发现任何正交矩阵可以写为指数形式

.. math::
    \bm{Q} = \bm{d} \exp({}^R \bm{X})

其中 :math:`\bm{d}` 是具有元素 :math:`\pm 1` 的对角矩阵, 而 :math:`{}^R\bm{X}` 是实反对称矩阵. 省略相因子, 我们得到一组 **特殊正交矩阵**

.. math::
    \bm{R} = \exp({}^R \bm{X})
    :label: ortho-def

特殊正交矩阵通常是有用的, 例如, 对于轨道的旋转.

5. 矩阵幂的求值
^^^^^^^^^^^^^^^

矩阵幂的展开式 :eq:`exp-matrix-def` 收敛很快, 通常可以用来进行幺正矩阵的求值, 特别地, 如果反厄米矩阵 :math:`\bm{X}` 有很小的范数, 并且不需要高精度. 另一个方法是对角化 :math:`\bm{X}`:

.. math::
    \bm{X} = \I \bm{V} \bm{\delta} \bm{V}^\dagger, \quad \bm{V}^\dagger \bm{V} = \bm{1}

其中 :math:`\bm{\delta}` 是一个实对角矩阵 (注意厄米矩阵 :math:`\I \bm{X}` 的特征值是实的) 然后利用 :eq:`matrix-exp-formula` 第三式, 将指数重写为

.. math::
    \bm{U} = \exp(\bm{X}) = \exp(\I \bm{V} \bm{\delta} \bm{V}^\dagger) = \bm{V} \exp(\I \bm{\delta}) \bm{V}^\dagger

具有矩阵元 :math:`\I \delta_k` 的纯虚对角矩阵 :math:`\I \bm{\delta}` 的幂很容易计算. 最终矩阵 :math:`\bm{U}` 通常可以通过少数矩阵乘积得到.

对于特殊正交矩阵, 可以用同样的方法. 对角化实反对称矩阵 :math:`{}^R\bm{X}` 给出

.. math::
    {}^R\bm{X} = \I \bm{V}\bm{\tau}\bm{V}^\dagger,\quad \bm{V}^\dagger \bm{V} = \bm{1}

其中对角矩阵 :math:`\I \bm{\tau}` 的特征值 :math:`\I \tau_k` 是零或者纯虚数, 而 :math:`\bm{V}` 是复幺正矩阵. 正交矩阵 :math:`\bm{R}` 从下列表达式得到

.. math::
    \bm{R} = \exp({}^R\bm{X}) = \exp(\I \bm{V}\bm{\delta}\bm{V}^\dagger) = \bm{V} \exp(\I \bm{\tau}) \bm{V}^\dagger

注意到, 尽管 :math:`\bm{R}` 和 :math:`{}^R\bm{X}` 都是实数, 上式的计算包括了复数代数, 由于 :math:`\bm{V}` 是复数, 而 :math:`\I\bm{\tau}` 是虚数.

为了发现如何只通过实数代数得到实正交矩阵 :math:`\bm{R}`, 我们注意到 :math:`{}^R\bm{X}` 的平方可以用正交矩阵对角化

.. math::
    {}^R\bm{X}^2  = -\bm{W} \bm{\tau}^2 \bm{W}^T, \quad \bm{W}^T\bm{W} =\bm{1}
    :label: ortho-exp-expand

由于 :math:`{}^R\bm{X}^2` 是实对称的, 它的特征值和特征矢量是实的. 事实上, 特征值是非负的, 因为它们可以通过对 :math:`{}^R\bm{X}` 的复数特征值取平方得到. 为了得到 :math:`\bm{R}` 的表达式, 我们现在将 :eq:`ortho-def` 展开为泰勒级数

.. math::
    \bm{R} =&\ \exp({}^R\bm{X}) = \sum_{n=0}^\infty \frac{1}{(2n)!} {}^R\bm{X}^{2n} + \sum_{n=0}^\infty \frac{1}{(2n+1)!} {}^R\bm{X}^{2n}
        {}^R\bm{X} \\
    =&\ \bm{W} \cos(\bm{\tau}) \bm{W}^T + \bm{W}\bm{\tau}^{-1} \sin(\bm{\tau}) \bm{W}^T {}^R \bm{X}

其中我们利用了 :eq:`ortho-exp-expand` 以及 :math:`\cos(\bm{\tau})` 和 :math:`\sin(\bm{\tau})` 的泰勒展开

.. math::
    \cos(\bm{\tau}) = \sum_{n=0}^\infty \frac{(-1)^n}{(2n)!} \bm{\tau}^{2n} \\
    \sin(\bm{\tau}) = \sum_{n=0}^\infty \frac{(-1)^n}{(2n+1)!} \bm{\tau}^{2n+1}

上面的展开式仅包含实数代数, 可以作为复数表达式的替代使用. 应该小心处理为零的特征值. 在二维情形, 幺正矩阵可以以简单解析形式给出; 见练习3.3.

6. 非幺正变换
^^^^^^^^^^^^^

现在让我们考虑使厄米非奇异 [非奇异即行列式不为零, 有逆] **度规矩阵** 守恒的变换

.. math::
    \bm{W}^\dagger \bm{S} \bm{W} = \bm{S}
    :label: s-unitary-def

为了下面的讨论, 我们先引入一般非奇异矩阵 [要计算这个幂, 先对矩阵进行对角化分解]

.. math::
    \bm{A} = \bm{U} \bm{\alpha} \bm{U}^\dagger

的非整数次幂 :math:`\bm{A}^y` 为

.. math::
    \bm{A}^y = \bm{U} \bm{\alpha}^y \bm{U}^\dagger

通过带入, 很容易验证 :math:`\bm{W}` 可以写为 :math:`\bm{U}` 的形式为

.. math::
    \bm{W} = \bm{S}^{-1/2} \bm{U} \bm{S}^{1/2}

[带入得 :math:`\bm{S}^{1/2} \bm{U}^\dagger \bm{S}^{-1/2} \bm{S} \bm{S}^{-1/2} \bm{U} \bm{S}^{1/2} = \bm{S}`, 注意 :math:`\bm{S}` 是厄米矩阵, 因此它的共轭转置和自身相等, 并且具有实的特征值. ]

如果我们用反厄米矩阵 :math:`\bm{X}` 来对 :math:`\bm{U}` 进行参数化

.. math::
    \bm{U} = \exp(\bm{S}^{1/2} \bm{X} \bm{S}^{1/2})

通过带入我们得到

.. math::
    \bm{W} = \exp(\bm{X}\bm{S})

作为对于不同于 :math:`\bm{1}` 的度规矩阵 :math:`\bm{S}` 的指数参数化的一般化. 将上式带入 :eq:`s-unitary-def` 并且取逆, 得到

.. math::
    \exp(-\bm{S}\bm{X})\bm{S}\exp(\bm{X}\bm{S}) =&\ \bm{S} \\
    \exp(-\bm{X}\bm{S})\bm{S}^{-1}\exp(\bm{S}\bm{X}) =&\ \bm{S}^{-1}
    :label: general-exp-sxs-def

它们是非幺正的 :math:`\exp(-\bm{A}) \exp(\bm{A}) = \bm{1}` 的一般化.

我们现在考虑通过 :math:`\exp(\bm{X}\bm{S})` 和 :math:`\exp(\bm{S}\bm{X})` 诱导的非幺正变换的 BCH 展开. 以记号

.. math::
    \tilde{M} = \bm{S}^{1/2} \bm{M} \bm{S}^{1/2}

我们得到

.. math::
    \exp(-\bm{X}\bm{S}) \bm{A} \exp(\bm{S}\bm{X}) =
        \bm{S}^{-1/2} \exp(-\tilde{\bm{X}}) \tilde{\bm{A}}  \exp(\tilde{\bm{X}}) \bm{S}^{-1/2}

由于 :math:`\tilde{\bm{X}}` 是反厄米的, :math:`\exp(-\tilde{\bm{x}}) \tilde{A}\exp(\tilde{X})` 表示一个幺正变换. 执行一个标准 BCH 展开, 我们得到

.. math::
     \exp(-\bm{X}\bm{S}) \bm{A} \exp(\bm{S}\bm{X}) =
        \bm{S}^{-1/2} \tilde{\bm{A}} \bm{S}^{-1/2} + \bm{S}^{-1/2} [\tilde{\bm{A}}, \tilde{\bm{X}}]\bm{S}^{-1/2}
        + \frac{1}{2} \bm{S}^{-1/2} [[\tilde{\bm{A}}, \tilde{\bm{X}}], \tilde{\bm{X}}] \bm{S}^{-1/2} + \cdots

它可以写为 [对易括号] 展开的形式

.. math::
    \exp(-\bm{X}\bm{S}) \bm{A} \exp(\bm{S}\bm{X}) = \bm{A} + \bm{A}\bm{S}\bm{X}
        -\bm{X}\bm{S}\bm{A} + \frac{1}{2} \bm{A}\bm{S}\bm{X} \bm{S}\bm{X}
        - \bm{X}\bm{S}\bm{A}\bm{S}\bm{X} + \frac{1}{2} \bm{X}\bm{S}\bm{X} \bm{S}\bm{A} + \cdots

这个展开和传统的 BCH 展开是完全一样的, 除了度规 :math:`\bm{S}` 被插入到每一对相邻的矩阵. 引入 :math:`S` **对易子**

.. math::
    [\bm{A}, \bm{B}]_{\bm{S}} = \bm{A}\bm{S}\bm{B} - \bm{B}\bm{S}\bm{A}

我们发现上面的变换可以写为更紧凑的 **反对称 BCH 展开**

.. math::
    \exp(-\bm{X}\bm{S}) \bm{A} \exp(\bm{S}\bm{X}) = \bm{A} + [\bm{A}, \bm{X}]_{\bm{S}}
        + \frac{1}{2}[[\bm{A}, \bm{X}]_{\bm{S}}, \bm{X}]_{\bm{S}} + \cdots

注意到度规的逆 :math:`\bm{S}^{-1}` 和所有矩阵 :math:`\bm{B}` 对易 [按S对易子], 即

.. math::
    [\bm{S}^{-1}, \bm{B}]_{\bm{S}} = \bm{0}

带入 BCH 展开式得到 :eq:`general-exp-sxs-def` 的第二式.

最后, 我们考虑变换 :math:`\exp(-\bm{S}\bm{X}) \bm{A} \exp(\bm{X}\bm{S})`, 我们重写为

.. math::
    \exp(-\bm{S}\bm{X}) \bm{A} \exp(\bm{X}\bm{S}) = 
        \bm{S} \exp(-\bm{X}\bm{S}) \bm{S}^{-1} \bm{A} \bm{S}^{-1} \exp(\bm{S}\bm{X}) \bm{S}

我们得到反对称 BCH 展开

.. math::
    \exp(-\bm{S}\bm{X})\bm{A}\exp(\bm{X}\bm{S}) = \bm{A} + \bm{S}[\bm{S}^{-1}\bm{A}\bm{S}^{-1}, \bm{X}]_{\bm{S}} \bm{S}
        + \frac{1}{2} \bm{S}[[\bm{S}^{-1}\bm{A}\bm{S}^{-1}, \bm{X}]_{\bm{S}}, \bm{X}]_{\bm{S}}\bm{S} + \cdots

或者, 在展开的形式

.. math::
    \exp(-\bm{S}\bm{X})\bm{A}\exp(\bm{X}\bm{S}) = \bm{A} + \bm{A}\bm{X}\bm{S}
        -\bm{S}\bm{X}\bm{A} + \frac{1}{2} \bm{A}\bm{X}\bm{S} \bm{X}\bm{S}
        - \bm{S}\bm{X}\bm{A}\bm{X}\bm{S} + \frac{1}{2} \bm{S}\bm{X}\bm{S}\bm{X}\bm{A} + \cdots

形式上, 这个展开可以通过对 :math:`\exp(-\bm{X})\bm{A}\exp(\bm{S})` 的 BCH 展开中的 :math:`\bm{X}` 补上 :math:`\bm{S}`, 除了当 :math:`\bm{X}` 在 :math:`\bm{A}` 旁边. 非幺正变换理论在 10.7 节发展基于密度的 Hatree-Fock 理论时使用.

第二节 幺正自旋轨道变换
-----------------------

通常需要对一些态考虑如何得到一组正交自旋轨道 :math:`\tilde{\phi}_P` 的占据数, 利用另一组 :math:`\phi_P` 的占据数, 通过一个幺正变换

.. math::
    \tilde{\phi}_P = \sum_{Q} \phi_Q U_{QP}
    :label: spin-orbital-unitary-trans

根据 3.1 节的讨论, 这个幺正矩阵 :math:`\bm{U}` 可以以一个反厄米矩阵 :math:`\bm{\kappa}` 写为

.. math::
    \bm{U} = \exp(-\bm{\kappa}),\quad \bm{\kappa}^\dagger = -\bm{\kappa}

其中在指数中的负号是一个约定.

令 :math:`a_P^\dagger` 和 :math:`a_P` 为和未变换的自旋轨道 :math:`\phi_P` 相联系的基元产生和湮灭算符, 并且令 :math:`|0\rangle` 为 Fock 空间中任何可以通过基元算符表示的态. 在这一节, 我们将展示通过上述幺正变换产生的基元算符 :math:`\tilde{a}_P^\dagger` 和 :math:`\tilde{a}_P` 和态 :math:`|\tilde{0}\rangle` 可以以未变换的算符和态表示为

.. math::
    \tilde{a}_P^\dagger =&\ \exp(-\hat{\kappa}) a_P^\dagger \exp(\hat{\kappa}) \\
    \tilde{a}_P =&\ \exp(-\hat{\kappa}) a_P \exp(\hat{\kappa}) \\
    |\tilde{0}\rangle =&\ \exp(-\hat{\kappa}) |0\rangle
    :label: op-unitary-trans

[即态按照矢量方式变换, 算符按照矩阵方式变换] 其中我们引入了反厄米算符

.. math::
    \hat{\kappa} = \sum_{PQ} \kappa_{PQ}a_P^\dagger a_Q,\quad \hat{\kappa}^\dagger = -\hat{\kappa}
    :label: anti-hermitian-def

其中求和是对所有产生和湮灭算符的所有对求和 (即, 对所有激发对求和) 而参数 :math:`\kappa_{PQ}` 是反厄米矩阵 :math:`\bm{\kappa}` 的矩阵元.

上述各式中的算符的幂按照矩阵幂类似的方式定义

.. math::
    \exp(\hat{\kappa}) = \sum_{n=0}^\infty \frac{\hat{\kappa}^n}{n!}

而 3.1.1 节建立的矩阵规则 :eq:`matrix-exp-formula` 可以很容易发现对于算符也成立. 作为将上述规则应用于算符的一个例子, 我们注意到反厄米算符 :math:`\hat{\kappa}` 的幂的幺正性质可以直接从 :eq:`matrix-exp-formula` 第一第二式得到

.. math::
    [\exp(\hat{\kappa})]^\dagger \exp(\hat{\kappa}) = \exp(-\hat{\kappa})\exp(\hat{\kappa}) = 1

和 :eq:`unitary-property` 类似.

表达式 :eq:`op-unitary-trans` 是重要的, 因为它们允许我们以紧凑形式表示属于不同自旋轨道组的算符和态, 极大简化了很多二次量子化的代数处理. 在这一节的剩余部分, 我们会证明这些关系.

1. 产生和湮灭算符的幺正矩阵展开
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

我们从考虑一次量子化的自旋轨道变换和二次量子化的产生算符的变换开始讨论. 假设我们已经构造了两个 Fock 空间, 一个从一次量子化自旋轨道 :math:`\phi_P` 组, 另一个从变换了的轨道组 :eq:`spin-orbital-unitary-trans` 中的 :math:`\tilde{\phi}_P`. 这两个 Fock 空间中二次量子化的产生算符具有怎样的关系? 在原始的自旋轨道基组, :math:`N-` 电子的一次量子化 Slater 行列式

.. math::
    \Phi = |\phi_{P_1}\phi_{P_2}\cdots \phi_{P_N}|

在 Fock 空间表示为占据数矢量

.. math::
    |\bm{k}\rangle = a_{P_1}^\dagger a_{P_2}^\dagger \cdots a_{P_N}^\dagger |\mathrm{vac}\rangle

其中假定了采取某种自选轨道的正则顺序 [上式应该对每个算符遗漏了 :math:`k_i` 指数, 我们在此也暂时忽略.] 在变换的自旋轨道基组, 变换后的 Slater 行列式为

.. math::
    \tilde{\Phi} = |\tilde{\phi}_{P_1}\tilde{\phi}_{P_2}\cdots \tilde{\phi}_{P_N}|

也类似地表示为占据数矢量

.. math::
    |\tilde{\bm{k}}\rangle = \tilde{a}_{P_1}^\dagger \tilde{a}_{P_2}^\dagger \cdots \tilde{a}_{P_N}^\dagger |\mathrm{vac}\rangle

通过对真空态作用一串变换后的产生算符得到. 我们希望用未变换的产生算符决定变换后的产生算符. 用 :eq:`spin-orbital-unitary-trans` 展开第二个 Fock 空间的 Slater 行列式, 我们得到下列表达式

.. math::
    \tilde{\Phi} = \sum_{Q_1,Q_2,\cdots, Q_N} U_{Q_1P_1}\cdots U_{Q_NP_N} |\phi_{Q_1}\cdots \phi_{Q_N}|

其二次量子化表示为

.. math::
    |\tilde{\bm{k}}\rangle = \sum_{Q_1,Q_2,\cdots, Q_N} U_{Q_1P_1}\cdots U_{Q_NP_N} a_{Q_1}^\dagger \cdots a_{Q_N}^\dagger |\mathrm{vac}\rangle

和前面的 :math:`|\tilde{\bm{k}}\rangle` 组合, 得到

.. math::
    \tilde{a}_{P_1}^\dagger \tilde{a}_{P_2}^\dagger \cdots \tilde{a}_{P_N}^\dagger |\mathrm{vac}\rangle
    = \sum_{Q_1,Q_2,\cdots, Q_N} U_{Q_1P_1}\cdots U_{Q_NP_N} a_{Q_1}^\dagger \cdots a_{Q_N}^\dagger |\mathrm{vac}\rangle

这意味着一次量子化的 Slater 行列式和二次量子化的占据数矢量之间的一对一映射可以保持, 如果产生算符按照自旋轨道相同的方式进行变换

.. math::
    \tilde{a}_P^\dagger = \sum_Q a_Q^\dagger U_{QP} = \sum_Q a^\dagger_Q [\exp(-\bm{\kappa})]_{QP}

其中我们应用了 :math:`\bm{U}` 的指数化. 对于湮灭算符, 我们类似地得到

.. math::
    \tilde{a}_P = \sum_Q a_Q U^*_{QP} = \sum_Q a_Q [\exp(-\bm{\kappa})]^*_{QP}

通过对前一式求厄米共轭. 通过幺正变换变换后的产生和湮灭算符满足通常的反对易关系, 这很容易可以验证.

2. 基元算符的指数幺正变换
^^^^^^^^^^^^^^^^^^^^^^^^^

我们有了变换后的产生和湮灭算符以原来的算符的表达式以后, 现在我们发展一个更方便的变换的算符的表示. 考虑算符

.. math::
    \bar{a}_P^\dagger =&\ \exp(-\hat{\kappa}) a_P^\dagger \exp(\hat{\kappa}) \\
    \bar{a}_P =&\ \exp(-\hat{\kappa}) a_P \exp(\hat{\kappa})

其中, 反厄米算符 :math:`\hat{\kappa}` 由 :eq:`anti-hermitian-def` 给出. 用第 3.1.1 节的规则, 上述算符很容易看出是各自的厄米共轭, 从而可以满足通常的产生和湮灭算符的反对易关系.

现在我们将证明, 上面的算符 :math:`\bar{a}_P^\dagger` 和前面的变换的算符 :math:`\tilde{a}_P^\dagger` 是完全相同的, 因此建立了 :eq:`op-unitary-trans` 第一式. 对应的湮灭算符的表达式可以通过对产生算符的表达式取厄米共轭得到. 采用 BCH 表达式展开 :math:`\bar{a}_P^\dagger`, 我们得到

.. math::
    \bar{a}_P^\dagger = a_P^\dagger + [a_P^\dagger, \hat{\kappa}] + \frac{1}{2!} [[a_P^\dagger, \hat{\kappa}], \hat{\kappa}] + \cdots

这个表达式的前两个对易子可以展开为 [利用 :eq:`anti-hermitian-def`]

.. math::
    [a_P^\dagger, \hat{\kappa}]
        =&\ \sum_{P'Q} a_P^\dagger \kappa_{P'Q} a_{P'}^\dagger a_Q - \sum_{P'Q} \kappa_{P'Q} a_{P'}^\dagger a_Q a_P^\dagger
        = -\sum_{P'Q} a_{P'}^\dagger \kappa_{P'Q} a_{P}^\dagger a_Q
          -\sum_{P'Q} a_{P'}^\dagger \kappa_{P'Q} a_Q a_{P}^\dagger  \\
        =&\ -\sum_{P'Q} a_{P'}^\dagger \kappa_{P'Q} [a_{P}^\dagger, a_Q]_+
        = -\sum_{P'Q} a_{P'}^\dagger \kappa_{P'Q} \delta_{PQ} = -\sum_{Q} a_{Q}^\dagger \kappa_{QP} \\
    [[a_P^\dagger, \hat{\kappa}], \hat{\kappa}]
        =&\ -\sum_{Q} [a_{Q}^\dagger, \hat{\kappa}] \kappa_{QP}
        = \sum_{QQ'} a_{Q'}^\dagger \kappa_{Q'Q} \kappa_{QP}
        = \sum_{Q} a_{Q}^\dagger [\bm{\kappa}^2]_{QP}

对于 :math:`n` 重嵌套对易子, 我们得到

.. math::
    [...[[a_P^\dagger, \hat{\kappa}], \hat{\kappa}], \cdots] = (-1)^n \sum_Q a_Q^\dagger [\bm{\kappa}^n]_{QP}

因此我们可以将 BCH 展开式写为如下形式

.. math::
    \bar{a}_P^\dagger =&\ \sum_Q a_Q^\dagger \bigg\{
    \delta_{QP} - \kappa_{QP} + \cdots + \frac{(-1)^n}{n!} [\bm{\kappa}^n]_{QP} + \cdots \bigg\} \\
    =&\ \sum_Q a_Q^\dagger \sum_n \frac{(-1)^n}{n!} [\bm{\kappa}^n]_{QP}
    = \sum_Q a_Q^\dagger [\exp(-\bm{\kappa})]_{QP}

这显示算符 :math:`\bar{a}_P^\dagger` 和前面的变换的算符 :math:`\tilde{a}_P^\dagger` 是完全相同的, 即产生算符的 :eq:`op-unitary-trans` 成立.

3. Fock 空间的态的指数幺正变换
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

指数算符 :math:`\exp(-\hat{\kappa})` 的用处变得明显, 当我们考虑占据数矢量的变换. 将变换的产生算符的表达式插入占据数矢量表达式, 我们得到 [这里之前缺失的指数补上了]

.. math::
    |\tilde{\bm{k}}\rangle = \bigg[ \prod_P (\tilde{a}_P^\dagger)^{k_P} \bigg] |\mathrm{vac}\rangle
        = \exp(-\hat{\kappa}) \bigg[ \prod_P (a_P^\dagger)^{k_P} \bigg] \exp(\hat{\kappa}) |\mathrm{vac}\rangle

其中, 我们考虑了在产生算符之间出现的幺正算符对互相抵消. 可以进一步化简, 注意到对 :eq:`anti-hermitian-def` 形式的 :math:`\hat{\kappa}` [所有 :math:`\hat{\kappa}` :math:`n` 次幂项作用于真空得零,只剩下恒等算符项. ]

.. math::
    \hat{\kappa}|\mathrm{vac}\rangle = 0 \Rightarrow \exp(\hat{\kappa}) |\mathrm{vac}\rangle = |\mathrm{vac}\rangle

这使得我们可以将变换的占据数矢量表示为如下形式

.. math::
    |\tilde{\bm{K}}\rangle = \exp(-\hat{\kappa}) |\bm{k}\rangle

类似的表达式必定对任何占据数矢量的任何线性组合也成立 - 即对任何 Fock 空间的态. 因此我们建立了 :eq:`op-unitary-trans` 的第三式: 作用于任何电子态 :math:`|0\rangle`, 算符 :math:`\exp(-\hat{\kappa})` 生成一个新的态 :math:`|\tilde{0}\rangle`, 其中所有自旋轨道都按照 :eq:`spin-orbital-unitary-trans` 变换.

第三节 对称限制的幺正变换
-------------------------

在3.2节讨论的幺正变换是完全一般的, 允许我们将任意变换的算符和态用一组独立参数表示. 但是, 在很多情形, 需要考虑不一般的变换, 由于电子系统中的特殊对称性. 对称限制的一般讨论在第4章给出. 这里我们预先做一些推导, 通过考虑 **对称限制的** 幺正算符 :math:`\exp(-\hat{\kappa})`.

1. 对称限制的必要性
^^^^^^^^^^^^^^^^^^^

让我们假定 :math:`|0\rangle` 是一个和电子哈密顿量 :math:`\hat{H}` 相联系的近似的态, 并且 :math:`|0\rangle` 具有确定的自旋和空间对称性. 如果我们希望决定一组 :math:`\exp(-\hat{\kappa})` 的参数 :math:`k_{pq}`, 来将近似态 :math:`|0\rangle` 变换为具有同样自旋和空间对称性的新的态 :math:`|\tilde{0}\rangle`

.. math::
    |\tilde{0}\rangle = \exp(-\hat{\kappa})|0\rangle

那么我们必须对自旋轨道变化施加限制. 为了看出为什么需要这样的限制, 我们注意到从 :math:`|0\rangle` 到 :math:`|\tilde{0}\rangle` 的变换是以一组 **非线性** 自旋轨道旋转参数来表示的:

.. math::
    |\tilde{0}\rangle = \bigg( 1-\hat{\kappa} + \frac{1}{2!} \hat{\kappa}^2 - \frac{1}{3!} \hat{\kappa}^3 + \cdots \bigg) |0\rangle

在第4.4节将讨论, 在优化的波函数中自旋和空间对称性的守恒被保证, 仅当对称性限制显式地施加于参数化. 换句话说, 自旋和空间对称性守恒, 仅当 :math:`\hat{\kappa}` 仅包含那些按照哈密顿量 :math:`\hat{H}` 的全局对称表示变换的自旋轨道激发算符. 如果非全局对称变换被允许, 那么 :math:`\hat{\kappa}|0\rangle` 将没有 :math:`|0\rangle` 的对称性, 并且 :math:`|\tilde{0}\rangle` 和 :math:`|0\rangle` 的对称性将会不同.

当一个微扰 :math:`\hat{V}` 作用于系统, 哈密顿量变为 :math:`\hat{H} + \hat{V}`. 那么允许的变化变为那些按照 :math:`\hat{H} + \hat{V}` 的全局自旋表示变换的, 而不是 :math:`\hat{H} + \hat{V}` 的. 例如, 如果我们考虑氧分子的基态, 如果 :math:`\hat{V}` 对应于一个垂直于核间轴的电场, 那么允许的自旋轨道激发表示为在 :math:`C_{2v}` 群中全局对称的自旋守恒的轨道激发算符. [因为不是磁场, 因此自旋必须守恒, 只允许恒等变换. 因为电场对称轴和核间轴不同, 因此点群从 :math:`D_{\infty h}` 变为 :math:`C_{2v}`.] 换句话说, 允许的变化由算符 :math:`E_{pq}` 描述, 其中轨道 :math:`\phi_p` 和 :math:`\phi_q` 的不可约表示的直积在 :math:`C_{2v}` 是全局对称的.

这些例子应该足够展示 **对称限制的自旋轨道旋转**. 让我们总结需要考虑限制的旋转的最普遍的情况:

1. **实和虚旋转:** 无场非相对论波函数可以从实轨道构造, 并且优化波函数仅仅需要实旋转. 另一方面, 当出现外部磁场作为微扰时, 需要虚旋转来描述微扰的态.
2. **自旋适配的旋转:** 无自旋非相对论哈密顿量和总自旋和投影自旋算符对易. 我们因此通常仅仅对具有良好定义的自旋量子数的波函数感兴趣. 这样的函数可以从自旋张量算符来产生, 这些算符在自旋空间是完全对称的. 对于优化, 我们需要考虑仅仅单重态算符, 由于这些是仅有的使波函数自旋守恒的算符. 自旋微扰, 另一方面, 可能混合自旋本征态并需要同时考虑三重态旋转.
3. **点群对称性适配的旋转:** 由于精确波函数按照哈密顿点群的某个不可约表示变换, 工作于自旋适配的轨道的表象是方便的. 在优化的过程中, 我们需要考虑仅仅全局对称旋转, 由于这些保持波函数的对称性. 如果对称破缺的几何扭曲被应用, 非全局对称旋转也需要被考虑.

采用限制的轨道变换不仅仅保证了近似波函数具有所需的自旋和空间对称性. 作为附加的收益, 通过减少自由参数的数量, 计算开销也降低了.

2. 自旋轨道基组的对称限制
^^^^^^^^^^^^^^^^^^^^^^^^^

了解了需要限制的自旋轨道旋转, 我们现在考虑反对称算符 :math:`\hat{\kappa}`

.. math::
    \hat{\kappa} = \sum_{PQ} \kappa_{PQ} a_P^\dagger a_Q

出现在旋转后的算符和态 :eq:`op-unitary-trans` 时, 如何分开为实部和虚部; 自旋对称性在第 3.3.3 节考虑. 在自旋轨道基组, 上述算符可以方便地写为

.. math::
    \hat{K} =&\ \sum_{P} \kappa_{PP} a^\dagger_P a_P + \sum_{P\neq Q} \kappa_{PQ}a_P^\dagger a_Q \\
    =&\ \I \sum_P {}^I\kappa_{PP} a_P^\dagger a_P + \I \sum_{P>Q} {}^I\kappa_{PQ}(a_P^\dagger a_Q + a_Q^\dagger a_P)
    + \sum_{P>Q} {}^R \kappa_{PQ} (a_P^\dagger a_Q -a_Q^\dagger a_P)

其中自旋轨道旋转参数的实部和虚部由下式给出

.. math::
    {}^R\kappa_{PQ} =&\ \mathrm{Re} \kappa_{PQ} = \frac{\kappa_{PQ}-\kappa_{QP}}{2} \\
    {}^I\kappa_{PQ} =&\ \mathrm{Im} \kappa_{PQ} = \frac{\kappa_{PQ}+\kappa_{QP}}{2\I}

由于上式的 :math:`\hat{\kappa}` 必须是反厄米的, 独立自旋轨道激发参数的数目 :math:`\kappa_{PQ}` 在一个有 :math:`M` 个自旋轨道的基组中变为

.. math::
    M + \frac{M^2-M}{2} + \frac{M^2-M}{2} = M^2

对于 :math:`M` 个实自旋轨道的优化, 考虑 :math:`\hat{\kappa}` 的实部, 并忽略相因子就足够了. 产生的自旋轨道 [旋转] 算符

.. math::
    {}^R\hat{\kappa} = \sum_{P>Q} {}^R \kappa_{PQ} (a_P^\dagger a_Q - a_Q^\dagger a_P)

仅包括 :math:`M(M-1)/2` 个参数.

3. 轨道基组的对称限制
^^^^^^^^^^^^^^^^^^^^^

为了允许旋转算符中的自旋对称性限制, 我们将 :math:`\hat{\kappa}` 在轨道基组表示, 并引入自旋张量算符. 我们先考虑对旋转算符从对轨道指标对角的激发算符的贡献

.. math::
    \sum_{p\sigma\tau} \kappa_{p\sigma p\tau} a_{p\sigma}^\dagger a_{p\tau} = \I \sum_p
        ({}^I \kappa_{p\alpha p\alpha} a_{p\alpha}^\dagger a_{p\alpha} + {}^I \kappa_{p\beta p\beta} a_{p\beta}^\dagger a_{p\beta})
       + \sum_p (\kappa_{p \alpha p\beta} a_{p\alpha}^\dagger a_{p\beta} + \kappa_{p \beta p\alpha} a_{p\beta}^\dagger a_{p\alpha})

其中 :math:`{}^R \kappa_{p\alpha p\alpha}` 和 :math:`{}^R \kappa_{p\beta p\beta}` 为零, 因为 :math:`\hat{\kappa}` 是反厄米的. 我们可以将上式按照不可约轨道激发算符的参数来写出, 上式变为

.. math::
    \sum_{p\sigma\tau} \kappa_{p\sigma p\tau} a_{p\sigma}^\dagger a_{p\tau} =
        \I \sum_p {}^I \kappa_{pp}^{0,0} E_{pp} + \I \sum_p {}^I \kappa_{pp}^{1,0} \hat{T}_{pp}^{1,0}
        + \sum_{p} \kappa_{pp}^{1,-1} \hat{T}_{pp}^{1,-1} + \sum_{p} \kappa_{pp}^{1,1} \hat{T}_{pp}^{1,1}

其中

.. math::
    {}^I \kappa_{pp}^{0,0} =&\ \frac{1}{2} ({}^I \kappa_{p\alpha p\alpha} + {}^I \kappa_{p\beta p\beta}) \\
    {}^I \kappa_{pp}^{1,0} =&\ \frac{1}{\sqrt{2}} ({}^I \kappa_{p\alpha p \alpha} - {}^I \kappa_{p\beta p\beta}) \\
    \kappa_{pp}^{1,1} =&\ -\kappa_{p\alpha p\beta} \\
    \kappa_{pp}^{1,-1} =&\ \kappa_{p\beta p\alpha}

按照同样的方式处理非对角轨道激发算符, 我们得到下列 :math:`\hat{\kappa}` 的表达式

.. math::
    \hat{\kappa} = \sum_p {}^I \kappa_{pp}^{0,0} E_{pp} + \sum_{M=-1}^1 \sum_p \kappa_{pp}^{1,M} \hat{T}_{pp}^{1,M}
        + \sum_{p\neq q} \kappa_{pq}^{0,0} E_{pq} + \sum_{M=-1}^1 \sum_{p\neq q} \kappa_{pq}^{1,M} \hat{T}_{pq}^{1,M}

这里我们分离了对角元, 但没有分离实部和虚部. 所有参数都是复数, 仅有 :math:`\kappa_{pp}^{0,0}` 和 :math:`\kappa_{pp}^{1,0}` 仅有虚部.

如果我们坚持采用张量算符, 也需要分离实部和虚部, 那么 :math:`\hat{\kappa}` 的反对称性对轨道激发算符施加了下列限制

.. math::
    {}^R \kappa_{pq}^{0,0} =&\ -{}^R \kappa_{qp}^{0,0}; \quad {}^I \kappa_{pq}^{0,0} = {}^I \kappa_{qp}^{0,0} \\
    {}^R \kappa_{pq}^{1,0} =&\ -{}^R \kappa_{qp}^{1,0}; \quad {}^I \kappa_{pq}^{1,0} = {}^I \kappa_{qp}^{1,0} \\
    {}^R \kappa_{pq}^{1,-1} =&\ {}^R \kappa_{qp}^{1,-1}; \quad {}^I \kappa_{pq}^{1,-1} = -{}^I \kappa_{qp}^{1,-1}

算符 :math:`\hat{\kappa}` 可以表示为

.. math::
    \hat{\kappa} =&\
        \I\sum_p {}^I \kappa_{pp}^{0,0} E_{pp} + \I\sum_p {}^I \kappa_{pp}^{1,0} \hat{T}_{pp}^{1,0}
        + \I \sum_{p>q} {}^I \kappa_{pq}^{0,0}(E_{pq} + E_{qp})
        + \sum_{p>q} {}^R \kappa_{pq}^{0,0}(E_{pq} - E_{qp}) \\
    &\  + \I \sum_{p>q} {}^I \kappa_{pq}^{1,0} (\hat{T}_{pq}^{1,0} + \hat{T}_{qp}^{1,0})
        + \sum_{p>q} {}^R \kappa_{pq}^{1,0} (\hat{T}_{pq}^{1,0} - \hat{T}_{qp}^{1,0}) \\
    &\  + \I \sum_{pq} {}^I \kappa_{pq}^{1,1} (\hat{T}_{pq}^{1,1} - \hat{T}_{qp}^{1,-1})
        + \sum_{pq} {}^R \kappa_{pq}^{1,1} (\hat{T}_{pq}^{1,1} + \hat{T}_{qp}^{1,-1})

这个表达式包含

.. math::
    2n + 4 \frac{n^2-n}{2} + n^2 + n^2 = 4n^2

个参数, 其中 :math:`n` 是轨道数目. 参数数目和 :math:`M^2` 是完全相等的, 因为一个 :math:`M` 对应于 :math:`M=2n` 自旋轨道.

另一种方式, 我们可以以笛卡尔三重态算符表示 :math:`\hat{\kappa}`. 由于笛卡尔分量满足简单共轭关系, 我们现在得到下列一般反厄米算符 :math:`\hat{\kappa}` 的更对称形式:

.. math::
    \hat{\kappa} =&\
        \I\sum_p \bigg[ {}^I \kappa_{pp}^{0,0} E_{pp} + \sum_{\mu} {}^I \kappa_{pp}^{\mu} \hat{T}^{\mu}_{pp} \bigg]
      + \I\sum_{p>q} \bigg[ {}^I \kappa_{pq}^{0,0}(E_{pq} + E_{qp})
      + \sum_{\mu} {}^I \kappa_{pq}^{\mu} (\hat{T}^{\mu}_{pq} + \hat{T}^{\mu}_{qp}) \bigg] \\
   &\ + \sum_{p>q} \bigg[ {}^R \kappa_{pq}^{0,0} (E_{pq} - E_{qp})
      + \sum_{\mu} {}^R \kappa_{pq}^{\mu} (\hat{T}^{\mu}_{pq} - \hat{T}^{\mu}_{qp}) \bigg]

其中内部求和是对于三个笛卡尔分量. 球对称和笛卡尔形式是等价的, 包括同样数目的旋转参数的数量 :math:`4n^2`. 这些参数之间的精确关系很少需要用到, 因此这里不给出.

和自旋轨道算符不同的是, 我们在上面表达式中引入了自旋空间的不可约张量分量, 并且同时, 对实部和虚部旋转参数进行了清晰区别. 这个过程使得很容易选择对于一个特殊的任务所需的 :math:`\hat{\kappa}` 的分量. 例如, 在优化实轨道的过程中, 我们可以忽略所有复数旋转和混合自旋态的旋转, 以及复数相因子. 轨道旋转算符约化为

.. math::
    {}^R \hat{\kappa}^{0,0} = \sum_{p>q} {}^R \kappa_{pq}^{0,0} (E_{pq} - E_{qp})

仅包含 :math:`n(n-1)/2` 实参数. 三重态和虚部在计算混合自旋和包括虚数算符的微扰时才需要.

第四节 对数矩阵函数
-------------------

这一节, 我们介绍非奇异矩阵 :math:`\bm{A}` 的对数 :math:`\log \bm{A}`, 满足一下关系

.. math::
    \exp \log (\bm{A}) = \bm{A}
    :label: log-matrix-condition

为了简化我们对 :math:`\log \bm{A}` 的讨论, 我们限制对数矩阵函数的定义域为可以对角化的非奇异矩阵 :math:`\bm{A}`

.. math::
    \bm{A} = \bm{Z} \bm{\alpha} \bm{Z}^{-1}
    :label: non-singular-matrix-def

其中 :math:`\bm{\alpha}` 是一个包含实数或者复数矩阵元的对角矩阵. 对特殊的厄米, 反厄米, 和幺正矩阵 :math:`\bm{A}` 的情形, 上述对角化对应的矩阵 :math:`\bm{Z}` 可以是幺正矩阵.

1. 对数矩阵函数的定义
^^^^^^^^^^^^^^^^^^^^^

对一个可对角化的非奇异矩阵 :math:`\bm{A}`, 我们定义 **对数矩阵函数** :math:`\log \bm{A}` 为

.. math::
    \log \bm{A} = \bm{Z} \log (\bm{\alpha}) \bm{Z}^{-1}
    :label: log-matrix-def

这个定义满足 :eq:`log-matrix-condition`, 由于

.. math::
    \exp \log \bm{A} = \exp [ \bm{Z} \log (\bm{\alpha}) \bm{Z}^{-1}] = \bm{Z} \exp[\log (\bm{\alpha})] \bm{Z}^{-1}
        = \bm{Z} \bm{\alpha} \bm{Z}^{-1} = \bm{A}

因此 :math:`\log \bm{A}` 的求值转化为复数标量对数函数的求值. 对一个复数 :math:`z`, 其对数从极坐标表示得到

.. math::
    z = |z|\exp[\I (\phi + 2\pi n)]

其中 :math:`n` 是一个整数. 但是, 由于复数 :math:`z` 的辐角只能确定到 :math:`2\pi` 的倍数, :math:`z` 的对数变为一个多值函数

.. math::
    \log z = \log |z| + \I (\phi + 2\pi n)

其中 :math:`\log|z|` 是标准实对数函数. 可以通过限制 :math:`\phi` 在区间 :math:`-\pi < \phi \le \pi` 来得到单值对数函数. 有了这个限制, 对数矩阵函数是唯一定义的.

很自然要问是否对数是指数的逆, 在某些矩阵定义域. 指数和对数函数的关系显示在图3.1. 指数将无限个矩阵, 其特征值相差 :math:`2\pi \I` 的倍数, 映射到同样的矩阵. 矩阵幂因此没有在整个 :eq:`non-singular-matrix-def` 类型矩阵定义域的逆函数. 但是, 在 :math:`\bm{0}` 的邻域, 指数提供一个一对一映射到 :math:`\bm{1}` 的邻域, 这很容易可以从泰勒展开看出

.. math::
    \exp \bm{A} \approx \bm{1} + \bm{A}

对数矩阵函数 :math:`\log \bm{A}` 因此是真正的指数 :math:`\exp \bm{A}` 的逆函数, 在 :math:`\bm{1}` 的邻域, 将 :math:`\bm{1}` 的邻域的矩阵映射到 :math:`\bm{0}` 的邻域.

2. 对数矩阵函数的展开
^^^^^^^^^^^^^^^^^^^^^

现在我们考虑对数矩阵函数 :math:`\log \bm{A}` 的泰勒展开在 :math:`\bm{1}` 的邻域, 并且写 :math:`\bm{A} \approx \bm{1}` 以以下形式

.. math::
    \bm{A} = \bm{1} + \bm{S} = \bm{Z}(\bm{1} + \bm{\sigma}) \bm{Z}^{-1}

其中 :math:`\bm{\sigma}` 是包含 :math:`\bm{S}` 的特征值的对角矩阵 (具有和 :math:`\bm{A}` 一样的特征矢量). 我们假定 :math:`\bm{S}` 的特征值比1小: :math:`|\sigma_i|<1`. 采用标量泰勒展开

.. math::
    \log(1+x) = -\sum_{n=1}^\infty \frac{(-1)^n}{n}x^n, \quad |x| < 1

我们可以将 :eq:`log-matrix-def` 写为以下形式

.. math::
    \log (\bm{1} + \bm{S}) = -\sum_{n=1}^\infty \frac{(-1)^n}{n} \bm{Z}\bm{\sigma}^n \bm{Z}^{-1}

因此, 对数矩阵函数可以展开为

.. math::
    \log(\bm{1}+\bm{S}) = -\sum_{n=1}^\infty \frac{(-1)^n}{n} \bm{S}^n

如果 :math:`\bm{S}` 的特征值的模小于1.

3. 对数矩阵函数的性质
^^^^^^^^^^^^^^^^^^^^^

练习 3.6 证明了如下对数矩阵函数的性质:

.. math::
    (\log \bm{A})^\dagger =&\ \log (\bm{A}^\dagger) \\
    \log (\bm{A}^n) =&\ n \log \bm{A}\\
    \log (\bm{A}\bm{B}) =&\ \log \bm{A} + \log \bm{B} \Leftarrow [\log \bm{A}, \log \bm{B}] = \bm{0} \\
    (\log \bm{U})^\dagger =&\ -\log \bm{U} \Leftarrow \bm{U}^\dagger \bm{U} = \bm{1}

第一式对所有矩阵成立, 并且是 :eq:`matrix-exp-formula` 第二式的类比. 第二三式的关系和标量对数函数类似. 第二式对所有 :math:`n` (不一定是整数) 成立, 其中矩阵的幂定义为

.. math::
    \bm{A}^n = \bm{Z}\bm{\alpha}^n \bm{Z}^\dagger

在练习3.6, 第三式的证明只对矩阵在对数和指数矩阵函数互为逆函数的定义域成立. 最后一式, 可从第一二式导出, 证明对数函数将幺正矩阵映射到反厄米矩阵, 这是符合预期的, 因为指数函数将反厄米矩阵映射到幺正矩阵.

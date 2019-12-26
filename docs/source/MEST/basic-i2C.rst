
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
    Helgaker, T., Jorgensen, P., & Olsen, J. (2014). *Molecular electronic-structure theory.* John Wiley & Sons.

第二章 二次量子化中的自旋 (C)
=============================

第五节 组态函数
---------------

1 组态函数
^^^^^^^^^^

正如在 2.4 节讨论的, 精确的非相对论波函数是总自旋和投影自旋的本征函数, 但是 Slater 行列式只是投影自旋的本征函数. 因为通常在近似计算中, 采用一个自旋本征函数的基组是方便的, 在这一节我们将看到如何通过 Slater 行列式的线性组合来构建自旋本征函数的基组.

在行列式中, 缺乏自旋对称性, 这是由于自旋轨道占据数算符 (行列式关于这些算符是本征函数) 不和总自旋算符对易; [这里的所谓自旋轨道占据数算符也就是测量每个轨道上有多少 alpha 粒子或者 beta 粒子的算符 :math:`\hat{N}`. ] 见 :eq:`total-spin-on-comm`. 但是, **轨道占据数算符** [注意这里把自旋轨道改成了轨道]

.. math::
    \hat{N}_p^o = \hat{N}_{p\alpha} + \hat{N}_{p\beta}

[注意这个上标 o 应该是代表 orbital 的意思, 不是变量. ] 是单重态算符, 并且和投影自旋以及总自旋算符对易

.. math::
    [ \hat{N}_p^o, \hat{S}_z ] =&\ 0 \\
    [ \hat{N}_p^o, \hat{S}^2 ] =&\ 0
    :label: orb-on-total-spin-comm

[上式可以通过直接把 :eq:`total-spin-on-comm` 两式相加得到. ] 因此, 我们可以建立一个函数基组, 它们是轨道占据数算符, 投影自旋算符和总自旋算符的共同本征函数 [也就是说, 这里对每个基函数, 需要规定每个轨道上是双占据还是单占据, 还是不占据, 但是对于单占据的情况, 不去区分它到底是 alpha 占据还是 beta 占据. 但是 alpha 和 beta 占据的差又通过 m 确定. 所有满足这些条件的行列式的线性组合则成为对应的自旋适配基函数. ] 这样的自旋适配函数称为 **组态函数** (CSF).

2. 轨道占据数算符
^^^^^^^^^^^^^^^^^

我们现在更加细致地研究轨道占据数算符. 首先我们注意到 Slater 行列式是轨道占据数算符的本征函数:

.. math::
    \hat{N}_p^o |\bm{k}\rangle = (k_{p\alpha} + k_{p\beta})|\bm{k}\rangle = k_p^o|\bm{k}\rangle
    :label: slater-eigen-orb-on

接下来, 我们注意到, 不同的行列式可能有同样的轨道占据数, 但是不同的自旋轨道占据数, 因为一个轨道占据数等于 1, 可能表示是一个 alpha 自旋占据在那个轨道, 也可能表示是一个 beta 自旋占据那个轨道 [原文是一个未配对的电子可能占据了一个 alpha 自旋轨道, 也可能占据了一个 beta 自旋轨道. ] 所有具有相同轨道占据数, 但是不同自旋轨道占据数的行列式的集合, 被称为构成了一个 **轨道组态**. [例如, 一个轨道组态 00110 包含行列式 00aa0, 00ab0, 00ba0, 00bb0, 这些行列式的轨道占据数都是一样的, 但是是不同的行列式. ] 换句话说, 一个轨道组态包含所有关于轨道占据数是简并的的行列式. 在构建 CSF 基组的过程中, 我们将属于相同轨道组态的简并行列式组合在一起. 在第 2.6 节考虑 CSF 的构建.

CSF 方法的有效性直接从以下事实得到证实: 轨道占据数算符和自旋算符对易. 但是, 直接验证总自旋算符不和属于不同轨道构型的行列式耦合对于理解这一问题是有益的.  取对易子 :eq:`orb-on-total-spin-comm` 在两个不同行列式之间的矩阵元, 并利用 :eq:`slater-eigen-orb-on`, 我们得到

.. math::
    (m^o_p - k^o_p)\langle \bm{m} | \hat{S}^2 | \bm{k} \rangle = 0

[上式可以理解为, 本来要计算的是 :math:`\langle \bm{m} | [ \hat{N}_p^o, \hat{S}^2 ] | \bm{k} \rangle`, 但是其中 :math:`\hat{N}_p^o` 可以直接作用于它的本征态 :math:`|\bm{m}\rangle` (从左边) 或者 :math:`|\bm{k}\rangle` (从右边). 分别得到的本征值记为 :math:`m^o_p` 和 :math:`k^o_p`. 然后只剩下 :math:`\hat{S}^2` 项在里面. 注意任何一个空间轨道算符都和总自旋算符对易, 因此上式是一系列等式, 由 :math:`p` 标记, 对每个不同的 :math:`p` 等式都需要满足.]

如果行列式属于不同的组态 [轨道组态], 那么必存在至少一个轨道 :math:`p` 使得 :math:`m^o_p, k^o_p` 不同, [从而对于那个 :math:`p`, :math:`m^o_p - k^o_p` 就不为零, 为了还满足上面的等式], 从而总自旋算符在这样的行列式之间的矩阵元就必须等于零.

CSF 的主要好处是, 它们给近似的波函数施加了正确的自旋对称性. 除此之外的额外的好处是, 使用 CSF 可以导致波函数的更短的展开式. 因为对于固定的自旋投影 :math:`M \geq 0`, 具有确定的总自旋 :math:`S = M` 的 CSF 的数目总是小于或等于行列式的数目. 让我们更加精确地在一个给定的轨道组态中, 比较具有自旋投影 :math:`M` 的的行列式数目, 和具有同样的投影 :math:`M` 和 总自旋 :math:`S=M` 的 CSF 的数目. 我们从考虑在一个给定的轨道组态和投影 :math:`M` 的行列式数目开始.

3. 行列式的数目
^^^^^^^^^^^^^^^

一个轨道组态由未配对的电子数来表征, 即通过等于 1 的轨道占据数的数目 [可能要问, 还和这些 1 占据数的轨道的具体位置有关, 也就是说, 00110 和 01010 是否是不同的轨道组态. 这实际上没有区别, 因为不管怎么说, 还是要把占据数为 1 的轨道单独列出来, 然后行列式的区别也只有在所有 1 的位置有区别. 因此最终只和 1 的数量有关. 1 的位置可能会作为一个独立于这个问题之外的问题考虑. 至少, 在构建基组的时候, 不必为 00110 和 01010 构建两套基组. 这两套基组本质上没有区别. 和行列式的转换关系也没有区别. 但是如果 1 的数量不同则会产生另一套规则. 由于 1 都是 1 都是一样的, 因此 1 的位置不会产生区别. ]

对于这个组态的一个给定行列式, 未配对的电子数等于未配对的 alpha 电子数 :math:`n_\alpha` 加上未配对的 beta 电子数 :math:`n_\beta`:

.. math::
    N_{open} = n_\alpha + n_\beta

根据 :eq:`spin-proj-det-eigen`, 这个行列式的自旋投影为

.. math::
    M = \frac{1}{2}(n_\alpha - n_\beta)

将以上两式结合, 我们得到, 对于固定的自旋投影 :math:`M`, 在所有行列式中 alpha 电子数和 beta 电子数都是一样的 [因此不同行列式之间的区别仅在于这些 alpha beta 电子究竟处于哪些 (单占据的) 轨道上. ]

.. math::
    n_\alpha &=&\ \frac{1}{2}N_{open} + M \\
    n_\beta &=&\ \frac{1}{2} N_{open} - M

对于一个给定的轨道组态, 具有自旋投影 :math:`M` 的行列式的数目因此等于将 :math:`n_\alpha` alpha 电子, 或者等价地, :math:`n_\beta` beta 电子分布于 :math:`N_{open}` 自旋轨道的不同方式的数目:

.. math::
    N_M^d = \begin{pmatrix} N_{open} \\ \frac{1}{2}N_{open} \pm M \end{pmatrix}

[这里的上标 :math:`d` 表示 determinant 行列式, 不是变量. ] 在这个表达式中, 两种符号都会给出同样的行列式数目, 可以简单验证 [因为下面的正负两项之和等于上面的数, 即 :math:`C^n_r = C^n_{n-r}` 的关系 ]. 对于所有自旋投影, 行列式的总数为 :math:`2^{N_{open}}`. [这一方面可以通过对每个不同的 :math:`M` 应用上面的式子, 由于每个电子贡献 :math:`1/2` 自旋, :math:`M` 最少等于 :math:`\frac{1}{2}N_{open}`, 因此二项式系数下面一项最少是 0. 改变 :math:`M`, 每次反转一个电子, :math:`M` 数要加 1, 因此二项式系数加 1. 直到最大 :math:`M=\frac{1}{2}N_{open}`. 利用二项式定理可以证明这些二项式系数的和为 :math:`\frac{1}{2}N_{open}` (即 :math:`(1+1)^{N_{open}}` 的二项式展开). 另一方面, 所有 :math:`N_{open}` 每个轨道都可以要么 alpha 占据, 要么 beta 占据两种情况, 总共当然是 :math:`2^{N_{open}}` 种情况. 这是简单的排列组合问题. ]

4. 组态函数的数目
^^^^^^^^^^^^^^^^^

为了得到具有自旋投影 :math:`M` 和总自旋 :math:`S = M` 的 CSF 的数目, 我们首先注意到, 具有自旋投影 :math:`M` 的行列式数目 :math:`N_M^d` 等于具有自旋投影 :math:`M` 和总自旋 :math:`S \geq M` 的 CSF 的数目 [这是因为, 对于太小的 :math:`S`, 它的投影不可能是 :math:`M`. 自旋投影永远小于等于 :math:`S`]:

.. math::
    N_M^d = \sum_{S=M}^{S_{high}} N_{SM}^c

这里 :math:`N_{SM}^c` 是具有总自旋 :math:`S` 和自旋投影 :math:`M` 的 CSF 的数目, 而 :math:`S_{high}` 是在给定的轨道组态中最大允许的总自旋: [这是因为, 每个电子贡献 :math:`1/2` 总自旋. 根据多个电子耦合的规则, 两个 :math:`1/2` 电子耦合的结果的态未必是 :math:`S=1`, 但至少最大是 :math:`S=1`. 如果一直按照最大的方式进行耦合, 那么得到的最大可能的 :math:`S` 就是每个电子贡献 :math:`1/2` 总自旋, 总共 :math:`N_{open}` 个电子贡献 :math:`N_{open}/2` 的总自旋.]

.. math::
    S_{high}  = \frac{1}{2}N_{open}

类似地, 具有自旋投影 :math:`M+1` 的行列式数目 :math:`N_{M+1}^d` 等于具有自旋 :math:`S \geq M+1` 和投影 :math:`M+1` 的 CSF 数目
 
.. math::
    N_{M+1}^d = \sum_{S=M+1}^{S_{high}} N_{S,M+1}^c = \sum_{S=M+1}^{S_{high}} N_{SM}^c

为了得到最后一个表达式, 我们利用了事实: 在具有总自旋 :math:`S (S \geq M+1)` 的 CSF 中, 具有投影 :math:`M` 的 CSF 数和投影 :math:`M+1` 的 CSF 数应该是一样的. [这里是说, 假如我们将所有的 CSF 基函数分类. 首先选定一个 :math:`S`, 我们把 CSF 的量子数等于这个 :math:`S` 的拿出来, 因为每个 CSF 按定义总具有确定的 :math:`S`. 然后, 在这里面, 具有任何 :math:`M (|M| \leq S)` 的 CSF 数应该都是一样的. 因为 :math:`M` 值和空间取向有关. 不同的 :math:`M` 意味着不同的空间取向选择. 每个不同 :math:`M` 的子空间的维数 (由 CSF 的数目决定) 应该不会有所不同. 当然这里这个论证似乎还是有点问题??] 将上面的 :math:`N_M^d` 和 :math:`N_{M+1}^d` 表达式相减, 得

.. math::
    N_{S=M,M}^c = N_{M}^d - N_{M+1}^d

这给出了具有总自旋 :math:`S = M` 和投影 :math:`M` 的 CSF 的数目. 再将 :math:`N_{M}^d` 的表达式代入, 我们得到

.. math::
    N_{S,M=S}^c = \frac{2S+1}{S_{high}+S+1} \begin{pmatrix} N_{open} \\ \frac{1}{2}N_{open} - S \end{pmatrix}

[上式的具体推导过程为]

.. math::
    N_{S,M=S}^c &=&\ N_{M}^d - N_{M+1}^d = \begin{pmatrix} N_{open} \\ \frac{1}{2}N_{open} - S \end{pmatrix}
        - \begin{pmatrix} N_{open} \\ \frac{1}{2}N_{open} - S - 1 \end{pmatrix} \\
    &=&\ \frac{N_{open}!}{\Big(\frac{1}{2}N_{open} - S\Big)! \Big(\frac{1}{2}N_{open} + S\Big)!}
        - \frac{N_{open}!}{\Big(\frac{1}{2}N_{open} - S - 1\Big)! \Big(\frac{1}{2}N_{open} + S + 1\Big)!} \\
    &=&\ \frac{N_{open}!}{\Big(\frac{1}{2}N_{open} - S\Big)! \Big(\frac{1}{2}N_{open} + S\Big)!}
        - \frac{N_{open}!\Big(\frac{1}{2}N_{open} - S\Big)}{\Big(\frac{1}{2}N_{open} + S + 1\Big) \Big(\frac{1}{2}N_{open} - S\Big)! \Big(\frac{1}{2}N_{open} + S\Big)!} \\
    &=&\ \frac{N_{open}!}{\Big(\frac{1}{2}N_{open} - S\Big)! \Big(\frac{1}{2}N_{open} + S\Big)!}
        \Bigg[ 1 - \frac{\frac{1}{2}N_{open} - S}{\frac{1}{2}N_{open} + S + 1} \Bigg] \\
    &=&\ \frac{N_{open}!}{\Big(\frac{1}{2}N_{open} - S\Big)! \Big(\frac{1}{2}N_{open} + S\Big)!}
        \Bigg[\frac{\frac{1}{2}N_{open} + S + 1 - \Big(\frac{1}{2}N_{open} - S\Big)}{\frac{1}{2}N_{open} + S + 1} \Bigg] \\
    &=&\ \frac{2S+1}{\frac{1}{2}N_{open} + S + 1} \begin{pmatrix} N_{open} \\ \frac{1}{2}N_{open} - S \end{pmatrix}


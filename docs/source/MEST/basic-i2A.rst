
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

第二章 二次量子化中的自旋 (A)
=============================

第一节 自旋函数
---------------

1 单电子的情况
^^^^^^^^^^^^^^

自旋坐标只能取两个值, 代表 (电子) 自旋角动量的投影的两个可能值: :math:`m_s = -\frac{1}{2}` 和 :math:`m_s = \frac{1}{2}`. 相应地自旋空间由两个函数张开 (这里由特征值的数量决定了基函数的数量, 也就是空间的维数). 这两个函数可以取自旋角动量投影算符的两个本征函数 :math:`\alpha(m_s)` 和 :math:`\beta(m_s)`

.. math::
    S_z^c \alpha(m_s) = \frac{1}{2} \alpha(m_s), \quad
    S_z^c \beta(m_s)  = -\frac{1}{2} \beta(m_s)

自旋函数 (用希腊字母 :math:`\sigma` 统一表示, 也就是说 :math:`\sigma` 将遍历 :math:`\alpha, \beta`) 也是总自旋角动量算符的本征函数, 具有本征值 :math:`s = \frac{1}{2}`.

.. math::
    (S^c)^2 \sigma(m_s) = \frac{3}{4}\sigma (m_s)

注意 :math:`(S^c)^2` 的本征值是 :math:`s(s+1)`. 自旋空间的任意函数都可以用两个基函数展开

.. math::
    \sigma(m_s) = f_\alpha \alpha(m_s) + f_\beta \beta(m_s)

这里 :math:`\alpha, \beta` 的具体函数形式已经不重要, 但是我们要求它是自旋角动量投影算符的两个本征函数, 所以它们的形式是固定的. 下面一般把离散形式, 即系数 :math:`f_\alpha, f_\beta` 也简记为 :math:`\alpha, \beta`, 即

.. math::
    \alpha = \begin{pmatrix} 1 \\ 0 \end{pmatrix},\quad
    \beta = \begin{pmatrix} 0 \\ 1 \end{pmatrix}

或者

.. math::
    \alpha\left(\frac{1}{2}\right) = 1, \quad \alpha\left(-\frac{1}{2}\right) = 0, \quad
    \beta\left(\frac{1}{2}\right) = 0, \quad \beta\left(-\frac{1}{2}\right) = 1

完备性条件 (也给出了证明)

.. math::
    \sum_\sigma |\sigma\rangle \langle \sigma| = 1 \quad \Leftarrow\quad
    \sum_\sigma \langle m_s |\sigma\rangle \langle \sigma | m_s' \rangle
        = \alpha(m_s) \alpha(m_s') + \beta(m_s) \beta(m_s') = (\delta_{m_s,\frac{1}{2}} + \delta_{m_s,-\frac{1}{2}})\delta_{m_s,m_s'} = \delta_{m_s,m_s'} = \langle m_s | m_s' \rangle

正交条件 (的证明)

.. math::
    \langle \sigma | \tau \rangle = \sum_{m_s} \sigma(m_s)\tau(m_s) =
        \sigma\left(\frac{1}{2}\right)\tau\left(\frac{1}{2}\right)
        + \sigma\left(-\frac{1}{2}\right)\tau\left(-\frac{1}{2}\right)
    = \delta_{\sigma,\alpha} \delta_{\tau,\alpha} + \delta_{\sigma,\beta} \delta_{\tau,\beta}
    = (\delta_{\sigma,\alpha} + \delta_{\sigma,\beta} )\delta_{\sigma,\tau} = \delta_{\sigma,\tau}

注意这里尖括号改成了求和是因为, 尖括号代表内积, 内积一般改成积分. 在这里离散化以后就是求和.

上述讨论的是单电子的情况. 推广到 :math:`N` 电子体系, 需要注意的是 :math:`S_z^c` 是真正的单电子算符, 但是总自旋算符 :math:`(S^c)^2` 是双电子算符, 这不是说它涉及电子之间相互作用, 而是说它是某些单电子算符的平方的线性组合. 而平方是两个电子相乘, 所以是双电子算符.

2 自旋轨道
^^^^^^^^^^

一般的自旋轨道写为

.. math::
    \phi_P(\bm{r}, m_s) = \phi_P^\alpha(\bm{r})\alpha(m_s) + \phi_P^\beta(\bm{r})\beta(m_s)

也就是说, 自旋轨道空间是由轨道空间基组和自旋空间基组的直积 (作为基组) 张开的空间. 对于非相对论理论, 没有自旋-轨道耦合, 因此自旋是好量子数, 轨道 (即波函数) 可以具有确定的自旋量子数. 因此可以将自旋量子数 :math:`\sigma` 作为波函数的指标, 也就是说, 上式取更加限制的形式

.. math::
    \phi_{p\sigma}(\bm{r},m_s) = \phi_p(\bm{r}) \sigma(m_s)

用小写字母表示 (空间) 轨道, 大写字母表示自旋轨道. 指标 :math:`p` 标记空间轨道的各个本征函数, :math:`\sigma` 表示自旋部分. 空间轨道的总数目为 :math:`n`. 因此上式总共给出 :math:`M = 2n` 个独立的自旋轨道.

第二节 算符在轨道基组的表示
---------------------------

按照算符是否作用于自旋部分可以对量子力学算符进行分类. 无自旋算符作用于空间轨道子空间. 纯自旋算符作用于自旋子空间. 混合算符作用于直积空间.

1 无自旋算符
^^^^^^^^^^^^

先考虑单电子算符. 无自旋单电子算符具有如下形式

.. math::
    f^c = \sum_{i=1}^N f^c(\bm{r}_i)

在自旋轨道基组写为

.. math::
    \hat{f} = \sum_{p\sigma q\tau} f_{p\sigma,q\tau} a^\dagger_{p\sigma}a_{q\tau}

对于无自旋算符而言, 二次量子化算符中的积分 (矩阵元) 如果是关于不同自旋指标的, 将得到零 (利用自旋空间的正交条件). 这里轨道空间的矩阵元中间会放入 :math:`f`. 但是自旋空间的矩阵元由于 :math:`f` 无作用, 所以只是放入单位算符. 矩阵元即重叠矩阵元. 可以利用正交条件. 于是

.. math::
    f_{p\sigma,q\tau} = f_{pq} \delta_{\sigma\tau}

代入 :math:`\hat{f}` 的表达式得

.. math::
    \hat{f} = \sum_{p\sigma q\tau} f_{pq} \delta_{\sigma\tau} a^\dagger_{p\sigma}a_{q\tau}
    = \sum_{p\sigma q} f_{pq} a^\dagger_{p\sigma}a_{q\sigma}
    = \sum_{pq} f_{pq} E_{pq}

其中单态激发算符定义为自旋轨道激发算符的叠加:

.. math::
    E_{pq} \equiv a^\dagger_{p\alpha}a_{q\alpha} + a^\dagger_{p\beta}a_{q\beta}

下面考虑无自旋双电子算符. 无自旋双电子算符具有如下一般形式

.. math::
    g^c = \frac{1}{2} \sum_{i\neq j} g^c(\bm{r}_i, \bm{r}_j)

在自旋轨道基组写为

.. math::
    \hat{g} = \frac{1}{2} \sum_{pqrs,\sigma\tau\mu\nu} g_{p\sigma,q\tau,r\mu,s\nu}
        a^\dagger_{p\sigma}a^\dagger_{r\mu}a_{s\nu}a_{q\tau}

我们有 (注意 :math:`pq` 指标具有相同坐标, 相应的 :math:`\sigma\tau` 具有相同坐标)

.. math::
    g_{p\sigma,q\tau,r\mu,s\nu} = g_{pqrs}\delta_{\sigma\tau} \delta_{\mu\nu}

其二次量子化矩阵元

.. math::
    g_{pqrs} = \int \int \phi_p^*(\bm{r}_1)\phi_r^*(\bm{r}_2) g^c(\bm{r}_1,\bm{r}_2) \phi_q(\bm{r}_1)
    \phi_s(\bm{r}_2) \D \bm{r}_1 \D \bm{r}_2

具有如下性质. 对一般情况

.. math::
    g_{pqrs} = g_{rspq}

除此之外, 对复轨道

.. math::
    g_{pqrs} = g_{qpsr}^*

对实轨道

.. math::
    g_{pqrs} = g_{qprs} = g_{pqsr} = g_{qpsr}

因此实轨道有八重指标对换对称性. 利用反对易关系

.. math::
    a^\dagger_{r\tau}a_{q\sigma} + a_{q\sigma}a^\dagger_{r\tau} =&\ \delta_{rq}\delta_{\sigma\tau} \\
    a_{q\sigma}a_{s\tau} + a_{s\tau}a_{q\sigma} =&\ 0

得

.. math::
    \hat{g} =&\ \frac{1}{2} \sum_{pqrs} g_{pqrs} \sum_{\sigma\tau} a^\dagger_{p\sigma}a^\dagger_{r\tau}a_{s\tau}a_{q\sigma} = -\frac{1}{2} \sum_{pqrs} g_{pqrs} \sum_{\sigma\tau} a^\dagger_{p\sigma}a^\dagger_{r\tau}a_{q\sigma}a_{s\tau} = \frac{1}{2} \sum_{pqrs} g_{pqrs} \sum_{\sigma\tau} \left[ a^\dagger_{p\sigma}a_{q\sigma}a^\dagger_{r\tau}a_{s\tau} - \delta_{rq}\delta_{\sigma\tau} a^\dagger_{p\sigma}a_{s\tau} \right] \\
    =&\ \frac{1}{2} \sum_{pqrs} g_{pqrs} \left[ \sum_{\sigma} a^\dagger_{p\sigma}a_{q\sigma} \sum_{\tau}a^\dagger_{r\tau}a_{s\tau} - \delta_{qr} \sum_{\sigma} a^\dagger_{p\sigma}a_{s\sigma} \right]
    = \frac{1}{2} \sum_{pqrs} g_{pqrs} \left[ E_{pq} E_{rs} - \delta_{qr} E_{ps} \right]
    = \frac{1}{2} \sum_{pqrs} g_{pqrs} e_{pqrs}

其中双电子激发算符定义为

.. math::
    e_{pqrs} = E_{pq} E_{rs} - \delta_{qr} E_{ps} = \sum_{\sigma\tau} a^\dagger_{p\sigma}a^\dagger_{r\tau}a_{s\tau}a_{q\sigma}

它具有对称性

.. math::
    e_{pqrs} = e_{rspq}

由于交换 :math:`rp` 并同时交换 :math:`qs` 相当于交换上述二次量子化表达式中的一对产生算符并同时交换一对湮灭算符, 产生两个负号相互抵消. 所以结果不变.

现在我们可以写出二次量子化形式的分子电子哈密顿量 (由于哈密顿量仅包括无自旋算符)

.. math::
    \hat{H} = \sum_{pq} h_{pq} E_{pq} + \frac{1}{2} \sum_{pqrs} g_{pqrs} e_{pqrs} + h_{\mathrm{nuc}}

2 纯自旋算符
^^^^^^^^^^^^

一般形式可以写为 (这里假设是单电子算符)

.. math::
    \hat{f} = \sum_{\sigma\tau} f_{\sigma\tau} \sum_p a_{p\sigma}^\dagger a_{p\tau}
    :label: pure-spin-general

注意由于算符不作用于普通轨道空间, 因此 :math:`pq` 由于正交性被 delta 函数代替. 纯自旋算符有三个重要例子, 升降算符 :math:`S_+^c` 和 :math:`S_-^c` 和自旋角动量的 :math:`z` 分量算符 :math:`S_z^c`. 定义这些算符在自旋函数 (假定单粒子态) 的作用如下

.. math::
    S_+^c \beta = \alpha,\quad S_+^c \alpha = 0 \\
    S_-^c \beta = 0,\quad S_-^c \alpha = \beta \\
    S_z^c \beta = -\frac{1}{2}\beta, \quad S_z^c \alpha = +\frac{1}{2}\alpha

可以得到如下矩阵元 (注意它们关于空间指标 :math:`pq` 都是对角的)

.. math::
    [S_+^c]_{p\sigma,q\tau} =&\ \delta_{pq} \delta_{\sigma\alpha}\delta_{\tau\beta} \\
    [S_-^c]_{p\sigma,q\tau} =&\ \delta_{pq} \delta_{\sigma\beta}\delta_{\tau\alpha} \\
    [S_z^c]_{p\sigma,q\tau} =&\ \frac{1}{2} \delta_{pq} \delta_{\sigma\tau} (\delta_{\sigma\alpha}
        -\delta_{\sigma\beta} )

将上式代入 :eq:`pure-spin-general` 得

.. math::
    \hat{S}_+ =&\ \sum_{\sigma\tau} \delta_{\sigma\alpha}\delta_{\tau\beta} \sum_p a_{p\sigma}^\dagger a_{p\tau}
        = \sum_p a_{p\alpha}^\dagger a_{p\beta} \\
    \hat{S}_- =&\ \sum_{\sigma\tau} \delta_{\sigma\beta}\delta_{\tau\alpha} \sum_p a_{p\sigma}^\dagger a_{p\tau}
        = \sum_p a_{p\beta}^\dagger a_{p\alpha} \\
    \hat{S}_z =&\ \frac{1}{2} \sum_{\sigma\tau} \delta_{\sigma\tau} (\delta_{\sigma\alpha}
        -\delta_{\sigma\beta} ) \sum_p a_{p\sigma}^\dagger a_{p\tau}
        = \frac{1}{2} \sum_p \left( a_{p\alpha}^\dagger a_{p\alpha} - a_{p\beta}^\dagger a_{p\beta} \right)
    :label: raise-low-def

可以发现降算符是升算符的厄米共轭

.. math::
    \hat{S}_+^\dagger = \sum_p \left( a_{p\alpha}^\dagger a_{p\beta} \right)^\dagger
        = \sum_p a_{p\beta}^\dagger a_{p\alpha} = \hat{S}_-

角动量的 :math:`x` 和 :math:`y` 分量的算符为

.. math::
    S_x^c = \frac{1}{2}\big( S_+^c + S_-^c \big),\quad
    S_y^c = \frac{1}{2\I}\big( S_+^c - S_-^c \big)

利用 :math:`S_\pm^c` 的二次量子化形式, 我们可以得到 :math:`S_x^c, S_y^c` 的二次量子化形式如下

.. math::
    S_x^c =&\ \frac{1}{2} \sum_p \left(  a_{p\alpha}^\dagger a_{p\beta} + a_{p\beta}^\dagger a_{p\alpha} \right) \\
    S_y^c =&\ \frac{1}{2\I} \sum_p \left(  a_{p\alpha}^\dagger a_{p\beta} - a_{p\beta}^\dagger a_{p\alpha} \right)

最后我们可以将总自旋算符写为

.. math::
    \hat{S}^2 = \hat{S}_x^2 + \hat{S}_y^2 + \hat{S}_z^2

因为这个算符包含单电子算符的乘积, 所以它是双电子算符. 这也可以表示为

.. math::
    \hat{S}^2 =&\ \hat{S}_+ \hat{S}_- + \hat{S}_z \big( \hat{S}_z - 1\big) \\
              =&\ \hat{S}_- \hat{S}_+ + \hat{S}_z \big( \hat{S}_z + 1\big)

3 混合算符
^^^^^^^^^^

一些一次量子化算符, 例如精细结构和超精细结构算符同时影响波函数的空间和自旋部分. 作为例子, 我们考虑有效旋轨相互作用算符

.. math::
    V_{SO}^c = \sum_{i=1}^N V_{SO}^c(\bm{r}_i, m_{si}) = \sum_{i=1}^N \xi(r_i) \bm{\ell}^c(i) \cdot \bm{S}^c(i)

这通常用于描述重原子中的旋轨耦合效应. 这里 :math:`\xi(r_i)` 是径向函数, :math:`r_i` 是电子 :math:`i` 到原子核的距离, :math:`\bm{\ell}^c(i)` 是电子 :math:`i` 的轨道角动量算符 (矢量), :math:`\bm{S}^c(i)` 是电子的自旋角动量算符 (矢量). 注意这个表达式中涉及轨道和自旋角动量两个矢量算符的内积, 所以相当于是 :math:`x, y, z` 分量分别相乘然后求和. 这个算符尽管是混合算符, 但是仍然可以分为空间部分 :math:`\xi(r_i)\bm{\ell}^c(i)` 和自旋部分 :math:`\bm{S}^c(i)`. 只是此时不再有 :math:`pq` 或 :math:`\sigma\tau` 的直接内积为零导致的 delta 函数. 二次量子化表示如下

.. math::
    \hat{V}_{SO} =&\ \sum_{pq,\sigma\tau} \int \sum_{m_s} \phi_p^*(\bm{r})\sigma^*(m_s)V_{SO}^c(\bm{r},m_s)
        \phi_q(\bm{r})\tau(m_s) \D \bm{r} a_{p\sigma}^\dagger a_{q\tau} \\
        =&\ \sum_{pq,\sigma\tau,\mu} \left[ \int \phi_p^*(\bm{r})V^\mu(\bm{r}) \phi_q(\bm{r}) \D \bm{r} \right]
        \left[\sum_{m_s} \sigma^*(m_s) \hat{S}^c_\mu(m_s) \tau(m_s) \right] a_{p\sigma}^\dagger a_{q\tau} \\
        =&\ \sum_{pq,\mu} \left[ \int \phi_p^*(\bm{r})V^\mu(\bm{r}) \phi_q(\bm{r}) \D \bm{r} \right]
        \left[\sum_{\sigma\tau, m_s} \sigma^*(m_s) \hat{S}^c_\mu(m_s) \tau(m_s) a_{p\sigma}^\dagger a_{q\tau} \right] \\
        =&\ \sum_{pq} \left[ V_{pq}^x \hat{T}_{pq}^x + V_{pq}^y \hat{T}_{pq}^y + V_{pq}^z \hat{T}_{pq}^z \right]

其中 :math:`\mu = x,y,z`

.. math::
    V_{pq}^\mu = \int \phi_p^*(\bm{r}) \xi(r)\ell_\mu^c \phi_q(\bm{r}) \D \bm{r}

利用

.. math::
    [S_x^c]_{\sigma\tau} =&\ \sum_{m_s} \sigma^*(m_s) \hat{S}_x^c(m_s) \tau(m_s) = \frac{1}{2} \big( \delta_{\sigma\alpha}\delta_{\tau\beta} + \delta_{\sigma\beta}\delta_{\tau\alpha} \big) \\
    [S_y^c]_{\sigma\tau} =&\ \sum_{m_s} \sigma^*(m_s) \hat{S}_y^c(m_s) \tau(m_s) = \frac{1}{2\I} \big( \delta_{\sigma\alpha}\delta_{\tau\beta} - \delta_{\sigma\beta}\delta_{\tau\alpha} \big) \\
    [S_z^c]_{\sigma\tau} =&\ \sum_{m_s} \sigma^*(m_s) \hat{S}_z^c(m_s) \tau(m_s) = \frac{1}{2} \delta_{\sigma\tau} \big(\delta_{\sigma\alpha} -\delta_{\sigma\beta} \big)

得到三重激发算符的笛卡儿分量

.. math::
    \hat{T}_{pq}^x =&\ \sum_{\sigma\tau} \frac{1}{2} \big( \delta_{\sigma\alpha}\delta_{\tau\beta} + \delta_{\sigma\beta}\delta_{\tau\alpha} \big) a_{p\sigma}^\dagger a_{q\tau} =
        \frac{1}{2} \big( a_{p\alpha}^\dagger a_{q\beta} + a_{p\beta}^\dagger a_{q\alpha} \big) \\
    \hat{T}_{pq}^y =&\ \sum_{\sigma\tau} \frac{1}{2\I} \big( \delta_{\sigma\alpha}\delta_{\tau\beta} - \delta_{\sigma\beta}\delta_{\tau\alpha} \big) a_{p\sigma}^\dagger a_{q\tau} =
        \frac{1}{2\I} \big( a_{p\alpha}^\dagger a_{q\beta} - a_{p\beta}^\dagger a_{q\alpha} \big) \\
    \hat{T}_{pq}^z =&\ \sum_{\sigma\tau} \frac{1}{2} \delta_{\sigma\tau} \big(\delta_{\sigma\alpha} -\delta_{\sigma\beta} \big)   a_{p\sigma}^\dagger a_{q\tau} = \frac{1}{2} \big( a_{p\alpha}^\dagger a_{q\alpha} - a_{p\beta}^\dagger a_{q\beta} \big)

注意和之前的 :math:`S_\mu` 算符二次量子化不同的是, 这里没有对 :math:`q` 的求和, 而且保留了 :math:`pq` 指标, 因为此时不再存在关于 :math:`pq` 的 delta 函数. 如果在 :math:`V_{pq}^\mu` 表达式中用单位算符替代 :math:`\xi(r)\ell_\mu^c`, 则积分为重叠积分, 其值为 delta 函数 :math:`\delta_{pq}`. 这个因子和 :math:`pq` 求和一并吸收到 :math:`\hat{T}_{pq}^\mu` 的定义中 就会回到之前纯自旋算符的情况.

有效旋轨算符的另一种形式是通过升降算符表示

.. math::
    V_{SO}^c = \sum_{i=1}^N \xi(r_i) \left[ \frac{1}{2} \ell_+^c(i)S_-^c(i) + \frac{1}{2} \ell_-^c(i)S_+^c(i)
        + \ell_z^c(i) S_z^c(i) \right]

其中轨道升降算符定义为

.. math::
    \ell_\pm^c(i) = \ell_x^c(i) \pm \I \ell_y^c(i)

有效旋轨算符的二次量子化表示现在成为

.. math::
    \hat{V}_{SO} = \sum_{pq} \left[ \frac{1}{2} V_{pq}^+ a_{p\beta}^\dagger a_{q\alpha} +
        \frac{1}{2} V_{pq}^- a_{p\alpha}^\dagger a_{q\beta}
        + \frac{1}{2} V_{pq}^z \big( a_{p\alpha}^\dagger a_{q\alpha} - a_{p\beta}^\dagger a_{q\beta} \big) \right]

其中 :math:`\mu = +,-,z`

.. math::
    V_{pq}^\mu = \int \phi_p^*(\bm{r}) \xi(r)\ell_\mu^c \phi_q(\bm{r}) \D \bm{r}

第三节 自旋张量算符
-------------------

我们发现无自旋作用由在自旋空间完全对称的算符表示, 也就是说, 它们表示为轨道激发算符, 对 :math:`\alpha` 和 :math:`\beta` 电子产生相同的作用. 而纯自旋算符表示为对 :math:`\alpha` 和 :math:`\beta` 算符产生不同作用的激发算符. 为了高效和透明地操作这些算符, 我们应该应用群论. 特别地, 我们会采用量子力学中的角动量的张量算符理论, 并发展一套工具用来对具有确定自旋对称性质的态和算符进行构造和分类.

1 自旋张量算符
^^^^^^^^^^^^^^

具有整数或半整数阶 :math:`S` 的自旋张量算符是一组 :math:`2S+1` 个 算符 :math:`\hat{T}^{S,M}` 其中 :math:`M` 从 :math:`-S` 到 :math:`S` (每次递增1) 满足如下条件

.. math::
    \big[ \hat{S}_\pm, \hat{T}^{S,M} \big] =&\ \sqrt{S(S+1) - M(M\pm 1)} \hat{T}^{S,M\pm1} \\
    \big[ \hat{S}_z, \hat{T}^{S,M} \big] =&\ M\hat{T}^{S,M}
    :label: spin-tensor-def

其中假定

.. math::
    \hat{T}^{S,S+1} = \hat{T}^{S,-S-1} = 0

张量算符作用于真空态将产生一组具有总自旋 :math:`S` 和投影 :math:`M` 的自旋本征态 (或者张量算符湮灭真空态). 证明如下. 由于算符 :math:`\hat{S}_\pm` 和 :math:`\hat{S}_z` 作用于真空态产生零 (这个可以看成定义) 因此对易子中的两项只有第一项 (当 :math:`T` 在右边的时候) 保留. 于是

.. math::
    \hat{S}_\pm \hat{T}^{S,M} |\mathrm{vac}\rangle =&\ \sqrt{S(S+1)-M(M\pm 1)}\hat{T}^{S,M\pm1}|\mathrm{vac}\rangle \\
    \hat{S}_z \hat{T}^{S,M} |\mathrm{vac}\rangle =&\ M\hat{T}^{S,M} |\mathrm{vac}\rangle

这定义了 :math:`S` 阶的自旋张量态 :math:`\hat{T}^{S,M} |\mathrm{vac}\rangle`. 张量态很明显是自选投影的本征函数 (由上面的第二式可以看出). 为了确定总自旋算符在张量态的作用, 利用以上两式和

.. math::
    \hat{S}^2 = \hat{S}_-\hat{S}_+ + \hat{S}_z \big( \hat{S}_z + 1 \big)

可得

.. math::
    \hat{S}^2 \hat{T}^{S,M} |\mathrm{vac}\rangle =&\ \left[ \hat{S}_-\hat{S}_+ + \hat{S}_z \big( \hat{S}_z + 1 \big) \right]
        \hat{T}^{S,M} |\mathrm{vac}\rangle = \left[ S(S+1)-M(M+1) + M(M+1) \right] \hat{T}^{S,M} |\mathrm{vac}\rangle \\
        =&\ S(S+1) \hat{T}^{S,M} |\mathrm{vac}\rangle

其中注意

.. math::
    \hat{S}_-\hat{S}_+ \hat{T}^{S,M} |\mathrm{vac}\rangle =&\ \hat{S}_- \sqrt{S(S+1)-M(M+ 1)} \hat{T}^{S,M+1} |\mathrm{vac}\rangle \\ =&\
        \sqrt{S(S+1)-M(M+1)} \sqrt{S(S+1)-(M+1)(M+1-1)}
    \hat{T}^{S,M+1-1}|\mathrm{vac}\rangle \\
    =&\ \left[ S(S+1)-M(M+1) \right] \hat{T}^{S,M}|\mathrm{vac}\rangle

因此 :math:`\hat{T}^{S,M} |\mathrm{vac}\rangle` 如果不为零, 则表示一个具有自旋本征值 :math:`S` 和 :math:`M` 的张量态. 由于自旋张量算符和自旋本征函数的密切关系, 自旋函数的术语也用于自旋张量算符. 因此, :math:`S = 0` 的自旋张量算符 :math:`\hat{T}^{S,M}` 称为单重态算符, :math:`S = \frac{1}{2}` 给出双重态算符, :math:`S = 1` 给出三重态, 等等.

注意根据 :eq:`spin-tensor-def`, 任何单重态算符 :math:`\hat{T}^{0,0}` 和升降算符和自旋投影算符 :math:`\hat{S}_z` 对易 (由于本征值都为零, 因此 :eq:`spin-tensor-def` 右边都是零. ) 因此单重态算符也和 :math:`\hat{S}^2` 对易, 因为 :math:`\hat{S}^2` 可由升降算符和自旋投影算符表出. 于是

.. math::
    \big[ \hat{S}_z, \hat{T}^{0,0} \big] = \big[ \hat{S}^2, \hat{T}^{0,0} \big] = 0

两个厄米算符的对易子是反厄米的. 即

.. math::
    [A, B] = C, \quad [A, B]^\dagger = (AB - BA)^\dagger = B^\dagger A^\dagger - A^\dagger B^\dagger = -[A^\dagger, B^\dagger]

现在若 :math:`A, B` 都是厄米算符, 那么

.. math::
    C^\dagger = [A, B]^\dagger = -[A^\dagger, B^\dagger] = -[A, B] = -C

即 :math:`C` 是反厄米的. 根据 :eq:`spin-tensor-def` 第二式, 由于 :math:`\hat{S}_z^c` 是厄米的 (它是观测量的算符), 若要求 :math:`\hat{T}^{S,M}` 也是厄米的, 则等号右边必须是反厄米的, 那么要么 :math:`M = 0` 要么 :math:`\hat{T}^{S,M}` 是反厄米的. 一个非零算符不能既是厄米的, 又是反厄米的. 因此矛盾. 于是得知只有 :math:`M = 0` 的情况, 即 :math:`\hat{T}^{S,0}` 有希望 (但不一定) 是厄米的. 因为上述关于对易子的条件是必要条件不是充分条件. 于是我们检查 :eq:`spin-tensor-def` 的厄米共轭. 对易子取共轭相当于方括号里面的算符分别取共轭, 然后再加负号. 可以把负号移到右边. 得

.. math::
    \big[ \hat{S}_\mp, \big( \hat{T}^{S,M} \big)^\dagger \big] =&\ -\sqrt{S(S+1)-M(M\pm1)} \big( \hat{T}^{S,M\pm1} \big)^\dagger \\
    \big[ \hat{S}_z, \big( \hat{T}^{S,M} \big)^\dagger \big] =&\ -M \big( \hat{T}^{S,M} \big)^\dagger

现在将以上两式中的 :math:`M` 改为 :math:`-M` 得

.. math::
    \big[ \hat{S}_\mp, \big( \hat{T}^{S,-M} \big)^\dagger \big] =&\ -\sqrt{S(S+1)-M(M\mp1)} \big( \hat{T}^{S,M\mp1} \big)^\dagger \\
    \big[ \hat{S}_z, \big( \hat{T}^{S,-M} \big)^\dagger \big] =&\ M \big( \hat{T}^{S,-M} \big)^\dagger

可见除第一式差一个负号以外, :math:`\big( \hat{T}^{S,-M} \big)^\dagger` 基本是一个属于特征值 :math:`S, M` 的自旋张量算符. 这一负号问题可以通过一个和 :math:`M, S` 有关的系数来弥补. 令

.. math::
    \hat{U}^{S,M} = (-1)^{S+M} \big( \hat{T}^{S,-M} \big)^\dagger
    :label: tsm-conj

则有 (注意其中因子 :math:`(-1)^S` 是为了保证因子 :math:`(-1)^{S+M}` 总给出 :math:`\pm`, 因为 :math:`S +M` 总是整数)

.. math::
    \big[ \hat{S}_\mp, \hat{U}^{S,M} \big] =&\ -(-1)^{S+M} \sqrt{S(S+1)-M(M\mp1)} \big( \hat{T}^{S,M\mp1} \big)^\dagger
        = \sqrt{S(S+1)-M(M\mp1)} (-1)^{S+M\mp1} \big( \hat{T}^{S,M\mp1} \big)^\dagger \\
        =&\ \sqrt{S(S+1)-M(M\mp1)}
        \hat{U}^{S,M\mp1}\\
    \big[ \hat{S}_z, \hat{U}^{S,M} \big] =&\ (-1)^{S+M} M \big( \hat{T}^{S,-M} \big)^\dagger = M \hat{U}^{S,M}

也就是说, :math:`\hat{U}^{S,M}` 和 :math:`\hat{S}^{S,M}` 具有同样的性质. 因此, 尽管 :math:`\hat{S}^{S,M}` 不是厄米的, 但是上述 :math:`\hat{U}^{S,M}` 的定义式给出 :math:`\hat{S}^{S,M}` 和它的厄米共轭之间的关系, 即一个张量算符的共轭给出一个新的张量算符, 其中投影量子数 :math:`M` 反转.

自旋张量算符在二次量子化的电子系统中扮演重要角色, 因为它们可以被用来产生具有确定自旋性质的态.

2 产生和湮灭算符
^^^^^^^^^^^^^^^^

作为双重态算符的例子, 我们先考虑产生算符 :math:`\big\{ a_{p\alpha}^\dagger, a_{p\beta}^\dagger\big\}`. 注意现在统一将这两个算符记为 :math:`a_{pm}^\dagger`, 其中 :math:`m = m_s = \frac{1}{2}` 对应于指标 :math:`\alpha`, 而 :math:`m = m_s = -\frac{1}{2}` 对应于指标 :math:`\beta`. 利用 :eq:`raise-low-def` 给出的

.. math::
    \hat{S}_+ =&\ \sum_p a_{p\alpha}^\dagger a_{p\beta} \\
    \hat{S}_- =&\ \sum_p a_{p\beta}^\dagger a_{p\alpha} \\
    \hat{S}_z =&\ \frac{1}{2} \sum_p \left( a_{p\alpha}^\dagger a_{p\alpha} - a_{p\beta}^\dagger a_{p\beta} \right)

下面考虑 :math:`[\hat{S}_\mu, a_{pm}^\dagger]`. 首先注意到 :math:`\hat{S}_\mu` 中有对 :math:`p` 的求和. 我们先证明这个求和中只有一项和 :math:`a_{pm}^\dagger` 指标 :math:`p` 相同的可以保留, 其余都会抵消. 注意不同 :math:`p, p'` 由反对易关系不论产生或湮灭算符都反对易. 因此对 :math:`p \neq p'`

.. math::
    [a_{p'n}^\dagger a_{p'n'}, a_{pm}^\dagger] =&\ a_{p'n}^\dagger a_{p'n'}a_{pm}^\dagger -  a_{pm}^\dagger a_{p'n}^\dagger a_{p'n'} = - a_{p'n}^\dagger a_{pm}^\dagger a_{p'n'} -  a_{pm}^\dagger a_{p'n}^\dagger a_{p'n'} \\=&\ (-1)^2
    a_{pm}^\dagger a_{p'n}^\dagger  a_{p'n'} -  a_{pm}^\dagger a_{p'n}^\dagger a_{p'n'} = 0

所以只有一项有贡献. 于是

.. math::
    \big[ \hat{S}_z, a_{p\beta}^\dagger \big] =&\ \left[ \frac{1}{2}\left( a_{p\alpha}^\dagger a_{p\alpha} - a_{p\beta}^\dagger a_{p\beta} \right), a_{p\beta}^\dagger \right] =
    -\frac{1}{2} \left[  a_{p\beta}^\dagger a_{p\beta} , a_{p\beta}^\dagger \right] \\

注意, 其中对易子中省略了第一项, 因为 :math:`a_{p\beta}^\dagger` 的指标和 :math:`a_{p\alpha}^\dagger, a_{p\alpha}` 均不同, 可以进行两次反对易, 负号抵消, 因此得到对易关系 :math:`[a_{p\alpha}^\dagger a_{p\alpha}, a_{p\beta}^\dagger] = 0`. 另外由反对易关系 :math:`a_{p\beta}^\dagger a_{p\beta}^\dagger + a_{p\beta}^\dagger a_{p\beta}^\dagger = 0`. 进一步

.. math::
    \big[ \hat{S}_z, a_{p\beta}^\dagger \big] =&\ -\frac{1}{2} \left(  a_{p\beta}^\dagger a_{p\beta} a_{p\beta}^\dagger
    - a_{p\beta}^\dagger a_{p\beta}^\dagger a_{p\beta} \right)
    = -\frac{1}{2} a_{p\beta}^\dagger a_{p\beta} a_{p\beta}^\dagger = -\frac{1}{2} a_{p\beta}^\dagger +\frac{1}{2} a_{p\beta}^\dagger a_{p\beta}^\dagger a_{p\beta} = -\frac{1}{2} a_{p\beta}^\dagger \\
    \big[ \hat{S}_z, a_{p\alpha}^\dagger \big] =&\ \frac{1}{2} \left(  a_{p\alpha}^\dagger a_{p\alpha} a_{p\alpha}^\dagger
    - a_{p\alpha}^\dagger a_{p\alpha}^\dagger a_{p\alpha} \right)
    = \frac{1}{2} a_{p\alpha}^\dagger a_{p\alpha} a_{p\alpha}^\dagger = \frac{1}{2} a_{p\alpha}^\dagger -\frac{1}{2} a_{p\alpha}^\dagger a_{p\alpha}^\dagger a_{p\alpha} = \frac{1}{2} a_{p\alpha}^\dagger

总之

.. math::
    \big[ \hat{S}_z, a_{pm}^\dagger \big] = m a_{pm}^\dagger

另外分析因子

.. math::
    f_{\frac{1}{2},\pm} \equiv \sqrt{\frac{3}{4}-\frac{1}{2}\left( \frac{1}{2} \pm 1\right)} =&\ \begin{cases}
        \sqrt{\frac{3}{4}-\frac{1}{2}\cdot \frac{3}{2} } = 0 & (+) \\
        \sqrt{\frac{3}{4}-\frac{1}{2}\cdot \left( - \frac{1}{2} \right) } = 1 & (-)
    \end{cases} \\
    f_{-\frac{1}{2},\pm} \equiv \sqrt{\frac{3}{4}-\left(-\frac{1}{2}\right)\left( -\frac{1}{2} \pm 1\right)} =&\ \begin{cases}
        \sqrt{\frac{3}{4}+\frac{1}{2}\cdot \frac{1}{2} } = 1 & (+) \\
        \sqrt{\frac{3}{4}+\frac{1}{2}\cdot \left( - \frac{3}{2} \right) } = 0 & (-)
    \end{cases}

即

.. math::
    f_{m+} = \delta_{m\beta},\quad f_{m-} = \delta_{m\alpha}

于是考虑

.. math::
    \big[ \hat{S}_+, a_{pm}^\dagger \big] =&\ \big[ a_{p\alpha}^\dagger a_{p\beta} , a_{pm}^\dagger \big]
        = a_{p\alpha}^\dagger a_{p\beta} a_{pm}^\dagger - a_{pm}^\dagger a_{p\alpha}^\dagger a_{p\beta}
        = a_{p\alpha}^\dagger \delta_{m\beta} - a_{p\alpha}^\dagger a_{pm}^\dagger a_{p\beta}
            - a_{pm}^\dagger a_{p\alpha}^\dagger a_{p\beta} \\
        =&\ a_{p\alpha}^\dagger \delta_{m\beta} - \big( a_{p\alpha}^\dagger a_{pm}^\dagger +
            a_{pm}^\dagger a_{p\alpha}^\dagger \big) a_{p\beta} = \delta_{m\beta} a_{p\alpha}^\dagger
                = \delta_{m\beta} a_{p,m+1}^\dagger \\
    \big[ \hat{S}_-, a_{pm}^\dagger \big] =&\ \big[ a_{p\beta}^\dagger a_{p\alpha} , a_{pm}^\dagger \big]
        = a_{p\beta}^\dagger a_{p\alpha} a_{pm}^\dagger - a_{pm}^\dagger a_{p\beta}^\dagger a_{p\alpha}
        = a_{p\beta}^\dagger \delta_{m\alpha} - a_{p\beta}^\dagger a_{pm}^\dagger a_{p\alpha}
            - a_{pm}^\dagger a_{p\beta}^\dagger a_{p\alpha} \\
        =&\ a_{p\beta}^\dagger \delta_{m\alpha} - \big( a_{p\beta}^\dagger a_{pm}^\dagger +
            a_{pm}^\dagger a_{p\beta}^\dagger \big) a_{p\alpha} = \delta_{m\alpha} a_{p\beta}^\dagger
            = \delta_{m\alpha} a_{p,m-1}^\dagger

综上, 我们有

.. math::
    \big[ \hat{S}_\pm, a_{pm}^\dagger \big] =&\ \sqrt{\frac{3}{4} - m(m\pm1)} a_{p,m\pm1}^\dagger \\
    \big[ \hat{S}_z, a_{pm}^\dagger \big] = m a_{pm}^\dagger

将上式与 :eq:`spin-tensor-def` 比较, 我们得知产生算符 :math:`\big\{ a_{p\alpha}^\dagger, a_{p\beta}^\dagger\big\}` 构成双重态张量算符 :math:`\hat{T}^{\frac{1}{2},\pm\frac{1}{2}}`. 当作用在真空态, 这些算符产生单电子双重态. 利用关系 :eq:`tsm-conj` 我们发现 :math:`\big\{ -a_{p\beta}, a_{p\alpha} \big\}` 构成双重态张量

.. math::
    b_{p\alpha} =&\ (-1)^{1/2+1/2} \big( a_{p\beta}^\dagger \big)^\dagger = -a_{p\beta} \\
    b_{p\beta } =&\ (-1)^{1/2-1/2} \big( a_{p\alpha}^\dagger \big)^\dagger  = a_{p\alpha}

注意 :math:`a_{p\beta}` 对应于 :math:`M = \frac{1}{2}` 分量可以这么理解. 由于它是湮灭算符, 移除一个具有 :math:`-\frac{1}{2}` 投影的电子相当于将系统的自旋投影提升.

3 两体产生算符
^^^^^^^^^^^^^^

对于包含两个或多个基本算符 (产生或湮灭算符) 的算符乘积序列, 可以构造多个张量算符. 第六节将介绍一般方法. 目前我们考虑耦合两个双重态算符 :math:`\big\{ a_{p\alpha}^\dagger, a_{p\beta}^\dagger \big\}` 和 :math:`\big\{ a_{q\alpha}^\dagger, a_{q\beta}^\dagger \big\}` 可以生成 **单重态两体产生算符**

.. math::
    \hat{Q}_{pq}^{0,0} = \frac{1}{\sqrt{2}}\big( a_{p\alpha}^\dagger a_{q\beta}^\dagger - a_{p\beta}^\dagger a_{q\alpha}^\dagger \big)

和 **三重态两体产生算符**

.. math::
    \hat{Q}_{pq}^{1,1} =&\ a_{p\alpha}^\dagger a_{q\alpha}^\dagger \\
    \hat{Q}_{pq}^{1,0} =&\ \frac{1}{\sqrt{2}}\big( a_{p\alpha}^\dagger a_{q\beta}^\dagger + a_{p\beta}^\dagger a_{q\alpha}^\dagger \big) \\
    \hat{Q}_{pq}^{1,-1} =&\ a_{p\beta}^\dagger a_{q\beta}^\dagger

可以通过 :eq:`spin-tensor-def` 验证这些算符的张量性质. 由于定义 :eq:`spin-tensor-def` 允许一个给定的张量算符的分量具有一个任意共同乘积因子. 这里我们对于两体产生算符给出的乘积因子是约定的选择.

单重态两体算符关于指标 :math:`p` 和 :math:`q` 是对称的, 而三重态算符是反对称的. 当 :math:`p = q`, 单重态两体产生算符变为

.. math::
    \hat{Q}_{pp}^{0,0}=\sqrt{2} a_{p\alpha}^\dagger a_{p\beta}^\dagger

而三重态算符在这种情况下为零, 和泡利原理一致. 上式的算符作用到真空态上产生双电子闭壳层单重态, 假定 :math:`\phi_p` 不是简并的. 当 :math:`p\neq q` 算符 :math:`\hat{Q}_{pq}^{0,0}` 产生开壳层单重态, 而 :math:`\hat{Q}_{pq}^{1,0}` 产生对应的自旋投影为零的三重态.

4 激发算符
^^^^^^^^^^

在上一节我们耦合两个双重态产生算符, 来得到单重态和三重态两体产生算符. 以同样的方式, 我们可以耦合产生算符双重态和湮灭算符双重态, 从而产生具有单重态和三重态对称性的激发算符.

在上一节的结果中, 把 :math:`\big\{ a_{q\alpha}^\dagger, a_{q\beta}^\dagger \big\}` 替换为 :math:`\big\{ -a_{q\beta}, a_{q\alpha} \big\}`. 可以得到 **单重态激发算符**

.. math::
    \hat{S}_{pq}^{0,0} = \frac{1}{\sqrt{2}} \big( a_{p\alpha}^\dagger a_{q\alpha} +
        a_{p\beta}^\dagger a_{q\beta} \big)

以及 **三重态激发算符** 的三个分量

.. math::
    \hat{T}_{pq}^{1,1} =&\ a_{p\alpha}^\dagger a_{q\beta} \\
    \hat{T}_{pq}^{1,0} =&\ \frac{1}{\sqrt{2}} \big( a_{p\alpha}^\dagger a_{q\alpha} - a_{p\beta}^\dagger a_{q\beta} \big) \\
    \hat{T}_{pq}^{1,-1} =&\ a_{p\beta}^\dagger a_{q\alpha}

这里所选择的缩放因子和通常使用的一致. 注意这里没有关于指标 :math:`p` 和 :math:`q` 的交换对称性. 因此, 对于 :math:`p = q` 单重和三重激发算符都是非零的. 这里没有对称性可以理解为, 从 :math:`\phi_p` 激发到 :math:`\phi_q` 和从 :math:`\phi_q` 激发到 :math:`\phi_p` 是不同的. 事实上, 激发算符具有如下的对称性

.. math::
    \hat{S}_{pq}^{0,0\dagger} =&\ \hat{S}_{qp}^{0,0} \\
    \hat{T}_{pq}^{1,M\dagger} =&\ (-1)^M \hat{T}_{qp}^{0,-M}

可以通过取共轭验证. 因此通过取共轭我们得到与激发算符相关联的 "反激发" 算符. 自旋张量形式的三重态激发算符和笛卡儿三重态算符有如下简单的线性变换关系

.. math::
    \big( \hat{T}_{pq}^x, \hat{T}_{pq}^y, \hat{T}_{pq}^z \big)
    = \big( \hat{T}_{pq}^{1,1}, \hat{T}_{pq}^{1,-1}, \hat{T}_{pq}^{1,0} \big)
    \begin{pmatrix} -\frac{1}{2} & -\frac{1}{2\I} & 0 \\ \frac{1}{2} & -\frac{1}{2\I} & 0 \\ 0 & 0 & \frac{1}{\sqrt{2}} \end{pmatrix}

注意笛卡儿分量满足简单的 (和单重态激发算符一样的) 共轭对称性 (即 激发-反激发 的对称)

.. math::
    \hat{T}_{pq}^{\mu\dagger} = \hat{T}_{qp}^\mu

其中在取共轭时不会有笛卡儿分量的混合. 而自旋投影表象的 :math:`+, -` 分量在取共轭会混合.

单重态激发算符和轨道激发算符完全一样, 除了一个缩放因子的不同

.. math::
    E_{pq} = \sqrt{2} \hat{S}_{pq}^{0,0} = a_{p\alpha}a_{q\alpha} + a_{p\beta}a_{q\beta}

最后, 我们考虑如何用这些激发算符来表示第二节中的无自旋算符, 纯自旋算符和混合算符. 首先, 哈密顿量 (属于无自旋算符) 可以表示为

.. math::
    \hat{H} = \sum_{pq} h_{pq} E_{pq} + \frac{1}{2} \sum_{pqrs} g_{pqrs} \big( E_{pq} E_{rs} - \delta_{qr} E_{ps} \big)
        + h_{\mathrm{nuc}}

对于纯自旋算符, 我们需要利用三重态算符. 例如, 我们可以把自旋分量算符写为如下形式

.. math::
    \hat{S}_+ =&\ -\sum_p \hat{T}_{pp}^{1,1} \\
    \hat{S}_z =&\ \frac{1}{\sqrt{2}} \sum_p \hat{T}_{pp}^{1,0} \\
    \hat{S}_- =&\ \frac{1}{\sqrt{2}} \sum_p \hat{T}_{pp}^{1,-1}

最后, 混合旋轨耦合算符可以写为

.. math::
    \hat{V}_{SO} = \sum_{pq} \big( V_{pq}^+ \hat{T}_{pq}^{1,-1} + \sqrt{2} V_{pq}^z \hat{T}_{pq}^{1,0}
        -V_{pq}^- \hat{T}_{pq}^{1,1} \big)

总之, 单重态和三重态激发算符可以将轨道基组的二次量子化算符进行紧凑表示. 多于两个基本算符的耦合将在第 6 节讨论.

5 单重态激发算符
^^^^^^^^^^^^^^^^

单重态激发算符在分子电子结构的二次量子化处理中十分重要. 这些算符是酉群 (unitary group) 的生成元, 满足和 :math:`n\times n` 矩阵 :math:`\bm{E}_{pq}` 相同的对易关系

.. math::
    [E_{mn}, E_{pq}] = E_{mq}\delta_{pn} - E_{pn}\delta_{mq}

注意这里是说, 两个 :math:`E_{mn}` 的对易子给出 :math:`E_{mq}` 和 :math:`E_{pn}` 的线性组合, 还是属于 :math:`E_{mn}` 的矢量空间, 所以构成李代数. 这个李代数是酉群的李代数. :math:`n\times n` 矩阵 :math:`\bm{E}_{pq}` 是这个李代数的一个矩阵表示. 其中下标 :math:`pq` 是表示李代数元的指标, 不是矩阵元指标. 对于给定的 :math:`pq`, :math:`\bm{E}_{pq}` 代表一个矩阵, 这个矩阵是 :math:`n\times n` 的, 其中 :math:`n` 是 :math:`mnpq` 指标所能取的数的个数. 这个矩阵 :math:`\bm{E}_{pq}` 定义为, 除了第 :math:`p` 行第 :math:`q` 列为 1, 其余元素都为零. 称为 **矩阵单元**. 下面的对易子也是有用的

.. math::
    [E_{mn}, a_{p\sigma}^\dagger] =&\ \delta_{np}a_{m\sigma}^\dagger \\
    [E_{mn}, a_{p\sigma}] =&\ -\delta_{mp}a_{n\sigma} \\
    [E_{mn}, e_{pqrs}] =&\ \delta_{pn}e_{mqrs} - \delta_{mq}e_{pnrs} + \delta_{rn}e_{pqms}-\delta_{ms}e_{pqrn}

作为一个例子, 我们考虑单重态激发算符在简单双电子系统的作用. 通过代入和展开, 我们可以得到如下对易关系

.. math::
    \big[ E_{pq}, \hat{Q}_{rs}^{S,M} \big] = \hat{Q}_{ps}^{S,M} \delta_{qr} + \hat{Q}_{rp}^{S,M}\delta_{sq}

注意这个式子中, :math:`p` 和 :math:`q` 可以一样也可以不一样. 下面利用这个式子做一些计算, 从这里开始, 我们假设将电子从一个轨道 :math:`\phi_q` 激发到和 :math:`\phi_q` 不同的轨道 :math:`\phi_p`. 也就是说, 后面的 :math:`pq` 将代表不同的指标. 两个轨道都假定是非简并的. 初始的闭壳层态为

.. math::
    \hat{Q}_{qq}^{0,0} |\mathrm{vac}\rangle = \sqrt{2} a_{q\alpha}^\dagger a_{q\beta}^\dagger |\mathrm{vac}\rangle

将激发算符作用到这个态, 我们得到开壳层单重态

.. math::
    E_{pq}\hat{Q}_{qq}^{0,0} |\mathrm{vac}\rangle =
        \big[ E_{pq}, \hat{Q}_{qq}^{0,0} \big] |\mathrm{vac}\rangle =
        \big( \hat{Q}_{pq}^{0,0}\delta_{qq} + \hat{Q}_{pq}^{0,0}\delta_{qp} \big) |\mathrm{vac}\rangle =
        2 \hat{Q}_{pq}^{0,0} |\mathrm{vac}\rangle

这个态在 :math:`\phi_p` 有一个电子, 在 :math:`\phi_q` 有另一个电子

.. math::
    2 \hat{Q}_{pq}^{0,0} |\mathrm{vac}\rangle = \sqrt{2} \left(
        a_{p\alpha}^\dagger a_{q\beta}^\dagger -
        a_{p\beta}^\dagger a_{q\alpha}^\dagger \right) |\mathrm{vac}\rangle

在上面的推导中, 我们使用了对易关系 :math:`\big[ E_{pq}, \hat{Q}_{rs}^{S,M} \big]` 和单重态两体产生算符的交换对称性. 下面, 我们用同样的激发算符再作用一次

.. math::
    E_{pq}2 \hat{Q}_{pq}^{0,0} |\mathrm{vac}\rangle =
        2 \big[ E_{pq}, \hat{Q}_{pq}^{0,0} \big] |\mathrm{vac}\rangle =
        2 \big( \hat{Q}_{pq}^{0,0}\delta_{pq} + \hat{Q}_{pp}^{0,0}\delta_{qq} \big) |\mathrm{vac}\rangle =
        2 \hat{Q}_{pp}^{0,0} |\mathrm{vac}\rangle

最终这个态是一个闭壳层双激发态, 它的两个电子都在 :math:`\phi_p`. 进一步再用同样的激发算符作用的话, 会湮灭这个态, 因为不再有电子可以从 :math:`\phi_q` 激发.


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
    

第三章 散射理论 (B)
===================

第三节 S 矩阵的对称性
---------------------

这一节我们考虑在各种对称性下 :math:`S` 具有不变性的具体含义, 以及为了保证这样的不变性, 哈密顿量应该满足的条件.

1 S 矩阵的洛伦兹不变性的意义
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

对任意固有正时洛伦兹变换 :math:`x \to \Lambda x + a`, 我们可以定义幺正算符 :math:`U(\Lambda, a)`, 通过指定它对入态或出态的作用, 就像 :eq:`multi-trans` 式的变换那样. 当我们说一个理论是洛伦兹不变的, 其意义是, 同样的 :math:`U(\Lambda, a)` 按照 :eq:`multi-trans` 的方式作用于入态和出态上. (这里的意思是, 如果不具有洛伦兹不变性, 作用于入态的出态的 :math:`U(\Lambda, a)` 可以不一样, 但都按照 :eq:`multi-trans` 的方式变换. 洛伦兹不变性的核心在于, 不仅要按照相同方式变换, 对不同的态, 所考虑的 :math:`U(\Lambda, a)` 也是一样的. ) 由于算符 :math:`U(\Lambda, a)` 是幺正的, 我们有

.. math:: 
    S_{\beta\alpha} = (\psi_\beta^-, \psi_\alpha^+) = \big( U(\Lambda, a) \psi_\beta^-, U(\Lambda, a) \psi_\alpha^+ \big)

注意这里 :math:`U(\Lambda, a)` 的幺正性保证 :math:`U^\dagger = U^{-1}`, 因此可以在中间插入 :math:`1 = U^{-1} U = U^\dagger U`. 所以上式第二个等号是利用幺正性. 但是第二个等号也暗含了同样的 :math:`U(\Lambda, a)` 作用于入态和出态上, 即洛伦兹不变性. 这里的关键是, 一开始 :math:`S_{\beta\alpha}` 只是按照一个矩阵定义的, 也就是说定义的是一堆数. 这堆数是否构成张量还是不明确的. 也就是说, 当 :math:`U(\Lambda, a)` 作用于入态和出态上后, 得到新的态, 这些新的态可以按照上式定义一个 :math:`S_{\beta\alpha}`, 也可以按照它自己作为入态和出态定义 :math:`S_{\beta\alpha}` (其中后者是严格按照定义的, 是必须遵守的). 我们不能保证这两者是一样的. 这里当然要以定义为准, 也就是上面的推导都是假设 :math:`S_{\beta\alpha}` 已经构成一个张量, 才能用取内积之类的运算. 这两者是否一样是需要检查的.

因此通过 :eq:`multi-trans` 我们得到了 :math:`S` 矩阵的洛伦兹不变性 (事实上是洛伦兹协变性): 对任意的洛伦兹变换 :math:`\xtensor{\Lambda}{^\mu}{_\nu}` 和平移 :math:`a^\mu`,

.. math:: 
    &\ S_{p'_1,\sigma'_1,n'_1;p'_2,\sigma'_2,n'_2;\cdots;p_1,\sigma_1,n_1;p_2,\sigma_2,n_2;\cdots} \\
    =&\ \exp\big( \I a_\mu \xtensor{\Lambda}{^\mu}{_\nu} ({p'}^\nu_1+{p'}^\nu_2+\cdots - p^\nu_1 - p^\nu_2 -\cdots) \big) \\
    &\ \times \sqrt{\frac{(\Lambda p_1)^0(\Lambda p_2)^0\cdots (\Lambda p'_1)^0(\Lambda p'_2)^0\cdots }{p_1^0p_2^0\cdots {p'}^0_1{p'}^0_2\cdots}} \\
    &\ \times \sum_{\overline{\sigma}_1\overline{\sigma}_2\cdots}
        D^{(j_1)}_{\overline{\sigma}_1\sigma_1} \big( W(\Lambda, p_1) \big)
        D^{(j_2)}_{\overline{\sigma}_2\sigma_2} \big( W(\Lambda, p_2) \big) \cdots \\
    &\ \times \sum_{\overline{\sigma}'_1\overline{\sigma}'_2\cdots}
        D^{(j'_1)*}_{\overline{\sigma}'_1\sigma'_1} \big( W(\Lambda, p'_1) \big)
        D^{(j'_2)*}_{\overline{\sigma}'_2\sigma'_2} \big( W(\Lambda, p'_2) \big) \cdots \\
    &\ \times S_{\Lambda p'_1,\overline{\sigma}'_1,n'_1;\Lambda p'_2,\overline{\sigma}'_2,n'_2;\cdots;
        \Lambda p_1,\overline{\sigma}_1,n_1;\Lambda p_2,\overline{\sigma}_2,n_2;\cdots}
    :label: s-matrix-invar-def

(撇号用来区分终态粒子和初态粒子, 上划线用来区分求和变量. ) 特别地, 由于等号左边和 :math:`a^\mu` 无关, 因此等号右边也必须和 :math:`a^\mu` 无关. 这就涉及到等号右边第一个因子, 就有

.. math:: 
    {p'}^\nu_1+{p'}^\nu_2+\cdots - p^\nu_1 - p^\nu_2 -\cdots = 0

因此, :math:`S` 矩阵为零除非四动量守恒. 注意上式是矢量等式, 表示系统总四动量的各个分量, 对于初态和终态而言都必须相等. 如果不相等, 那么等式在任一 :math:`a^\mu` 下成立的唯一办法就是左右两边的 :math:`S` 矩阵元都为零. 因此我们的结论是, 要么 :math:`S` 矩阵元为零, 要么四动量 (即三动量和能量) 守恒. 因此我们可以把 :math:`S` 矩阵中表示粒子间相互作用的部分 (也就是减去 :math:`\delta(\beta - \alpha)` 的部分) 写成如下形式

.. math:: 
    S_{\beta\alpha} - \delta(\beta - \alpha) = -2\pi \I M_{\beta\alpha} \delta^4(p_\beta - p_\alpha)
    :label: s-matrix-delta

(但是, 在下一章我们将发现, 振幅 :math:`M_{\beta\alpha}` 本身也包括其他 delta 函数因子) 注意这里按照第二节开头的讨论, 如果无相互作用, :math:`S_{\beta\alpha} = \delta(\beta - \alpha)`. 这里实际上的结论是 :math:`S_{\beta\alpha}` 可以有一个 :math:`\delta^4(p_\beta - p_\alpha)` 因子. 由于 :math:`\delta(\beta - \alpha)` 也相当于有 :math:`\delta^4(p_\beta - p_\alpha)` 因子, 因此这里把 :math:`\delta(\beta - \alpha)` 提出来并没有本质变化. :math:`-2\pi \I` 因子的引入也是任意的, 有没有这个因子只是意味着将待定参数 :math:`M_{\beta\alpha}` 重定义. :math:`\delta(\beta - \alpha)` 因子也只是将 :math:`\beta = \alpha` 的 :math:`M_{\beta\alpha}` 再重定义. 因此形式上写成这样没有任何问题.

:eq:`s-matrix-invar-def` 应该被认为是 :math:`S` 矩阵的洛伦兹不变性的意义的定义, 而不是一个定理. 因为只有对某些哈密顿量的特殊选择, 才存在同时以 :eq:`multi-trans` 方式作用于入态和出态的幺正算符. 我们需要推出保证 :math:`S` 矩阵洛伦兹不变性的哈密顿量所需满足的条件.

为此, 我们考虑 :eq:`s-op-def` 定义的 :math:`S` 算符

.. math:: 
    S_{\beta\alpha} = (\phi_\beta, S\phi_\alpha)

由于我们已经在第二章定义了自由粒子态 :math:`\phi_\alpha`, 它们构成非齐次洛伦兹群的一个表示, 因此我们总可以定义一个幺正算符 :math:`U_0(\Lambda, a)`, 它可以诱导出 :eq:`s-matrix-invar-def` 的变换

.. math:: 
    U_0(\Lambda, a)\phi_{p_1,\sigma_1,n_1;p_2,\sigma_2,n_2;\cdots} =&\ 
        \exp \big( -\I a_\mu \xtensor{\Lambda}{^\mu}{_\nu}(p^\nu_1 + p^\nu_2+\cdots) \big) \\
        &\ \times \sqrt{\frac{(\Lambda p_1)^0(\Lambda p_2)^0\cdots }{p_1^0p_2^0\cdots}} 
        \sum_{\sigma'_1\sigma'_2\cdots} D^{(j_1)}_{\sigma'_1\sigma_1}\big( W(\Lambda, p_1) \big)
            D^{(j_2)}_{\sigma'_2\sigma_2}\big( W(\Lambda, p_2) \big) \cdots \\
        &\ \times \phi_{\Lambda p_1,\sigma'_1,n_1;\Lambda p_2, \sigma'_2, n_2;\cdots}
    :label: u0-act-phi

这样如果这个幺正算符与 :math:`S` 对易, :eq:`s-matrix-invar-def` 就可以成立. 即 :eq:`s-matrix-invar-def` 成立的条件为

.. math:: 
    U_0(\Lambda, a)^{-1} S U_0(\Lambda, a) = S

注意这里的细节如下. :eq:`u0-act-phi` 可以记作

.. math:: 
    U_0\phi_\alpha = \sum_{\overline{\alpha}} u_{0\alpha\overline{\alpha}}\phi_{\Lambda \overline{\alpha}}

其中 :math:`u_{0\alpha\overline{\alpha}}` 代表一堆系数.

于是 :eq:`s-matrix-invar-def` 右边相当于

.. math:: 
    &\ \sum_{\overline{\alpha'}} u_{0\alpha'\overline{\alpha'}}^* \sum_{\overline{\alpha}} u_{0\alpha\overline{\alpha}} (\phi_{\Lambda \overline{\alpha'}}, S \phi_{\Lambda \overline{\alpha}}) \\
    =&\ (U_0\phi_\alpha', S U_0\phi_\alpha) = (\phi_\alpha', U_0^\dagger S U_0\phi_\alpha)

注意右边 :math:`U_0` 在 :math:`S` 后面, 因为 :math:`U_0` 直接作用于 :math:`\phi_\alpha` 可以得到一堆系数, 这些系数不是算符, 可以直接拿到内积符号外面. :eq:`s-matrix-invar-def` 左边则是

.. math:: 
    (\phi_\alpha', S \phi_\alpha)

若要左右相等, 由于 :math:`\alpha, \alpha'` 是任意基组, 只能有

.. math:: 
    U_0^\dagger S U_0 = S
    :label: su-commute

又由于洛伦兹变换是幺正变换, 有 :math:`U_0^\dagger = U_0^{-1}`. 因此 :math:`U_0(\Lambda, a)^{-1} S U_0(\Lambda, a) = S`. 其实这里绕一大圈, 本质上就是说, 在洛伦兹变换下, 考虑这个式子的变换 :math:`(\phi_\beta, S\phi_\alpha)` 应该有对应的矢量变换 :math:`\phi_\beta \to U_0\phi_\beta`, :math:`\phi_\alpha \to U_0 \phi_\alpha`, 和算符变换 :math:`S \to U_0 S U_0^{-1}`. 那么要求它不变也就是要求这个算符变换不改变原来的算符.

这个条件也可以以无穷小洛伦兹变换来表示. 正如 2.4 节那样, 存在厄米算符的集合, 包括动量 :math:`\bm{P}_0`, 角动量 :math:`\bm{J}_0`, 推进生成元 :math:`\bm{K}_0` 和 :math:`H_0`. 当它们作用于自由粒子态时, 一起生成了非齐次洛伦兹变换的无穷小版本. :eq:`s-matrix-invar-def` 等价于说, :math:`S` 矩阵不受这些变换的影响. 或者换句话说, :math:`S` 算符和这些生成元对易:

.. math:: 
    [H_0, S] = [\bm{P}_0, S] = [\bm{J}_0, S] = [\bm{K}_0, S] = 0
    :label: s-hpjk-commute

注意这里, 之所以 :eq:`s-matrix-invar-def` 等价于 :math:`S` 矩阵不受这些变换的影响, 是因为 :math:`S` 矩阵元 :math:`S_{\alpha\beta}` 是定义为 :math:`S` 算符在 :math:`\phi_\alpha, \phi_\beta` 的矩阵元. 当洛伦兹变换作用后, 这些态变为 :math:`\phi_{\alpha'}, \phi_{\beta'}`, 而矩阵仍定义为 :math:`S` 和它们之间的矩阵元. 因此等价于要求 :math:`S` 不变, 因此也就是说 :math:`S` 矩阵元不变 (因为基底在洛伦兹变换下会改变, 矩阵元的数值在不同的基底下当然是应该变化的, 但是它应该对应于同一个算符在新的基底下的矩阵元. 也就是说, 如果 :math:`S` 不具有洛伦兹不变性, 那么新的矩阵元是 :math:`U_0 S U_0^{-1}` 在变换后的 :math:`U_0 \phi_\alpha, U_0\phi_\beta` 的矩阵元. 而如果 :math:`S` 具有洛伦兹不变性, 则新的矩阵元是 :math:`S` 在变换后的 :math:`U_0 \phi_\alpha, U_0\phi_\beta` 的矩阵元, 或者说洛伦兹不变的条件是 :math:`S = U_0 S U_0^{-1}`).

注意 :eq:`s-hpjk-commute` 可由 :eq:`su-commute` 证明如下. 因为 :math:`U_0` 是幺正算符, 因此 :eq:`su-commute` 给出 (考虑 :math:`U_0` 为无穷小的情况)

.. math:: 
    0 = [S, U_0] =&\ \left[ S, 1 + \frac{1}{2} \I \xtensor{\omega}{^\rho}{_\sigma}\xtensor{J}{_\rho}{^\sigma}
        - \I \epsilon^\rho P_\rho + \cdots \right] \\
        =&\ \frac{1}{2} \I \xtensor{\omega}{^\rho}{_\sigma} [S, \xtensor{J}{_\rho}{^\sigma}] 
            - \I \epsilon^\rho [S, P_\rho] + \cdots

因为 :math:`\xtensor{\omega}{^\rho}{_\sigma}` 和 :math:`\epsilon^\rho` 可以独立地任取, 因此上式意味着

.. math:: 
    [S, \xtensor{J}{_\rho}{^\sigma}] = [S, P_\rho] = 0

综上所述, 我们想要讨论 :math:`S` 的洛伦兹不变性, 也就是要证明 :eq:`s-hpjk-commute`. 下面的任务就是研究 :math:`S` 和这些自由粒子态算符的对易关系.

2 S 矩阵和单粒子态算符的对易关系
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

由于算符 :math:`H_0, \bm{P}_0, \bm{J}_0` 和 :math:`\bm{K}_0` 产生 :math:`\phi_\alpha` 的无穷小非齐次洛伦兹变换, 因此它们自动满足 [定理2-25] 的对易关系

.. math:: 
    [J_0^i, J_0^j] =&\ \I \epsilon_{ijk}J_0^k,\quad [J_0^i, K_0^j] = \I \epsilon_{ijk}K_0^k,\quad [K_0^i, K_0^j]= -\I \epsilon_{ijk}J_0^k,\\
    [J_0^i, P_0^j] =&\ \I \epsilon_{ijk}P_0^k,\quad [K_0^i, P_0^j] = -\I H_0\delta_{ij},\quad [P_0^i, P_0^j] = 0, \\
    [K_0^i, H_0] =&\ -\I P_0^i,\quad [J_0^i, H_0] = [P_0^i, H_0] = [H_0, H_0] = 0

其中 :math:`i, j, k` 等取 1,2,3, :math:`\epsilon_{ijk}` 是满足 :math:`\epsilon_{123} = +1` 是全反对称量. 注意这里的下标零是强调这些算符是作用于自由粒子态 :math:`\phi_\alpha` 的.

以同样的方式, 我们可以定义 "精确生成元" 的集合, 包括算符 :math:`\bm{P}, \bm{J}, \bm{K}` 和 :math:`H`, 它们作用于入态的时候, 生成 :eq:`multi-trans` 的变换. (根据 :eq:`s-matrix` 对应的讨论, 我们已经指出, 产生对出态进行变换的变换的算符和对入态的是一样的, 这一点虽然不显然但是仍然是成立的. ) 群结构告诉我们这些精确算符满足同样的对易关系:

.. math:: 
    [J^i, J^j] =&\ \I \epsilon_{ijk}J^k,\quad [J^i, K^j] = \I \epsilon_{ijk}K^k,\quad [K^i, K^j]= -\I \epsilon_{ijk}J^k,\\
    [J^i, P^j] =&\ \I \epsilon_{ijk}P^k,\quad [K^i, P^j] = -\I H\delta_{ij},\quad [P^i, P^j] = 0, \\
    [K^i, H] =&\ -\I P^i,\quad [J^i, H] = [P^i, H] = [H, H] = 0
    :label: general-jphk-commute

注意这里仍然不明确, 因为 :eq:`multi-trans` 式是自由粒子的变换. 所以整个体系我们并没有说明对一般的态的变换是什么. (后面将看到, 我们是通过别的假定来确认这些关系)

事实上在几乎所有已知的场论中, 相互作用的效果是为哈密顿量增加了一个相互作用项 :math:`V`, 而动量和角动量均不变

.. math:: 
    H = H_0 + V, \quad \bm{P} = \bm{P}_0, \quad \bm{J} = \bm{J}_0

(唯一已知的例外是拓扑扭结场论 (topologically twisted fields), 比如那些具有磁单极子的理论, 其中态的角动量依赖于相互作用. ) 上式暗示了, 我们如果假定相互作用和自由粒子动量和角动量算符对易, 即

.. math:: 
    [V, \bm{P}_0] = [V, \bm{J}_0] = 0

就可以推出 :eq:`general-jphk-commute` 中的如下几条关系

.. math:: 
    [J^i, J^j] =&\ \I \epsilon_{ijk}J^k,\quad [J^i, P^j] = \I \epsilon_{ijk}P^k,\quad [P^i, P^j] = 0, \\
    \quad [J^i, H] =&\ [P^i, H] = 0

从李普曼-施温格方程 :eq:`psi-phi-v` 或者其等价形式 :eq:`psi-pm-def-omega` 容易看出, 当作用于入态 (和出态) 时生成空间平移和空间旋转的算符事实上就是 :math:`\bm{P}_0` 和 :math:`\bm{J}_0`. 并且, 我们也容易看出 :math:`\bm{P}_0` 和 :math:`\bm{J}_0` 和 [定理3-3] 定义的算符 :math:`U(t, t_0)` 对易, 因此 :math:`\bm{P}_0` 和 :math:`\bm{J}_0` 也就和算符 :math:`S = U(\infty, -\infty)` 对易. 更进一步, 我们知道 :math:`S` 和 :math:`H_0` 对易, 因为在 :eq:`s-matrix-e-delta` 中, 等式右边两项都含有意味着能量守恒的 delta 函数. (某算符保持能量守恒即该算符和能量算符即 :math:`H_0` 对易. ) 因此, 接下来我们只需要证明 :math:`S` 和 :math:`\bm{K}_0` 对易.

另一方面, 我们并不能让推进生成元 :math:`\bm{K}` 和自由粒子的推进生成元 :math:`\bm{K}_0` 相等, 因为如果假定 :math:`\bm{K} = \bm{K}_0`, 则根据

.. math::
    [K^i, P^j] = -\I H\delta_{ij}, \quad [K_0^i, P_0^j] = -\I H_0\delta_{ij}

则会推出 :math:`H = H_0`. 当存在相互作用时, 这一定不可能是对的. 因此, 当我们给 :math:`H_0` 加上 :math:`V` 的时候, 我们必须给推进生成元也加上修正 :math:`\bm{W}`, 即

.. math::
    \bm{K} = \bm{K}_0 + \bm{W}

在剩下的对易关系中, 我们考虑

.. math::
    [K^i, H] =&\ [K_0^i + W^i, H_0 + V] = -\I P^i = -\I P_0^i \\
        =&\ [K_0^i, H_0] + [K_0^i, V] + [W^i, V] + [W^i, H_0] \\
    0 =&\ [K_0^i, V] + [W^i, V] + [W^i, H_0] = K_0^i, V] + [W^i, H]

于是我们得到

.. math::
    [\bm{K}_0, V] = -[\bm{W}, H]
    :label: kvwh-cond

条件 :eq:`kvwh-cond` 本身并不给出重要信息. 因为, 对任意 :math:`V` 我们总可以定义 :math:`\bm{W}`, 通过指定它在 :math:`H` 本征态 :math:`\psi_\alpha` 和 :math:`\psi_\beta` 之间的矩阵元为

.. math::
    (\psi_\beta, \bm{W} \psi_\alpha) = \frac{(\psi_\beta, [\bm{K}_0, V] \psi_\alpha)}{E_\beta - E_\alpha}

[注意这里 Weinberg 书上等式右边似乎多了一个负号] 于是

.. math::
    (\psi_\beta, [\bm{W}, H] \psi_\alpha) =&\ (\psi_\beta, \bm{W} H \psi_\alpha) - (\psi_\beta, H \bm{W} \psi_\alpha) \\
        =&\ (E_\alpha - E_\beta) (\psi_\beta, \bm{W} \psi_\alpha) \\
        =&\ -(\psi_\beta, [\bm{K}_0, V] \psi_\alpha)

即得到 :eq:`kvwh-cond`. 注意一个理论的洛伦兹不变性的关键, 不在于是否存在一组生成元满足 :eq:`general-jphk-commute`, 而在于这些算符必须以相同的方式作用于入态的出态. 如果仅仅找到一个满足 :eq:`kvwh-cond` 的算符 :math:`\bm{K}` 并不够. 但是, 如果我们提出一个附加要求, 即 :math:`\bm{W}` 的矩阵元应该是能量的光滑函数, 那么 :eq:`kvwh-cond` 将变得有意义. 特别地, 我们不能有 :math:`(E_\beta - E_\alpha)^{-1}` 形式的奇点. 现在我们将证明, :eq:`kvwh-cond` 和一个合适的关于 :math:`\bm{W}` 的光滑条件一起, 可以导出剩余的洛伦兹不变性条件 :math:`[\bm{K}_0, S] = 0`.

为了证明这一点, 考虑 :math:`\bm{K}_0` 和 [定理3-3] 定义的算符 :math:`U(t, t_0)`, 当 :math:`t, t_0` 为有限值的情况. 利用 :math:`[K_0^i, H_0] = -\I P_0^i` 以及 :math:`\bm{P}_0` 和 :math:`H_0` 对易, 和 [引理2-29-1] 即 (注意其中 :math:`[H_0, \bm{K}_0]` 和 :math:`H_0` 对易)

.. math::
    \E^{t \I H_0} \bm{K}_0 \E^{-t \I H_0} =&\ \bm{K}_0 + \I [H_0, \bm{K}_0] t = \bm{K}_0 + \I^2 t \bm{P}_0 \\
    [\exp(\I H_0 t), \bm{K}_0 ] =&\ \I^2 t \bm{P}_0 \exp(\I H_0 t) = -t \bm{P}_0 \exp(\I H_0 t)

即

.. math::
    [\bm{K}_0, \exp(\I H_0 t)] = t \bm{P}_0 \exp(\I H_0 t)

而由 :math:`[K^i, H] = -\I P^i` (等价于 :eq:`kvwh-cond`) 得

.. math::
    [\bm{K}, \exp(\I H t)] = t \bm{P} \exp(\I H t) =  \bm{P}_0 \exp(\I H t)

因此, 在 :math:`\bm{K}_0` 和 :math:`U` 的对易子中, :math:`\bm{P}_0` 相互抵消, 即

.. math::
    [\bm{K}_0, U(\tau, \tau_0)] =&\ [\bm{K}_0, \exp(\I H_0 \tau) \exp(-\I H(\tau -\tau_0)) \exp(-\I H_0\tau_0)] \\
        =&\ [\bm{K}_0, \exp(\I H_0 \tau)] \exp(-\I H(\tau -\tau_0)) \exp(-\I H_0\tau_0) \\
            &\ + \exp(\I H_0 \tau) [\bm{K}_0, \exp(-\I H(\tau -\tau_0))] \exp(-\I H_0\tau_0) \\
        &\ + \exp(\I H_0 \tau) \exp(-\I H(\tau -\tau_0)) [\bm{K}_0, \exp(-\I H_0\tau_0)] \\
    =&\ \tau \bm{P}_0 \exp(\I H_0 \tau) \exp(-\I H(\tau -\tau_0)) \exp(-\I H_0\tau_0) \\
        &\ + \exp(\I H_0 \tau) [\bm{K}_0, \exp(-\I H(\tau -\tau_0))] \exp(-\I H_0\tau_0) \\
        &\ + \exp(\I H_0 \tau) \exp(-\I H(\tau -\tau_0)) \big( -\tau_0 \bm{P}_0 \exp(-\I H_0 \tau_0) \big) \\
    =&\ (\tau - \tau_0) \bm{P}_0 \exp(\I H_0 \tau) \exp(-\I H(\tau -\tau_0)) \exp(-\I H_0\tau_0) \\
        &\ + \exp(\I H_0 \tau) [\bm{K}_0, \exp(-\I H(\tau -\tau_0))] \exp(-\I H_0\tau_0)

其中

.. math::
    [\bm{K}_0, \exp(-\I H(\tau -\tau_0))] =&\ [\bm{K} - \bm{W}, \exp(-\I H(\tau -\tau_0))] \\
        =&\ -(\tau -\tau_0) \bm{P}_0 \exp(-\I H(\tau -\tau_0)) - [\bm{W}, \exp(-\I H(\tau -\tau_0))]

于是

.. math::
    [\bm{K}_0, U(\tau, \tau_0)] = -\exp(\I H_0 \tau) [\bm{W}, \exp(-\I H(\tau -\tau_0))] \exp(-\I H_0\tau_0)

[在 :eq:`kvwh-cond` 中令 :math:`V = 0` (此时 :math:`H = H_0`) 得 :math:`[\bm{W}, H_0] = 0`. 这个不对. 因为此时 :math:`\bm{W}` 也为零, 因此此式相当于什么也没给出. ] 所以不能证明 :math:`\bm{W}` 和 :math:`H_0` 对易. 只能令

.. math::
    \bm{W}(t) \equiv \exp(\I H_0 t) \bm{W} \exp(-\I H_0 t)

.. math::
    [\bm{K}_0, U(\tau, \tau_0)] =&\ -\exp(\I H_0 \tau) [\bm{W}, \exp(-\I H(\tau -\tau_0))] \exp(-\I H_0\tau_0) \\
        =&\ -\exp(\I H_0 \tau) \bm{W} \exp(-\I H(\tau -\tau_0)) \exp(-\I H_0\tau_0)  \\
            &\ + \exp(\I H_0 \tau) \exp(-\I H(\tau -\tau_0)) \bm{W} \exp(-\I H_0\tau_0)  \\
        =&\ -\bm{W}(\tau) \exp(\I H_0 \tau) \exp(-\I H(\tau -\tau_0)) \exp(-\I H_0\tau_0)  \\
            &\ + \exp(\I H_0 \tau) \exp(-\I H(\tau -\tau_0)) \exp(-\I H_0\tau_0) \bm{W}(\tau_0) \\
        =&\ -\bm{W}(\tau) U(\tau, \tau_0) + U(\tau, \tau_0) \bm{W}(\tau_0)
    :label: ku-wu-commute

如果 :math:`\bm{W}` 在 :math:`H_0` 本征态之间的矩阵元是能量的足够光滑的函数, 则当 :math:`t \to \pm \infty` :math:`\bm{W}(t)` 在能量本征态的光滑叠加态之间的矩阵元为零. 因此上式给出

.. math::
    0 = [\bm{K}_0, U(-\infty, \infty)]  = [\bm{K}_0, S]

注意, :math:`\bm{W}(t)` 在能量本征态的光滑叠加态之间的矩阵元为

.. math::
    \int \D E_\alpha \D E_\beta \exp(-\I (E_\alpha - E_\beta) t) W(E_\alpha, E_\beta)

而这相当于对 :math:`W(E_\alpha, E_\beta)` 作傅里叶变换, 得到 :math:`\tilde{W}(t)`. 当 :math:`t \to \pm \infty`, 其结果是 :math:`\tilde{W}(\pm \infty)` 对于足够光滑函数, 它的傅里叶变换在无穷远处应该为零. 也就是说, 对于任意函数 :math:`W(E)`, :math:`\exp(-\I E t)` 给每个 :math:`E` 值赋予了相位. 如果对于不同的 :math:`E` 值, 赋予的相位是相关的, 那么它们在积分时就不会相互抵消. 但是当 :math:`t` 非常大, 那么即便 :math:`E` 不是很大, :math:`E` 的很小变化也会使得相位发生很大变化. 这种变化几乎是随机的. 因此就使得积分的不同 :math:`E` 得到得值相互抵消. 从而总积分值为零.

总之, 我们得到的关键结论是: :eq:`kvwh-cond` 和 :math:`\bm{W}` 的矩阵元的光滑条件一起, 保证了在 :math:`t \to \pm \infty` 时 :math:`\bm{W}(t)` 为零, 这进而构成了 :math:`S` 矩阵洛伦兹不变性的充分条件. 其中光滑条件是一个自然满足的条件, 因为它和要求 :math:`V` 的矩阵元使得 :math:`V(t)` 在 :math:`t \to \pm \infty` 为零的条件 (这个条件对于使得 :math:`S` 矩阵的概念本身成立是必须的) 非常相似.

利用 :eq:`ku-wu-commute`, 令 :math:`\tau = 0` 和 :math:`\tau_0 = \mp \infty` 我们还可以证明

.. math::
    \bm{K} \Omega(\mp \infty) = \Omega(\mp \infty) \bm{K}_0

其中 :math:`\Omega(\mp \infty)` 是 :eq:`omega-tau-def` 定义的把自由粒子态 :math:`\phi_\alpha` 变为对应的入态和出态 :math:`\psi_\alpha^\pm` 的算符. 其定义为

.. math::
    \Omega(\tau) \equiv \exp(\I H \tau) \exp(-\I H_0\tau)

而若在 :math:`U(\tau, \tau_0)` 中令 :math:`\tau = 0` 得

.. math::
    U(0, \tau_0) = \exp(\I H\tau_0) \exp(-\I H_0\tau_0) = \Omega(\tau_0)

因此由 :eq:`ku-wu-commute` 得

.. math::
    [\bm{K}_0, \Omega(\tau)] = -\bm{W} \Omega(\tau) + \Omega(\tau) \bm{W}(\tau)

当 :math:`\tau \to \mp \infty`, :math:`\bm{W}(\tau) \to 0`, 于是

.. math::
    \bm{K}_0 \Omega(\mp \infty) + \bm{W} \Omega(\mp \infty) =&\ \Omega(\mp \infty)\bm{K}_0 \\
    \bm{K} \Omega(\mp \infty) =&\ \Omega(\mp \infty)\bm{K}_0

另一方面, 由于 :math:`\bm{P} = \bm{P}_0, \bm{J} = \bm{J}_0`, 而它们又都和 :math:`H_0, H` 对易, 则有

.. math::
    \bm{P} \Omega(\mp \infty) =&\ \Omega(\mp \infty)\bm{P}_0 \\
    \bm{J} \Omega(\mp \infty) =&\ \Omega(\mp \infty)\bm{J}_0

最后, 由于所有的 :math:`\phi_\alpha` 和 :math:`\psi_\alpha^\pm` 都分别是 :math:`H_0` 和 :math:`H` 的本征态, 具有相同的本征值 :math:`E_\alpha`, 因此有

.. math::
    H\Omega(\mp \infty) = \Omega(\mp \infty) H_0

上式的证明是利用 :eq:`psi-pm-def-omega` 即

.. math::
    \psi_\alpha^\pm = \Omega(\mp \infty) \phi_\alpha

于是

.. math::
    H\Omega(\mp \infty) \phi_\alpha =&\ H \psi_\alpha^\pm = E_\alpha \psi_\alpha^\pm \\
    \Omega(\mp \infty) H_0 \phi_\alpha =&\ E_\alpha \Omega(\mp \infty) \phi_\alpha = E_\alpha \psi_\alpha^\pm

上述关于 :math:`\bm{K}, \bm{P}, \bm{J}, H` 与 :math:`\Omega(\mp \infty)` 关系的四式表明, 在我们已经指出的假定下, 入态和出态在非齐次洛伦兹变换下的变换就像自由粒子态一样. (这里是说, 这些 :math:`\bm{K}, \bm{P}, \bm{J}, H` 是非齐次洛伦兹变换的生成元, 实际上就代表了非齐次洛伦兹变换对于态的作用. 考虑 :math:`\bm{P} \psi_\alpha^\pm`, 按照上面的式子, 它相当于先用 :math:`\bm{P}_0` 对自由粒子态进行变换, 然后再用 :math:`\Omega(\mp \infty)` 将变换完的态再变为入态和出态. 所以说, 入态和出态在非齐次洛伦兹变换下的变换就像自由粒子态一样.) 另一方面, 由于这些是相似变换 (similarity transformations), 我们现在可以看到, 精确生成元 :math:`\bm{K}, \bm{P}, \bm{J}` 和 :math:`H` 满足和 :math:`\bm{K}_0, \bm{P}_0, \bm{J}_0` 和 :math:`H_0` 相同的对易关系. (这里印证了前面关于 :math:`\bm{K}, \bm{P}, \bm{J}` 和 :math:`H` 的对易关系只是需要证明的一个假设. 现在通过提出一些相应的条件, 这些假设得到了满足. ) 注意这里具体是如下的意思. 一个相似变换 :math:`A'` 定义为可以写成如下形式的变换: :math:`A' = BAB^{-1}`. 而矩阵 :math:`A'` 和 :math:`A` 之间互为相似矩阵. 比如根据关系

.. math::
    \bm{P} \Omega(\mp \infty) = \Omega(\mp \infty)\bm{P}_0

我们就有

.. math::
    \bm{P} = \Omega(\mp \infty)\bm{P}_0 \Omega^{-1}(\mp \infty)

说明 :math:`\bm{P}` 是和 :math:`\bm{P}_0` 相似的变换. 在这种情况下, 可以容易证明对易关系都不会改变. 因此才会说精确生成元满足和自由粒子生成元相同的对易关系. 注意相似矩阵的乘积是原来乘积的相似矩阵:

.. math::
    A'B' = UAU^{-1} UBU^{-1} = UABU^{-1}

因此对易子也只是原来对易子的相似变换.

因此, 为证明 :math:`S` 矩阵的洛伦兹不变性我们并不需要用到包含 :math:`\bm{K}` 的如下三条对易关系

.. math::
    [J^i, K^j] = \I \epsilon_{ijk}K^k,\quad [K^i, K^j]= -\I \epsilon_{ijk}J^k,\quad [K^i, P^j] = -\I H\delta_{ij}

注意我们确实使用了另一条和 :math:`\bm{K}` 有关的对易关系, 即 :math:`[K^i, H] = -\I P^i`.

3 内部对称性
^^^^^^^^^^^^

有许多和洛伦兹不变性无关的各种对称性, 比如核物理中关于交换中子和质子的对称性, 或者粒子和反粒子之间的 "电荷共轭" (charge-conjugation) 对称性. 这些对称性在所有惯性系表现都是一致的. 这些对称变换 :math:`T` 在物理态的希尔伯特空间中相当于一个幺正变换 :math:`U(T)` 的作用. 它导致用于标记粒子类型的指标之间的线性变换

.. math::
    U(T) \psi_{p_1\sigma_1n_1;p_2\sigma_2n_2;\cdots} = \sum_{\overline{n}_1\overline{n}_2\cdots}
        \mathscr{D}_{\overline{n}_1n_1}(T) \mathscr{D}_{\overline{n}_2n_2}(T) \cdots
        \psi_{p_1\sigma_1\overline{n}_1;p_2\sigma_2\overline{n}_2;\cdots}
    :label: ut-n-linear
    
注意这里的 :math:`\mathscr{D}` 和之前的记号没有任何关系. 另外, 这里是线性变换是因为我们只考虑这个内部对称性对应的变换, 还没有说这个系统就具有这样的对称性. 如果具有这种对称性, 那么在这个变换下, 对应的粒子类型的指标 :math:`n` 应该保持不变, 即 :math:`\mathscr{D}` 成为对角矩阵. 但是这里讨论的是一般的内部对称性对应的变换. 无论哪种情况, 它都不可能改变除了 :math:`n` 指标以外的指标. 按照第二章的一般讨论, :math:`U(T)` 必须满足群乘法规则

.. math::
    U(T')U(T) = U(T'T)

其中 :math:`T'T` 是通过先进行变换 :math:`T`, 在进行另一种变换 :math:`T'` 得到的变换.

[定理3-5] 用 :math:`U(T')` 作用于 :eq:`ut-n-linear`, 我们看到矩阵 :math:`\mathscr{D}` 也必须满足同样的规则

.. math::
    \mathscr{D}(T') \mathscr{D}(T) = \mathscr{D}(T'T)

[证明] 考虑

.. math::
    U(T') U(T) \psi_{p_1\sigma_1n_1;p_2\sigma_2n_2;\cdots} =&\ U(T') \sum_{n'_1n'_2\cdots}
        \mathscr{D}_{n'_1n_1}(T) \mathscr{D}_{n'_2n_2}(T) \cdots
        \psi_{p_1\sigma_1n'_1;p_2\sigma_2n'_2;\cdots} \\
    =&\ \sum_{n'_1n'_2\cdots}
        \mathscr{D}_{n'_1n_1}(T) \mathscr{D}_{n'_2n_2}(T) U(T') \cdots
        \psi_{p_1\sigma_1n'_1;p_2\sigma_2n'_2;\cdots} \\
    =&\ \sum_{n'_1n'_2\cdots} \sum_{n''_1n''_2\cdots}
        \mathscr{D}_{n'_1n_1}(T) \mathscr{D}_{n'_2n_2}(T) \mathscr{D}_{n''_1n'_1}(T') \mathscr{D}_{n''_2n'_2}(T')\cdots
        \psi_{p_1\sigma_1n''_1;p_2\sigma_2n''_2;\cdots} \\
    U(T'T) \psi_{p_1\sigma_1n_1;p_2\sigma_2n_2;\cdots} = &\ \sum_{n''_1n''_2\cdots}
        \mathscr{D}_{n''_1n_1}(T'T) \mathscr{D}_{n''_2n_2}(T'T) \cdots
        \psi_{p_1\sigma_1n''_1;p_2\sigma_2n''_2;\cdots}

注意上式中最后两式右边必须相等. 注意右边有关于 :math:`n''_1, n''_2, \cdots` 的求和. 但是由于 关于不同 :math:`n''_1, n''_2, \cdots` 的 :math:`\psi` 是本征态, 它们是线性独立的, 因此只能假定对于不同 :math:`n''_1, n''_2, \cdots` 的每一项都必须相等.

于是对任意的 :math:`n_1, n_2\cdots, n''_1, n''_2, \cdots` 有

.. math::
    \sum_{n'_1n'_2\cdots} \mathscr{D}_{n'_1n_1}(T) \mathscr{D}_{n'_2n_2}(T) \mathscr{D}_{n''_1n'_1}(T') \mathscr{D}_{n''_2n'_2}(T')\cdots
    = \mathscr{D}_{n''_1n_1}(T'T) \mathscr{D}_{n''_2n_2}(T'T) \cdots

因为 :math:`n_1, n_2\cdots, n''_1, n''_2, \cdots` 是可以独立变化的, 因此有

.. math::
    \sum_{n'_1} \mathscr{D}_{n''_1n'_1}(T') \mathscr{D}_{n'_1n_1}(T) = \mathscr{D}_{n''_1n_1}(T'T)

此即

.. math::
    \mathscr{D}(T') \mathscr{D}(T) = \mathscr{D}(T'T)

[定理3-6]

.. math::
    \mathscr{D}^\dagger(T) = \mathscr{D}^{-1}(T)

[证明] 注意 :eq:`ut-n-linear` 式可以写成

.. math::
    U(T) \psi_\alpha = \sum_{\alpha'} \mathscr{D}_{\alpha'\alpha}(T) \psi_{\alpha'}

用 :math:`U(T)` 作用于两个不同的入态或两个不同的出态, 然后将所得的态取标量积, 并使用归一化条件 :eq:`psi-multi-norm` 得

.. math::
    (U(T) \psi_\beta^\pm , U(T) \psi_\alpha^\pm) = \sum_{\alpha'\beta'} \mathscr{D}_{\beta'\beta}^* (T) 
        \mathscr{D}_{\alpha'\alpha} (T) (\psi_{\beta'}^\pm, \psi_{\alpha'}^\pm)

由于 :math:`U(T)` 本身是幺正变换 (在本小节第一段已经提到), 所以

.. math::
    (U(T) \psi_\beta^\pm , U(T) \psi_\alpha^\pm) = (\psi_\beta^\pm , \psi_\alpha^\pm) = \delta(\beta - \alpha)

而又有

.. math::
    (\psi_{\beta'}^\pm, \psi_{\alpha'}^\pm) = \delta(\beta' - \alpha')

因此

.. math::
    \delta(\beta - \alpha) = &\ \sum_{\alpha'\beta'} \mathscr{D}_{\beta'\beta}^* (T) 
        \mathscr{D}_{\alpha'\alpha} (T) \delta(\beta' - \alpha') \\
        =&\ \sum_{\alpha'} \mathscr{D}_{\alpha'\beta}^* (T) \mathscr{D}_{\alpha'\alpha} (T) 
            = \sum_{\alpha'} {(\mathscr{D}^\dagger)}_{\beta\alpha'}(T) \mathscr{D}_{\alpha'\alpha} (T)

也就是说

.. math::
    \mathscr{D}^\dagger(T) \mathscr{D} (T) = 1

[定义3-7] (注意不是定理) 最后, 如果用 :math:`U(T)` 分别作用于一个入态和一个出态, 将得到的态取标量积, 我们就会发现 :math:`\mathscr{D}` 和 :math:`S` 矩阵对易. 这是说

.. math::
    &\ \sum_{\overline{n}_1\overline{n}_2\cdots} \sum_{\overline{n}'_1\overline{n}'_2\cdots}
    \mathscr{D}_{\overline{n}'_1n'_1}^*(T) \mathscr{D}_{\overline{n}'_2n'_2}^*(T)\cdots
    \mathscr{D}_{\overline{n}_1n_1}(T) \mathscr{D}_{\overline{n}_2n_2}(T)\cdots
    S_{p'_1\sigma'_1\overline{n}'_1;p'_2\sigma'_2\overline{n}'_2;\cdots, p_1\sigma_1\overline{n}_1;p_2\sigma_2\overline{n}_2;\cdots}
    \\ =&\ S_{p'_1\sigma'_1n'_1;p'_2\sigma'_2n'_2;\cdots, p_1\sigma_1n_1;p_2\sigma_2n_2;\cdots}

[证明] 首先由 :math:`S` 矩阵定义 :eq:`s-matrix` 有

.. math::
    S_{p'_1\sigma'_1n'_1;p'_2\sigma'_2n'_2;\cdots, p_1\sigma_1n_1;p_2\sigma_2n_2;\cdots} \equiv&\ S_{\alpha'\alpha}
        = (\psi_{\alpha'}^-, \psi_\alpha^+) \\
    S_{p'_1\sigma'_1\overline{n}'_1;p'_2\sigma'_2\overline{n}'_2;\cdots, p_1\sigma_1\overline{n}_1;p_2\sigma_2\overline{n}_2;\cdots} \equiv&\ S_{\overline{\alpha}'\overline{\alpha}} = (\psi_{\overline{\alpha}'}^-, \psi_{\overline{\alpha}}^+)

于是利用 :math:`U(T)` 的幺正性

.. math::
    (\psi_{\alpha'}^-, \psi_\alpha^+) = (U(T)\psi_{\alpha'}^-, U(T)\psi_\alpha^+) )
        = \sum_{\overline{\alpha}'\overline{\alpha}} \mathscr{D}^*_{\overline{\alpha}'\alpha'}
            \mathscr{D}_{\overline{\alpha}\alpha} (\psi_{\overline{\alpha}'}^-, \psi_{\overline{\alpha}}^+)

即得

.. math::
     S_{\alpha'\alpha} = \sum_{\overline{\alpha}'\overline{\alpha}} \mathscr{D}^*_{\overline{\alpha}'\alpha'}
            \mathscr{D}_{\overline{\alpha}\alpha} S_{\overline{\alpha}'\overline{\alpha}}

再一次说明, 这里是一个关于一个理论具有内部对称性 :math:`T` 所代表的不变性的定义 (而不是可以推出的定理). 因为在上述证明中, 我们还必须证明使得入态和出态做 :eq:`ut-n-linear` 变换的是同样的幺正算符 :math:`U(T)`. 如果存在一个 "没有微扰的" (无相互作用的) 变换算符 :math:`U_0(T)` 会对自由粒子态导致这样的变换

.. math::
    U_0(T) \phi_{p_1\sigma_1n_1;p_2\sigma_2n_2;\cdots} = \sum_{\overline{n}_1\overline{n}_2\cdots}
        \mathscr{D}_{\overline{n}_1n_1}(T) \mathscr{D}_{\overline{n}_2n_2}(T) \cdots
        \phi_{p_1\sigma_1\overline{n}_1;p_2\sigma_2\overline{n}_2;\cdots}

并且它还和哈密顿量的自由粒子部分和相互作用部分对易

.. math::
    U_0^{-1}(T)H_0U_0(T) = &\ H_0 \\
    U_0^{-1}(T)V U_0(T) = &\ V

那么, 这就意味着上述要求得到满足. 即使得入态和出态做 :eq:`ut-n-linear` 变换的是同样的幺正算符 :math:`U(T)`. 简要说明如下. 既然这个变换和哈密顿量的自由粒子部分和相互作用部分都对易, 那么它也就和 :math:`H` 和 :math:`H_0` 的任何函数都对易. 那么由于把自由粒子态变为入态和出态的算符就是由 :math:`H, H_0` 的函数构成的 (见 :eq:`psi-pm-def-omega`) , 那么对易的话, 同样的 :math:`U_0` 就可以作用到入态或者出态的前面, 也就是说, 这个变换对于入态和出态的作用都满足上述形式. 换句话说, 按照 Weinberg 的解释, 通过李普曼施温格方程或者 :eq:`psi-pm-def-omega` (并且借助上面的对易的条件), 我们可以发现算符 :math:`U_0(T)` 对入态和出态或者自由粒子态都会导出 :eq:`ut-n-linear` 变换. 因此在这个假定的情况下, 我们可以把 :eq:`ut-n-linear` 中的 :math:`U(T)` 认为是 :math:`U_0(T)`.

其中一种具有特殊物理意义的情况是当 :math:`T` 是一个单参李群的情况, 即 :math:`T` 是单个参数 :math:`\theta` 的函数, 满足

.. math::
    T(\theta')T(\theta) = T(\theta'\theta)

按照第2.2节的讨论, 这种情况下, 对应的希尔伯特空间的算符必须取如下形式

.. math::
    U(T(\theta)) = \exp(\I Q\theta)

其中 :math:`Q` 是一个厄米算符. 类似地, 矩阵 :math:`\mathscr{D}(T)` 应该取如下形式

.. math::
    \mathscr{D}_{n'n} (T(\theta)) = \delta_{n'n} \exp(\I q_n\theta)

其中, :math:`q_n` 是依赖于粒子种类的实数的集合. 注意, 这里既然有了 :math:`Q`, 就暗含了取 :math:`n` 指标标记 :math:`Q` 的本征态, 即要求

.. math::
    U(T(\theta)) \psi_n = \exp(\I Q\theta) \psi_n = \exp(\I q_n \theta)\psi_n

于是 :math:`U(T(\theta))` 不会对 :math:`\psi_n` 的指标进行混合, 因此才会有 :math:`\mathscr{D}` 的 delta 形式.

注意在这个情况下, [定义3-7] 给出

.. math::
    \exp\big(\I (q_{n_1} + q_{n_2} + \cdots - q_{n'_1} - q_{n'_2} - \cdots) \theta \big) S_{p'_1\sigma'_1n'_1;p'_2\sigma'_2n'_2;\cdots, p_1\sigma_1n_1;p_2\sigma_2n_2;\cdots} = S_{p'_1\sigma'_1n'_1;p'_2\sigma'_2n'_2;\cdots, p_1\sigma_1n_1;p_2\sigma_2n_2;\cdots}

于是要么 :math:`q_1 + q_2 + \cdots - q'_1 - q'_2 - \cdots = 0`, 要么 :math:`S_{p'_1\sigma'_1n'_1;p'_2\sigma'_2n'_2;\cdots, p_1\sigma_1n_1;p_2\sigma_2n_2;\cdots} = 0`. 也就是说, :math:`q` 是守恒的, 即 :math:`S_{\alpha'\alpha}` (这里 Weinberg 书的指标有小问题) 为零除非

.. math::
    q_{n_1} + q_{n_2} + \cdots = q_{n'_1} + q_{n'_2} + \cdots

这个守恒律的一个经典的例子是电荷守恒. 另一方面, 所有已知的过程都满足重子数 (baryon number) 守恒 (重子数是重子, 比如质子, 中子和超子 (hyperon) 的数目减去它们的反粒子的数目) 和轻子数 (lepton number) 守恒 (轻子数是电子, :math:`\mu` 子, :math:`\tau` 子和中微子的数目减去它们的反粒子的数目). 但是我们在卷 II 将看到, 人们相信这些守恒律仅仅是非常好的近似. 还有别的这种类型的守恒律被确定为仅是近似的, 比如奇异数 (strangeness) 守恒, 它被引入用来解释一类 Rochester 和 Butler 在 1947 年在宇宙线中发现的一类粒子的相对较长寿命. 比如, 现在被称为 :math:`K^+` 和 :math:`K^0` 的介子被赋予奇异数 :math:`+1`, 而超子 :math:`\Lambda^0, \Sigma^+, \Sigma^0, \Sigma^-` 被赋予奇异数 :math:`-1`, 而更熟知的质子, 中子和 :math:`\pi` 介子 (或者 :math:`\pi` 子) 的奇异数为零. 在强相互作用中奇异数守恒, 解释了为什么奇异粒子总是伴随着另一个奇异粒子产生, 例如反应 :math:`\pi^+ +n \to K^+ + \Lambda^0`, 而奇异粒子衰变为非奇异粒子就相对较慢, 比如 :math:`\Lambda^0 \to p + \pi^-` 和 :math:`K^+ \to \pi^+ + \pi^0`, 它们说明不保持奇异数守恒的相互作用是非常弱的.

生成元不能彼此对易的 "非阿贝尔" 对称性 (也就是不能表示为单参李群的内部对称性) 的一个经典例子是同位旋对称性. 它在1937年根据实验基础被提出, 并显示了和质子和中子之间的作用力类似的质子-质子之间的强作用力的存在. 数学上, 这个群是 SU(2), 它是三维旋转群 SO(3) 的2覆盖群; 它的生成元表示为 :math:`t_i`, 其中 :math:`i = 1,2,3`, 这些生成元满足类似于 :eq:`3d-poin-lie-algebra` 第一式得对易关系

.. math::
    [t_i, t_j] = \I\epsilon_{ijk} t_k

一个体系的同位旋对称性要求粒子构成以一个整数或半整数 :math:`T` 构成的简并多重态, 构成这个简并多重态的有 :math:`2T+1` 个分量, 这些分量由 :math:`t_3` 来区分. 这就像旋转不变性所要求的简并自旋多重态一样. 这包括具有 :math:`T=\frac{1}{2}` 和 :math:`t_3 = \frac{1}{2}, -\frac{1}{2}` 的核子 :math:`p` 和 :math:`n`; 具有 :math:`T = 1` 和 :math:`t_3 = +1,0,-1` 的 :math:`\pi` 子 :math:`\pi^+, \pi^0` 和 :math:`\pi^-`; 以及具有 :math:`T = 0` 和 :math:`t_3 = 0` 的 :math:`\Lambda^0` 超子. 这些例子表明了电子电荷 :math:`Q`, 同位旋第三分量 :math:`t_3` 重子数 :math:`B` 和奇异数 :math:`S` 之间的关系

.. math::
    Q = t_3 + (B+S)/2

这个关系最初是从观测到的选择定则推导出来的, 但是它在 1960 年被 Gell-Mann 和 Ne'eman 解释为嵌入同位旋 :math:`\bm{T}` 和超荷 :math:`Y \equiv B + S` 到更大的但是更破缺的非阿贝尔内部对称性的李代数的结果. 这个内部对称性是基于非阿贝尔群 :math:`SU(3)`. 在第二卷我们将看到, 现在同位旋和 :math:`SU(3)` 对称性被理解为是在强相互作用的现代理论, 量子色动力学中两个或三个最轻的夸克的小质量的附带结果.

同位旋对称性对于粒子之间通过强相互作用的反应的影响, 可以通过和我们熟悉的为推导旋转不变性的推论而发明的方法一样的方法来得到. 特别地, 对于两体反应 :math:`A + B \to C + D`, [定义3-7] 应取如下形式 (忽略除了同位旋以外的指标)

.. math::
    S_{t_{C3}t_{D3},t_{A3}t_{B3}} = \sum_{T, t_3} C_{T_CT_D}(Tt_3;t_{C3}t_{D3})C_{T_AT_B}(Tt_3;t_{A3}t_{B3})S_T

注意这其中 :math:`T` 是总的同位旋量子数, 它在反应过程中应该是守恒的. 而为什么是对不同的 :math:`T` 求和? 因为总的 :math:`T` 和 :math:`T_A, T_B` 有关, 但由于是矢量不是直接相加的关系. 因此确定了 :math:`T_A, T_B`, 并不意味着总同位旋就能确定. 因此要对不同的 :math:`T` 求和, 其中的展开系数 :math:`C_{T_AT_B}(Tt_3;t_{A3}t_{B3})` 也就是要把总同位旋 :math:`T` 和两体同位旋关联起来的系数. 其中 :math:`C_{j_1j_2}(j\sigma;\sigma_1\sigma_2)` 是通常的 Clebsch-Gordan 系数, 它代表从自旋 :math:`j_1` 和 :math:`j_2`, 分别具有第三分量 :math:`\sigma_1` 和 :math:`\sigma_2` 的态构成具有自旋 :math:`j` 和第三分量 :math:`\sigma` 的态的系数. :math:`S_T` 是一个 "约化的" S 矩阵, 它依赖于 :math:`T` 和所有省略的动量和自旋变量, 但并不依赖于同位旋第三分量 :math:`t_{A3}, t_{B3}, t_{C3}, t_{D3}`. 当然这个和所有从同位旋不变性导出的结论一样, 只是一个近似, 因为这个对称性在电磁 (和其他的) 相互作用中并不会被保持. 证实这一点的事实比如, 同样的同位旋多重态的不同成员, 比如 :math:`p` 和 :math:`n` 具有不同的电荷和稍微不同的质量 (也就是说, 并不能把同位旋和其他粒子性质的量子数完全隔离开).

4 宇称
^^^^^^

在 :math:`\bm{x} \to -\bm{x}` 变换下的对称性如果确实存在, 那么就必然存在一个幺正算符 :math:`\mathsf{P}`, 在它的作用下入态和出态都像单粒子态的直积那样变换

.. math::
    \mathsf{P}\psi_{p_1\sigma_1n_1;p_2\sigma_2n_2;\cdots} = \eta_{n_1}\eta_{n_2}\cdots \psi_{\mathscr{P}p_1\sigma_1n_1;\mathscr{P}p_2\sigma_2n_2;\cdots}
    :label: p-multi-psi

[这里的因果关系还是不是很明确. 但无论如何这并不是一个定理, 而是一个假定] 其中 :math:`\eta_n` 是具有类型 :math:`n` 的粒子的内禀宇称, :math:`\mathscr{P}` 改变 :math:`p^\mu` 的空间分量的符号. (这是对有质量粒子. 对无质量粒子的修改是显然的 (简单的). ) 对 :math:`S` 矩阵的宇称守恒条件就成为

.. math::
    S_{p'_1\sigma'_1n'_1;p'_2\sigma'_2n'_2;\cdots,p_1\sigma_1n_1;p_2\sigma_2n_2;\cdots}
    = \eta^*_{n'_1}\eta^*_{n'_2}\cdots \eta_{n_1}\eta_{n_2}\cdots 
    S_{\mathscr{P}p'_1\sigma'_1n'_1;\mathscr{P}p'_2\sigma'_2n'_2;\cdots,\mathscr{P}p_1\sigma_1n_1;\mathscr{P}p_2\sigma_2n_2;\cdots}
    :label: eta-s-matrix

和内部对称性的情形类似, 我们定义一个算符 :math:`\mathsf{P}_0` 以 :eq:`p-multi-psi` 的方式对自由粒子态作用. 这个算符如果和 :math:`V` 和 :math:`H_0` 都对易, 那么满足 :eq:`p-multi-psi` 的算符 :math:`\mathsf{P}` 将确实存在.

相位 :math:`\eta_n` 可以通过动力学模型或者实验来推断, 但是它们都无法唯一确定 :math:`\eta`. 这是因为, 我们总可以通过把 :math:`\mathsf{P}` 和任何守恒的内禀对称性算符合并来重定义它. 例如, 如果 :math:`\mathsf{P}` 是守恒的, 那么

.. math::
    \mathsf{P}' \equiv \mathsf{P} \exp(\I \alpha B + \I \beta L + \I \gamma Q)

也是守恒的, 其中 :math:`B, L` 和 :math:`Q` 分别是重子数, 轻子数和电荷, :math:`\alpha, \beta, \gamma` 是任意的实相位因子. 因此, :math:`\mathsf{P}` 或 :math:`\mathsf{P}'` 之一都可以称为宇称算符. 中子, 质子和电子有不同的 :math:`B, L` 和 :math:`Q` 值的组合, 因此我们可以通过相位 :math:`\alpha, \beta, \gamma` 的某种选择来定义所有这些粒子的内禀宇称 (注意不是内禀对称性. 内禀宇称是指由 :math:`\mathsf{P}'` 导致的 :math:`\eta`) 都为 :math:`+1`. (这里是说, 由于例如 :math:`\alpha` 和 :math:`B` 是乘积的关系, 而 :math:`B` 是算符, 反应到本征值上就是 :math:`b_n` 和 :math:`\alpha` 是乘积的关系, 其中 :math:`b_n` 代表重子数. 那么只要 :math:`b_n, l_n, q_n` 不全为零, 那么总可以通过调整 :math:`\alpha, \beta, \gamma` 的值, 使得 :math:`\exp(\I \alpha b_n + \I \beta l_n + \I \gamma q_n)` 乘以原来的宇称 :math:`\eta_n` 得到的新的宇称 :math:`\eta'_n` 为 +1. ) 但是, 当我们做了这样的选择, 那么另一些粒子的内禀宇称, 比如带电的 :math:`\pi` 子 (它们在反应 :math:`n \to p + \pi^-` 中被释放) 的内禀宇称就不再是任意的. 另一方面, 类似于中性 :math:`\pi` 子 :math:`\pi^0` 这样的粒子的内禀宇称总是有意义的 (也就是说, 不会因为之前做了那样的选择而受到限制), 因为它不带有任何守恒的量子数 (事实上, 它的重子数, 轻子数, 电荷数都为零. 因此通过选择 :math:`\alpha, \beta, \gamma` 并不能改变它的相位).

上述的讨论也澄清了另一个问题, 即内禀宇称是否必须具有本征值 :math:`\pm 1`. 很显然空间反射 :math:`\mathsf{P}` 具有群乘积规则 :math:`\mathsf{P}^2 = 1` (因为做两次空间反射一定相当于没变. ); 但是, 守恒的那个宇称算符不一定是这一个, 而可能和空间反射相差一个相位变换. (这就是说, 上面的讨论说明了宇称可能和别的内禀对称性混合在一起, 而这种混合的宇称和原来的空间反射宇称相差一个相位因子, 而如果 :math:`\mathsf{P}^2 = 1`, 尽管 :math:`\mathsf{P}` 的本征值可以是复数, 但是二次方程在复数域也只能有两个解, 即 :math:`\mathsf{P} = \pm 1`. 因此, 混合宇称由于和空间反射宇称相差一个相位因子, 它的取值也就未必是 :math:`\pm 1`, 因此说, 上面的讨论回答了这里的问题. ) 也就是说, 内禀宇称未必具有本征值 :math:`\pm 1`. 但是下面的讨论将表明, 在满足一些条件的情况下, 我们仍然可以限制内禀宇称取值 :math:`\pm 1`.

无论在哪种情况下, 无论是否 :math:`\mathsf{P}^2 = 1`, 算符 :math:`\mathsf{P}^2` 的行为就像内部对称性的变换那样 (这里像内禀对称性是说, 一次的宇称变换会把 :math:`p` 指标变为 :math:`\mathscr{P}p`, 但是两次的相当于不改变任何指标. 而内部对称性也是不改变任何指标的, 在这个意义上它们就是相似的. )

.. math::
    \mathsf{P}^2 \psi^\pm_{p_1\sigma_1n_1;p_2\sigma_2n_2;\cdots } = \eta_{n_1}^2 \eta_{n_2}^2 \cdots
        \psi^\pm_{p_1\sigma_1n_1;p_2\sigma_2n_2;\cdots }

如果这个内部对称性是某个连续相位变换对称群的一部分 (注意这里关键是连续, 这种情况是指, 这个 :math:`\mathsf{P}` 里面包含某种连续相位变换) 比如乘以相位 :math:`\exp(\I \alpha B + \I \beta L + \I \gamma Q)`, 其中 :math:`\alpha, \beta, \gamma` 可以任意取值的变换构成的群, 那么它的平方根的倒数也是这个群的一个元素, 记作 :math:`I_P` (注意, 如果它不是连续的而是离散的, 那么平方根的倒数也就不能给出一个合理元素或者未定义, 注意这个元素不一定要求和原来的元素不同). 其中 :math:`I_P` 满足 :math:`I_P^2\mathsf{P}^2 = 1` 和 :math:`[I_P, \mathsf{P}] = 0`. (例如, 如果 :math:`\mathsf{P}^2 = \exp(\I \alpha B + \cdots)`, 那么我们可以取 :math:`I_P = \exp(-\frac{1}{2}\I \alpha B + \cdots)`. ) 那么, 我们就可以定义一个新的宇称算符 :math:`\mathsf{P}' \equiv \mathsf{P} I_P` 满足 :math:`\mathsf{P}'^2 = 1`. 它是守恒的, 并且完全能替代 :math:`\mathsf{P}` 的地位. (注意这里能替代的意思是, 由于 :math:`I_P` 是这个群里面的一个元素, 给这个群里面所有的元素都乘以同一个群元并不会损失信息. ) 因此, 并没有特别的理由使得我们不能把这个成为宇称算符, 而在这种情况下, 内禀宇称只能取值 :math:`\pm 1`. 总之, 在连续相位变换的情况下, 我们可以通过重定义宇称来迫使它取值 :math:`\pm 1`.

下面讨论离散的情况. 在这种情况下, 不一定能重定义宇称来使得所有的内禀宇称都取值 :math:`\pm 1`. 这种情况是说, 在这个理论中, 存在某些离散内部对称性, 这些离散内部对称性不是任何连续相位变换对称群的元素. 例如, 作为角动量守恒的一个结果, 所有半整数自旋粒子的总个数 :math:`F` 只能改变偶数个单位, 因此, 内部对称算符 :math:`(-1)^F` 是守恒的. 但是, 所有已知的半整数自旋粒子都具有奇数的重子数和轻子数之和 :math:`B + L`, 因此, :math:`(-1)^F = (-1)^{B+L}`. 如果这个是广泛成立的, 那么 :math:`(-1)^F` 就是连续对称群的一部分, 它包括算符 :math:`\exp(\I\alpha (B+L))` 其中 :math:`\alpha` 可以取任何实数. 这个算符具有平方根倒数 :math:`\exp(-\I \alpha (B+L)/2)` (这里 Weinberg 1998 似乎有错误, :math:`\pi` 应该是 :math:`\alpha`). 在这个情况下, 如果 :math:`\mathsf{P}^2 = (-1)^F`, 那么 :math:`\mathsf{P}` 就可以被重定义从而所有内禀宇称都是 :math:`\pm 1`. 但是, 如果我们发现一个半整数自旋的粒子, 它具有偶数值的 :math:`B+ L` (例如, 马约拉纳中微子 (Majorana neutrino), 它具有 :math:`j = \frac{1}{2}` 和 :math:`B + L = 0`), 在这种情况下, 就会有 :math:`\mathsf{P}^2 = (-1)^F` (而不是 :math:`\mathsf{P}^2 = 1`), 并且我们也无法通过重定义宇称算符把使得它具有内禀宇称 :math:`\pm 1`. 在这种情况下, 当然, 我们就有 :math:`\mathsf{P}^4 = 1`, 因此所有粒子将会有内禀宇称 :math:`\pm 1` 或 (比如马约拉纳中微子) :math:`\pm \I`.

根据 :eq:`eta-s-matrix`, 如果末态中内禀宇称的乘积等于初态中内禀宇称的乘积, 或等于乘积的相反数, 那么 :math:`S` 矩阵的3动量必须分别整体为偶的或奇的. 具体如下, 我们先假定 :math:`\eta` 只能取值 :math:`\pm 1`. 那么如果初末态乘积相等, :eq:`eta-s-matrix` 中的两个 :math:`S` 矩阵相等. 如果相差一个负号, 则两个 :math:`S` 矩阵也相差一个负号. 而这两个 :math:`S` 矩阵仅仅是动量指标发生了变化, 即3动量的符号被 :math:`\mathsf{P}` 改变. 注意按照上述讨论, :eq:`eta-s-matrix` 实际上建立了一个系统中各粒子的内禀宇称的乘积和这个系统的动力学参量, 比如动量等, 经历某种变换产生的 "宇称" (非内禀宇称) 之间的关系. 下面就需要知道, 一个系统, 如果它的粒子组成没有任何改变 (因此内禀宇称不会产生任何改变), 我们改变了3动量的符号 (相当于做了时空反射变换), 它的态矢应该如何变化.

[定理3-8] 一个具有轨道角动量 :math:`l` 的系统, 空间反射变换对态矢的作用是产生 :math:`(-1)^l` 系数 (这是排除内禀宇称的系数剩下的系数). 即

.. math::
    \mathsf{P} \psi_{p, l} =&\ \eta \psi_{\mathscr{P}p, l} \\
    \psi_{\mathscr{P}p, l} =&\ (-1)^l \psi_{p, l}

注意, 当考虑具有多个粒子的系统时, 这个 :math:`l` 是指相对运动的轨道角动量. 上式也反映了, 系统的宇称是内禀宇称 :math:`\eta` 和由于粒子运动状态而导致的宇称 :math:`(-1)^l` 之积.

[证明] 粒子在中心力场中运动时, 能量本征函数一般可写为 (使用坐标表象)

.. math::
    \psi_{nlm}(r,\theta,\phi) \sim R_n(r) P_l^m(\cos\theta) \mathrm{e}^{\mathrm{i}m\phi}

其中 :math:`n` 为主量子数, :math:`l` 为轨道量子数, :math:`m` 为轨道磁量子数. 

在球坐标系中空间反射 :math:`\bm{r} \rightarrow -\bm{r}` 相当于

.. math::
    \phi \rightarrow \pi+\phi \\
    \theta \rightarrow \pi - \theta.

连带勒让德函数的罗德里格斯公式 (梁昆淼《数学物理方法》第243页.)

.. math::
    P_l^m(x) = \frac{(1-x^2)^\frac{m}{2}}{2^ll!} \frac{\mathrm{d}^{l+m}}{\mathrm{d}x^{l+m}}
        (x^2-1)^l
    :label: rodrigues

不难看出 :math:`(1-x^2)^{m/2}, (x^2-1)^l` 为偶函数 (不难证明, 一个偶函数的奇数阶导数是奇函数, 偶数阶导数是偶函数. 因为一个偶函数可以用所有作为偶函数的 :math:`\cos nx` 展开, 它求导以后是全为 :math:`\sin nx` 的展开式, 因此是奇函数). 而 :math:`\mathrm{d}^{l+m}(x^2-1)^l/\mathrm{d}x^{l+m}` 的最高幂次为 :math:`x` 的 :math:`l - m` 次幂, 于是, 当 :math:`l-m=2n(n=0,1,2,\cdots)` 时, :math:`P_l^m(x)` 为偶函数; 当 :math:`l-m=2n+1(n=0,1,2,\cdots)` 时, :math:`P_l^m(x)` 为奇函数. 因此

.. math::
    P_l^m(-x) = (-1)^{l-m} P_l^m(x)

以 :math:`\pi+\phi` 代替 :math:`\phi` 时

.. math::
    \mathrm{e}^{\mathrm{i}m\phi} \rightarrow
        \mathrm{e}^{\mathrm{i}m(\pi+\phi)} = (-1)^m \mathrm{e}^{\mathrm{i}m\phi}

以 :math:`\pi-\theta` 代替 :math:`\theta` 时

.. math::
    P_l^m(\cos\theta) \rightarrow P_l^m(-\cos\theta)
        = (-1)^{l-m} P_l^m(\cos\theta)

因此

.. math::
    \mathsf{P} \psi_{nlm}(r,\theta,\phi) = (-1)^m(-1)^{l-m} \psi_{nlm}(r,\theta,\phi)
        = (-1)^l \psi_{nlm}(r,\theta,\phi). 

即在中心力场中, 粒子相对运动波函数 :math:`\psi_{nlm}` 的宇称只由轨道量子数 :math:`l` 决定, 为 :math:`(-1)^l`.
当 :math:`l` 为偶数 :math:`0,2,\cdots` 时, 轨道运动波函数有正宇称; 当 :math:`l` 为奇数 :math:`1,3,\cdots` 时, 轨道运动状态波函数有负宇称. 
因此我们说波函数 :math:`\psi_{nlm}` 有 :math:`l` 宇称. 

如果两个粒子的轨道角动量分别为 :math:`l_1` 和 :math:`l_2`, 则两粒子组合态的波函数可以写成

.. math::
    \psi_{n_1l_1m_1}(\theta_1, \phi_1)\psi_{n_2l_2m_2}(\theta_2, \phi_2)

这个系统的轨道角动量部分波函数的总宇称为

.. math::
    p = p_1p_2 = (-1)^{l_1}(-1)^{l_2}=(-1)^{l_1+l_2}

即宇称量子数是相乘量子数. 注意由于 :math:`l_1, l_2` 只能取整数, 所以 :math:`(-1)^{l_1+l_2} = (-1)^{l_1-l_2+2l_2} = (-1)^{l_1-l_2}`. 即一个两粒子系统的宇称取决于相对角动量 :math:`l_1 - l_2`

以上是波函数的系数. :math:`S` 矩阵是入态和出态波函数的内积, 因此它的系数是入态波函数和出态波函数产生的系数的乘积.

下面考虑一个具体的例子. 在1951年, 实验上观察到, 在一个 :math:`\pi^-d` 原子的 :math:`\ell = 0` 基态, 这个 :math:`\pi` 子可以被氘核 (deuteron) 吸收, 即如下反应: :math:`\pi^- + d \to n + n`. (在第3.7节将会讨论, 轨道角动量量子数 :math:`\ell` 可以以非相对论量子力学同样的方式被用在相对论物理). 初态具有总角动量 :math:`j = 1` (:math:`\pi` 子和氘核分别有自旋零和一), 因此终态必须有轨道角动量 :math:`\ell = 1` 和总的中子自旋 :math:`s = 1`. (因为每个中子自旋为 :math:`\frac{1}{2}`, 所以自旋只能为 0 或 1. 如果自旋为 0, 为了保持总角动量守恒, 必须有 :math:`\ell = 1`. 而当自旋为 1 时, :math:`\ell` 只能取 :math:`0,1,2`. 如果大于2, 轨道和自旋角动量的矢量和不可能为总角动量 :math:`j = 1`. 由于两个中子都是费米子, 它们的波函数必须是反对称的. 这个波函数是相对运动的轨道角动量波函数和自旋波函数之积. 反对称的意思是, 交换两个粒子的话波函数反号. 先考虑轨道角动量部分. 因为 :math:`\ell` 是相对角动量, 交换两个粒子相当于把波函数中的相对坐标变号, 因此相当于对波函数用宇称算符作用. 这产生系数 :math:`(-1)^\ell`. 再考虑自旋角动量部分. 如果两个粒子自旋第三分量都是 :math:`+\frac{1}{2}`, 即总自旋为1, 那么交换它们波函数不会有什么改变. 如果两个粒子自旋第三分量是反号的, 这时总自旋为零. 那么交换它们波函数会产生一个负号. 也就是说自旋部分产生 :math:`(-1)^{s+1}` 系数. 总的系数为 :math:`(-1)^{s+1+\ell}`. 可见为了使得最后的波函数对于粒子交换 (两个中子的交换) 是反对称的, 我们有 :math:`(-1)^{s+1+\ell} = -1`, 即 :math:`s+ \ell` 为偶数. 因此只能有 :math:`s = \ell = 1`.)

由于终态有 :math:`\ell = 1`, :math:`S` 矩阵元在改变所有3动量方向的时候, 会产生 :math:`(-1)^{\ell}` 系数, 即 :math:`-1` 系数. 因此

.. math::
    S_{\mathscr{P}p_{n_1}\mathscr{P}p_{n_2};\mathscr{P}p_{\pi^-}\mathscr{P}p_{d}}
        = - S_{p_{n_1}p_{n_2};p_{\pi^-}p_{d}}

而由 :eq:`eta-s-matrix` 得

.. math::
    S_{p_{n_1}p_{n_2};p_{\pi^-}p_{d}} = \eta^*_n \eta^*_n \eta_{\pi^-} \eta_{d} S_{\mathscr{P}p_{n_1}\mathscr{P}p_{n_2};\mathscr{P}p_{\pi^-}\mathscr{P}p_{d}}

因此通过比较以上两式, 我们可以认为这个反应中粒子的内禀宇称由下式相联系

.. math::
    \eta_d \eta_{\pi^-} = -\eta_n^2

我们已经知道氘核是一个质子和一个中子的束缚态, 具有偶轨道角动量 (主要是 :math:`\ell = 0`). 而我们在本节开始已经讨论过, 我们可以将质子和中子的内禀宇称取为一样, 因此 :math:`\eta_d = \eta_n^2`. 因此我们有 :math:`\eta_{\pi^-} = -1`. 也就是说, 负 :math:`\pi` 子是一个赝标量 (pseudoscalar) 粒子. :math:`\pi^+` 和 :math:`\pi^0` 也被发现具有负宇称, 当然通过这三个粒子之间的对称性 (同位旋不变性) 也可以预期这样的结果. [这里的意思是, 质子和中子是相同同位旋而同位旋第三分量不同的两个粒子态, 它们具有相同的宇称 (正宇称), 而三个 :math:`\pi` 子也是具有相同同位旋 :math:`T = 1` 而同位旋第三分量分别等于 :math:`t_3 = -1, 0, +1` 的三个粒子态, 它们也很可能具有相同的宇称 (负宇称). ] 一个赝标量粒子的波函数是赝标量函数, 它在空间转动下波函数具有不变性, 但在空间反射下波函数改变符号.

根据之前的讨论, 如果引入同位旋概念, 则质子和中子被看成同一种粒子 (核子), 它们通过同位旋量子数相区别. 即核子的同位旋 :math:`T =\frac{1}{2}`, 同位旋第三分量质子为 :math:`t_3 = \frac{1}{2}`, 中子为 :math:`-\frac{1}{2}`. 波函数应该表示成三部分乘积, 即轨道角动量部分, 自旋角动量部分, 和同位旋部分, 同位旋部分产生系数 :math:`(-1)^{T+1}`. 由于在上面的讨论中, 两个中子体系的同位旋一定是 :math:`T = 1`, 因此产生了一个 :math:`1` 的系数, 忽略这个系数没有影响. 而推广的泡利不相容原理就要求: 在核子体系波函数中交换任何两个核子坐标时 (包含交换两个核子位置, 自旋和同位旋), 总波函数应是反对称的. 同位旋只在强相互作用中守恒.

:math:`\pi` 子的负宇称会导致一些奇特的结果. 一个自旋为零的粒子如果衰变为三个 :math:`\pi` 子, 它必须具有内禀宇称 :math:`\eta_{\pi}^3 = -1`. (因为如果是衰变, 则原来的总角动量为 :math:`j = 0`, 末态总角动量也必须为零, 而 :math:`\pi` 子自旋为零, 因此轨道角动量不贡献宇称系数. 因此末态的总宇称是 :math:`\eta_\pi^3 (-1)^{s + 1}= 1` (注意末态总自旋为 :math:`s=0`). 根据宇称守恒, 初态的总宇称也必须是1. 初态自旋和轨道角动量都为零, 因此其中自旋贡献系数-1, 因此初态内禀宇称也必须为-1. 简单说, 由于初末态自旋相同都为零, 因此总角动量守恒就要求轨道角动量守恒. 因此轨道角动量和自旋角动量都不能贡献宇称. 因此初末态内禀宇称必须相同. 但是这个分析可能简化了末态角动量的情况. 真正的原因见这里接下来的分析. ) 因为在衰变粒子静止的洛伦兹系, 转动不变性 (角动量守恒) 要求矩阵元必须是 :math:`\pi` 介子之间两两的动量的标量积的函数, 因为只有这些标量积才是洛伦兹不变量. 单个动量是矢量, 不是洛伦兹不变量. 但是所有这些两动量标量积在反转动量方向时都是偶函数. 而为什么不能是三个动量的标量积呢? 因为根据动量守恒, 由三个 :math:`\pi` 子的动量构成的三标量积 :math:`\bm{p}_1 \cdot (\bm{p}_2 \times \bm{p}_3)` 为零, 因为 :math:`\bm{p}_1 + \bm{p}_2 + \bm{p}_3 = 0`. 注意其中 :math:`\bm{p}_2 \times \bm{p}_3` 和 :math:`\bm{p}_2, \bm{p}_3` 都垂直. 而 :math:`\bm{p}_1 = -\bm{p}_2 - \bm{p}_3` 是它们的线性组合, 因此 :math:`\bm{p}_1` 和 :math:`\bm{p}_2 \times \bm{p}_3` 也垂直. 即三标量积为零. 因此考虑 :eq:`eta-s-matrix` 右边, :math:`S` 矩阵是对左边的矩阵中所有 :math:`p` 进行空间反射变换得到的. 而上述讨论证明了, 对于矩阵的终态粒子部分, 这种空间反射不会改变 :math:`S` 矩阵的符号. 而对于初态粒子部分, 由于初态粒子的动量为零, 因此相当于动量没有变化. 总之, 对动量的空间反射改变没有改变 :math:`S` 矩阵的符号. 两边的 :math:`S` 矩阵都可以写成左边的形式. 因此所有 :math:`\eta` 系数的乘积必须是 1. 因此, 衰变粒子的内禀宇称就必须和三个 :math:`\pi` 子的内禀宇称之积相等. 基于同样的理由, 一个自旋零粒子如果衰变为两个 :math:`\pi` 子, 它必须有内禀宇称 :math:`\eta_{\pi}^2 = +1`.

特别地, 在20世纪40年代末, 在发现的所有奇异粒子中, 似乎存在两个不同的零自旋粒子 (从它们衰变产物的角分布推断出). 其中一个称为 :math:`\tau`, 通过它衰变为三个 :math:`\pi` 子而被识别, 因此被赋予宇称 :math:`-1`. 另一个称为 :math:`\theta`, 通过它衰变为两个 :math:`\pi` 子而被识别, 被赋予宇称 :math:`+1`. 这其中的麻烦是, 当 :math:`\tau` 和 :math:`\theta` 被进一步研究之后, 它们越来越可能具有相同的质量和寿命. 在许多建议的解决方案被提出之后, 在1956年李政道和杨振宁最终斩断了戈尔迪之结, 提出 :math:`\tau` 和 :math:`\theta` 是相同的粒子, (现在被称为 :math:`K^\pm`) 并且在导致衰变的弱相互作用中宇称不守恒.

我们在下一节将看到, 一个物理过程 :math:`\alpha \to \beta` (其中 :math:`\alpha \neq \beta`) 的速率正比于 :math:`|S_{\beta\alpha}|^2`, 其中比例因子在所有3动量的反转下不会改变. 只要 :math:`\alpha` 和 :math:`\beta` 态含有确定数目的粒子, :eq:`eta-s-matrix` 中的相因子对 :math:`|S_{\beta\alpha}|^2` 没有作用. 因此 :eq:`eta-s-matrix` 意味着 :math:`\alpha \to \beta` 的速率在3动量方向的反转下是不变的. (这里具体是说, 速率的改变取决于 :math:`|S_{\beta\alpha}|^2` 的改变和比例因子的改变. 比例因子由于别的原因可以确定不会改变. 那么问题就归结为 :math:`|S_{\beta\alpha}|^2` 在三动量反转下是否会改变. 理论上, 如果三动量反转会使得 :math:`S` 矩阵不仅增加了相因子, 还增加了模不为1的因子, 那么 :math:`|S_{\beta\alpha}|^2` 就会改变. 但这里通过 :eq:`eta-s-matrix` 我们可以看到在动量反转的情况下, :math:`S` 矩阵增加的只是相因子. 因此我们就说, :eq:`eta-s-matrix` 导致了 :math:`|S_{\beta\alpha}|^2` 在动量反转下的不变性. ) 正如我们已经看到的, 这个结果是旋转不变性的一个平庸结果, 对于 :math:`K` 介子到两个或三个 :math:`\pi` 子的衰变, 但它对于更复杂的过程是一个不平庸的限制. 例如, 按照李政道和杨振宁的理论上的建议, 吴健雄与美国国家标准局的一个研究组测量了极化钴源的 beta 衰变 :math:`\mathrm{Co}^{60} \to \mathrm{Ni}^{60} + e^- + \overline{\nu}` 的末态电子角分布. (在这个实验中, 没有测量反中微子或者镍核的动量. ) 实验发现电子倾向于朝衰变核的自旋的相反方向射出. 如果衰变速率在所有三动量进行空间反射的情况下不变, 这当然是不可能的. 在正 :math:`\mu` 子 (在它的产生过程 :math:`\pi^+ \to \mu^+  + \nu` 中被极化) 衰变为正电子, 中微子和反中微子的实验中发现了类似的结果. 因此, 在导致这些衰变的弱相互作用过程中宇称确实不守恒 (因此 :eq:`eta-s-matrix` 并不成立, 上述疑难也就可以解决). 尽管如此, 根据12.5节的原因, 宇称在强相互作用和电磁相互作用中是守恒的, 因此它在理论物理中还是有重要作用.

5 时间反演
^^^^^^^^^^

在第2.6节, 我们发现时间反演算符 :math:`\mathsf{T}` 作用于单粒子态 :math:`\psi_{p,\sigma,n}` 给出态 :math:`\psi_{\mathscr{P}p, -\sigma, n}`, 它具有反转的自旋和动量, 并且有系数 :math:`\zeta_n (-1)^{j-\sigma}` (:eq:`t-act-p`). 和通常的情况一样, 一个多粒子态像单粒子态的直积那样变换, 只是因为这是一个时间反演变换 (入态和出态和时间方向有关, 所以时间方向应该改变), 我们期望入态和出态应该交换

.. math::
    \mathsf{T}\psi_{p_1\sigma_1n_1; p_2\sigma_2n_2 \cdots}^\pm = 
        \zeta_{n_1}(-1)^{j_1-\sigma_1} \zeta_{n_2}(-1)^{j_2-\sigma_2}\cdots
        \psi_{\mathscr{P}p_1-\sigma_1n_1; \mathscr{P}p_2-\sigma_2n_2 \cdots}^\mp
    :label: t-multi-psi

(再次说明, 这是对有质量粒子的情况. 对于无质量粒子, 所需做的改变是显然的. ) 为方便起见我们把这个假设做如下缩写 (也就是说, 上式仅仅是一个假设)

.. math::
    \mathsf{T}\psi_\alpha^\pm = \psi_{\mathscr{T}\alpha}^\mp
    :label: t-alpha-psi

其中 :math:`\mathscr{T}` 表示反转3动量和自旋的符号, 并且乘以 :eq:`t-multi-psi` 中的系数. 因为 :math:`\mathsf{T}` 是反幺正的, 我们有

.. math::
    (\psi_\beta^-, \psi_\alpha^+) = (\mathsf{T}\psi_\alpha^+, \mathsf{T}\psi_\beta^-)

因此对于 :math:`S` 矩阵的时间反演不变性条件就是

.. math::
    S_{\beta,\alpha} = S_{\mathscr{T}\alpha, \mathscr{T}\beta}
    :label: t-s-matrix

或者更具体地

.. math::
    &\ S_{p'_1\sigma'_1n'_1;p'_2\sigma'_2n'_2;\cdots, p_1\sigma_1n_1;p_2\sigma_2n_2;\cdots} \\
    =&\ \zeta_{n'_1}(-1)^{j'_1-\sigma'_1} \zeta_{n'_2}(-1)^{j'_2-\sigma'_2}\cdots
        \zeta_{n_1}^*(-1)^{j_1-\sigma_1} \zeta_{n_2}^*(-1)^{j_2-\sigma_2}\cdots \\
        &\ \times S_{\mathscr{P}p_1\ -\sigma_1\ n_1;\mathscr{P}p_2\ -\sigma_2\ n_2;\cdots,\ 
            \mathscr{P}p'_1\ -\sigma'_1\ n'_1;\mathscr{P}p'_2\ -\sigma'_2\ n'_2;\cdots}

注意除了动量和自旋的反转, 初态和末态的角色互换了, 这正是一个包含时间反演的对称性所期望的.

定义导致自由粒子态进行时间反演的算符 :math:`\mathsf{T}_0`, 满足

.. math::
    \mathsf{T}_0 \phi_\alpha \equiv \phi_{\mathscr{T}\alpha}

如果算符 :math:`\mathsf{T}_0` 不仅和自由粒子哈密顿量对易 (这个是自动满足的) 还和相互作用对易

.. math::
    \mathsf{T}_0^{-1} H_0 \mathsf{T}_0 = H_0,\quad \mathsf{T}_0^{-1} V\mathsf{T}_0 = V

那么 :math:`S` 矩阵将满足上面的变换规则 (即上面的 "假设"). 在这种情况下我们可以选取 :math:`\mathsf{T} = \mathsf{T}_0`, 然后使用李普曼-施温格方程 :eq:`psi-phi-v` 或者其等价形式 :eq:`psi-pm-def-omega` 就可以证明时间反演变换确实像 :eq:`t-alpha-psi` 那样作用. 下面具体说明. 例如, 用 :math:`\mathsf{T}` 作用于李普曼-施温格方程 :eq:`psi-phi-v` 然后使用上面关于 :math:`\mathsf{T}_0` 的三式 (注意 :math:`\mathsf{T} = \mathsf{T}_0`) 得

.. math::
    \mathsf{T}\psi_\alpha^\pm = \psi_{\mathscr{T}\alpha} + [E_\alpha - H_0 \mp \I \epsilon]^{-1} V\mathsf{T}\psi_\alpha^\pm

其中 :math:`\pm \I \epsilon` 的符号反转了因为 :math:`\mathsf{T}` 是反线性的 [这里 Weinberg 书有错, 写成了反幺正的]. 而上式正是 :math:`\psi_{\mathscr{T}\alpha}^\mp` 满足的李普曼施温格方程. 因此我们就证明了 :eq:`t-alpha-psi`. 类似地, 因为 :math:`\mathsf{T}` 是反线性的 [这里 Weinberg 书又写成了反幺正的], 它改变了 :math:`\Omega(t)` 指数中 :math:`\I` 的符号, 因此

.. math::
    \mathsf{T} \Omega(-\infty) \phi_\alpha = \Omega(\infty) \phi_{\mathscr{T}\alpha}

这也证明了 :eq:`t-alpha-psi`.

和宇称守恒的情况不同的是, 时间反演不变性条件 :eq:`t-s-matrix` 一般情况下并不能告诉我们 :math:`\alpha \to \beta` 过程的速率和 :math:`\mathscr{T}\alpha \to \mathscr{T}\beta` 过程的速率相等. 但是, 如果 :math:`S` 矩阵可以取以下形式, 那么类似于上述论述的情况将会成立.

.. math::
    S_{\beta\alpha} = S_{\beta\alpha}^{(0)} + S_{\beta\alpha}^{(1)}

其中 :math:`S^{(1)}` 是小量, 而对于某些特殊的过程, :math:`S^{(0)}` 可能会有零矩阵元. 但是一般地, :math:`S^{(0)}` 的矩阵元远大于 :math:`S^{(1)}`. (例如, 这样的过程可能是核 beta 衰变, :math:`N \to N' + e^- + \overline{\nu}`, 其中 :math:`S^{(0)}` 是只由强核力和电磁相互作用产生的 :math:`S` 矩阵, 而 :math:`S^{(1)}` 是由弱相互作用导致的对 :math:`S` 矩阵的修正. 第3.5节将说明如何利用 "扭曲波波恩近似" 对这种类型的反应给出上述形式的 :math:`S` 矩阵. 在某些情况下, :math:`S^{(0)}` 仅仅是单位算符. ) 考虑 :math:`S^{(1)}` 的一阶近似, :math:`S` 算符的幺正条件给出

.. math::
    1 = S^\dagger S = S^{(0)\dagger} S^{(0)} + S^{(0)\dagger} S^{(1)} + S^{(1)\dagger} S^{(0)}

使用零阶条件 :math:`S^{(0)\dagger} S^{(0)} = 1`, 这给出 :math:`S^{(1)}` 的实条件 (reality condition) [这里不是很理解]

.. math::
    S^{(1)} = -S^{(0)} S^{(1)\dagger} S^{(0)}

如果 :math:`S^{(1)}` 和 :math:`S^{(0)}` 都满足时间反演条件 :eq:`t-s-matrix`, 则我们有 (注意其中利用了 :math:`(S^{(1)^\dagger})_{\beta\alpha} = S^{(1)*}_{\alpha\beta}` 和对 :math:`S^{(1)}` 的 :eq:`t-s-matrix`)

.. math::
    S_{\beta\alpha}^{(1)} = -\int \D \gamma \int \D \gamma' S_{\beta\gamma'}^{(0)} S_{\mathscr{T}\gamma', \mathscr{T}\gamma}^{(1)*} S_{\gamma\alpha}^{(0)}

由于 :math:`S^{(0)}` 是幺正的, :math:`\alpha \to \beta` 和 :math:`\mathscr{T} \alpha \to \beta` 过程的速率将是相等的, 如果是对关于 :math:`S^{(0)}` 完全的初态和末态 [Weinberg 书对应关系好像反了] 的集合 :math:`\mathscr{I}` 和 :math:`\mathscr{F}` 求和. [这里也不是很理解] (这里完全的意思是, 如果 :math:`S_{\alpha'\alpha}^{(0)}` 非零, 并且 :math:`\alpha` 和 :math:`\alpha'` 之一在 :math:`\mathscr{I}` 中, 那么它们两者都必须在 :math:`\mathscr{I}` 中. 对 :math:`\mathscr{F}` 情况类似. ) 考虑最简单的情形, 我们的完全集 :math:`\mathscr{I}` 和 :math:`\mathscr{F}` 仅各自包含一个态; 也就是说, 初态和末态都是 :math:`S^{(0)}` 分别具有本征值 :math:`\E^{2\I\delta_\alpha}` 和 :math:`\E^{2\I\delta_\beta}` 的本征矢. (:math:`\delta_\alpha` 和 :math:`\delta_\beta` 叫做 "相移"; 由于 :math:`S^{(0)}` 是幺正的, 它们是实的. ) 在这种情况下, 上式成为

.. math::
    S_{\beta\alpha}^{(1)} = - \E^{2\I (\delta_\alpha + \delta_\beta)} S^{(1)*}_{\mathscr{T}\beta, \mathscr{T}\alpha}
    :label: s-matrix-phase-shift

从而可以清楚看出, 对于过程 :math:`\alpha \to \beta` 的 :math:`S` 矩阵的绝对值和过程 :math:`\mathscr{T}\alpha \to \mathscr{T}\beta` 的相等. 这是比如核 beta 衰变的情况 (在如下的近似情况下: 我们忽略末态中电子和核的相对弱的库仑相互作用), 因为初态和末态都是强相互作用 :math:`S` 矩阵的本征态 (满足 :math:`\delta_\alpha = \delta_\beta = 0`). 因此, 如果时间反演不变性是成立的, beta 衰变过程的微分速率应该保持不变, 如果我们反转所有粒子的动量和自旋 :math:`z` 分量 :math:`\sigma`. 这个预言和发现宇称不守恒的 1956 年实验并不矛盾; 例如, 实验观察到衰变 :math:`\mathrm{Co}^{60} \to \mathrm{Ni}^{60} + e^- + \overline{\nu}` 的电子射出方向和 :math:`\mathrm{Co}^{60}` 自旋方向相反, 这和时间反演不变性并不矛盾. 正如下面我们要谈到的, 不支持时间反演不变性的间接证据确实在 1964 年出现过, 但是时间反演不变性在弱, 强和电磁相互作用仍然是有用的近似对称性.

在某些情况下, 我们可以使用满足 :math:`\mathscr{T} \alpha = \alpha` 和 :math:`\mathscr{T} \beta = \beta` 的态矢基组, 那么 :eq:`s-matrix-phase-shift` 成为

.. math::
    S_{\beta\alpha}^{(1)} = - \E^{2\I (\delta_\alpha + \delta_\beta)} S^{(1)*}_{\beta, \alpha}
    :label: s-matrix-phase-shift-no-t

这意味着 :math:`\I S_{\beta\alpha}^{(1)}` 具有相位 :math:`\delta_\alpha + \delta_\beta \ \mathrm{mod}\ \pi`. 这就是 Watson 定理. 证明如下

.. math::
    S_{\beta\alpha}^{(1)} \equiv \rho \E^{\I \phi}, \quad \I S_{\beta\alpha}^{(1)} \equiv \rho' \E^{\I \phi'} = \E^{\I \frac{\pi}{2}}
        \rho \E^{\I \phi} = \rho \E^{\I (\phi + \frac{\pi}{2})}

得 :math:`\I S_{\beta\alpha}^{(1)}` 的相位 :math:`\phi' = \phi + \frac{\pi}{2}`. 另一方面, 由 :eq:`s-matrix-phase-shift-no-t` 得

.. math::
    \rho \E^{\I \phi} =&\ - \E^{2\I (\delta_\alpha + \delta_\beta)} \rho \E^{-\I \phi} \\
    \E^{2\I \phi} =&\ - \E^{2\I (\delta_\alpha + \delta_\beta)} = \E^{\I \pi} \E^{2\I (\delta_\alpha + \delta_\beta)} \\
     =&\ \E^{2\I (\delta_\alpha + \delta_\beta + \frac{\pi}{2})} \\
    2\phi =&\ 2(\delta_\alpha + \delta_\beta + \frac{\pi}{2}) + 2n\pi \\
    \phi =&\ (\delta_\alpha + \delta_\beta + \frac{\pi}{2}) + n\pi \\
    \phi =&\ (\delta_\alpha + \delta_\beta - \frac{\pi}{2}) + (n + 1)\pi \\
    \phi' =&\ \phi + \frac{\pi}{2} = \delta_\alpha + \delta_\beta + (n + 1)\pi

:eq:`s-matrix-phase-shift` 和 :eq:`s-matrix-phase-shift-no-t` 中的相位可以通过不同末态之间有干涉的过程来测量. 例如, 在自旋 :math:`1/2` 的超子 :math:`\Lambda` 衰变为一个核子和 :math:`\pi` 子的过程中, 末态只能有轨道角动量 :math:`\ell = 0` 或 :math:`\ell = 1`; :math:`\pi` 子相对于 :math:`\Lambda` 自旋的角分布包括这些态的干涉, 因此根据 Watson 定理, 这个角分布就依赖于它们的相移之差 :math:`\delta_s - \delta_p` (其中 :math:`s` 和 :math:`p` 分别代表轨道角动量 :math:`\ell = 0` 和 :math:`\ell = 1`).

6 PT
^^^^

尽管 1957 年的关于宇称破坏的实验没有排除时间反演不变性, 却立即证实了 :math:`\mathsf{PT}` 是不守恒的. 如果这个算符是守恒的, 那么基于和 :math:`\mathsf{T}` 一样的原因它必须是反幺正的, 因此在类似于核 beta 衰变的过程它所造成的结果将类似于 :eq:`s-matrix-phase-shift` 的形式

.. math::
    S_{\beta\alpha}^{(1)} = - \E^{2\I (\delta_\alpha + \delta_\beta)} S^{(1)*}_{\mathscr{PT}\beta, \mathscr{PT}\alpha}

其中 :math:`\mathscr{PT}` 反转所有自旋 :math:`z` 分量的符号, 但并不反转动量. 忽略末态库仑相互作用, 我们将会得到的结论是, 在衰变 :math:`\mathrm{Co}^{60} \to \mathrm{Ni}^{60} + e^- + \overline{\nu}` 中电子射出方向与 :math:`\mathrm{Co}^{60}` 自旋方向相同或相反不应该有特别地偏好. 但这和观察到的结果矛盾.

7 C, CP 和 CPT
^^^^^^^^^^^^^^

我们已经提到, 存在一个称为电荷共轭 (charge-conjugation) 的内部对称性变换 (在内部对称性小节的一开始提到). 这个变换将粒子和反粒子交换. 形式上, 这导致存在一个幺正算符 :math:`\mathsf{C}`, 它在多粒子态上的作用是

.. math::
    \mathsf{C} \psi_{p_1\sigma_1n_1;p_2\sigma_2n_2;\cdots}^\pm = \xi_{n_1}\xi_{n_2} \cdots
        \psi_{p_1\sigma_1n_1^c;p_2\sigma_2n_2^c;\cdots}^\pm
    :label: c-act-psi
    
其中 :math:`n^c` 是粒子类型 :math:`n` 的反粒子, :math:`\zeta_n` 是另一个相位因子. 如果上述条件对入态和出态都成立, 那么 :math:`S` 矩阵满足如下不变性条件

.. math::
    &\ S_{p'_1\sigma'_1n'_1;p'_2\sigma'_2n'_2;\cdots,\ p_1\sigma_1n_1;p_2\sigma_2n_2;\cdots} \\
    =&\ \xi_{n'_1}^*\xi_{n'_2}^* \cdots\xi_{n_1}\xi_{n_2} \cdots 
        S_{p'_1\sigma'_1 n'^c_1;p'_2\sigma'_2n'^c_2;\cdots,\ p_1\sigma_1n_1^c;p_2\sigma_2n_2^c;\cdots}
    :label: c-s-matrix

和其他内部对称性一样, 如果定义算符 :math:`\mathsf{C}_0` 作用在自由粒子态上和 :eq:`c-act-psi` 一样, 并且它和相互作用 :math:`V` 和 :math:`H_0` 都对易, 那么 :math:`S` 矩阵将满足上述条件. 在这种情况下, 我们取 :math:`\mathsf{C} = \mathsf{C}_0`.

相位 :math:`\xi_n` 称为电荷共轭宇称. 和通常的宇称 :math:`\eta_n` 一样, :math:`\xi_n` 一般地并不是唯一确定的. 因为对任意满足 :eq:`c-act-psi` 的 :math:`\mathsf{C}`, 我们可以找到另一个这样的算符, 具有不同的 :math:`\xi_n`, 通过将 :math:`\mathsf{C}` 与任意内部对称性相位变换相乘. 这样的相位变换例如 :math:`\exp(\I \alpha B + \I\beta L + \I \gamma Q)`; 唯一的可以分别测量其电荷共轭宇称的粒子是那些完全中性的粒子, 比如光子 (photon) 或者中性 :math:`\pi` 子. 它们不携带任何守恒的量子数, 并且是它们自己的反粒子. 在仅包括完全中性粒子的反应中, :eq:`c-s-matrix` 告诉我们电荷共轭宇称的积在终态和末态必须相等; 例如, 我们以后将看到, 根据量子电动力学的要求, 光子应该具有电荷共轭宇称 :math:`\xi_\gamma = -1`, 因此, 中性 :math:`\pi` 子的 :math:`\pi^0 \to 2\gamma` 要求 :math:`\eta_{\pi^0} = +1`; 进而 :math:`\pi^0 \to 3\gamma` 过程就应该是禁止的, 而这也是已知的事实. 对于这两个粒子, 电荷共轭宇称是实的, 取 :math:`+1` 或 :math:`-1`. 就和普通宇称一样, 这种情况应该总是满足的, 只要所有内部相位变换对称性是连续相位变换群的群元. 因为如果那样的话, 我们就可以重定义 :math:`\mathsf{C}` 为它乘以等于 :math:`\mathsf{C}^2` 的内部对称性的平方根倒数, 结果得到新的 :math:`\mathsf{C}` 满足 :math:`\mathsf{C}^2 = 1`.

对一般的反应, :eq:`c-s-matrix` 要求一个过程的速率等于把粒子换成反粒子的相同过程的速率. 这个并没有直接和宇称不守恒的 1957 年实验相矛盾 (要等到很久以后人们才可以研究反钴的衰变), 但是这些实验指出在李政道和杨振宁修改后的, 考虑了宇称不守恒的弱相互作用理论中 :math:`\mathsf{C}` 是不守恒的. (在下面我们将看到, 观察到的 :math:`\mathsf{TP}` 守恒的破坏将导致 :math:`\mathsf{C}` 守恒的破坏, 在任何弱相互作用的场论中, 而不仅仅是李政道和杨振宁所考虑的特殊理论. ) 现在人们认识到, 在决定 beta 衰变和 :math:`\pi` 子和 :math:`\mu` 子衰变的弱相互作用中, :math:`\mathsf{C}` 和 :math:`\mathsf{P}` 都不守恒, 尽管在强相互作用和电磁相互作用中 :math:`\mathsf{C}` 和 :math:`\mathsf{P}` 都是守恒的.

尽管早期关于宇称不守恒的实验表明在弱相互作用中 :math:`\mathsf{C}` 和 :math:`\mathsf{P}` 都不守恒, 但是它们的乘积 :math:`\mathsf{CP}` 普遍地守恒的可能性仍然是存在的. 许多年来, 人们期待 (尽管不是完全肯定) 会发现 :math:`\mathsf{CP}` 是守恒的. 这个对于中性 :math:`K` 介子的性质会有重要影响. 在 1954 年 Gell-Mann 和 Pais 指出, 因为 :math:`K^0` 介子不是它的反粒子 (:math:`K^0` 携带了一个非零的奇异数, 而奇异数是近似守恒的), 具有确定衰变速率的粒子将既不是 :math:`K^0` 也不是 :math:`\overline{K^0}`, 而是线性组合 :math:`K^0 \pm \overline{K^0}`. 这个最初是由 :math:`\mathsf{C}` 守恒来解释的, 但是由于 :math:`\mathsf{C}` 在弱相互作用中不守恒, 如果基于 :math:`\mathsf{CP}` 守恒这个讨论同样可以成立. 如果我们任意定义 :math:`\mathsf{CP}` 算符的相位和 :math:`K^0` 和 :math:`\overline{K^0}` 态的相位, 从而

.. math::
    \mathsf{CP} \psi_{K^0} = \psi_{\overline{K^0}}

并且

.. math::
    \mathsf{CP} \psi_{\overline{K^0}} = \psi_{K^0}

那么我们就可以定义自电荷共轭的单粒子态

.. math::
    \phi_{K^0_1} \equiv \frac{1}{\sqrt{2}} \big[ \psi_{K^0} + \psi_{\overline{K^0}} \big]

和

.. math::
    \phi_{K^0_2} \equiv \frac{1}{\sqrt{2}} \big[ \psi_{K^0} - \psi_{\overline{K^0}} \big]

它们分别具有 :math:`\mathsf{CP}` 本征值 :math:`+1` 和 :math:`-1`. 例如, 

.. math::
    \mathsf{CP} \phi_{K^0_2} =&\ \frac{1}{\sqrt{2}} \big[ \mathsf{CP} \psi_{K^0} - \mathsf{CP} \psi_{\overline{K^0}} \big] \\
        =&\ \frac{1}{\sqrt{2}} \big[ \psi_{\overline{K^0}} - \psi_{K^0} \big] = -\phi_{K^0_2}

这些粒子最快的可行的衰变模式是衰变到两个 :math:`\pi` 子态, 但是 :math:`\mathsf{CP}` 守恒只对 :math:`K_1` 允许这种衰变, 而对 :math:`K_2` 不允许. 那么 :math:`K_2^0` 将被期待以较慢的模式衰变, 变成三个 :math:`\pi` 子, 或者一个 :math:`\pi` 子或 :math:`\mu` 子或电子, 和一个中微子. 尽管如此, 在 1964 年 Fitch 和 Cronin 发现长寿命的中性 :math:`K` 介子确实有较小的概率衰变为两个 :math:`\pi` 子 (这里既然是长寿命的, 那么应该只剩 :math:`K_0^2` 了, 然而按照 :math:`\mathsf{CP}` 守恒 :math:`K_2^0` 是不能衰变为两个 :math:`\pi` 子的, 因此违背了 :math:`\mathsf{CP}` 守恒). 结论是 :math:`\mathsf{CP}` 在弱相互作用中并不精确守恒, 尽管似乎它比 :math:`\mathsf{C}` 和 :math:`\mathsf{P}` 单独的情况更加守恒许多.

我们在第五章将看到, 有很好的理由认为, 尽管 :math:`\mathsf{C}` 和 :math:`\mathsf{CP}` 都不严格守恒, 但是乘积 :math:`\mathsf{CPT}` 在所有的相互作用中精确守恒, 至少在所有量子场论. :math:`\mathsf{CPT}` 提供了粒子和反粒子之间的精确对应. 特别地, :math:`\mathsf{CPT}` 和哈密顿量对易 (一个算符和哈密顿量对易等价于说它是守恒的) 告诉我们稳定的粒子和反粒子有精确相同的质量. 因为 :math:`\mathsf{CPT}` 是反幺正的, 它把任意过程的 :math:`S` 矩阵, 和其逆过程的 :math:`S` 矩阵联系起来, 其中这个逆过程的所有自旋第三分量都反转, 并且粒子换为反粒子 (这里 "逆" 过程体现了反幺正性). 但是, 当 :math:`S` 矩阵可以被分为一个弱项 :math:`S^{(1)}` 和一个强项 :math:`S^{(0)}`, 其中 :math:`S^{(1)}` 产生了给定的反应而 :math:`S^{(0)}` 作用在初态和末态上 (这里的叙述参考 :math:`S^{(1)}` 的实条件就可以理解), 我们可以基于和之前研究 :math:`\mathsf{T}` 守恒影响的相同的论述, 证明任何过程的速率, 和所有自旋第三分量都反转, 并且粒子换为反粒子同样过程的速率一定相等, 只要我们在关于 :math:`S^{(0)}` 完全的初态和末态的集合上求和. 特别地, 尽管粒子衰变成一对末态 :math:`\beta_1, \beta_2` 的部分速率, 若满足 :math:`S_{\beta_1\beta_2}^{(0)} \neq 0`, 可能和反粒子衰变为对应的终态 :math:`\mathscr{CPT}\beta_1` 和 :math:`\mathscr{CPT}\beta_2` 的部分速率不相等, 在3.5节我们将看到 (在没有任何近似的情况下) 任何粒子总的衰变速率和它的反粒子是相等的.

现在我们可以理解为什么 1957年关于宇称破缺的实验, 可以在现在的弱相互作用理论框架中被解释为 :math:`\mathsf{C}` 和 :math:`\mathsf{P}` 都严重破缺的证据, 但却不构成 :math:`\mathsf{CP}` 破缺的证据. 这些理论是场论, 因此自动保持 :math:`\mathsf{CPT}` 守恒. 因为那个实验证明了在核 beta 衰变中 :math:`\mathsf{PT}` 守恒而不是 :math:`\mathsf{T}` 守恒严重破坏, 任何和这些实验相一致的, 并且 :math:`\mathsf{CPT}` 守恒的理论将不得不包含 :math:`\mathsf{C}` 而不是 :math:`\mathsf{CP}` 不守恒 (这里是说, :math:`\mathsf{CPT}` 是好的, 实验证明 :math:`\mathsf{PT}` 是坏的, 那么必然导致 :math:`\mathsf{CPT}` 减去 :math:`\mathsf{PT}` 的 :math:`\mathsf{C}` 是坏的. 如果要导致 :math:`\mathsf{CP}` 是坏的, 就必须证明 :math:`\mathsf{T}` 是坏的, 但是这个没有被证明).

类似地, 1964年关于弱相互作用中 :math:`\mathsf{CP}` 守恒的小破坏, 和假定的所有相互作用中 :math:`\mathsf{CPT}` 的不变性, 立刻导致了弱相互作用中 :math:`\mathsf{T}` 不精确守恒的推论. 这个被关于 :math:`K^0-\overline{K^0}` 系统更细致的研究所证实. 但是至今还无法找到时间反演不变性破坏的其他直接证据.
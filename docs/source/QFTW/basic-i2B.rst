
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
    

第二章 相对论量子力学 (B)
=========================

第五节 单粒子态
---------------

1 单粒子态的定义
^^^^^^^^^^^^^^^^

现在我们希望根据单粒子态在非齐次洛伦兹变换群元作用下的变换性质, 来对这些单粒子态进行分类.

能量-动量四矢量的各分量互相对易, 因此可以把物理态矢表示为四动量的本征矢. (更进一步, 它们都与 :math:`H` 对易, 因此这样的本征矢在薛定谔方程决定的演化下是守恒的, 即不随时间改变. ) 使用 :math:`\sigma` 指标标记所有其他自由度. 因此我们考虑的态矢 :math:`\psi_{p, \sigma}` 满足

.. math:: 
    P^\mu \psi_{p, \sigma} = p^\mu \psi_{p, \sigma}

对一般的态, 例如由几个非束缚粒子构成的态, :math:`\sigma` 指标应该既包括连续指标也包括离散指标. 这里, 我们只考虑单粒子态. 并且, 我们定义单粒子态为要求单粒子态的 :math:`\sigma` 指标是纯离散的. (但是, 某些两个或多个粒子的束缚态, 比如氢原子的基态, 被认为是单粒子态. 这不是一个 **基本** (elementary) 粒子, 但是复合粒子和基本粒子的区别对于我们这里的讨论是不相关的. )

2 单粒子态的洛伦兹变换
^^^^^^^^^^^^^^^^^^^^^^

为研究单粒子态在非齐次洛伦兹变换, 可以分别考虑单粒子态的平移变换和单粒子态的齐次洛伦兹变换.

先考虑单粒子态在平移下的变换. 利用 [定理27] :math:`U(1, a) = \exp (-\I P^\mu a_\mu)` 和上面的本征方程得

.. math:: 
    U(1, a)\psi_{p,\sigma} = \exp (-\I P^aa_a) \psi_{p,\sigma} = \exp (-\I p^aa_a) \psi_{p,\sigma}

其中 :math:`p^aa_a \equiv P^\mu a_\mu` 为四矢量的内积 (其中 :math:`a` 是抽象指标).

现在考虑单粒子态的齐次洛伦兹变换. 根据 :eq:`jp-lambda-trans` 有

.. math:: 
    U(\Lambda, a)P^\rho U^{-1}(\Lambda, a) = \xtensor{\Lambda}{_\mu}{^\rho} P^\mu

令 :math:`U(\Lambda) \equiv U(\Lambda, 0)` 有

.. math:: 
    U^{-1}(\Lambda)P^\mu U(\Lambda) = U(\Lambda^{-1})P^\mu U^{-1}(\Lambda^{-1}) = \xtensor{(\Lambda^{-1})}{_\rho}{^\mu} P^\rho = \xtensor{\Lambda}{^\mu}{_\rho} P^\rho

其中最后一步利用了 [定理17].

[定理31] 齐次洛伦兹变换 :math:`U(\Lambda)` 作用于态矢 :math:`\psi_{p, \sigma}` 得到的态 :math:`U(\Lambda)\psi_{p, \sigma}` 是四动量 :math:`P^a` 的本征态 (其中 :math:`a` 是抽象指标), 对应的本征值为 :math:`\Lambda p`.

[证明] 考虑用 :math:`P^\mu` 作用于变换后的态 :math:`U(\Lambda)\psi_{p, \sigma}`, 有

.. math:: 
    P^\mu U(\Lambda) \psi_{p, \sigma} =&\ \big[U(\Lambda)U^{-1}(\Lambda) \big] P^\mu U(\Lambda) \psi_{p, \sigma} 
    = U(\Lambda)\big[ U^{-1}(\Lambda) P^\mu U(\Lambda) \big] \psi_{p, \sigma} \\
    =&\ U(\Lambda)\big[ \xtensor{\Lambda}{^\mu}{_\rho} P^\rho \big] \psi_{p, \sigma} 
    =   U(\Lambda)\big[ \xtensor{\Lambda}{^\mu}{_\rho} p^\rho \big] \psi_{p, \sigma} \\
    =&\ \xtensor{\Lambda}{^\mu}{_\rho} p^\rho U(\Lambda) \psi_{p, \sigma}

其中最后一步能够把 :math:`U(\Lambda)` 和 :math:`\xtensor{\Lambda}{^\mu}{_\rho}, p^\rho` 调换位置, 是因为 :math:`p, \Lambda` 都是实参数, 而 :math:`U(\Lambda)` 是算符. 为了进一步解释这一个问题, 注意在 :math:`U(\Lambda)` 的无穷小展开式中, 首先 :math:`\xtensor{\Lambda}{^\mu}{_\nu} = \xtensor{\delta}{^\mu}{_\nu} + \xtensor{\omega}{^\mu}{_\nu}`, 说明若 :math:`\omega` 是实参数, 则 :math:`\Lambda` 也是实参数. 而根据 :eq:`ujp-expansion`

.. math:: 
    U(1+\omega, \epsilon) = 1+ \frac{1}{2} \I \omega_{\rho\sigma} J^{\rho\sigma} - \I \epsilon_\rho P^\rho + \cdots

说明 :math:`U(\Lambda), J, P` 都是算符, 其中 :math:`U(\Lambda)` 可以表成实参数 :math:`\omega, \epsilon` 和算符 :math:`J, P` 的乘积形式. :math:`p` 是厄米算符 :math:`P` 的本征值因此是实数. 因此 :math:`U(\Lambda)` 和 :math:`\xtensor{\Lambda}{^\mu}{_\rho}, p^\rho` 调换位置是没有问题的.

于是 :math:`P^\mu \big[ U(\Lambda) \psi_{p, \sigma} \big] = (\Lambda p)^\mu \big[ U(\Lambda) \psi_{p, \sigma} \big]`. 即 :math:`U(\Lambda)\psi_{p, \sigma}` 是四动量 :math:`P^a` 对应于本征值 :math:`(\Lambda p)^a` 的本征态. 而这样的本征态又可以表为 :math:`\psi_{\Lambda p,\sigma'}`, 从而 :math:`U(\Lambda) \psi_{p, \sigma}` 必须是态矢 :math:`\psi_{\Lambda p,\sigma'}` 的线性组合

.. math:: 
    U(\Lambda) \psi_{p, \sigma} = \sum_{\sigma'} C_{\sigma'\sigma}(\Lambda, p) \psi_{\Lambda p,\sigma'}
    :label: sigma-sigma-p-linear-comb

注意这个线性组合是在 :math:`\sigma` 空间的. 也就是说, 在 :math:`p` 空间, 已经能确定态 :math:`\psi_{\Lambda p,\sigma'}` 和 :math:`U(\Lambda) \psi_{p, \sigma}` 只相差一个缩放因子, 因为它们都是 :math:`P^a` 的本征态并且本征值已经确定. 但是注意到变换 :math:`U(\Lambda)` 虽然只是将 :math:`P` 的一个本征态变为另一个本征态, 但对于其他自由度 :math:`\sigma`, 变换 :math:`U(\Lambda)` 可能会把某 :math:`\sigma` 的本征态变为其他一些态的叠加. 因此需要表示成线性组合的形式.

这里可能提出的问题是, 为什么对于齐次洛伦兹变换, 会造成 :math:`\sigma` 的线性组合, 而平移变换则不会? 关键在于, 平移变换相当于 :math:`\omega = 0`, :math:`U(1, a)` 的唯一生成元就是 :math:`P` (这就是为什么 :math:`U(1, a)` 能写成 :math:`\E^{-\I p^\mu a_\mu}` 的形式), 因此平移变换的 :math:`U(1, a)` 只能在动量 :math:`P` 空间造成影响. 而在本征态表示式 :math:`\psi_{p, \sigma}` 中, 已经人为将动量空间 :math:`p` 和其他空间 :math:`\sigma` 分离, 从而这样的 :math:`U(1, a)` 不可能对其他空间造成作用.

3 不可约表示
^^^^^^^^^^^^

注意 :eq:`sigma-sigma-p-linear-comb` 可以理解为 :math:`A^\sigma = \xtensor{C}{^\sigma}{_{\sigma'}}A'^{\sigma'}` (其中等号右边用了 :math:`\sigma'` 完全是因为为了求和时避免和左边重复. 当单独写时, 不必写 :math:`\sigma'`, 而 :math:`A^\sigma` 和 :math:`A'^\sigma` 是在 :math:`\sigma` 表象下的两个不同矢量), 因为等式两边 :math:`p` 的下标都没有变化, 所以可以暂时不关心 :math:`p` 的下标. 那么, 我们就可以引入某种线性变换 :math:`U` 将 :math:`C` 矩阵对角化, 即 :math:`UA = UCU^{-1}UA'`. 可以适当选择 :math:`U` 使得 :math:`UCU^{-1}` 是对角的, 而 :math:`UA'` 和 :math:`UA` 是变换后的态矢 (相当于选择了另一个表象, 这个新选的表象再用 :math:`\rho` 指标标记). 即 (加下划线的重复指标不参与求和, 也可以理解为同在上方或者同在下方的指标不参与求和, 加下划线只是为了强调)

.. math:: 
    \xtensor{U}{^\rho}{_\sigma}A^\sigma =&\ B^\rho,\quad \xtensor{U}{^\rho}{_\sigma}A'^\sigma = B'^\rho \\
    \xtensor{U}{^\rho}{_\sigma} \xtensor{C}{^\sigma}{_{\sigma'}} (\Lambda, p) \xtensor{(U^{-1})}{^{\sigma'}}{_{\rho'}}
     =&\ D^{\underline{\rho}}(\Lambda, p)\xtensor{\delta}{^{\underline{\rho}}}{_{\rho'}}

其中 :math:`D^{\underline{\rho}}(\Lambda, p)\xtensor{\delta}{^{\underline{\rho}}}{_{\rho'}}` 表示一个对角矩阵 :math:`D(\Lambda, p)` (这个矩阵是分块对角的, 只是关于 :math:`\sigma` 指标对角, 关于其他参数则是一般矩阵). 现在, 再回到我们原来的式子. 假设已经做了这样的对角化, :eq:`sigma-sigma-p-linear-comb` 就变成

.. math:: 
    U(\Lambda)\psi_{p,\rho} = D_{\underline{\rho}}(\Lambda, p)\xtensor{\delta}{^{\rho'}}{_{\underline{\rho}}}\psi_{\Lambda p,\rho'} = D_{\underline{\rho}}(\Lambda, p) \psi_{\Lambda p,\underline{\rho}}

把 :math:`\rho` 指标记为 :math:`\sigma`, :math:`D` 记为 :math:`C` 得

.. math:: 
    U(\Lambda)\psi_{p,\sigma} = C_{\underline{\sigma}}(\Lambda, p) \psi_{\Lambda p,\underline{\sigma}}

注意左边右边的 :math:`\sigma` 是同一个 :math:`\sigma`, 也就是说, :math:`U(\Lambda)` 把一个 :math:`\sigma` 的态变为一个相同 :math:`\sigma` 的态.

综上, 我们可以使用 :math:`\psi_{p, \sigma}` 的适当线性组合 (线性变换就是线性组合) 来选择 :math:`\sigma` 指标, 从而矩阵 :math:`\xtensor{C}{^\sigma}{_{\sigma'}} (\Lambda, p)` 是分块对角的; 或者说, 固定 :math:`\sigma` 值的 :math:`\psi_{p, \sigma}` (也就是选择任意一个分块对角矩阵的块) 构成一个非齐次洛伦兹群的表示. 这里之所以是非齐次的, 是因为结合前面平移的式子, 平移的作用也是从一个 :math:`\sigma` 到同样的 :math:`\sigma`, 因此关于 :math:`\sigma` 是对角的, 而态的变化通过相因子来表示. 例如, :math:`\psi_{p,\sigma}` 是恒等变换的表示, :math:`\exp (-\I p^aa_a) \psi_{p,\sigma}` 就是 :math:`U(1, a)` 的表示. 齐次洛伦兹变换的式子也可以结合同样的方法理解. 我们只需要选择任意一个 :math:`\sigma`, 就得到一个表示. 选择另一个 :math:`\sigma` 得到另一个表示. 但是对于 :math:`p` 的选择, 由于对于齐次洛伦兹变换, :math:`p` 会改变 (变成 :math:`\Lambda p`), 因此需要用上所有 :math:`p` 的态才能构成一个表示.

因此我们可以将特定粒子的态与非齐次洛伦兹群的表示的分量相认同. 这种表示应该是不可约的, 也就是说, 它不再能继续按这样的方式分解. 我们现在的任务是找出在非齐次洛仑兹群的不可约表示中系数 :math:`\xtensor{C}{^\sigma}{_{\sigma'}} (\Lambda, p)` 的结构.

4 标准四动量
^^^^^^^^^^^^

[定理32] 在固有正时洛伦兹变换 :math:`\xtensor{\Lambda}{^\mu}{_\nu}` 作用下不变的 :math:`p^\mu` 的函数仅有 :math:`p^2 \equiv \eta_{\mu\nu}p^\mu p^\nu` 以及当 :math:`p^2 \leqslant 0` 时, :math:`p^0` 的符号.

[证明] 为了证明第一点, 设 :math:`p'^\mu = \xtensor{\Lambda}{^\mu}{_\nu}p^\nu`, 则需证明 :math:`p'^2 = p^2`, 即

.. math:: 
    \eta_{\mu\nu} (\xtensor{\Lambda}{^\mu}{_\rho}p^\rho)(\xtensor{\Lambda}{^\nu}{_\sigma}p^\sigma) = \eta_{\mu\nu}p^\mu p^\nu

利用 :eq:`lorentz-trans-cond` 即 :math:`\eta_{\mu\nu}\xtensor{\Lambda}{^\mu}{_\rho}\xtensor{\Lambda}{^\nu}{_\sigma} = \eta_{\rho\sigma}`, 有

.. math:: 
    \eta_{\mu\nu} (\xtensor{\Lambda}{^\mu}{_\sigma}p^\sigma)(\xtensor{\Lambda}{^\nu}{_\rho}p^\rho) =
    \eta_{\rho\sigma} p^\rho p^\sigma = \eta_{\mu\nu}p^\mu p^\nu

为证第二点, 固有正时洛伦兹变换要求 :math:`\xtensor{\Lambda}{^0}{_0} \geqslant 1`. 不妨设 :math:`p^0 \geqslant 0`. 欲证 :math:`p'^0 = \xtensor{\Lambda}{^0}{_\mu} p^\mu \geqslant 0`. 注意到

.. math:: 
    \xtensor{\Lambda}{^0}{_\mu} p^\mu = \xtensor{\Lambda}{^0}{_0}p^0 +\xtensor{\Lambda}{^0}{_i}p^i \geqslant \xtensor{\Lambda}{^0}{_0}p^0 - |\xtensor{\Lambda}{^0}{_i}p^i|

而 :math:`\xtensor{\Lambda}{^0}{_i}p^i` 作为矢量内积, 其长度小于等于 :math:`\xtensor{\Lambda}{^0}{_i}` 和 :math:`p^i` 的长度乘积, 即

.. math:: 
    |\xtensor{\Lambda}{^0}{_i}p^i| \leqslant \sqrt{\eta^{ij}\xtensor{\Lambda}{^0}{_i}\xtensor{\Lambda}{^0}{_j}}\sqrt{p^ip_i}

利用 :eq:`lambda-i0` 可知 :math:`\sqrt{\eta^{ij}\xtensor{\Lambda}{^0}{_i}\xtensor{\Lambda}{^0}{_j}} = \sqrt{\big( \xtensor{\Lambda}{^0}{_0} \big)^2 - 1}`. 另一方面, 由 :math:`p^2 \leqslant 0` 及 :math:`p^0 \geqslant 0` 得

.. math:: 
    -(p^0)^2 + p^ip_i \leqslant 0 \quad \Rightarrow \quad p^ip_i \leqslant (p^0)^2 \quad \Rightarrow \quad
        \sqrt{p^ip_i} \leqslant p^0
    
于是

.. math:: 
    p'^0 =&\ \xtensor{\Lambda}{^0}{_\mu} p^\mu \geqslant \xtensor{\Lambda}{^0}{_0}p^0
        - \sqrt{\eta^{ij}\xtensor{\Lambda}{^0}{_i}\xtensor{\Lambda}{^0}{_j}}\sqrt{p^ip_i} \\
        \geqslant&\ \xtensor{\Lambda}{^0}{_0}p^0 - \sqrt{\big( \xtensor{\Lambda}{^0}{_0} \big)^2 - 1} p^0 \\
        =&\ \big[ \xtensor{\Lambda}{^0}{_0} - \sqrt{\big( \xtensor{\Lambda}{^0}{_0} \big)^2 - 1} \big] p^0

由于 :math:`\xtensor{\Lambda}{^0}{_0} - \sqrt{\big( \xtensor{\Lambda}{^0}{_0} \big)^2 - 1} > 0`, 因此必有 :math:`p'^0` 和 :math:`p^0` 符号相同.

因此, 对每一个 :math:`p^2` 的值和 (对 :math:`p^2 \leqslant 0`) 每一种 :math:`p^0` 的符号, 我们可以选择一个 "标准" 四动量, 记作 :math:`k^\mu`, 并将属于这一类别的任何 :math:`p^\mu` 表示为

.. math:: 
    p^\mu = \xtensor{L}{^\mu}{_\nu}(p)k^\nu

其中 :math:`\xtensor{L}{^\mu}{_\nu}` 是依赖于 :math:`p^\mu`, 并隐含依赖于标准 :math:`k^\mu` 的选择的标准洛伦兹变换. 现在定义动量 :math:`p` 关联的态 :math:`\psi_{p,\sigma}` 为

.. math:: 
    \psi_{p,\sigma} \equiv N(p) U(L(p)) \psi_{k,\sigma}
    :label: psi-pk-def

其中 :math:`N(p)` 是一个数值的归一化因子, 将在后面讨论. 下面我们将利用上式推出 :math:`\sigma` 指标和不同动量之间的关联. 注意这里 :eq:`psi-pk-def` 并不涉及 :math:`\sigma` 指标的混合, 但是由 :math:`U(L(p))` 我们有了一个把 :math:`U(\Lambda)` 作用纯化到使 :math:`\sigma` 不变的效果. 因此可以利用 :math:`L` 对一般的作用 :math:`U(\Lambda)` 进行分解.

5 小群
^^^^^^

将一个任意的齐次洛伦兹变换 :math:`U(\Lambda)` 作用于 :math:`\psi_{p,\sigma}` 得

.. math:: 
    U(\Lambda)\psi_{p,\sigma} =&\ N(p)U(\Lambda)U(L(p)) \psi_{k,\sigma} = N(p)U(\Lambda L(p)) \psi_{k,\sigma} \\
    =&\ N(p)U(L(\Lambda p))U(L^{-1}(\Lambda p))U(\Lambda L(p))\psi_{k,\sigma} \\
    =&\  N(p)U(L(\Lambda p))U(L^{-1}(\Lambda p)\Lambda L(p))\psi_{k,\sigma}
    :label: ulambdap-np

考虑洛伦兹变换 :math:`L^{-1}(\Lambda p)\Lambda L(p)`. 它作用在 :math:`k` 上先得到 :math:`L(p)k = p`, 然后再经过 :math:`\Lambda` 作用得到 :math:`\Lambda p`, 然后 :math:`L^{-1}(\Lambda p)` 再将其变回 :math:`k`. 因此这个洛伦兹变换 :math:`W \equiv L^{-1}(\Lambda p)\Lambda L(p)` 属于齐次洛伦兹群的一个子群, 这个子群中的变换 :math:`\xtensor{W}{^\mu}{_\nu}` 使 :math:`k^\mu` 不变, 即

.. math:: 
    \xtensor{W}{^\mu}{_\nu} k^\nu = k^\mu

这个子群叫做 **小群** (little group). 对一个由作用于某空间 :math:`X` 的变换构成的变换群 :math:`G`, 一般把能保持某些 :math:`x \in X` 不变的群元组成的子群称为小群. 在这里, 这个小群保持 :math:`k` 不变. 而 :math:`k` 某些是特定的动量. 注意 :math:`\Lambda L(p) \neq L(\Lambda p)`. :math:`L(\Lambda p)` 不仅把 :math:`k` 变成 :math:`\Lambda p`, 还维持 :math:`\sigma` 不变. 但是 :math:`\Lambda L(p)` 不保证 :math:`\sigma` 不变.

对于任何满足 :math:`\xtensor{W}{^\mu}{_\nu} k^\nu = k^\mu` 的 :math:`W`, 我们有

.. math:: 
    U(W) \psi_{k, \sigma} = \xtensor{D}{^{\sigma'}}{_\sigma}(W) \psi_{k, \sigma'}
    :label: uwk-sigma

其中由定义 :math:`k` 指标不应该改变, 但是 :math:`\sigma` 指标可能会改变.

[定理33] 系数 :math:`D(W)` 构成小群的一个表示. 也就是说, 对于小群的一个元素 :math:`W`, :math:`D(W)` 是它的表示, :math:`D(W)` 看成一个矩阵, 这个矩阵的分量记为 :math:`\xtensor{D}{^{\sigma'}}{_\sigma}(W)`.

[证明] 为了证明 :math:`D(W)` 构成一个表示, 我们需要证明 :math:`D(W'W) = D(W')D(W)`, 也就是 :math:`D(W)` 满足和 :math:`W` 相同的群乘法规则. 为此, 考虑任意 :math:`W', W`, 我们有 (第一步利用 :eq:`uwk-sigma`. 第二步, 注意 :math:`U(W)` 已经是 :math:`W` 的一个表示)

.. math:: 
    \xtensor{D}{^{\sigma'}}{_\sigma}(W'W) \psi_{k, \sigma'} =&\ U(W'W) \psi_{k, \sigma} = U(W')U(W)\psi_{k, \sigma} \\
    =&\ U(W')\xtensor{D}{^{\sigma'}}{_\sigma}(W) \psi_{k, \sigma'} 
    = \xtensor{D}{^{\sigma''}}{_\sigma}(W')\xtensor{D}{^{\sigma'}}{_{\sigma''}}(W) \psi_{k, \sigma'}

由于 :math:`\psi_{k, \sigma'}` 是任意的, 便有

.. math:: 
    \xtensor{D}{^{\sigma'}}{_\sigma}(W'W) = \xtensor{D}{^{\sigma''}}{_\sigma}(W')\xtensor{D}{^{\sigma'}}{_{\sigma''}}(W)

特别地, 我们可以把 :eq:`uwk-sigma` 应用于小群变换

.. math:: 
    W(\Lambda, p) \equiv L^{-1}(\Lambda p)\Lambda L(p)

也就是说, 令 :eq:`uwk-sigma` 中的 :math:`W` 为 :math:`W(\Lambda, p)`, 得

.. math:: 
    U(W(\Lambda, p)) \psi_{k, \sigma} = \xtensor{D}{^{\sigma'}}{_\sigma}(W(\Lambda, p)) \psi_{k, \sigma'}

再将 :eq:`ulambdap-np` 中的 :math:`U(L^{-1}(\Lambda p)\Lambda L(p))` 改写为 :math:`U(W(\Lambda, p))` 并代入上式, 得

.. math:: 
    U(\Lambda)\psi_{p,\sigma} =&\ N(p)U(L(\Lambda p))U(W(\Lambda, p))\psi_{k, \sigma} \\
    =&\ N(p)U(L(\Lambda p)) \xtensor{D}{^{\sigma'}}{_\sigma}(W(\Lambda, p)) \psi_{k, \sigma'} \\
    =&\ N(p) \xtensor{D}{^{\sigma'}}{_\sigma}(W(\Lambda, p)) U(L(\Lambda p)) \psi_{k, \sigma'}
    :label: ulambda-w-pk

其中最后一步, 本来要求 :math:`U(W(\Lambda, p))` 先作用, :math:`U(L(\Lambda p))` 后作用, 但是为什么可以调换顺序? 首先的理由就是 :math:`\xtensor{D}{^{\sigma'}}{_\sigma}(W(\Lambda, p))` 已经变成了一堆数字, 因此可以更改顺序. 更深层次的理由是, 由于把下标 :math:`\sigma` 变成了 :math:`\sigma'`, 因此实际上以矩阵相乘的分量关系形式固定了作用顺序, 这种作用顺序由下标体现, 不再需要强制左右顺序. 所以即便 :math:`\xtensor{D}{^{\sigma'}}{_\sigma}(W(\Lambda, p))` 写在前面, 它的作用还是先作用, 这一点没有发生实质改变.

再利用 :eq:`psi-pk-def`, 即 :math:`\psi_{p,\sigma} \equiv N(p) U(L(p)) \psi_{k,\sigma}` 得

.. math:: 
    \psi_{k,\sigma} = \frac{1}{N(\Lambda p)U(L(\Lambda p))} \psi_{\Lambda p,\sigma}

代入 :eq:`ulambda-w-pk` 得

.. math:: 
    U(\Lambda)\psi_{p,\sigma} =&\ \frac{N(p) \xtensor{D}{^{\sigma'}}{_\sigma}(W(\Lambda, p)) U(L(\Lambda p))}{N(\Lambda p)U(L(\Lambda p))} \psi_{\Lambda p,\sigma'} \\
    =&\ \left( \frac{N(p)}{N(\Lambda p)} \right) \xtensor{D}{^{\sigma'}}{_\sigma}(W(\Lambda, p)) \psi_{\Lambda p,\sigma'}
    :label: sigma-sigma-w-linear

现在总结一下这里的思路. 把所有主要的式子, 即 :eq:`ulambdap-np`, :eq:`uwk-sigma` 以及 :eq:`sigma-sigma-w-linear` 列在下面:

.. math:: 
    U(\Lambda)\psi_{p,\sigma} =&\  N(p)U(L(\Lambda p))U(W(\Lambda, p))\psi_{k,\sigma} \\
    U(W) \psi_{k, \sigma} =&\ \xtensor{D}{^{\sigma'}}{_\sigma}(W) \psi_{k, \sigma'} \\
    U(\Lambda)\psi_{p,\sigma} =&\ \left( \frac{N(p)}{N(\Lambda p)} \right) \xtensor{D}{^{\sigma'}}{_\sigma}(W(\Lambda, p)) \psi_{\Lambda p,\sigma'}

其中第一式是把一个一般的作用, 即 :math:`U(\Lambda)` 分解为对 :math:`\sigma` 的纯作用和对 :math:`p` 的作用. 其中, :math:`U(W(\Lambda, p))` 不改变 :math:`k`, 那么它只能是把各种 :math:`\sigma` 之间进行组合. 而 :math:`U(L(\Lambda p))` 的作用则主要是对 :math:`p` 的作用. 第一式做了这样的一个分解. 第二式将 :math:`U(W(\Lambda, p))` 不改变 :math:`k` 而作用于 :math:`\sigma` 这一点明显地表示出来. 它把一个 :math:`\psi_{k, \sigma}` 态变成 :math:`\psi_{k, \sigma'}` 态的线性组合. 最后一式, 则去除 :math:`k` 的依赖, 将对 :math:`p` 的作用直接作用于态矢, 因此会发现一个一般的作用 :math:`U(\Lambda)` 可以理解为先将 :math:`p` 变到 :math:`\Lambda p`, 然后对 :math:`\sigma` 的作用由 :math:`\xtensor{D}{^{\sigma'}}{_\sigma}` 矩阵给出. 不过, 其实 :math:`U(\Lambda)` 的作用可以分解为把波函数中 :math:`p` 变为 :math:`\Lambda p` 的作用和混合 :math:`\sigma` 的作用这一点, 早已经在 :eq:`sigma-sigma-p-linear-comb` 中有了体现.

对比 :eq:`sigma-sigma-w-linear` 和 :eq:`sigma-sigma-p-linear-comb`, 我们发现, 除了归一化的问题以外, 决定变换规则 :eq:`sigma-sigma-p-linear-comb` 中系数 :math:`\xtensor{C}{^{\sigma'}}{_\sigma}(\Lambda, p)` 的问题已经约化为找到小群的表示的问题. 这个从小群表示推导像非齐次洛伦兹群这样的群的表示的方法, 称为诱导表示法. 注意这里两个式子的区别只是 :math:`\xtensor{C}{^{\sigma'}}{_\sigma}(\Lambda, p)` 变成了 :math:`\xtensor{D}{^{\sigma'}}{_\sigma}(W(\Lambda, p))`. 这里的变化还是比较重要的. 关键是, 原来只知道 :math:`U(\Lambda)` 的作用一部分的效果是把波函数中 :math:`p` 变为 :math:`\Lambda p`, 至于另一部分效果只能用一个非常一般的 :math:`\xtensor{C}{^{\sigma'}}{_\sigma}(\Lambda, p)` 来表示. 而这里推出了这个一般的系数其实是小群的表示, 而这个小群是使 :math:`k` 不变的小群. 也就是说, :math:`\xtensor{D}{^{\sigma'}}{_\sigma}(W(\Lambda, p))` 确实给出了更多的信息, 将 :math:`\xtensor{C}{^{\sigma'}}{_\sigma}(\Lambda, p)` 对于 :math:`\Lambda, p` 的依赖性缩窄了.

下面的 [表1] 给出了标准动量 :math:`k^\mu` 的一些通常选择, 以及不同四动量类对应的小群.

[表1] 一些四动量类的标准动量以及对应的小群. 其中 :math:`\kappa` 是一个任意的正能量, 例如 :math:`1\mathrm{\ eV}`. 这些小群是显然的. SO(3) 是普通三维转动群 (不包括空间反射), 因为转动是唯一的, 使一个零动量粒子保持静止的固有正时洛伦兹变换 (因为 "推进" 变换会导致在一个运动坐标系观察, 那么原来静止的粒子就会显示出运动). 而 SO(2,1) 和 SO(3,1) 是 (2+1)- 和 (3+1)- 维的洛伦兹群. ISO(2) 是欧氏几何 (平面几何) 群, 包括二维转动和平移. (如果只有二维转动, 那么这个群是 SO(2), 是1维变换群. 所以整个 ISO(2) 是3维变换群. )

================================== ============================ =======
 情形                                标准 :math:`k^\mu`            小群
================================== ============================ =======
(a) :math:`p^2 = -M^2<0, p^0 > 0`  :math:`(M,0,0,0)`            SO(3)
(b) :math:`p^2 = -M^2<0, p^0 < 0`  :math:`(-M,0,0,0)`           SO(3)
(c) :math:`p^2 = 0, p^0 > 0`       :math:`(\kappa,\kappa,0,0)`  ISO(2)
(d) :math:`p^2 = 0, p^0 < 0`       :math:`(-\kappa,\kappa,0,0)` ISO(2)
(e) :math:`p^2 = N^2 > 0`          :math:`(0,N,0,0)`            SO(2,1)
(f) :math:`p^\mu = 0`              :math:`(0,0,0,0)`            SO(3,1)
================================== ============================ =======

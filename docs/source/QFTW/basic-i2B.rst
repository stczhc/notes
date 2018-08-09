
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

其中第一步利用了 [定理18]. 最后一步利用了 [定理17].

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

注意这里有一个问题, 既然 :math:`C` 的指标都可以通过线性变换写成一个 :math:`\sigma` 指标, 那么又为什么要继续用双指标的 :math:`\xtensor{C}{^\sigma}{_{\sigma'}} (\Lambda, p)` 记号, 然后后面的讨论都是洛伦兹变换怎么混合 :math:`\sigma\sigma'` 指标的. 这里的问题在于, 上面对角化的过程中用到了 :math:`U`. 其实假定了同样的 :math:`U` 能把对所有不同 :math:`p` 的 :math:`\xtensor{C}{^\sigma}{_{\sigma'}} (\Lambda, p)` 全部都对角化, 而这一般是不可能的. 也就是说, :math:`U` 实际是 :math:`U(\Lambda, p)`. 那么也就无法得到完全对角化的 :math:`D`. (这里数学上当然可以得到, 但是如果选择的表象变换 :math:`U` 是依赖于 :math:`(\Lambda, p)` 的, 那么每个 :math:`(\Lambda, p)` 对应的 :math:`\sigma` 经历了不同的变换, 那么 :math:`\sigma` 就失去了物理意义. 比如, 如果 :math:`\sigma` 原来表示坐标, 现在属于某 :math:`(\Lambda, p)` 的 :math:`\sigma` 作恒等变换, 对于另一些 :math:`(\Lambda, p)` 的做其他变换, 那么 :math:`\sigma` 指标就不能统一的说还表示坐标. 因此是不能这么变换的. 只有 :math:`U(\Lambda, p)` 与 :math:`(\Lambda, p)` 无关的时候, 才能统一做表象变换) 对一般的情况, 有些 :math:`\sigma` 指标是与 :math:`p` 空间有关联的, 有一些是无关联的 (对这些无关联的就满足 :math:`U(p) = U`). 现在要求把这些无关联的部分都对角化, 就得到多个对角化块. 现在认为每一个对角化块表示一种特定粒子 (即书中所说 "因此我们可以将特定粒子的态与非齐次洛伦兹群的表示的分量相认同"), 而我们只考虑单粒子态, 因此也就是说在我们的情况下, :math:`\sigma\sigma'` 一定是无法通过这种表象变换进行对角化的, 即难以处理的部分. 这部分必然与 :math:`(\Lambda, p)` 有所关联. 下面只讨论这样具有关联的 :math:`\sigma` 指标. 换句话说, 有些 :math:`\sigma` 表示的观测量是在洛伦兹变换下不变的, 即和洛伦兹变换的参数 :math:`(\Lambda, p)` 没有关联, 这些在洛伦兹变换下不变的性质完全可以用来定义粒子类型, 因此排除在我们的讨论之外. 我们希望讨论在洛伦兹变换下有所改变的那些 :math:`\sigma`. [#ref1]_

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

注意这里考虑洛伦兹变换下动量的 :math:`p^2` 和 :math:`p^0` 符号不变, 是希望知道洛伦兹变换对动量的改变是怎样的. 现在洛伦兹变换不能改变 :math:`p^2`, 那么我们把 :math:`p` 分成两部分, 一部分洛伦兹变换下不变的称为 :math:`k`. 我们只需要选择一个 :math:`k` 的态矢的集合. 从这个态矢的集合到属于所有一般的 :math:`p` 的态矢, 只需要施加洛伦兹变换.

因此, 对每一个 :math:`p^2` 的值和 (对 :math:`p^2 \leqslant 0`) 每一种 :math:`p^0` 的符号, 我们可以选择一个 "标准" 四动量, 记作 :math:`k^\mu`, 并将属于这一类别的任何 :math:`p^\mu` 表示为

.. math:: 
    p^\mu = \xtensor{L}{^\mu}{_\nu}(p)k^\nu
    :label: plpk

其中 :math:`\xtensor{L}{^\mu}{_\nu}` 是依赖于 :math:`p^\mu`, 并隐含依赖于标准 :math:`k^\mu` 的选择的标准洛伦兹变换. 现在定义动量 :math:`p` 关联的态 :math:`\psi_{p,\sigma}` 为

.. math:: 
    \psi_{p,\sigma} \equiv N(p) U(L(p)) \psi_{k,\sigma}
    :label: psi-pk-def

其中 :math:`N(p)` 是一个数值的归一化因子, 将在后面讨论. 下面我们将利用上式推出 :math:`\sigma` 指标和不同动量之间的关联. 注意这里 :eq:`psi-pk-def` 并不涉及 :math:`\sigma` 指标的混合, 但是由 :math:`U(L(p))` 我们有了一个把 :math:`U(\Lambda)` 作用纯化到使 :math:`\sigma` 不变的效果. 因此可以利用 :math:`L` 对一般的作用 :math:`U(\Lambda)` 进行分解.

这里首先定义了一个 "标准" 洛伦兹变换可以把 :math:`k` 变成 :math:`p`. 接下来在定义 :math:`\psi_{p,\sigma}` 的时候, 当然一般地说 :math:`\sigma` 也可以变, 但是因为这里是定义所以没有必要制造麻烦, 所以可以定义成 :math:`U(L(p))` 使 :math:`\sigma` 不变. 相当于从洛伦兹变换中抽离已知的部分 (即从 :math:`k` 到 :math:`p` 的变化), 而重点研究剩余的和 :math:`\sigma` 相关的部分. 由于 :math:`U(\Lambda)` 无论如何不可能改变 :math:`p^2`, 所以 :math:`p^2` 的部分不在研究范围之内. [#ref1]_

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
    =&\ U(W')\xtensor{D}{^{\sigma''}}{_\sigma}(W) \psi_{k, \sigma''} 
    = \xtensor{D}{^{\sigma''}}{_\sigma}(W) U(W') \psi_{k, \sigma''} \\
    =&\ \xtensor{D}{^{\sigma''}}{_\sigma}(W) \xtensor{D}{^{\sigma'}}{_{\sigma''}}(W') \psi_{k, \sigma'}

注意上面的推导中, 利用了 :eq:`uwk-sigma` 式. 这个式子的意义是 :math:`U(W)` 把一个 :math:`k` 固定的态表示成矩阵相乘的形式. 这个态必须是 :math:`k` 固定的, 而不能是任意的态. 比如, 若记 :math:`\phi_{\sigma} \equiv \xtensor{D}{^{\sigma'}}{_\sigma}(W) \psi_{k, \sigma'}`, 则不能有 :math:`U(W') \phi_{\sigma} = \xtensor{D}{^{\sigma''}}{_{\sigma}}(W) \phi_{\sigma''}`. 因此, 必须把 :math:`U(W')` 和 (一堆数字) :math:`\xtensor{D}{^{\sigma'}}{_\sigma}(W)` 交换位置, 让 :math:`U(W')` 作用到 :math:`k` 确定的态上. (如果没有交换位置, 而把 :math:`U(W')` 直接作用在 :math:`k` 混合的态上, 将得到错误结果 :math:`\xtensor{D}{^{\sigma''}}{_\sigma}(W') \xtensor{D}{^{\sigma'}}{_{\sigma''}}(W)`. )

由于 :math:`\psi_{k, \sigma'}` 是任意的, 便有

.. math:: 
    \xtensor{D}{^{\sigma'}}{_\sigma}(W'W) = \xtensor{D}{^{\sigma'}}{_{\sigma''}}(W') \xtensor{D}{^{\sigma''}}{_\sigma}(W)

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

[表1] 一些四动量类的标准动量以及对应的小群. 其中 :math:`\kappa` 是一个任意的正能量, 例如 :math:`1\mathrm{\ eV}`. 这些小群是显然的. SO(3) 是普通三维转动群 (不包括空间反射), 因为转动是唯一的, 使一个零动量粒子保持静止的固有正时洛伦兹变换 (因为 "推进" 变换会导致在一个运动坐标系观察, 那么原来静止的粒子就会显示出运动). 而 SO(2,1) 和 SO(3,1) 是 (2+1)- 和 (3+1)- 维的洛伦兹群. ISO(2) 是欧氏几何 (平面几何) 群, 包括二维转动和平移. (如果只有二维转动, 那么这个群是 SO(2), 是1维变换群. 所以整个 ISO(2) 是3维变换群. ) 注意 Weinberg 的书中, :math:`k^\mu` 的最后一个分量为时间分量. 我们这里把时间分量列为第一个分量. 由 :math:`k^\mu` 的定义知, 由于 :math:`p` 和 :math:`k` 由一个洛伦兹变换相联系, 所以对 :math:`p^2` 和 :math:`p^0` 的要求也就是对 :math:`k^2` 和 :math:`k^0` 的要求. 注意这里指标 :math:`2` 代表平方 (不是第2分量), 而指标 :math:`0` 代表第0分量. 

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

在这六类四动量中, 只有 (a), (c) 和 (f) 具有针对物理态的已知解释. (f) 没有什么好解释的 :math:`p^\mu = 0`, 它描述真空, 真空在任意洛伦兹变换 :math:`U(\Lambda)` 下不变. 下面我们只考虑情形 (a) 和 (c), 它们分别代表具有质量 :math:`M >0` 的粒子和零质量粒子. 注意表格中的标准动量都满足相对论的自由粒子能量动量关系

.. math:: 
    \frac{E^2}{c^2} - p^2 = M^2c^2

若取 :math:`c = 1`  并采用之前的标记, 即 :math:`(p^0)^2 = (p^ip_i) + M^2` 或者 :math:`-M^2 = p^\mu p_\mu = p^2`. 其中 :math:`E = p^0`.

6 归一化
^^^^^^^^

现在考虑这些态的归一化. 根据量子力学通常的正交归一化程序, 我们可以让标准动量 :math:`k^\mu` 的态正交归一, 即

.. math:: 
    \big(\psi_{k',\sigma'},\psi_{k,\sigma}\big) = \delta^3(\bm{k}' - \bm{k}) \delta_{\sigma'\sigma}

这里注意归一化必须满足相对论的自由粒子能量动量关系, 因此只需要对三维的 :math:`\bm{k}` 做限制而不必对四动量 :math:`k^a` 做限制 (也就是说, 四动量 :math:`k^a` 中只有3个分量是独立的. 因此不如直接选择三个空间分量. 但是注意, 能量动量关系并没有指定时间分量 :math:`k^0` 的符号. 因此其实还有一个符号的自由度. 但是我们如果限制于情形 (a) 和 (c), 那么很显然 :math:`k^0` 符号被限制为正号, 这样就完全确定了). [#ref2]_ 这里出现 delta 函数是因为 :math:`\psi_{k,\sigma}` 和 :math:`\psi_{k',\sigma'}` 分别是厄米算符具有本征值 :math:`\bm{k}` 和 :math:`\bm{k}'` 的本征态. 而由线性代数, 具有不同本征值的本征态必须是线性独立的, 从而它们的内积只有当 :math:`\bm{k} = \bm{k}'` 时才不为零. 这导致如下定理.

[定理34] :eq:`uwk-sigma` 和 :eq:`sigma-sigma-w-linear` 式中小群的表示是幺正的

.. math:: 
    D^\dagger (W) = D^{-1}(W)

[证明] 首先, 这里的幺正是指把 :math:`\sigma, \sigma'` 看成表示的矩阵的指标, 这个矩阵是幺正的. 所以 :math:`\xtensor{D}{^{\sigma'}}{_\sigma}(W)` 只表示复数. 但是去掉 :math:`\sigma` 指标, 构成矩阵, 可以作为算符的表示, 可以讨论这个矩阵是不是幺正矩阵. 先对 :eq:`uwk-sigma` 取共轭, 得

.. math:: 
    \psi_{k, \sigma}^\dagger U^\dagger(W) = \xtensor{(D^*)}{^{\sigma'}}{_\sigma}(W) \psi^\dagger_{k, \sigma'}

其中 :math:`*` 表示复数共轭. 用上式左乘 :eq:`uwk-sigma` 并利用 :math:`U^\dagger(W)U(W) = 1` 得

.. math:: 
    \psi_{k', \sigma''}^\dagger U^\dagger(W) U(W) \psi_{k, \sigma} =&\ \xtensor{(D^*)}{^{\sigma'}}{_{\sigma''}}(W) \psi^\dagger_{k', \sigma'}
        \xtensor{D}{^{\sigma'''}}{_\sigma}(W) \psi_{k, \sigma'''} \\
    \psi_{k', \sigma''}^\dagger \psi_{k, \sigma} =&\ \xtensor{(D^*)}{^{\sigma'}}{_{\sigma''}}(W) \xtensor{D}{^{\sigma'''}}{_\sigma}(W)
        \psi^\dagger_{k', \sigma'} \psi_{k, \sigma'''} \\
    \delta^3(\bm{k}' - \bm{k}) \delta_{\sigma''\sigma} =&\ \xtensor{(D^*)}{^{\sigma'}}{_{\sigma''}}(W) \xtensor{D}{^{\sigma'''}}{_\sigma}(W)
        \delta^3(\bm{k}' - \bm{k}) \delta_{\sigma'\sigma'''}

对上式取 :math:`\bm{k}' = \bm{k}` 的情形, 得

.. math:: 
    \delta_{\sigma''\sigma} =&\ \xtensor{(D^*)}{^{\sigma'}}{_{\sigma''}}(W) \xtensor{D}{^{\sigma'''}}{_\sigma}(W) \delta_{\sigma'\sigma'''} \\
    \xtensor{\delta}{^{\sigma''}}{_\sigma} =&\ \xtensor{(D^*)}{_{\sigma'}}{^{\sigma''}}(W) \xtensor{D}{^{\sigma'''}}{_\sigma}(W) \xtensor{\delta}{^{\sigma'}}{_{\sigma'''}} \\
        =&\ \xtensor{(D^*)}{_{\sigma'}}{^{\sigma''}}(W) \xtensor{D}{^{\sigma'}}{_\sigma}(W) \\

由共轭矩阵的定义 :math:`\xtensor{(D^*)}{_{\sigma'}}{^{\sigma''}}(W) = \xtensor{(D^\dagger)}{^{\sigma''}}{_{\sigma'}}` (左右交换是因为要转置, 上下位置是由于左右要上下指标平衡). 此即 :math:`D^\dagger(W) D(W) = 1`. 也就是 :math:`D^\dagger (W) = D^{-1}(W)`.

现在的问题是, 任一动量的态矢的标量积是什么? 利用 :eq:`psi-pk-def` 和 :eq:`sigma-sigma-w-linear` 式中 :math:`U(\Lambda)` 的幺正性, 我们有如下定理.

[定理35] 属于某一动量本征值的态矢的标量积为

.. math:: 
    (\psi_{p',\sigma'}, \psi_{p,\sigma}) =&\ N(p) \big( U^{-1}(L(p))\psi_{p',\sigma'}, \psi_{k, \sigma} \big) \\
        =&\ N(p)N^*(p') D \big(W(L^{-1}(p), p') \big)^*_{\sigma\sigma'} \delta^3(\bm{k}'-\bm{k})

其中 :math:`k' \equiv L^{-1}(p)p'`. 又因为 :math:`k = L^{-1}(p)p`, delta 函数 :math:`\delta^3(\bm{k}'-\bm{k})` 正比于 :math:`\delta^3(\bm{p}'-\bm{p})`. 对于 :math:`p' = p`, 这里的小群变换 :math:`W(L^{-1}(p), p')` 是恒等变换, 即 :math:`W(L^{-1}(p), p) = 1`. 因而 [注意对于下式, 这里左边不应该写成 :math:`(\psi_{p,\sigma'}, \psi_{p,\sigma})`, 因为原式就是对更普遍的 :math:`(\psi_{p',\sigma'}, \psi_{p,\sigma})` 成立的, 上面关于 :math:`p' = p` 的讨论, 不是取了特殊情况, 而是由于因子 :math:`\delta^3(\bm{k}'-\bm{k})`, 它强制左边因子中可以令 :math:`k'= k`, 又因为正比性质, 可以令 :math:`p'=p`]

.. math:: 
    (\psi_{p',\sigma'}, \psi_{p,\sigma}) = |N(p)|^2 \delta_{\sigma'\sigma} \delta^3(\bm{k}'-\bm{k})
    :label: psigma-sp-k

注意这里第一式是中间表达式, 只有 :eq:`psigma-sp-k` 是最终结果.

[证明] 在 :eq:`plpk` 即

.. math:: 
    p^\mu = \xtensor{L}{^\mu}{_\nu}(p)k^\nu

中令 :math:`p = k` 得

.. math:: 
    k^\mu = \xtensor{L}{^\mu}{_\nu}(k)k^\nu \quad\Rightarrow \quad L(k) = 1

即参数为 :math:`k` 的 :math:`L` 变换为恒等变换, 从而 :math:`U(L(k))` 也为恒等变换. 在 :eq:`psi-pk-def` 中代入 :math:`p = k` 得

.. math:: 
    \psi_{k,\sigma} \equiv N(k) U(L(k)) \psi_{k,\sigma}

由 :math:`U(L(k)) = 1` 得 :math:`N(k) = 1`.

由 :eq:`psi-pk-def` 即 :math:`\psi_{p,\sigma} \equiv N(p) U(L(p)) \psi_{k,\sigma}` 知 (利用 :math:`U` 的幺正性)

.. math:: 
    (\psi_{p',\sigma'}, \psi_{p,\sigma}) =&\ (\psi_{p',\sigma'}, N(p) U(L(p)) \psi_{k,\sigma}) \\
        =&\ N(p) (U^\dagger(L(p)) \psi_{p',\sigma'}, \psi_{k,\sigma}) = N(p) (U^{-1}(L(p)) \psi_{p',\sigma'}, \psi_{k,\sigma}) \\
        =&\ N(p) (U(L^{-1}(p)) \psi_{p',\sigma'}, \psi_{k,\sigma})
    
其中最后一步是利用 [定理18] 得 :math:`U{-1}(L(p)) = U(L^{-1}(p))`. 再由 :eq:`ulambda-w-pk` 知

.. math:: 
    U(\Lambda)\psi_{p,\sigma} = N(p) \xtensor{D}{^{\sigma'}}{_\sigma}(W(\Lambda, p)) U(L(\Lambda p)) \psi_{k, \sigma'}

在上式令 :math:`p=p', \sigma = \sigma', \Lambda = L^{-1}(p)` 得 (注意由于 :math:`L` 是隐含依赖于 :math:`k` 的, 因此当我们把 :math:`p` 改为 :math:`p'` 的时候,  假设这个 :math:`p'` 的标准动量为 :math:`\tilde{k}'`. 相应的 :math:`L` 也要变, 记为 :math:`\tilde{L}`, 满足 :math:`p' = \tilde{L}(p')\tilde{k}'`, :math:`N` 则变为 :math:`\tilde{N}`)

.. math:: 
    U(L^{-1}(p))\psi_{p',\sigma'} = \tilde{N}(p') \xtensor{D}{^{\sigma''}}{_{\sigma'}}(W(L^{-1}(p), p')) U(\tilde{L}(L^{-1}(p) p')) \psi_{\tilde{k}', \sigma''}

令 :math:`k' = L^{-1}(p) p'` (注意这个不一定是真的标准动量 :math:`k`), 有 :math:`k' = \tilde{L}(k')\tilde{k}'`, 再由 :eq:`psi-pk-def` 得

.. math:: 
    \psi_{k',\sigma} \equiv \tilde{N}(k') U(\tilde{L}(k')) \psi_{\tilde{k}',\sigma}

得

.. math:: 
    U(\tilde{L}(L^{-1}(p) p')) \psi_{\tilde{k}', \sigma''} = U(\tilde{L}(k')) \psi_{\tilde{k}', \sigma''} = \tilde{N}^{-1}(k') \psi_{k',\sigma''}

注意我们还有 :math:`p' = \tilde{L}(p')\tilde{k}'` 但这个条件用不上. 于是

.. math:: 
    (\psi_{p',\sigma'}, \psi_{p,\sigma}) =&\ N(p) (U(L^{-1}(p)) \psi_{p',\sigma'}, \psi_{k,\sigma}) \\
        =&\ N(p) \tilde{N}^*(p') \xtensor{{D^*}}{^{\sigma''}}{_{\sigma'}}(W(L^{-1}(p), p')) (\tilde{N}^*)^{-1}(k') \psi^\dagger_{k',\sigma''}
            \psi_{k,\sigma} \\
        =&\ N(p) \tilde{N}^*(p') (\tilde{N}^*)^{-1}(k') \xtensor{{D^*}}{^{\sigma''}}{_{\sigma'}}(W(L^{-1}(p), p')) \delta^3(\bm{k}'-\bm{k}) \delta_{\sigma''\sigma} \\
        =&\ N(p) \tilde{N}^*(p') (\tilde{N}^*)^{-1}(k') {D^*}_{\sigma\sigma'}(W(L^{-1}(p), p')) \delta^3(\bm{k}'-\bm{k})

最后一步需要证明 :math:`(\tilde{N}^*)^{-1}(k') = 1` 以及 :math:`\tilde{N}^*(p') = \tilde{N}(p')`. 注意到上式中有 :math:`\delta^3(\bm{k}'-\bm{k})`, 那么在前面的因子中我们可以要求 :math:`k' = k`. 而 :math:`k` 是标准动量, 于是 :math:`k'` 也就必须是标准动量. 而又由一般动量到标准动量的变换为 :math:`k' = \tilde{L}(k')\tilde{k}'`. 这个变换把 :math:`k'` 变成的标准动量 :math:`\tilde{k}'` 就只能是 :math:`k`, 即 :math:`\tilde{k}' = k`, 并且 :math:`\tilde{L}(k')` 和 :math:`U(\tilde{L}(k'))` 都是恒等变换. 利用最开始的推导, 知 :math:`\tilde{N}(k') = 1`. 另一方面, :math:`\tilde{k}' = k` 意味着在 delta 函数因子不为零时, :math:`p` 和 :math:`p'` 必须属于同一个标准动量. 对同一标准动量而言 :math:`\tilde{N} = N`. 于是

.. math:: 
    (\psi_{p',\sigma'}, \psi_{p,\sigma}) = N(p) N^*(p') {D^*}_{\sigma\sigma'}(W(L^{-1}(p), p')) \delta^3(\bm{k}'-\bm{k})

下面就很自然根据原书的讨论, 因为 :math:`k' \equiv L^{-1}(p)p'` 和 :math:`k = L^{-1}(p)p`, delta 函数 :math:`\delta^3(\bm{k}'-\bm{k})` 正比于 :math:`\delta^3(\bm{p}'-\bm{p})`. 于是可以在 :math:`\delta^3(\bm{k}'-\bm{k})` 之前的因子 :math:`N(p) N^*(p') (\tilde{N}^*)^{-1}(k') {D^*}_{\sigma\sigma'}(W(L^{-1}(p), p'))` 中强制 :math:`p' = p`. 注意这里不能在更早的时候就利用 :math:`p' = p`, 因为在此之前 :math:`U(\tilde{L}(L^{-1}(p) p'))` 可能改变波函数下标, 未必就能得到所需要的 delta 函数. 所以只能在得到 delta 函数之后, 再去考虑修改左边的因子. 考虑

.. math:: 
    W(L^{-1}(p), p) \equiv L^{-1}(L^{-1}(p)p) L^{-1}(p) L(p) = L^{-1}(k) L^{-1}(p) L(p) = L^{-1}(p) L(p) = 1

因此是恒等变换. 其中第一个等号利用了 :math:`p = L(p)k`. 第二个等号是因为根据一开始的讨论, 属于参数 :math:`k` 的 :math:`L` 是恒等变换. 最后一步是因为算符和算符的逆的乘积一定为恒等变换. 于是自然得到

.. math:: 
    (\psi_{p',\sigma'}, \psi_{p,\sigma}) = |N(p)|^2 \delta_{\sigma'\sigma} \delta^3(\bm{k}'-\bm{k})

.. [#ref1] `StackExchange-1 <https://physics.stackexchange.com/questions/199365/weinberg-qft-2-5-5>`_.

.. [#ref2] `StackExchange-2 <https://physics.stackexchange.com/questions/127426/a-question-on-page-65-of-weinbergs-qft-volume-1>`_.

7 洛伦兹不变体元
^^^^^^^^^^^^^^^^

剩下的问题是确定 :math:`\delta^3(\bm{k}' - \bm{k})` 和 :math:`\delta^3(\bm{p}' - \bm{p})` 之间的比例系数.

[定理36] :math:`\D^3 \bm{p} /\sqrt{\bm{p}^2 + M^2}` 是洛伦兹不变体元. 洛伦兹不变体元的意义是, 这个体元作为对偶矢量, 或者微分形式, 在洛伦兹变换下不变.

[证明] 先证明 :math:`\D^4 p` 是洛伦兹不变体元. 假设在洛伦兹变换下 :math:`p \to \overline{p} = \Lambda p`. 我们要找到 :math:`\D^4 p` 和 :math:`\D^4 \overline{p}` 的关系. 根据微元的变换法则, 有 :math:`\D^4 p \to \D^4 \overline{p} = \left\lvert \frac{\partial \overline{p}^a}{\partial p^b} \right\rvert \D^4 p`. 其中行列式 :math:`\left\lvert \frac{\partial \overline{p}^\mu}{\partial p^\nu} \right\rvert = |\det \xtensor{\Lambda}{^a}{_b}|`. 而考虑固有洛伦兹变换, :math:`|\det \xtensor{\Lambda}{^a}{_b}| = 1`. 于是 :math:`\D^4 \overline{p} = \D^4 p`.

考虑标量函数 :math:`f(p)`. 在洛伦兹变换下, :math:`p` 变为 :math:`\overline{p}`. 原来函数在 :math:`p` 点的值为 :math:`y = f(p)`, 现在要求它在新的点 :math:`\overline{p}` 的值为变换之前的函数在变换之前那点的值 :math:`y = f(p)`. 那么函数形式必须变化, 记新的函数形式为 :math:`\overline{f}`. 则有 :math:`\overline{f}(\overline{p}) = f(p)`. 实际上, 如果把线性标量函数看成对偶矢量, 它作用到矢量 :math:`p` 上得到实数, 即 :math:`f(p) = f_ap^a`. 则在洛伦兹变换下, :math:`p` 的变化为 :math:`p^a \to \overline{p}^a = \xtensor{\Lambda}{^a}{_b}p^b`, 由 :math:`\overline{f}(\overline{p}) = f(p)` 得 :math:`\overline{f}_a\overline{p}^a = f_ap^a`, 即 :math:`\overline{f}_a\xtensor{\Lambda}{^a}{_b}p^b = f_bp^b`, 即 :math:`f_a \to \overline{f}_a = f_b\xtensor{(\Lambda^{-1})}{^b}{_a}`. 即 :math:`f \to \overline{f} = f\Lambda^{-1}`. 类似地对线性矢量函数有 :math:`U \to \overline{U} = \Lambda U\Lambda^{-1}`.

考虑 [表1] 中的情况 (a) 和 (c), 满足 :math:`p^2 = -M^2 \leqslant 0, p^0 > 0`. 并且注意到洛伦兹变换不改变 :math:`p^2` 的值和 :math:`p^0` 的符号. 所以考虑一个 :math:`p^2` 的函数 :math:`g(p^2)`, 在一个洛伦兹变换下, :math:`p` 变为 :math:`\overline{p}`, 然而 :math:`p^2 = \overline{p}^2`, 于是要求 :math:`\overline{g}(\overline{p}^2) = g(p^2)` 即 :math:`\overline{g}(p^2) = g(p^2)`, 于是 :math:`\overline{g} = g`. 也就是说, 如果一个标量函数只和 :math:`p^2` 或 :math:`p^0` 的符号有关, 那么它在洛伦兹变换下函数形式不需要改变, 即 :math:`\overline{g} = g`, 统一写成 :math:`g` 即可. 注意 :math:`\delta(p^2 + M^2)` 和 :math:`\theta(p^0)` 就是这样的函数. :math:`\theta(p^0)` 是阶跃函数,  当 :math:`x\geqslant 0` 时 :math:`\theta(x) = 1`, 当 :math:`x<0` 时 :math:`\theta(x) = 0`. 所以 :math:`\theta(x)` 只与 :math:`x` 的符号有关.
因此

.. math:: 
    \D^4 p \delta(p^2 + M^2)\theta(p^0) = \D^4 \overline{p} \delta(\overline{p}^2 + M^2)\theta(\overline{p}^0)

也是洛伦兹不变体元. 其中这个等号两边的意义不是仅仅做了变量记号改写从 :math:`p` 改写为 :math:`\overline{p}`. 真正意义是, 等号左边是洛伦兹变换前的一个以 :math:`p` 为原像的映射, 等号右边是洛伦兹变换后的映射. 它们的映射形式不变. 而变量记号只是标记指的是变换前还是变换后. 也许更好的表达方式为

.. math:: 
    \D^4 p \delta(p^2 + M^2)\theta(p^0) \to \D^4 p \delta(p^2 + M^2)\theta(p^0)

其中变换前后完全可以用同样的原像记号, 因为重点是要求映射不变.

从这里可以理解到说一个 "体元" 或函数 "洛伦兹不变" 的意义. 这要求它的 "映射形式" 不变. 对于 :math:`\D^4 p` 来说, :math:`\D^4 \cdot` 是它的映射形式, 和使用怎样的标记表示 :math:`p` 无关. 对于一般的线性函数 :math:`f`, 在洛伦兹变换下它这个映射本身变为 :math:`f\Lambda^{-1}`, 因而不是洛伦兹不变的. 尽管我们说 :math:`f(p) = \overline{f}(\overline{p})` 表示映射的像是相等的, 但是重要的是 :math:`f` 已经改变.

下面证明 :math:`\D^4 p \delta(p^2 + M^2)\theta(p^0) = \D^3 \bm{p} /\sqrt{\bm{p}^2 + M^2}`, 这两个体元在用于函数积分的意义下是相等的, 因此我们要借用一个任意函数. 注意这里不应该与上面关于洛伦兹不变的讨论相混淆. 我们无需考虑在洛伦兹变换下这个任意函数怎么变, 或者这个积分怎么变. 这里的逻辑是, 如果已知两个前提: (A) 体元 :math:`\D^4 p \delta(p^2 + M^2)\theta(p^0)` 是洛伦兹不变的. (B) 体元 :math:`\D^4 p \delta(p^2 + M^2)\theta(p^0)` 和体元 :math:`\D^3 \bm{p} /\sqrt{\bm{p}^2 + M^2}` 相等. 我们就可以推出结论, 体元 :math:`\D^3 \bm{p} /\sqrt{\bm{p}^2 + M^2}` 洛伦兹不变. 下面的重点是证明 (B). 这里 (B) 的证明与洛伦兹不变性毫无关系, 只是借用积分. 我们认为, 如果用这两个体元对任意函数做积分, 它们相等, 则可以认为这两个体元相等. 下面证明 (B). 利用 :math:`p^2 = -(p^0)^2 + \bm{p}^2, \D (p^0)^2 = 2p^0\D p^0` 及 delta 函数是对称函数

.. math:: 
    \int \D^4 p \delta(p^2 + M^2)\theta(p^0) f(p) =&\ \int \D^3 \bm{p} \D p^0 \delta(-(p^0)^2 + \bm{p}^2 + M^2)\theta(p^0) f(\bm{p}, p^0) \\
        =&\ \int \D^3 \bm{p} \D p^0 \delta((p^0)^2 - \bm{p}^2 - M^2)\theta(p^0) f(\bm{p}, p^0) \\
        =&\ \int \D^3 \bm{p} \frac{\D (p^0)^2}{2p^0} \delta((p^0)^2 - \bm{p}^2 - M^2)\theta(p^0) f(\bm{p}, p^0) \\
        =&\ \int \frac{\D^3 \bm{p}}{2\sqrt{\bm{p}^2 - M^2}} f(\bm{p}, \sqrt{\bm{p}^2 - M^2})

其中最后一步是利用了 delta 函数的性质, 即可以令 :math:`(p^0)^2 = \bm{p}^2 + M^2`, 而消除该 delta 函数及对 :math:`(p^0)^2` 的积分. 消除的时候 :math:`p^0` 可取正号或负号, 如果我们只取正号则可以进一步消去 :math:`\theta(p^0)`. 由此我们可以看出, 对函数 :math:`f(p)` 和体元 :math:`\D^4 p \delta(p^2 + M^2)\theta(p^0)` 的四维空间积分, 可以改写为对修改了自变量的同样函数对体元 :math:`\frac{\D^3 \bm{p}}{2\sqrt{\bm{p}^2 - M^2}}` 的三维空间积分, 两个积分是等价的, 所以两个体元是相等的. 从而 :math:`\frac{\D^3 \bm{p}}{2\sqrt{\bm{p}^2 - M^2}}` 是洛伦兹不变的. 当然, 按照 Weinberg 书的说法, 因为消去了一重积分, 所以要强调当在质量壳 (mass shell) :math:`p^2 + M^2 = 0` 积分时, 该体元是不变的. 并且也假定质量不变, 即我们只考虑一个特定类型的单粒子.

[引理37-1] 对满秩实矩阵 :math:`A \in \mathbb{R}^{n \times n}`, 有

.. math:: 
    \delta(A \bm{x}) = \frac{1}{|\det (A)|}\delta(\bm{x}),\quad \bm{x}\in \mathbb{R}^n

由此进一步可知, 在任何三维空间空间旋转或洛伦兹变换下 (或任意幺正线性变换), delta 函数是不变的, 即 :math:`\delta(R\bm{x})  =\delta(\bm{x})`. [#ref3]_

[证明] 根据 delta 函数的傅里叶变换, 对任意 :math:`\bm{x} \in \mathbb{R}^n`

.. math:: 
    \delta(A\bm{x}) = \frac{1}{(2\pi)^n}\int_{\mathbb{R}^n} \E^{\I (\bm{t},A\bm{x})} \D \bm{t}
        = \frac{1}{(2\pi)^n}\int_{\mathbb{R}^n} \E^{\I (A^T\bm{t},\bm{x})} \D \bm{t}

令 :math:`\bm{s} = A^T\bm{t}`, 则 :math:`\D \bm{s} = |\det(A^T)|\D \bm{t} = |\det(A)|\D \bm{t}`. 从而

.. math:: 
    \delta(A\bm{x}) = \big| {\det}^{-1}(A) \big| \frac{1}{(2\pi)^n} \int_{\mathbb{R}^n} \E^{\I (\bm{s},\bm{x})} \D \bm{s}
     = \big| {\det}^{-1}(A) \big| \delta(\bm{x})

由该引理显然 :math:`\delta^4(p)` 和 :math:`\delta^4(p) \D^4 p` 是洛伦兹不变量. 而 :math:`\delta^3(\bm{p})` 不是洛伦兹不变量. 这里的不变仍然指的是函数映射或函数形式不变, 与自变量的记号无关.

[定理37] :math:`\delta^3(\bm{p} - \bm{p}') \D^3 \bm{p}'` 是洛伦兹不变体元.

[证明] 这里的洛伦兹不变是 :math:`\bm{p}, \bm{p}'` 作为函数参数, 当这两个参数按照洛伦兹变换变化的时候, :math:`\delta^3(\bm{p} - \bm{p}') \D^3 \bm{p}'` 的 "映射形式" 不变. 设洛伦兹变换对 :math:`\bm{p}, \bm{p}'` 的变换为 :math:`\bm{p} \to \overline{\bm{p}} = \tilde{\Lambda}\bm{p}, \bm{p}' \to \overline{\bm{p}}' = \tilde{\Lambda}\bm{p}'`, 其中 :math:`\tilde{\Lambda}` 是 :math:`\Lambda` 的空间分量, 其行列式一般不为1. 则

.. math:: 
    \delta^3(\bm{p} - \bm{p}') \D^3 \bm{p}' \to &\ \delta^3(\overline{\bm{p}} - \overline{\bm{p}}') \D^3 \overline{\bm{p}}' \\
        =&\ \delta^3(\tilde{\Lambda}(\bm{p} - \bm{p}')) |\det(\tilde{\Lambda})| \D^3 \bm{p}' = \frac{1}{|\det(\tilde{\Lambda})|} \delta^3(\bm{p} - \bm{p}')
        |\det(\tilde{\Lambda})| \D^3 \bm{p}' \\
        =&\ \delta^3(\bm{p} - \bm{p}') \D^3 \bm{p}'

即 :math:`\delta^3(\bm{p} - \bm{p}') \D^3 \bm{p}'` 是洛伦兹不变体元.

利用 :math:`p^2 = -M^2` 和 :math:`p^2 = -(p^0)^2 +\bm{p}^2` 得 :math:`-(p^0)^2 +\bm{p}^2 = -M^2` 即 :math:`(p^0)^2 = \bm{p}^2 + M^2`. 由于我们仅考虑 :math:`p^0 > 0` 的情况, 即 :math:`p^0 = \sqrt{\bm{p}^2 + M^2}`.

[定理38] :math:`\sqrt{\bm{p}^2 + M^2}\delta^3(\bm{p} - \bm{p}') = p^0 \delta^3(\bm{p} - \bm{p}')` 是洛伦兹不变量.

[证明] 根据

.. math:: 
    \delta^3(\bm{p} - \bm{p}') \D^3 \bm{p}' = \sqrt{\bm{p}^2 + M^2}\delta^3(\bm{p} - \bm{p}') \frac{\D^3 \bm{p}'}{\sqrt{\bm{p}^2 + M^2}}

而由 [定理37] 及 [定理36] 知 :math:`\delta^3(\bm{p} - \bm{p}') \D^3 \bm{p}'` 和 :math:`\frac{\D^3 \bm{p}'}{\sqrt{\bm{p}^2 + M^2}}` 都是洛伦兹不变体元, 因此 :math:`\sqrt{\bm{p}^2 + M^2}\delta^3(\bm{p} - \bm{p}')` 是洛伦兹不变量.

由于 :math:`p'` 和 :math:`p` 通过一个洛伦兹变换 :math:`L(p)` 分别和 :math:`k'` 和 :math:`k` 相联系, 我们有

.. math:: 
    p^0 \delta^3(\bm{p}' - \bm{p}) = k^0 \delta^3(\bm{k}' - \bm{k})

从而根据 [定理35] 的 :eq:`psigma-sp-k` 式, 得

.. math:: 
    (\psi_{p',\sigma'}, \psi_{p,\sigma}) = |N(p)|^2 \delta_{\sigma'\sigma} \left( \frac{p^0}{k^0} \right) \delta^3(\bm{p}'-\bm{p})

归一化因子 :math:`N(p)` 在某些情况下选择为 :math:`N(p) = 1`, 但是那样的话我们就需要一直保持标量积中的 :math:`p^0/k^0` 因子. 从而这里我们采用更加通常的约定

.. math:: 
    N(p) = \sqrt{k^0/p^0}

从而

.. math:: 
    (\psi_{p',\sigma'}, \psi_{p,\sigma}) = \delta_{\sigma'\sigma} \delta^3(\bm{p}'-\bm{p})

下面我们考虑两种物理上有特殊意义的情形: 具有质量 :math:`M > 0` 的粒子和零质量粒子.

.. [#ref3] `arxiv 1607.02871 <https://arxiv.org/pdf/1607.02871.pdf>`_.

8 正质量粒子
^^^^^^^^^^^^

正质量粒子就是 [表1] 中情形 (a), 对应的小群就是三维转动群. 三维转动群在希尔伯特空间由对应的态矢变换 :math:`U(R_{\bm{\theta}}, 0)`, 此处简记为 :math:`U(\bm{\theta})` [定理28]. 这个转动变换 :math:`U(\bm{\theta})` 的矩阵表示, 就是量子力学中的角动量理论. 下面简要回顾其中的主要结论. 所要研究的态矢构成一个矢量空间, 我们一般选择 :math:`\bm{J}^2, J_3` 的共同本征态 :math:`|jm\rangle` 作为矢量空间的基矢来研究.

[定理39] 角动量算符平方 :math:`\bm{J}^2 \equiv J^{12}J_{12} + J^{23}J_{23} + J^{31}J_{31}` 是转动变换 (齐次洛伦兹变换的特例) :math:`U(R_{\bm{\theta}}, 0)` 下的不变量.

[证明] 根据 :eq:`jp-lambda-trans` 得

.. math:: 
    U(\Lambda, 0)J^{\rho\sigma}U^{-1}(\Lambda, 0) = \xtensor{\Lambda}{_\mu}{^\rho}\xtensor{\Lambda}{_\nu}{^\sigma} J^{\mu\nu}

即 :math:`J^{\rho\sigma}` 在齐次洛伦兹变换下按照张量变换律变换. 现在假设 :math:`\Lambda` 取转动变换, 则 :math:`\xtensor{\Lambda}{_0}{^i} = \xtensor{\Lambda}{_i}{^0} = 0, \xtensor{\Lambda}{_0}{^0} = 1, \xtensor{\Lambda}{_i}{^j} = \xtensor{R}{_i}{^j}`, 其中 :math:`R` 是转动矩阵. 于是当 :math:`\Lambda` 为纯转动时

.. math:: 
    U(\Lambda, 0)J^{ij}U^{-1}(\Lambda, 0) =&\ \xtensor{\Lambda}{_\mu}{^i}\xtensor{\Lambda}{_\nu}{^j} J^{\mu\nu}  \\
        =&\ \xtensor{\Lambda}{_0}{^i}\xtensor{\Lambda}{_0}{^j} J^{00} + \xtensor{\Lambda}{_0}{^i}\xtensor{\Lambda}{_k}{^j} J^{0k}
            + \xtensor{\Lambda}{_k}{^i}\xtensor{\Lambda}{_0}{^j} J^{k0} + \xtensor{\Lambda}{_k}{^i}\xtensor{\Lambda}{_l}{^j} J^{kl} \\
        =&\ \xtensor{R}{_k}{^i}\xtensor{R}{_l}{^j} J^{kl}

设经过转动变换, :math:`J^{ij}` 变为 :math:`J'^{ij}`. 则需证明 :math:`\bm{J}^2 \equiv \frac{1}{2} J_{ij}J^{ij} = \bm{J}'^2`, 即

.. math:: 
    \eta_{im}\eta_{jn}(\xtensor{R}{_k}{^i}\xtensor{R}{_l}{^j} J^{kl})(\xtensor{R}{_p}{^m}\xtensor{R}{_q}{^n} J^{pq})
        =&\ \eta_{im}\eta_{jn}J^{ij}J^{mn} \\
    (R_{km}\xtensor{R}{_p}{^m})(R_{ln}\xtensor{R}{_q}{^n}) J^{kl} J^{pq} =&\ \delta_{im}\delta_{jn}J^{ij}J^{mn}

由于转动矩阵 :math:`R` 是正交矩阵, :math:`R^T = R^{-1}`, 即 :math:`(R^T)_{ba}\xtensor{R}{_b}{^c} = R_{ab}\xtensor{R}{^b}{_c} = \delta_{ac}`. 于是

.. math:: 
    R_{km}\xtensor{R}{_p}{^m} =&\ R_{km}\xtensor{(R^{-1})}{^m}{_p} = \delta_{kp} \\
    (R_{km}\xtensor{R}{_p}{^m})(R_{ln}\xtensor{R}{_q}{^n}) J^{kl} J^{pq} =&\ \delta_{kp}\delta_{lq} J^{kl} J^{pq} = \delta_{im}\delta_{jn} J^{ij} J^{mn}

因此证明了 :math:`(R_{km}\xtensor{R}{_p}{^m})(R_{ln}\xtensor{R}{_q}{^n}) J^{kl} J^{pq} = \delta_{im}\delta_{jn}J^{ij}J^{mn}`.

这里可以联系本节第3小节末尾的讨论. 第三小节末尾指出, 我们可以先挑出最一般的 :math:`\sigma` 指标中不随非齐次洛伦兹变换而变的部分, 用那些洛伦兹不变量来标记不同的态矢类型, 而我们只选择其中在洛伦兹变换下要改变的下标 :math:`\sigma` 来研究. 进一步, 我们定义了相对于纯 "推进" 的洛伦兹变换, :math:`L(p)`, 我们要求这样的洛伦兹变换保持态矢的 :math:`\sigma` 不变 (实际上纯的推进其实会改变 :math:`\sigma`, 但是我们总可以混进一些 "转动", 这样两者的组合定义为新的 "推进", 这样的 :math:`L(p)` 就会保持 :math:`\sigma` 指标不变.) 剔除了 :math:`L(p)` 部分的齐次洛伦兹变换, 就叫做小群. 对于有质量粒子, 这个小群就是三维转动群. 在研究小群时, 我们只需要考虑三维转动而不用再考虑 "推进" 变换. 进一步, 我们选择 :math:`\bm{J}^2, J_3` 的共同本征态 :math:`|jm\rangle` 作为矢量空间的基矢, 也就是把 :math:`\sigma` 指标再人为分成两个子空间的指标 :math:`j` 和 :math:`m`. 其中我们又发现 :math:`j` 指标 (标记 :math:`\bm{J}^2` 的本征态) 不随三维转动而改变, 那么很自然这些不变的部分又可以将表示矩阵进行分块对角化. 我们还是只考虑其中一块, 也就是自动把 :math:`j` 列为一个参数, 只考虑指标 :math:`m` 在三维转动下如何改变. 在 Weinberg 书中, 这样的指标 :math:`m` 就直接记为 :math:`\sigma` 了. 一般地, 三维角动量的平方在最一般的洛伦兹变换的作用下不是不变量, 因此它并不能在本节第3小节末尾的时候根据那里的讨论就剔除, 而只能在得到小群之后再剔除.

由量子力学知道

.. math:: 
    \bm{J}^2 |jm \rangle =&\ j(j+1) |jm\rangle \\
    J_3 |jm \rangle =&\ m |jm\rangle \\
    J_\pm |jm \rangle \equiv&\ (J_1 \pm \I J_2) |jm\rangle = \sqrt{(j \mp m)(j \pm m + 1)} |jm\pm 1\rangle

[定理40] :math:`\bm{J}^2` 和 :math:`U(R_{\bm{\theta}}, 0)` 对易.

[证明] 由 [定理39], 算符 :math:`\bm{J}^2` 对应的指标 :math:`j` 是转动变换 :math:`U(R_{\bm{\theta}}, 0)` 下的不变量, 这本身就意味着 :math:`\bm{J}^2` 和 :math:`U(R_{\bm{\theta}}, 0)` 对易, 具体而言, 若用 :math:`U(R_{\bm{\theta}}, 0)` 作用于态矢 :math:`|jm\rangle`, 得到的态矢 :math:`U(R_{\bm{\theta}}, 0)|jm\rangle` 应该还具有和变换之前的态矢 :math:`|jm\rangle` 相同的 :math:`j` 指标. 写成公式就是

.. math:: 
    \bm{J}^2 |jm\rangle =&\ j(j+1) |jm\rangle \\
    \bm{J}^2 \big(U(R_{\bm{\theta}}, 0) |jm\rangle\big) =&\ j(j+1) \big(U(R_{\bm{\theta}}, 0) |jm\rangle\big)

另一方面, 考虑

.. math:: 
    U(R_{\bm{\theta}}, 0) \bm{J}^2 |jm\rangle = U(R_{\bm{\theta}}, 0) \big[ j(j+1) |jm\rangle \big] = j(j+1) U(R_{\bm{\theta}}, 0) |jm\rangle

比较上面两式得 :math:`\bm{J}^2 U(R_{\bm{\theta}}, 0) = U(R_{\bm{\theta}}, 0) \bm{J}^2`. 即两者对易.

这里还有一种更为直觉化的证明. 因为 :math:`\bm{J}^2` 和 :math:`J_3` 对易, 所以推广到任意方向 :math:`\hat{\bm{\theta}}`, :math:`\bm{J}^2` 和 :math:`\hat{\bm{\theta}} \cdot \bm{J}` 也对易. 而根据 [定理28] :math:`U(R_{\bm{\theta}}, 0) = \exp(\I \bm{J}\cdot \bm{\theta}) = \exp(\I \theta \bm{J}\cdot \hat{\bm{\theta}})` 是 :math:`\hat{\bm{\theta}} \cdot \bm{J}` 的函数, 因此 :math:`\bm{J}^2` 和 :math:`U(R_{\bm{\theta}}, 0)` 对易.

设体系处于 :math:`\bm{J}^2, J_3` 的共同本征态 :math:`|jm\rangle`, 则做旋转变换 :math:`U(R_{\bm{\theta}}, 0)` 后, 态矢变为

.. math:: 
    U(R_{\bm{\theta}}, 0) |jm\rangle = \exp(\I \bm{J}\cdot \bm{\theta}) |jm\rangle

考虑到 :math:`\bm{J}^2` 和 :math:`U(R_{\bm{\theta}}, 0)` 对易, 可知 :math:`U(R_{\bm{\theta}}, 0) |jm\rangle` 仍为 :math:`\bm{J}^2` 的属于和 :math:`|jm\rangle` 同一本征值的本征态

.. math:: 
    \bm{J}^2 U(R_{\bm{\theta}}, 0) |jm \rangle = U(R_{\bm{\theta}}, 0) \bm{J}^2 |jm \rangle = j(j+1) U(R_{\bm{\theta}}, 0) |jm \rangle

但一般说来, :math:`J_3` 与 :math:`U(R_{\bm{\theta}}, 0)` 不对易, 因而 :math:`U(R_{\bm{\theta}}, 0) |jm \rangle` 不再是 :math:`J_3` 的本征态, 而是 :math:`J_3` 各本征态的叠加, 即 :math:`U(R_{\bm{\theta}}, 0) |jm\rangle` 的最一般表示式为

.. math:: 
    U(R_{\bm{\theta}}, 0) |jm\rangle = \sum_{m'=-j}^j |jm'\rangle \langle jm'| \exp(\I \bm{J}\cdot \bm{\theta}) |jm\rangle

其中 :math:`\langle jm'| \exp(\I \bm{J}\cdot \bm{\theta}) |jm\rangle` 表示叠加系数, 记为 :math:`D^{(j)}_{m'm}(R_{\bm{\theta}})`, 它是转动算符 :math:`U(R_{\bm{\theta}}, 0)` 在 :math:`|jm\rangle` (:math:`j` 取定) 张开的 :math:`2j+1` 维子空间中的矩阵表示 (即有 :math:`(2j+1)^2` 个矩阵元), 或称之为转动群的 :math:`2j+1` 维不可约表示. 三维转动群的完整表示是属于不同 :math:`j` 的所有不可约表示矩阵 :math:`D^{(j)}_{m'm}(R_{\bm{\theta}})` 的直和. 其中 :math:`j` 的取值为 :math:`0, \frac{1}{2}, 1, \cdots`. 

进一步我们考虑这个转动李群 (对应的表示矩阵为幺正矩阵) 的李代数的矩阵表示 (当剔除 :math:`\I` 因子后, 李代数的矩阵表示为厄米矩阵), 即 :eq:`uj-expansion` 的矩阵形式 (除去 "推进" 部分后). 由于 :math:`D^{(j)}_{m'm}(R_{\bm{\theta}})` 是转动变换幺正算符的矩阵表示, 那么相应的李代数厄米算符是 :math:`\bm{J}`, 它的矩阵表示就记为 :math:`\big( J^{(j)}_{ik} \big)_{m'm}`, 满足

.. math:: 
    \big( J^{(j)}_{ik} \big)_{m'm} = \langle jm'| J_{ik} |jm\rangle

考虑无穷小转动 :math:`R_{ik} = \delta_{ik} + \Theta_{ik}`, 其中无穷小量 :math:`\Theta_{ik}` 满足 :math:`\Theta_{ik} = -\Theta_{ki}` (参数矩阵是实的反对称矩阵, 和之前的讨论类似), 即

.. math:: 
    D^{(j)}_{m'm}(1 + \Theta) =&\ \delta_{m'm} + \frac{\I}{2} \Theta_{ik} \big( J^{(j)}_{ik} \big)_{m'm} \\
    \big( J^{(j)}_{23} \pm \I J^{(j)}_{31} \big)_{m'm} =&\ \big( J^{(j)}_1 \pm \I J^{(j)}_2 \big)_{m'm} 
        = \langle jm'| J_\pm |jm\rangle \\
        =&\ \langle jm'| \sqrt{(j \mp m)(j \pm m + 1)} |jm\pm 1\rangle = \delta_{m',m\pm 1}\sqrt{(j \mp m)(j \pm m + 1)} \\
    \big( J^{(j)}_{12} \big)_{m'm} =&\ \big( J^{(j)}_3 \big)_{m'm} = m\delta_{m'm}

其中 :math:`m` 的取值为 :math:`j, j-1, \cdots, -j`. 注意第一式有 :math:`\frac{1}{2}` 系数是因为其中 :math:`J` 是双指标. 这和 :eq:`ujp-expansion` 的标记一致. 第二式利用了上面的 :math:`J_\pm |jm \rangle = \sqrt{(j \mp m)(j \pm m + 1)} |jm\pm 1\rangle`.

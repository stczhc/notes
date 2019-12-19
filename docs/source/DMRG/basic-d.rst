
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
    DOI: 10.1021/acs.jctc.6b00316 J. Chem. Theory Comput. 2016, 12, 2706−2719

密度矩阵嵌入理论
=================

2.1 从一个 Slater 行列式构造源轨道
----------------------------------

关于指标做如下规定 :math:`k, l, m, n` 表示局部部分和它的环境的正交自旋轨道 (也就是原始的各位点独立的表象). 总共有 :math:`L` 个这样的轨道. 每个这样的自旋轨道只有两种可能的占据方式 (占据和不占据). 而对应的空间轨道则有四种占据方式 (不占据, 上, 下, 和双占据). 文章后面的 "轨道" 也就特指自旋轨道, 而不必特殊强调. 自旋轨道共有 :math:`L` 个. 其中占据的轨道总是正交的, 用指标 :math:`\mu, \nu`. 总共有 :math:`N_{occ}` 个占据轨道. 正交的局部部分和源轨道则用指标 :math:`p, q, r, s` 表示. 对于局部部分 :math:`A`, 有 :math:`L_A` 个这样的轨道. 注意 :math:`k` 和 :math:`p` 的区别是环境和源的区别. 其实可以直接认为 :math:`k` 是最开始的, 而 :math:`p` 是奇异值分解出来的.

占据轨道 (:math:`\mu`) 和局部部分和它的环境的轨道 (:math:`k`) 之间的转换系数记为 :math:`C_{k\mu}`

.. math::
    \hat{a}_\mu^\dagger = \sum_{k \in AB} \hat{a}_k^\dagger C_{k\mu}

因为占据轨道的顺序是可以交换的, 因此我们可以借此将占据轨道分为两部分: 一部分和局部部分有重叠 (纠缠) 而另一部分没有. 这个构造可以通过奇异值分解来理解. 下面限定 :math:`k` 指标只取局部部分中的指标. 对这一部分的 :math:`C_{k\mu}` 可以进行奇异值分解. 这个矩阵的大小是 :math:`L_A \times N_{occ}`. 我们假设 :math:`N_{occ}` 比 :math:`L_A` 要大 (不然不存在说把 :math:`N_{occ}` 这么多轨道分成两部分的说法). 那么至多能得到 :math:`L_A` 个奇异值.

.. math::
    C_{k\mu} (k\in A) = \sum_{p}^{L_A} U_{kp} \lambda_p V_{p\mu}^\dagger

这里 :math:`V_{p\mu}^\dagger` 也就定义了正交轨道和占据轨道之间的变换矩阵. 矩阵 :math:`V_{\mu p}` (注意其列指标上限是 :math:`L_A`) 可以通过增加 :math:`N_{occ} - L_A` 额外列来使之成为方阵 :math:`W = [V\tilde{V}]`. 这里 :math:`\tilde{V} = 0` 代表补的列. 这里 :math:`W` 也就成为 :math:`p` 和 :math:`\mu` 之间的变换矩阵, 其中 :math:`p` 可以一直取到 :math:`N_{occ}`. 于是可以写

.. math::
    \hat{a}_p^\dagger = \sum_{\mu}^{N_{occ}} \hat{a}_\mu^\dagger W_{\mu p}

而 :math:`p` 和 :math:`k (k\in AB)` 之间的变换矩阵记为 :math:`\tilde{C}_{kp}`. 在旋转后的 (也就是奇异值分解得到的) 占据轨道中, 只有 :math:`L_A` 个和局部部分 (的原始轨道) 之间有非零的重叠

.. math::
    \tilde{C}_{kp} (k\in A) = \sum_{\mu}^{N_{occ}} \sum_q^{L_A} U_{kq} \lambda_q V_{q\mu}^\dagger W_{\mu p} = \begin{cases} U_{kp} \lambda_p & \text{if}\ p \leq L_A \\ 0 & \text{otherwise} \end{cases}

这里注意到按之前的定义 :math:`W` 的列指标是 :math:`p`. 若 :math:`p \leq L_A` 则 :math:`W_{\mu p}` 就是 :math:`V`. :math:`V` 和 :math:`V^\dagger` 得到单位矩阵于是在最后一个等号右边就没有 :math:`V` 了. 若 :math:`p > L_A` 则 :math:`W_{\mu p}` 定义为零. 因此结果也为零.

施密特态 :math:`\{ | \tilde{B}_\alpha \rangle \}` 可以通过对环境 :math:`B` 的约化密度矩阵进行对角化得到. 注意这里 :math:`|\Psi_0\rangle` 是一个矢量, 它的指标是在原始基组 :math:`AB` 中的指标. 若将指标写成 :math:`A` 和 :math:`B` 的直积则 :math:`|\Psi_0\rangle` 变为有两个指标的矩阵. 现在再对 :math:`A` 指标进行缩并, 则得到环境约化密度矩阵. 然后再对角化.

.. math::
    \hat{\rho}_B = \mathrm{Tr}_A |\Psi_0\rangle \langle \Psi_0 | = \sum_i^{N_A} \langle A_i|\Psi_0\rangle \langle \Psi_0 | |A_i\rangle = \sum_{\alpha}^{\min(N_A, N_B)} \lambda_\alpha^2 |\tilde{B}_\alpha\rangle \langle \tilde{B}_\alpha |

注意这里 :math:`A_i` 表示 :math:`A` 部分的基组, :math:`\langle A_i|\Psi_0\rangle` 即该波函数在第 :math:`i` 个 :math:`A` 部分的基组的分量. 由于我们已经将指标分为两部分, 因此这里 :math:`\langle A_i|\Psi_0\rangle` 不是一个数, 而是一个包含 :math:`B` 个指标的子空间波函数. 最后对角化得到 :math:`B` 空间内旋转后的基组.

2.2 实践中的源轨道构造
----------------------

现在考虑一种源轨道构造的完全等价方式. 在这个方式, 只需要平均场密度矩阵在局部部分和环境轨道基组的表示

.. math::
    D_{kl} = \langle \Phi_0 | \hat{a}_l^\dagger \hat{a}_k | \Phi_0 \rangle
        = \sum_{\mu}^{N_{occ}} C_{k\mu} C_{\mu l}^\dagger = \sum_p^{N_{occ}}
        \tilde{C}_{kp} \tilde{C}_{pl}^\dagger
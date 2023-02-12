
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
    http://sanshar.github.io/StackBlock

FCIDUMP 积分文件
================

根据 Comp. Phys. Commun. 54 75 (1989), FCIDUMP 格式为
若 :math:`Z, I, J, K, L, K \neq 0`, 则 :math:`Z = (IJ|KL)`. 若 :math:`I \neq 0`, 则 :math:`Z = H(I, J)`, 若指标全为 0, 则 :math:`Z` 是 core energy. MS2 是 2S, 其中 :math:`S` 是自旋量子数.

其中

.. math::
    h_{ij} =&\  \langle \phi_i (1) | \hat{h}(1) | \phi_j(1) \rangle \\
    (ij | kl) =&\ \langle \phi_i(1) \phi_k(2) | r_{12}^{-1} | \phi_j(1)\phi_l(2) \rangle

而按 MEST Eq. (1.4.39) 的定义

.. math::
    \hat{H} =&\ \hat{h} + \hat{g} + h_{\mathrm{nuc}} = \sum_{PQ} h_{PQ} a_P^\dagger a_Q + \frac{1}{2} \sum_{PQRS} g_{PQRS}a_P^\dagger a_R^\dagger a_S a_Q + h_{\mathrm{nuc}} \\
    h_{PQ} =&\ \int \mathrm{d}\boldsymbol{x} \phi_P^*(\boldsymbol{x}) \left( -\frac{1}{2} \nabla^2 -\sum_I \frac{Z_I}{r_I} \right) \phi_Q(\boldsymbol{x}) \\
    g_{PQRS} =&\ \int \mathrm{d}\boldsymbol{x}_1\mathrm{d}\boldsymbol{x}_2 \frac{\phi_P^*(\boldsymbol{x}_1)\phi_R^*(\boldsymbol{x}_2)\phi_Q(\boldsymbol{x}_1)\phi_S(\boldsymbol{x}_2)}{r_{12}} \\
    h_{\mathrm{nuc}} =&\ \frac{1}{2}\sum_{I\neq J} \frac{Z_I Z_J}{R_{IJ}}

因此 :math:`IJKL = PQRS`. 带自旋指标的情况为

.. math::
    H = \sum_{PQ,\sigma} h_{PQ} a_{P\sigma}^\dagger a_{Q\sigma}
    + \frac{1}{2} \sum_{PQRS,\sigma\sigma'} g_{PQRS} a_{P\sigma}^\dagger a_{R\sigma'}^\dagger
      a_{S\sigma'} a_{Q\sigma}

因此这是 chemist's notation :math:`[ij|kl] = (ij|kl)`.

Hubbard 模型
------------

.. math::
    H = -t \sum_{\langle ij \rangle, \sigma} a_{i\sigma}^\dagger a_{j\sigma}
    + U \sum_i n_{i\uparrow} n_{i\downarrow}

其中 (因为在同一个节点, 因此在二重求和 :math:`\sigma, \sigma'` 中, 若 :math:`\sigma = \sigma'` 则对同一个位点作用两次湮灭算符, 结果自动为零.)

.. math::
    n_{i\uparrow} n_{i\downarrow} = a_{i\alpha}^\dagger a_{i\alpha} a_{i\beta}^\dagger a_{i\beta}
        = a_{i\alpha}^\dagger a_{i\beta}^\dagger a_{i\beta} a_{i\alpha} = a_{i\beta}^\dagger a_{i\alpha}^\dagger a_{i\alpha} a_{i\beta}
        = \frac{1}{2} \sum_{\sigma} \sum_{\sigma' \neq \sigma} a_{i\sigma}^\dagger a_{i\sigma'}^\dagger a_{i\sigma'} a_{i\sigma}
        = \frac{1}{2} \sum_{\sigma\sigma'} a_{i\sigma}^\dagger a_{i\sigma'}^\dagger a_{i\sigma'} a_{i\sigma}

因此第一项, 仅在 :math:`i, j` 相差 1 时, :math:`-t = h_{PQ}`. 而第二项, 由于

.. math::
    U \sum_i n_{i\uparrow} n_{i\downarrow} = \frac{1}{2} \sum_{i,\sigma\sigma'} U a_{i\sigma}^\dagger a_{i\sigma'}^\dagger a_{i\sigma'} a_{i\sigma}

因此, 仅在 :math:`i = j = k = l` 时, :math:`U = g`. 而对于 Hubbard 模型, :math:`t` 和 :math:`-t` 的结果是一样的 (因为它是两个不同 :math:`i, j` 基组波函数对于动能算符的内积, 而波函数可以有任意相位, 因此会产生一个负号甚至是复数).

注意这个模型中, 由于第一项关于 :math:`i, j` 是不对称的, 因此, 如果只考虑 :math:`i < j` 的求和, 一定要加上厄米共轭的项作为 :math:`i > j` 的求和. 本质上, 求和要包括 :math:`i < j` 和 :math:`i > j` 两项, 和量子化学的情况一样.

Heisenberg 模型
---------------

模型哈密顿量为

.. math::
    H = J \sum_{\langle ij \rangle} \big( \boldsymbol{S}_i \cdot \boldsymbol{S}_j \big)
    = J \sum_{\langle ij \rangle} \big( S_{ix} S_{jx} + S_{iy} S_{jy} + S_{iz} S_{jz} \big)
    = J \sum_{\langle ij \rangle} \Big[ \frac{1}{2}\big( S_{i+} S_{j-} + S_{i-} S_{j+} \big) + S_{iz} S_{jz} \Big]
    \quad(J=1, S = \frac{1}{2}\sigma)

注意, 这里原始量子化学的态空间为 :math:`|vac\rangle, |\alpha\rangle, |\beta\rangle, |\alpha\beta\rangle`. 而在这个模型中, 只有两个态 :math:`|\alpha\rangle, |\beta\rangle` 会被用到. 于是

.. math::
    S_{i+} = a_{i\alpha}^\dagger a_{i\beta} \\
    S_{i-} = a_{i\beta}^\dagger a_{i\alpha} \\
    S_{iz} = \frac{1}{2} (n_{i\alpha} - n_{i\beta})

因此

.. math::
    H =&\ J \sum_{\langle ij \rangle} \Big[ \frac{1}{2}\big( S_{i+} S_{j-} + S_{i-} S_{j+} \big) + S_{iz} S_{jz} \Big] \\
    =&\ J \sum_{\langle ij \rangle} \Big[ \frac{1}{2}\big( a_{i\alpha}^\dagger a_{i\beta} a_{j\beta}^\dagger a_{j\alpha}
        + a_{i\beta}^\dagger a_{i\alpha} a_{j\alpha}^\dagger a_{j\beta} \big)
        + \frac{1}{4} (n_{i\alpha} - n_{i\beta}) (n_{j\alpha} - n_{j\beta}) \Big] \\
    =&\ J \sum_{\langle ij \rangle} \Big[ -\frac{1}{2}\big( a_{i\alpha}^\dagger a_{j\beta}^\dagger a_{i\beta}  a_{j\alpha}
        + a_{i\beta}^\dagger a_{j\alpha}^\dagger a_{i\alpha}  a_{j\beta} \big)
        + \frac{1}{4} (n_{i\alpha} - n_{i\beta}) (n_{j\alpha} - n_{j\beta}) \Big] \\
    =&\ J \sum_{\langle ij \rangle} \Big[ -\frac{1}{2} \sum_{\sigma\sigma'} 
        a_{i\sigma}^\dagger a_{j\sigma'}^\dagger a_{i\sigma'} a_{j\sigma}
        + \frac{1}{2} \big( a_{i\alpha}^\dagger a_{j\alpha}^\dagger a_{i\alpha} a_{j\alpha}
        + a_{i\beta}^\dagger a_{j\beta}^\dagger a_{i\beta}  a_{j\beta} \big)
        + \frac{1}{4} (n_{i\alpha} - n_{i\beta}) (n_{j\alpha} - n_{j\beta}) \Big] \\
    =&\ J \sum_{\langle ij \rangle} \Big[ -\frac{1}{2} \sum_{\sigma\sigma'} 
        a_{i\sigma}^\dagger a_{j\sigma'}^\dagger a_{i\sigma'} a_{j\sigma}
        - \frac{1}{2} \big( a_{i\alpha}^\dagger a_{i\alpha} a_{j\alpha}^\dagger  a_{j\alpha}
        + a_{i\beta}^\dagger a_{i\beta} a_{j\beta}^\dagger   a_{j\beta} \big)
        + \frac{1}{4} (n_{i\alpha} - n_{i\beta}) (n_{j\alpha} - n_{j\beta}) \Big] \\
    =&\ J \sum_{\langle ij \rangle} \Big[ -\frac{1}{2} \sum_{\sigma\sigma'} 
        a_{i\sigma}^\dagger a_{j\sigma'}^\dagger a_{i\sigma'} a_{j\sigma}
        - \frac{1}{2} \big( n_{i\alpha} n_{j\alpha} + n_{i\beta}  n_{j\beta} \big)
        + \frac{1}{4} (n_{i\alpha} - n_{i\beta}) (n_{j\alpha} - n_{j\beta}) \Big] \\
    =&\ J \sum_{\langle ij \rangle} \Big[ -\frac{1}{2} \sum_{\sigma\sigma'} 
        a_{i\sigma}^\dagger a_{j\sigma'}^\dagger a_{i\sigma'} a_{j\sigma}
        - \frac{1}{4} (n_{i\alpha} + n_{i\beta}) (n_{j\alpha} + n_{j\beta}) \Big] \\
    =&\ J \sum_{\langle ij \rangle} \Big[ -\frac{1}{2} \sum_{\sigma\sigma'} 
        a_{i\sigma}^\dagger a_{j\sigma'}^\dagger a_{i\sigma'} a_{j\sigma}
        - \frac{1}{4} \sum_{\sigma \sigma'} n_{i\sigma} n_{j\sigma'} \Big] \\
    =&\ J \sum_{\langle ij \rangle} \Big[ -\frac{1}{2} \sum_{\sigma\sigma'} 
        a_{i\sigma}^\dagger a_{j\sigma'}^\dagger a_{i\sigma'} a_{j\sigma}
        - \frac{1}{4} \sum_{\sigma \sigma'} a_{i\sigma}^\dagger a_{i\sigma} a_{j\sigma'}^\dagger a_{j\sigma'} \Big]\\ 
    =&\ J \sum_{\langle ij \rangle} \Big[ -\frac{1}{2} \sum_{\sigma\sigma'} 
        a_{i\sigma}^\dagger a_{j\sigma'}^\dagger a_{i\sigma'} a_{j\sigma}
        - \frac{1}{4} \sum_{\sigma \sigma'} a_{i\sigma}^\dagger a_{j\sigma'}^\dagger a_{j\sigma'} a_{i\sigma} \Big]

注意这里对 :math:`\langle i j \rangle` 求和的项关于 :math:`ij` 是对称的, 因此求和时只需考虑 :math:`i < j` 一种情况, 不应该再计算 :math:`j < i`. 但是量子化学模型是要计算两种情况的. 因此这里若规定求和要对 :math:`i < j` 和 :math:`j < i` 两部分都包括在内, 那么要写成 :math:`\frac{1}{2}\sum_{\langle ij \rangle}`. 这就和量子化学的形式一样了, 都有 :math:`\frac{1}{2}` 的系数. 注意 FCIDUMP 只需要记录不重复的项. 因此 :math:`J = 1` 相当于 :math:`IJKL = IJJI` 时 :math:`g = -\frac{1}{2}`, 并且 :math:`IJKL = IIJJ` 时  :math:`g = -\frac{1}{4}`.


广义相对论习题(徐一鸿)
======================

.. only:: html

    .. math::
        \renewenvironment{equation*}
        {\begin{equation}\begin{aligned}}
        {\end{aligned}\end{equation}}
        \renewcommand{\gg}{>\!\!>}
        \renewcommand{\ll}{<\!\!<}
        \newcommand{\I}{\mathrm{i}}
        \newcommand{\D}{\mathrm{d}}
        \newcommand{\dt}{\frac{\D}{\D t}}
        \newcommand{\E}{\mathrm{e}}
        \renewcommand{\bm}{\mathbf}

I.1 牛顿定律
------------

.. admonition:: 1 题目(:math:`\delta` 函数的性质)

    对光滑函数 :math:`f(x)`, 证明积分 :math:`\int_{-\infty}^\infty \D x \delta (x) f(x) = f(0)`. 并通过对某光滑函数 :math:`f(x)` 求积分 :math:`\int_{-\infty}^\infty \D x \delta (ax) f(x)` 证明 :math:`\delta(ax)=\delta(x)/|a|`.

.. admonition:: 1 题解

    对任何 :math:`\epsilon > 0`, 根据积分中值定理, 存在 :math:`\xi \in [-\epsilon, \epsilon]` [#delta]_ 使得
    
    .. math::
        \int_{-\infty}^\infty \D x \delta (x) f(x) =&\ \int_{-\infty}^{-\epsilon} \D x \delta (x) f(x)
            + \int_{-\epsilon}^{\epsilon} \D x \delta (x) f(x) + \int_{\epsilon}^{\infty} \D x \delta (x) f(x) \\
            =&\ \int_{-\epsilon}^{\epsilon} \D x \delta (x) f(x)
            = f(\xi) \int_{-\epsilon}^{\epsilon} \D x \delta (x) = f(\xi)
    
    令 :math:`\epsilon \to 0`, 得 :math:`\xi = 0`, 于是
    
    .. math:: \int_{-\infty}^\infty \D x \delta (x) f(x) = f(0)
        :label: delta_sel
    
    先考虑 :math:`a>0`, 令 :math:`y = ax, \D y = a \D x`. 得
    
    .. math:: \int_{-\infty}^\infty \D x \delta (ax) f(x) = \frac{1}{a} \int_{-\infty}^\infty \D y \delta (y) f\left(\frac{y}{a}\right) = \frac{f(0)}{a}

    对 :math:`a<0`, 则有

    .. math:: \int_{-\infty}^\infty \D x \delta (ax) f(x) = \frac{1}{a} \int_{\infty}^{-\infty} \D y \delta (y) f\left(\frac{y}{a}\right) = \frac{f(0)}{-a}

    综上,
    
    .. math:: \int_{-\infty}^\infty \D x \delta (ax) f(x) = \frac{f(0)}{|a|}
        :label: delta_a

    将 :eq:`delta_sel` 式除以 :math:`|a|` 并与 :eq:`delta_a` 式相减, 得
    
    .. math:: \int_{-\infty}^\infty \D x \left[ \delta (ax) - \frac{\delta (x)}{|a|} \right] f(x) = 0

    由于 :math:`f(x)` 可以是任意函数, 所以括号中的部分必须恒等于0. 即 :math:`\delta (ax) = \frac{\delta (x)}{|a|}`.

.. admonition:: 积分中值定理(First Mean Value Theorem for Definite Integrals)
    
    设 :math:`f:[a,b]\to \mathbb{R}` 为一连续函数, :math:`g:[a,b]\to \mathbb{R}`. 要求 :math:`g(x)` 是可积函数且在积分区间不变号, 那么存在一点 :math:`\xi \in [a,b]` 使得
    
    .. math:: \int_a^b f(x)g(x) \D x = f(\xi)\int_a^b g(x)\D x
    
.. admonition:: 积分中值定理证明

    不失一般性, 设对所有 :math:`x, g(x) \geqslant 0`; 因为 :math:`f` 是闭区间上的连续函数, :math:`f` 取得最大值 :math:`M` 和最小值 :math:`m`. 于是
    
    .. math::
        mg(x) \leqslant&\  f(x) g(x) \leqslant Mg(x) \\
        m\int_a^b g(x) \D x \leqslant&\ \int_a^b f(x) g(x) \D x \leqslant M\int_a^b g(x) \D x
    
    若 :math:`\int_a^b g(x)\D x = 0`, 则 :math:`\int_a^b f(x) g(x) \D x = 0`, :math:`\xi` 可取 :math:`[a,b]` 上任意一点. 若不等于零那么 :math:`\int_a^b g(x)\D x > 0`.
    
    .. math:: m  \leqslant \frac{\int_a^b f(x) g(x) \D x}{\int_a^b g(x)\D x} \leqslant M

    因为 :math:`m \leqslant f(x) \leqslant M` 是连续函数, 则必存在一点 :math:`\xi \in [a,b]`, 使得
    
    .. math:: f(\xi)=\frac{\int_a^b f(x) g(x) \D x}{\int_a^b g(x)\D x}

    :math:`g(x)\leqslant 0` 的情况按同样方法证明. 
    
    
    
    
    

.. [#delta] 数学物理方法(第四版), 梁昆淼, 第84页.

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
        \newcommand{\xtensor}[3]{{#1}#2 {\vphantom{#1}}#3}

第五章习题
----------

.. admonition:: 题目 5.1

    在定理5-1-3证明中补证 :math:`\{ (e^1)_a {\color{red}{\wedge}} (e^2)_b, (e^2)_a {\color{red}{\wedge}} (e^3)_b, (e^3)_a {\color{red}{\wedge}} (e^1)_b \}` 线性独立.

.. admonition:: 题解 5.1

    由定义, :math:`(e^1)_a \wedge (e^2)_b = (e^1)_a (e^2)_b - (e^2)_a (e^1)_b`. 设存在 :math:`a_{\mu\nu}` 使
    
    .. math:: 
        \sum_{\C} a_{\mu\nu} (e^\mu)_a \wedge (e^\nu)_b = 0
    
    则等式两边乘以对偶基矢的楔积 :math:`(e_\sigma)^a \wedge (e_\rho)^b`, 注意如果基矢和对偶基矢中的两个因子有一个不一样, 那么乘积为零. 而当它们都一样时, 乘积为2. 于是 :math:`2a_{\sigma\rho} = 0`, 于是它们线性独立.

.. admonition:: 题目 5.2

    设 :math:`V` 为矢量空间, :math:`\{ (e^1)_a, (e^2)_a, (e^3)_a, (e^4)_a \}` 是 :math:`V^*` 的基底, 写出 :math:`\omega_a \in \Lambda(1), \omega_{abc} \in \Lambda(3)` 和 :math:`\omega_{abcd} \in \Lambda(4)` 在此基底的展开式, 说明展开系数 (如 :math:`{\color{red}{\omega_{123}}}`) 的定义.

.. admonition:: 题解 5.2

    
    .. math:: 
        \omega_a =&\ \sum_{\mu = 1}^4 \omega_\mu (e^\mu)_a,\quad \omega_\mu = \omega_a (e_\mu)^a \\
        \omega_{abc} =&\ \omega_{123} (e^1)_a \wedge (e^2)_b \wedge (e^3)_c + \omega_{124} (e^1)_a \wedge (e^2)_b \wedge (e^4)_c \\
            &\ + \omega_{134} (e^1)_a \wedge (e^3)_b \wedge (e^4)_c + \omega_{234} (e^2)_a \wedge (e^3)_b \wedge (e^4)_c \\
        \omega_{123} =&\ \omega_{abc} (e_1)^a (e_2)^b (e_3)^c \\
        \omega_{abcd} =&\ \omega_{1234} (e^1)_a \wedge (e^2)_b \wedge (e^3)_c \wedge (e^4)_d \\
        \omega_{1234} =&\ \omega_{abcd} (e_1)^a (e_2)^b (e_3)^c (e_4)^d

.. admonition:: 题目 5.3

    用数学归纳法证明 :math:`(\omega^1)_{a_1} \wedge \cdots \wedge (\omega^l)_{a_l} = l! (\omega^1)_{[a_1}\cdots (\omega^l)_{a_l]}`, 其中 :math:`(\omega^1)_a, \cdots, (\omega^l)_a` 为任意对偶矢量.

.. admonition:: 题解 5.3

    当 :math:`l = 2` 时, 按楔积定义
    
    .. math:: 
        (\omega^1)_{a_1} \wedge (\omega^2)_{a_2} = \frac{2!}{1!1!} (\omega^1)_{[a_1} (\omega^2)_{a_2]} = 2! (\omega^1)_{[a_1} (\omega^2)_{a_2]}

    现假设 :math:`l = k - 1` 时, 结论成立, 那么 :math:`l = k` 时有
    
    .. math:: 
        (\omega^1)_{a_1} \wedge \cdots \wedge (\omega^{k - 1})_{a_{k - 1}} \wedge (\omega^k)_{a_k} 
            =&\ (k - 1)! (\omega^1)_{[a_1}\cdots (\omega^{k - 1})_{a_{k - 1}]} \wedge (\omega^k)_{a_k}\\
            =&\ (k - 1)! \frac{k!}{(k - 1)!1!} (\omega^1)_{[[a_1}\cdots (\omega^{k - 1})_{a_{k - 1}]} (\omega^k)_{a_k]} \\
            =&\ k! (\omega^1)_{[a_1}\cdots (\omega^k)_{a_k]}
    
    于是结论对所有 :math:`l` 成立.

.. admonition:: 题目 5.4

    试证定理5-1-4: 设 :math:`\omega_{a_1\cdots a_l} = \sum_\C \omega_{\mu_1\cdots \mu_l} (\D x^{\mu_1})_{a_1}\wedge \cdots \wedge (\D x^{\mu_l})_{a_l}`, 则

    .. math:: 
        (\D \omega)_{ba_1\cdots a_l} = \sum_\C (\D \omega_{\mu_1\cdots \mu_l})_b \wedge (\D x^{\mu_1})_{a_1} \wedge \cdots \wedge
            (\D x^{\mu_l})_{a_l}.

.. admonition:: 题解 5.4

    由定义3得 (注意普通导数算符对基底作用得零)
    
    .. math:: 
        (\D \omega)_{ba_1\cdots a_l} =&\ (l + 1)\partial_{[b} \omega_{a_1\cdots a_l]} \\
        =&\ \sum_{\C} (l + 1)\partial_{[b} \omega_{\mu_1\cdots \mu_l} (\D x^{\mu_1})_{a_1} \wedge \cdots \wedge (\D x^{\mu_l})_{a_l]} \\
        =&\ \sum_{\C} (l + 1) (\partial_{[b} \omega_{\mu_1\cdots \mu_l}) (\D x^{\mu_1})_{a_1} \wedge \cdots \wedge (\D x^{\mu_l})_{a_l]} \\
        =&\ \sum_{\C} (l + 1) (\D \omega_{\mu_1\cdots \mu_l})_{[b} (\D x^{\mu_1})_{a_1} \wedge \cdots \wedge (\D x^{\mu_l})_{a_l]} \\ 
        =&\ \sum_{\C} (l + 1) \frac{1!l!}{(l + 1)!} (\D \omega_{\mu_1\cdots \mu_l})_b \wedge (\D x^{\mu_1})_{a_1} \wedge \cdots \wedge (\D x^{\mu_l})_{a_l}  \\
        =&\ \sum_{\C} (\D \omega_{\mu_1\cdots \mu_l})_b \wedge (\D x^{\mu_1})_{a_1} \wedge \cdots \wedge (\D x^{\mu_l})_{a_l}

.. admonition:: 题目 5.5

    设 :math:`\bm{\omega}` 是1形式场, :math:`u, v` 是矢量场, 试证 :math:`\D \bm{\omega}(u, v) = u(\bm{\omega}(v)) - v(\bm{\omega}(u)) - \bm{\omega}([u, v])`. 等式左边代表 :math:`\D \bm{\omega}` 对 :math:`u, v` 的作用结果, 即 :math:`(\D \bm{\omega})_{ab}u^a{\color{red}{v^b}}`.

.. admonition:: 题解 5.5

    .. math:: 
        (\D \bm{\omega})_{ab} u^av^b =&\ 2 \nabla_{[a}\omega_{b]} u^av^b
            = u^av^b\nabla_a\omega_b - u^av^b \nabla_b \omega_a \\
        u(\bm{\omega}(v)) - v(\bm{\omega}(u)) - \bm{\omega}([u, v]) =&\ 
            u^b\nabla_b(\omega_av^a) - v^b\nabla_b(\omega_au^a) - \omega_au^b\nabla_b v^a + \omega_av^b\nabla_bu^a \\
        =&\ {\color{red}{u^b\omega_a\nabla_b v^a}} + u^bv^a\nabla_b \omega_a -u^av^b\nabla_b\omega_a {- \color{blue}{v^b\omega_a\nabla_b u^a}} \\
        &\ {\color{red}{- \omega_au^b\nabla_b v^a}} + {\color{blue}{\omega_av^b\nabla_bu^a}}\\
        =&\ u^av^b\nabla_a \omega_b -u^av^b\nabla_b\omega_a

.. admonition:: 题目 5.6

    设 :math:`v^b` 和 :math:`\omega_{a_1\cdots a_l}` 分别是流形 :math:`M` 上的矢量场和 :math:`l` 形式场, 试证

    (a) :math:`\mathscr{L}_v\omega_{a_1\cdots a_l} = \D_{a_1} (v^b \omega_{ba_2\cdots a_l} ) + (\D \omega)_{ba_1\cdots a_l} v^b`.

    注: 令 :math:`\mu_{a_2\cdots a_l} \equiv v^b\omega_{ba_2\cdots a_l}`, 则 :math:`\D_{a_1} \mu_{a_2\cdots a_l}` 是指 :math:`(\D \mu)_{a_1a_2\cdots a_l}`.

    (b) :math:`\mathscr{L}_v\D \bm{\omega} = \D \mathscr{L}_v\bm{\omega}`.

    提示: (1) 证 (a) 时可先证 :math:`l = 2` 的特例, 找到感觉后不难推广至一般情况. (2) 利用 (a) 的结果将使 (b) 的证明变得十分简单.

.. admonition:: 题解 5.6

    (a) 

    根据李导数作用于张量的公式

    .. math:: 
        \mathscr{L}_v\omega_{a_1\cdots a_l} =&\ v^c\nabla_c \omega_{a_1\cdots a_l} + \sum_{j = 1}^l \omega_{a_1\cdots c \cdots a_l}\nabla_{a_j}v^c \\
         = &\ {\color{red}{v^c\nabla_c \omega_{a_1\cdots a_l}}} + {\color{blue}{\omega_{ca_2\cdots a_l} \nabla_{a_1}v^c -\sum_{j=2}^l \omega_{ca_2a_3\cdots a_{j - 1}a_1a_{j + 1}\cdots a_l}\nabla_{a_j}v^c}}
        
    另一方面, 利用 :math:`\bm{\omega}` 本身的反称性
    
    .. math:: 
        (\D \omega)_{ba_1\cdots a_l} v^b =&\ (l + 1) v^c \nabla_{[c}\omega_{a_1\cdots a_l]} \\
            =&\ v^c \nabla_c\omega_{a_1\cdots a_l} - v^c \sum_{j = 1}^l \nabla_{a_j} \omega_{[a_1\cdots c\cdots a_l]} \\
            =&\ {\color{red}{v^c \nabla_c\omega_{a_1\cdots a_l}}} {\color{orange}{- v^c \nabla_{a_1} \omega_{ca_2 \cdots a_l}}} + v^c \sum_{j = 2}^l 
                \nabla_{a_j} \omega_{ca_2a_3\cdots a_{j - 1}a_1a_{j +1}\cdots a_l} \\
        \D_{a_1} (v^b \omega_{ba_2\cdots a_l}) =&\ l \nabla_{[a_1} (v^b \omega_{|b|a_2\cdots a_l]}) \\
        =&\ {\color{green}{l v^b \nabla_{[a_1} \omega_{|b|a_2\cdots a_l]}}} + {\color{blue}{l (\nabla_{[a_1} v^c) \omega_{|c|a_2\cdots a_l]}}} \\
        {\color{green}{l v^b \nabla_{[a_1} \omega_{|b|a_2\cdots a_l]}}} =&\ {\color{orange}{v^c \nabla_{a_1} \omega_{ca_2\cdots a_l}}}
            -v^c \sum_{j = 2}^l \nabla_{a_j} \omega_{ca_2a_3\cdots a_{j - 1}a_1 a_{j+1}\cdots a_l} \\
        {\color{blue}{l (\nabla_{[a_1} v^c) \omega_{|c|a_2\cdots a_l]}}}
        =&\  {\color{blue}{\omega_{ca_2\cdots a_l}\nabla_{a_1} v^c - \sum_{j = 2}^l
             \omega_{ca_2a_3\cdots a_{j - 1}a_1a_{j + 1}\cdots a_l} \nabla_{a_j} v^c}}
        
    因此得证.

    (b) 利用 :math:`\D \circ \D = 0`, 得 (假设指标为 :math:`\omega_{a_1\cdots a_l}, (\D\omega)_{ca_1\cdots a_l}`)
    
    .. math:: 
        \mathscr{L}_v\D \bm{\omega} =&\ \D_{c} (v^b (\D \omega)_{ba_1\cdots a_l} ) + (\D (\D \omega))_{bca_1\cdots a_l} v^b = \D_{c} (v^b (\D \omega)_{ba_1\cdots a_l} ) \\
        \D \mathscr{L}_v \bm{\omega} =&\ \D_c \big(\D_{a_1} (v^b \omega_{ba_2\cdots a_l} )\big) + \D_c \big((\D \omega)_{ba_1\cdots a_l} v^b \big) \\
        =&\ \D_c \big((\D \omega)_{ba_1\cdots a_l} v^b \big)
    
    因此得证.

.. admonition:: 题目 5.7

    设 :math:`O` 是 :math:`n` 维流形 :math:`M` 上坐标系 :math:`\{ x^\mu \}` 的坐标域 (且 :math:`O` 同胚于 :math:`\mathbb{R}^n`), :math:`\omega_a` 是 :math:`O` 上的 1形式场, 试证 :math:`\partial \omega_\mu /\partial x^\nu = \partial \omega_\nu /\partial x^\mu (\mu, \nu = 1,\cdots , n)` 当且仅当存在 :math:`f : O\to \mathbb{R}` 使 :math:`\nabla_a f = \omega_a`. 提示: 仿照第5.1节推论5-1-6的证明.

.. admonition:: 题解 5.7

    1形式场 :math:`\omega_a` 的外微分为
    
    .. math:: 
        \D_b \omega_a =&\ \D_b \big( \omega_\mu \D (x^\mu)_a \big) = \D \omega_\mu \wedge \D (x^\mu)_a \\
        =&\ \big( \partial_\nu \omega_\mu \D x^\nu \big) \wedge \D (x^\mu)_a 
        = \sum_{\mu < \nu} \big( \partial_\mu \omega_\nu - \partial_\nu \omega_\mu \big) \D (x^\mu)_a  \wedge \D (x^\nu)_a 
    
    (A) 若存在函数 :math:`f` 使 :math:`\nabla_a f = \D_a f = \omega_a`, 则 :math:`\D_b \omega_a = \D_b (\D_a f) = 0`, 于是 (由对称性可知不必强制 :math:`\mu, \nu` 的顺序)
    
    .. math:: 
        \partial_\mu \omega_\nu - \partial_\nu \omega_\mu = 0, \quad \forall \mu, \nu = 1,\cdots , n
    
    (B) 反之, 若 :math:`\partial \omega_\mu /\partial x^\nu = \partial \omega_\nu /\partial x^\mu (\mu, \nu = 1,\cdots , n)`, 则 :math:`\D_b \omega_a = 0`, 即 :math:`\omega_a` 为闭, 则为恰当, 即存在 :math:`f` 使 :math:`\D_a f = \nabla_a f = \omega_a`.

.. admonition:: 题目 5.8

    设 :math:`\{ x, y, z \}` 和 :math:`\{ r, \theta, \varphi \}` 分别为 3 维欧氏空间的笛卡儿坐标系和球坐标系, 写出 :math:`\D r \wedge \D \theta \wedge \D \varphi` 用 :math:`\D x \wedge \D y \wedge \D z` 的表达式.

.. admonition:: 题解 5.8

    利用体元张量在不同坐标系展开
    
    .. math:: 
        \varepsilon_{abc} =&\ + \sqrt{|g|} (e^1)_a \wedge (e^2)_b \wedge (e^3)_c = \D x \wedge \D y \wedge \D z \\
            =&\ \sqrt{r^2\cdot r^2\sin^2\theta} \D r \wedge \D \theta \wedge \D \varphi 
            = r^2\sin\theta \D r \wedge \D \theta \wedge \D \varphi  \\
        \D r \wedge \D \theta \wedge \D \varphi = &\ \frac{1}{r^2\sin\theta} \D x \wedge \D y \wedge \D z

.. admonition:: 题目 5.9

    连通流形 :math:`M` 配以洛伦兹号差的度规场 :math:`g_{ab}` 叫 **时空** (timespace). 设 :math:`F_{ab}` 是任意4维时空的2形式场, 试证
    
    .. math:: 
        \frac{1}{2}(F_{ac}\xtensor{F}{_b}{^c} + {}^*F_{ac}{}^*\xtensor{F}{_b}{^c}) = F_{ac}\xtensor{F}{_b}{^c}
            -\frac{1}{4} g_{ab} F_{cd} F^{cd}
    
    其中 :math:`{}^*F_{ac} \equiv (^*F)_{ac}`, :math:`{}^*\xtensor{F}{_b}{^c} = g^{ac}\ {}^*F_{ba}`. (此式对研究电磁场有帮助)

.. admonition:: 题解 5.9

    首先移项得
    
    .. math:: 
        \frac{1}{2}{}^*F_{ac}{}^*\xtensor{F}{_b}{^c} =&\ \frac{1}{2}F_{ac}\xtensor{F}{_b}{^c}
            -\frac{1}{4} g_{ab} F_{cd} F^{cd} \\
            {}^*F_{ac}{}^*\xtensor{F}{_b}{^c}=&\ F_{ac}\xtensor{F}{_b}{^c}
            -\frac{1}{2} g_{ab} F_{cd} F^{cd}
        
    其中
    
    .. math:: 
        {}^*F_{ac} =&\ \frac{1}{2} F^{fg}\varepsilon_{fgac},\quad {}^*\xtensor{F}{_b}{^c} = g^{ca}\ {}^*F_{ba} = \frac{1}{2}
            g^{ca} F^{de}\varepsilon_{deba} \\
        {}^*F_{ac}{}^*\xtensor{F}{_b}{^c} =&\ \frac{1}{4} F^{fg}\varepsilon_{fgac} g^{ca} F^{de}\varepsilon_{deba} \\
        =&\ \frac{1}{4} g_{bh} F^{fg}\varepsilon_{fgac}  F_{de}\varepsilon^{dehc} \\
        =&\ \frac{1}{4} g_{bh} F^{fg}F_{de} \varepsilon^{cdeh}\varepsilon_{cfga}
    
    而根据定理5-4-4有
    
    .. math:: 
        \varepsilon^{cdeh}\varepsilon_{cfga} =&\ (-1)3! 1!\xtensor{\delta}{^{[d}}{_f}\xtensor{\delta}{^e}{_g}\xtensor{\delta}{^{h]}}{_a}  \\
        \xtensor{\delta}{^{[d}}{_f}\xtensor{\delta}{^e}{_g}\xtensor{\delta}{^{h]}}{_a} T^{fga} =&\  
            \xtensor{\delta}{^{d}}{_f}\xtensor{\delta}{^e}{_g}\xtensor{\delta}{^{h}}{_a} T^{[fga]} = T^{[deh]}
    
    于是
    
    .. math:: 
        {}^*F_{ac}{}^*\xtensor{F}{_b}{^c} =&\ -\frac{6}{4} g_{bh} F^{fg}F_{de} \xtensor{\delta}{^{[d}}{_f}\xtensor{\delta}{^e}{_g}\xtensor{\delta}{^{h]}}{_a} = -\frac{6}{4} g_{b[a} F^{de}F_{de]} \\
        =&\ -\frac{2}{4} g_{ba} F^{de}F_{de} - \frac{2}{4} g_{bd} F^{de}F_{ea} - \frac{2}{4} g_{be} F^{de}F_{ad} \\
        =&\ -\frac{2}{4} g_{ba} F^{de}F_{de} + \frac{2}{4} g_{bd} F^{de}F_{ae} + \frac{2}{4} g_{be} F^{de}F_{da} \\
        =&\ -\frac{1}{2} g_{ba} F^{de}F_{de} + \frac{1}{2} g_{be} F^{ed}F_{ad} + \frac{1}{2} g_{be} F^{de}F_{da} \\
        =&\ -\frac{1}{2} g_{ba} F^{de}F_{de} + F_{ad}\xtensor{F}{_b}{^d}
        

.. admonition:: 题目 5.10

    试证 :math:`\hat{\varepsilon}_{a_1\cdots a_{n-1}} \equiv \pm n^b {\color{red}{\varepsilon}}_{ba_1\cdots a_{n-1}}` 是 :math:`\partial N` 上与诱导度规场 :math:`h_{ab}` 相适配的体元.

.. admonition:: 题解 5.10

    此即证明
    
    .. math:: 
        \hat{\varepsilon}^{a_1\cdots a_{n-1}}\hat{\varepsilon}_{a_1\cdots a_{n-1}} = (-1)^{\hat{s}}(n-1)!
    
    根据定义有
    
    .. math:: 
        \hat{\varepsilon}^{a_1\cdots a_{n-1}}\hat{\varepsilon}_{a_1\cdots a_{n-1}} =&\ 
             n_c \varepsilon^{ca_1\cdots a_{n-1}} n^b \varepsilon_{ba_1\cdots a_{n-1}}
             = n_cn^b \varepsilon^{a_1\cdots a_{n-1}c}\varepsilon_{a_1\cdots a_{n-1}b} \\
        =&\ n_cn^b (-1)^s1!(n-1)! \xtensor{\delta}{^c}{_b} = n_bn^b (-1)^s (n-1)!
    
    现若 :math:`n_bn^b = -1`, 则法矢类时, 诱导度规的 :math:`-1` 个数应该减一, 即 :math:`\hat{s} = s - 1`, 如果 :math:`n_bn^b = 1`, 则诱导度规的 :math:`-1` 个数不变, 即 :math:`\hat{s} = s`. 于是有
    
    .. math:: 
        \hat{\varepsilon}^{a_1\cdots a_{n-1}}\hat{\varepsilon}_{a_1\cdots a_{n-1}} = \begin{cases} (-1)(-1)^{\hat{s} + 1} (n-1)! &
            (n_bn^b = -1) \\ (-1)^{\hat{s}}(n-1)!  & (n_bn^b = 1) \end{cases} = (-1)^{\hat{s}}(n-1)!

.. admonition:: 题目 5.11

    试证定理5-6-1和5-6-2.

.. admonition:: 题解 5.11

    (A) 定理5-6-1: :math:`{}^{**}\bm{\omega} = (-1)^{s+l(n-l)}\bm{\omega}`.

    根据定义有
    
    .. math:: 
        {}^*\omega_{a_1\cdots a_{n-l}} =&\ \frac{1}{l!}\omega^{b_1\cdots b_l} \varepsilon_{b_1\cdots b_la_1\cdots a_{n-l}} \\
        {}^{**}\omega_{a_1\cdots a_{l}} =&\ \frac{1}{l!(n-l)!} \omega^{b_1\cdots b_l} \xtensor{\varepsilon}{_{b_1\cdots b_l}}{^{c_1\cdots c_{n-l}}} \varepsilon_{c_1\cdots c_{n-l}a_1\cdots a_{l}} \\
        =&\ \frac{1}{l!(n-l)!} \omega_{b_1\cdots b_l} \varepsilon^{b_1\cdots b_lc_1\cdots c_{n-l}} \varepsilon_{c_1\cdots c_{n-l}a_1\cdots a_{l}}
    
    把 :math:`\varepsilon^{b_1\cdots b_lc_1\cdots c_{n-l}}` 的 :math:`c` 指标调到 :math:`b` 指标之前, 对每个 :math:`c` 指标需要做 :math:`l` 次交换, 一共需要做 :math:`n - l` 次交换. 所以交换后的因子为 :math:`(-1)^{l(n-l)}`, 即
    
    .. math:: 
        \varepsilon^{b_1\cdots b_lc_1\cdots c_{n-l}} = (-1)^{l(n-l)}\varepsilon^{c_1\cdots c_{n-l}b_1\cdots b_l}
    
    从而
    
    .. math:: 
        {}^{**}\omega_{a_1\cdots a_{l}} =&\ \frac{(-1)^{l(n-l)}}{l!(n-l)!} \omega_{b_1\cdots b_l} \varepsilon^{c_1\cdots c_{n-l}b_1\cdots b_l} \varepsilon_{c_1\cdots c_{n-l}a_1\cdots a_{l}} \\
        =&\ \frac{(-1)^{l(n-l)}}{l!(n-l)!} \omega_{b_1\cdots b_l} (-1)^s l! (n -l)! \xtensor{\delta}{^{[b_1}}{_{a_1}}\cdots 
            \xtensor{\delta}{^{b_l]}}{_{a_l}} \\
        =&\ (-1)^{s + l(n-l)} \omega_{[a_1\cdots a_l]} = (-1)^{s + l(n-l)} \omega_{a_1\cdots a_l}
    
    (B) 定理5-6-2: 设 :math:`f` 和 :math:`\bm{A}` 是3维欧氏空间的函数和矢量场, 则

    .. math:: 
        \mathrm{grad}\ f = \D f, \quad \mathrm{curl}\ \bm{A} = {}^*\D \bm{A},\quad \mathrm{div}\ \bm{A} = {}^*\D (^*\bm{A})
    
    证明如下
    
    .. math:: 
        \mathrm{grad}\ f =&\ \bm{\nabla} f = \partial_a f = \D f \\
        \mathrm{curl}\ \bm{A} =&\ \bm{\nabla} \times \bm{A} = g_{cd} \varepsilon^{abd}\partial_a A_b \\
        {}^*\D \bm{A} =&\ {}^* \big[ 2\partial_{[a}A_{b]} \big] = \frac{1}{2} \cdot 2 \partial^{[a}A^{b]} \varepsilon_{abc} \\
        =&\ \partial_{a}A_{b} \xtensor{\varepsilon}{^{[ab]}}{_c} = g_{cd} \varepsilon^{abd}\partial_a A_b \\
        \mathrm{div}\ \bm{A} =&\ \bm{\nabla} \cdot \bm{A} = \partial_a A^a \\
        {}^*\D (^*\bm{A}) =&\ {}^*\D \big( A^a \varepsilon_{abc} \big) = {}^* \big[ 3 \nabla_{[d} (A^a \varepsilon_{|a|bc]}) \big]\\
        =&\ \frac{1}{2} \nabla^{[d} (A^{|a|} \xtensor{\varepsilon}{_a}{^{bc]}})\varepsilon_{dbc} = \frac{1}{2} (\nabla^{d} A_a) \varepsilon{^{abc}}\varepsilon_{dbc} = \partial^d A_a \xtensor{\delta}{^a}{_d} = \partial_a A^a

.. admonition:: 题目 5.12

    设 :math:`x,y,z` 是3维欧氏空间的笛卡儿坐标, 试证 (a) :math:`{}^*\D x = \D y \wedge \D z`; (b) :math:`{}^*(\D x \wedge \D y\wedge \D z)=1`.

.. admonition:: 题解 5.12

    .. math:: 
        \varepsilon_{abc} =&\ (\D x)_a \wedge (\D y)_b \wedge (\D z)_c \\
        {}^*(\D x)_{bc} =&\ \frac{1}{1!} \left( \frac{\partial}{\partial x} \right)^a (\D x)_a \wedge (\D y)_b \wedge (\D z)_c = (\D y)_b \wedge (\D z)_c \\
        {}^*(\D x \wedge \D y\wedge \D z) =&\ \frac{1}{3!} \varepsilon^{abc}\varepsilon_{abc} = 1

.. admonition:: 题目 5.13

    设 :math:`\{ r, \theta, \varphi \}` 是3维欧氏空间的球坐标系, 试证 :math:`{}^*\D r = (r^2\sin\theta)\D \theta \wedge \D \varphi`.

.. admonition:: 题解 5.13

        .. math:: 
            \varepsilon_{abc} =&\ r^2\sin\theta (\D r)_a \wedge (\D \theta)_b \wedge (\D \varphi)_c \\
            {}^*(\D r)_{bc} =&\ \frac{1}{1!} \left( \frac{\partial}{\partial r} \right)^a r^2\sin\theta (\D r)_a \wedge (\D \theta)_b \wedge (\D \varphi)_c = r^2\sin\theta (\D \theta)_b \wedge (\D \varphi)_c

.. admonition:: 题目 5.14

    设 :math:`\bm{A}, \bm{B}` 为 :math:`\mathbb{R}^3` 上的矢量场, :math:`\bm{\nabla}` 为 :math:`\mathbb{R}^3` 上与欧氏度规相适配的导数算符, 试证
    
    .. math:: 
        \bm{\nabla}\times (\bm{A}\times \bm{B}) = (\bm{B}\cdot \bm{\nabla})\bm{A} + (\bm{\nabla}\cdot \bm{B})\bm{A}
            - (\bm{A}\cdot \bm{\nabla})\bm{B} - (\bm{\nabla}\cdot \bm{A})\bm{B}

.. admonition:: 题解 5.14

    
    .. math:: 
        \bm{\nabla}\times (\bm{A}\times \bm{B}) =&\ \varepsilon^{dea} \partial_d \big(\xtensor{\varepsilon}{^{bc}}{_e}A_bB_c \big)
            = \varepsilon^{dea} \xtensor{\varepsilon}{^{bc}}{_e} \partial_d (A_bB_c) \\
            =&\  -\varepsilon^{eda} \varepsilon_{ebc} \partial_d (A^bB^c) = -2 \xtensor{\delta}{^{[d}}{_b}\xtensor{\delta}{^{a]}}{_c} \partial_d (A^bB^c) = 2 \partial_b (A^{[a}B^{b]}) \\
            =&\ \partial_b (A^aB^b) - \partial_b (A^bB^a) \\
            =&\ B^b \partial_b A^a + A^a\partial_b B^b - A^b \partial_b B^a - B^a \partial_b A^b \\
            =&\ (\bm{B}\cdot \bm{\nabla})\bm{A} + (\bm{\nabla} \cdot \bm{B})\bm{A} - (\bm{A}\cdot \bm{\nabla})\bm{B}
                - (\bm{\nabla} \cdot \bm{A})\bm{B}

.. admonition:: 题目 5.15

    用微分形式证明3维欧氏空间场论中并不易证的下列熟知命题: (1) 无旋矢量场必可表为梯度; (2) 无散矢量场必可表为旋度.

.. admonition:: 题解 5.15

    (1) 由 :math:`\bm{\nabla}\times \bm{E} = {}^*\D \bm{E} = 0` 得 :math:`\D \bm{E} = 0` 于是 :math:`\bm{E}` 为闭, 则为恰当, 即存在 :math:`\phi` 使 :math:`\bm{E} = \D \phi = \bm{\nabla} f`.
    (2) 由 :math:`\bm{\nabla}\cdot\bm{B} = {}^*\D ({}^*\bm{B}) = 0` 得 :math:`\D (^*\bm{B}) = 0` 于是 :math:`{}^*\bm{B}` 为闭, 则为恰当, 即存在 :math:`\bm{A}` 使 :math:`{}^*\bm{B} = \D \bm{A}` 于是 :math:`\bm{B} = {}^*\D \bm{A} = \bm{\nabla}\times \bm{A}`.

.. admonition:: 题目 5.16

    设 :math:`\nabla_a` 是广义黎曼空间 :math:`(M, g_{ab})` 上的适配导数算符 (即 :math:`\nabla_a g_{bc} = 0`), :math:`\bm{\varepsilon}` 是适配体元 (即 :math:`\nabla_a\varepsilon_{b_1\cdots b_n} = 0`), :math:`v^a` 是 :math:`M` 上的矢量场, :math:`v_a \equiv g_{ab}v^b` 是 :math:`v^a` 相应的1形式场, :math:`{}^*\bm{v}` 是 :math:`v_a` 的对偶形式场, 试证 :math:`(\nabla_av^a)\bm{\varepsilon} = \D^*\bm{v}`. 注: 这个结论可做如下推广: 设 :math:`F_{a_1\cdots a_k}` 是 :math:`k` 形式场 (:math:`k \leqslant n`), 简记作 :math:`\bm{F}`, 把 :math:`k - 1` 形式场 :math:`\nabla^{a_k}F_{a_1\cdots a_k}` 记作 :math:`\mathrm{div}\ \bm{F}`, 则 :math:`{}^*(\mathrm{div}\ \bm{F}) = \D^*\bm{F}`. 电磁场的麦氏方程就是一例.

.. admonition:: 题解 5.16
    
    .. math:: 
        (\D^*v)_{a_1\cdots a_l} =&\ n\nabla_{[a_1}(^*v_{a_2\cdots a_l]}) = n\nabla_{[a_1}(v^b\varepsilon_{|b|a_2\cdots a_l]}) \\
            =&\ n(\nabla_{[a_1}v^b) \varepsilon_{|b|a_2\cdots a_l]} \equiv h \varepsilon_{a_1\cdots a_l}
    
    乘 :math:`\varepsilon^{a_1\cdots a_l}` 得
    
    .. math:: 
        \varepsilon^{a_1\cdots a_l} h \varepsilon_{a_1\cdots a_l} =&\ hn!(-1)^s \\
        \varepsilon^{a_1\cdots a_l} n(\nabla_{[a_1}v^b) \varepsilon_{|b|a_2\cdots a_l]} =&\ 
            \varepsilon^{a_1\cdots a_l} n(\nabla_{a_1}v^b) \varepsilon_{ba_2\cdots a_l}
            = (-1)^s (n-1)! \xtensor{\delta}{^{a_1}}{_b}  n\nabla_{a_1}v^b = n!(-1)^s \nabla_bv^b
    
    于是 :math:`h = \nabla_bv^b`, 即 :math:`(\D^*v)_{a_1\cdots a_l} = \nabla_bv^b\varepsilon_{a_1\cdots a_l}`.

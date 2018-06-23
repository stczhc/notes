
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

第四章习题
----------

.. admonition:: 题目 4.1

    试证由式 (4-1-2) 定义的 :math:`(\phi_*v)^a` 满足第2.2节 [定义2] 对矢量的两个要求, 从而确是 :math:`\phi(p)` 点的矢量. 定义式为
    
    .. math:: 
        (\phi_* v)(f) := v(\phi^* f),\quad \forall f\in \mathscr{F}_N
    
.. admonition:: 题解 4.1

    矢量的两个要求是线性性 :math:`v(\alpha f + \beta g) = \alpha v(f) + \beta v(g)` 和莱布尼茨律 :math:`v(fg) = f_p v(g) + g_p v(f)`. 验证如下 (注意 :math:`\phi^*` 和 :math:`v` 本身满足线性性和 :math:`\phi^*(fg) = \phi^*(f)\phi^*(g)`, 并且利用定义 :math:`\phi^* f| _p := f|_{\phi(p)}`)
    
    .. math:: 
        (\phi_* v)(\alpha f + \beta g) =&\ v(\phi^* (\alpha f + \beta g))
            = v(\alpha \phi^* f + \beta \phi^* g) = \alpha v(\phi^* f) + \beta v(\phi^* g)
            = \alpha (\phi_* v)(f) + \beta (\phi_* v)(g) \\
        (\phi_* v)(fg) =&\ v(\phi^* (fg)) = v(\phi^*(f)\phi^*(g)) = \phi^*f| _p v(\phi^* g) + \phi^*g|_p v(\phi^* f)
            = f| _{\phi(p)} v(\phi^* g) + g|_{\phi(p)} v(\phi^* f) \\
            =&\ f| _{\phi(p)} (\phi_* v) g + g|_{\phi(p)} (\phi_* v) f

.. admonition:: 题目 4.2

    试证定理4-1-1、4-1-2和4-1-3.

.. admonition:: 题解 4.2

    (1) [定理4-1-1] :math:`\phi_* : V_p \to V_{\phi(p)}` 是线性映射, 即

    .. math:: 
        \phi_* (\alpha u^a + \beta v^a) = \alpha \phi_* u^a + \beta \phi_* v^a,\quad\forall u^a, v^a \in V_p,\ \alpha,\beta\in \mathbb{R}
    
    注意这个和上一题的线性性不同. 上一题是映射结果对作用函数的线性性. 这里是对映射来源的线性性. 第二步利用矢量加法和数乘的定义. 
    
    .. math:: 
        \phi_* (\alpha u^a + \beta v^a) (f) = (\alpha u^a + \beta v^a) (\phi^* f)
            = \alpha u^a (\phi^* f) + \beta v^a (\phi^* f) = \alpha \phi_* u^a + \beta \phi_* v^a,\quad\forall f \in \mathscr{F}_M
    
    (2) [定理4-1-2] 设 :math:`C(t)` 是 :math:`M` 中的曲线, :math:`T^a` 为曲线在 :math:`C(t_0)` 点的切矢, 则 :math:`\phi_* T^a \in V_{\phi(C(t_0))}` 是曲线 :math:`\phi(C(t))` 在 :math:`\phi(C(t_0))` 点的切矢 (曲线切矢的像是曲线像的切矢).

    曲线切矢的定义为 

    .. math:: T(f):= \frac{\D (f\circ C)}{\D t} \bigg\rvert_{t_0} = 
        \frac{\D f(C(t))}{\D t} \bigg\rvert_{t_0}
        = \frac{\partial}{\partial t}\bigg\rvert_{C(t_0)} (f),\quad \forall f\in \mathscr{F}_M
    
    于是有 (利用 :math:`\phi^* f` 定义)

    .. math:: 
        \phi_* T^a (f) = T^a (\phi^* f) = \frac{\partial (\phi^* f)}{\partial t} \bigg\rvert_{C(t_0)}
            = \frac{\partial f }{\partial t} \bigg\rvert_{\phi(C(t_0))}
    
    (3) [定理4-1-3] :math:`\xtensor{(\phi_* T)}{^{\mu_1\cdots \mu_k}}{_{\nu_1\cdots \nu_l}} |_{\phi(p)} = \xtensor{{T'}}{^{\mu_1\cdots \mu_k}}{_{\nu_1\cdots \nu_l}} |_p,\quad \forall T\in \mathscr{T}_M(k, l)`. 式中左边是新点 :math:`\phi(p)` 的新张量 :math:`\phi_* T` 在老坐标系 :math:`\{ y^\mu \}` 的分量, 右边是老点 :math:`p` 的老张量 :math:`T` 在新坐标系的分量.

    这里前提是 :math:`\phi : M\ \to N` 是微分同胚. 利用切之像等于像之切, 取曲线为坐标线得
    
    .. math:: 
        \phi_* \left[ \frac{\partial }{\partial x'^\mu} \right]_p = \left[ \frac{\partial }{\partial y^\mu} \right]_{\phi(p)}
    
    从而利用定义4

    .. math:: 
        (\phi_* T)^{a_1\cdots a_k}(\omega^1)_{a_1}\cdots (\omega^k)_{a_k} := T^{a_1\cdots a_k}
        (\phi^*\omega^1)_{a_1}\cdots (\phi^*\omega^k)_{a_k}, \forall \omega^1,\cdots, \omega^k \in V^*_{\phi(p)}
    
    得

    .. math:: 
        \xtensor{(\phi_* T)}{^{\mu}}{_{\nu}} |_{\phi(p)}
            =&\ \xtensor{(\phi_* T)}{^a}{_b}| _{\phi(p)} \big(\D y^\mu \big)_a\big\rvert _{\phi(p)} \bigg( \frac{\partial}{\partial y^\nu} \bigg)^b \bigg\rvert _{\phi(p)}= \xtensor{(\phi_* T)}{^a}{_b}| _{\phi(p)} \big[  \big(\phi_* \D x'^\mu \big)_a \big] _p \bigg[ \bigg( \phi_* \frac{\partial}{\partial x'^\nu} \bigg)^b \bigg] _p \\
            =&\ \xtensor{T}{^a}{_b}| _p \big[ \big( \phi^* \phi_*\D x'^\mu \big)_a  \big] _p  \bigg[ \bigg( \phi^* \phi_* \frac{\partial}{\partial x'^\nu} \bigg)^b  \bigg] _p
            = \xtensor{T}{^a}{_b}| _p \big[ \big(\D x'^\mu \big)_a  \big] _p  \bigg[ \bigg( \frac{\partial}{\partial x'^\nu} \bigg)^b  \bigg] _p = \xtensor{{T'}}{^\mu}{_\nu} |_p

.. admonition:: 题目 4.3

    设 :math:`\phi:M \to N` 为光滑映射, :math:`p \in M`, :math:`\{ y^\mu \}` 是 :math:`\phi(p)` 点某邻域上的坐标, 试证
    
    .. math:: 
        (\phi_* v)^a = v (\phi^* y^\mu)(\partial /\partial y^\mu )^a, \quad \forall v^a \in V_p.

.. admonition:: 题解 4.3

    需要用到对偶矢量 :math:`\D f` 的定义 :math:`(\D f) (v) = v(f)` 即 :math:`(\D f)_a v^a = v(f)` 和 :math:`(\phi_* v)^a \omega_a = v^a (\phi^* \omega)_a` 以及 :math:`\phi^* \omega_a v^a = \omega_a (\phi_* v)^a`. 于是 (第一步第二步好像没有完成任何事)
    
    .. math:: 
        (\phi_* v)^a (\D y^\mu)_a =&\ v^a [\phi^* (\D y^\mu)]_a = (\D y^\mu)_a (\phi_* v)^a = (\phi_* v)(y^\mu) \\
        (\phi_* v)^a \omega_a =&\ (\phi_* v)^a \left[ \omega_\mu (\D y^\mu)_a \right] = \omega_\mu (\phi_* v)^a (\D y^\mu)_a (\phi_* v)(y^\mu) \omega_\mu = (\phi_* v)(y^\mu) \left( \frac{\partial}{\partial y^\mu} \right)^a \omega_a
    
    由于 :math:`(\phi_* v)(f) = v(\phi^* f)` 得 :math:`(\phi_* v)(y^\mu) = v(\phi^* y^\mu)`, 及 :math:`\omega_a` 是任意的. 因此得证. 另一种简单证法
    
    .. math:: 
        v (\phi^* y^\mu)(\partial /\partial y^\mu )^a =&\  (\phi_* v)(y^\mu)(\partial /\partial y^\mu )^a
            =  (\phi_* v)^b\nabla_b (y^\mu)(\partial /\partial y^\mu )^a \\
            =&\  (\phi_* v)^b (\D y^\mu)_b (\partial /\partial y^\mu )^a = (\phi_* v)^b\xtensor{\delta}{^a}{_b} = (\phi_* v)^a

.. admonition:: 题目 4.5

    设 :math:`M, N, Q` 是流形, :math:`\phi: M \to N` 和 :math:`\psi : N \to Q` 是光滑映射.

    (a) 试证 :math:`(\psi \circ \phi)^* f = (\phi^* \circ \psi^*) f, \quad \forall f \in \mathscr{F}_Q`.
    (b) 试证 :math:`(\psi \circ \phi)_* v^a = \psi_* (\phi_* v^a),\quad \forall p \in M, \ v^a \in V_p`.
    (c) 把 :math:`(\psi\circ \phi)^*` 和 :math:`\phi^* \circ \psi^*` 都看作由 :math:`\mathscr{F}_Q(0, l)` 到 :math:`\mathscr{F}_M(0, l)` 的映射, 试证
    
    .. math:: 
        (\psi\circ \phi)^* = \phi^*\circ \psi^*.

.. admonition:: 题解 4.5

    (a) 

    .. math:: 
        (\psi \circ \phi)^* f|_{p} =&\ f_{\psi(\phi(p))} \\
        (\psi^* f)| _{p} =&\ f_{\psi(p)} \\
        (\phi^* \circ \psi^*) f| _{p} =&\ \phi^*( \psi^* f)| _{p} = ( \psi^* f)|_{\phi(p)} = f_{\psi(\phi(p))}
    
    (b)
    
    .. math:: 
        ((\psi \circ \phi)_* v)(f) =&\ v((\psi \circ \phi)^* f) = v(\phi^*(\psi^*(f))) \\
        (\phi_* v)(f) =&\ v (\phi^* f) \\
        (\psi_* (\phi_* v))(f) =&\ (\phi_* v) (\psi^* f) = v (\phi^* (\psi^* f))
    
    (c) 
    
    .. math:: 
        ((\psi\circ \phi)^* T)_{a_1\cdots a_l}|_p (v_1)^{a_1}\cdots(v_l)^{a_l}
            =&\ T_{a_1\cdots a_l}|_{(\psi\circ \phi)(p)} ((\psi\circ \phi)_* v_1)^{a_1}\cdots((\psi\circ \phi)_* v_l)^{a_l}\\
            =&\ T_{a_1\cdots a_l}|_{\psi(\phi(p))} (\psi_* (\phi_* v_1))^{a_1}\cdots(\psi_* (\phi_* (v_l))^{a_l} \\
        (\psi^* T)_{a_1\cdots a_l}|_p (v_1)^{a_1}\cdots(v_l)^{a_l}
            =&\ T_{a_1\cdots a_l}|_{\psi(p)} (\psi_* v_1)^{a_1}\cdots(\psi_* v_l)^{a_l} \\
        (\phi^* (\psi^* T))_{a_1\cdots a_l}|_p (v_1)^{a_1}\cdots(v_l)^{a_l}
            =&\ (\psi^* T)_{a_1\cdots a_l}|_{\phi(p)} (\phi_* v_1)^{a_1}\cdots(\phi_* v_l)^{a_l} \\
            =&\ T_{a_1\cdots a_l}|_{\psi(\phi(p))} (\psi_* (\phi_* v_1))^{a_1}\cdots(\psi_* (\phi_* v_l))^{a_l} \\

.. admonition:: 题目 4.6

    设 :math:`\phi : M \to N` 是微分同胚, :math:`v^a, u^a` 是 :math:`M` 上矢量场, 试证 :math:`\phi_*([v, u]^a) = [\phi_*v,\phi_*u]^a`, 其中 :math:`[v, u]^a` 代表对易子.

.. admonition:: 题解 4.6

    令 :math:`f'_v \equiv (\phi_* v)(f)\in \mathscr{F}_N`, 此式应该理解为 :math:`v` 是矢量场, 而 :math:`\phi_*` 只作用于单个矢量, 因此
    
    .. math:: 
        f'_v| _{\phi(p)} = (\phi_* (v| _p))(f),\quad (\phi^* f'_v)| _p = f'_v| _{\phi(p)} = (\phi_* (v| _p))(f)
    
    于是
    
    .. math:: 
        [\phi_*v,\phi_*u]| _{\phi(p)} (f) =&\ (\phi_*v)| _{\phi(p)} (f'_u) - (\phi_*u)| _{\phi(p)} (f'_v)
            = v| _p (\phi^* (f'_u)) - u| _p (\phi^* (f'_v)) \\
            =&\  v| _p ((\phi_* u)(f)) - u| _p ((\phi_* v)(f)) \\
        (\phi_*[v, u])| _{\phi(p)} (f) =&\ [v, u]| _p (\phi^* f) = v| _p (u(\phi^* f)) - u| _p (v(\phi^* f)) \\
            =&\ v| _p ((\phi_* u)(f)) - u| _p ((\phi_* v)(f))

.. admonition:: 题目 4.7

    试证 [定理4-2-4] :math:`\mathscr{L}_v\omega_a = v^b\nabla_b\omega_a+\omega_b\nabla_a v^b,\quad v^a \in \mathscr{F}(1, 0), \ \omega_a \in \mathscr{F}(0, 1)`, 其中 :math:`\nabla_a` 为任一无挠导数算符. 注意, 这说明李导数的定义并不需要流形上选定特定的导数算符.

.. admonition:: 题解 4.7

    考虑
    
    .. math:: 
        \mathscr{L}_v(\omega_au^a) =&\ v(\omega_au^a) = v^b\nabla_b (\omega_a u^a)
            = u^av^b\nabla_b \omega_a + \omega_a v^b  \nabla_b u^a \\
            =&\  u^av^b\nabla_b \omega_a + \omega_a v^b  \nabla_b u^a - \omega_a u^b  \nabla_b v^a + \omega_a u^b  \nabla_b v^a \\
            =&\ \omega_a \mathscr{L}_v u^a + u^a (v^b\nabla_b \omega_a + \omega_b \nabla_a v^b)
    
    由定理4-2-2可知 :math:`\mathscr{L}_v` 满足莱布尼茨律, 即 :math:`\mathscr{L}_v(\omega_au^a) = \omega_a \mathscr{L}_v u^a + u^a \mathscr{L}_v\omega_a`, 对比得
    
    .. math:: 
        \mathscr{L}_v\omega_a = v^b\nabla_b \omega_a + \omega_b \nabla_a v^b

.. admonition:: 题目 4.8

    设 :math:`v^a \in \mathscr{F}_M(1, 0), \ \omega_a \in \mathscr{F}_M(0, 1)`, 试证对任一坐标系 :math:`\{ x^\mu \}` 有
    
    .. math:: 
        (\mathscr{L}_v\omega)_\mu = v^\nu \partial \omega_\mu / \partial x^\nu + \omega_\nu \partial v^\nu/\partial x^\mu.
    
    提示: 用式(4-2-7)并令其 :math:`\nabla_a` 为 :math:`\partial_a`.

.. admonition:: 题解 4.8

    由上一题的结论改成分量等式即可.

.. admonition:: 题目 4.9

    设 :math:`u^a, v^a \in \mathscr{F}_M(1, 0)`, 则下式作用于任一张量场都成立
    
    .. math:: 
        [\mathscr{L}_v, \mathscr{L}_u] = \mathscr{L}_{[v, u]}
    
    其中 :math:`[\mathscr{L}_v, \mathscr{L}_u] \equiv \mathscr{L}_v\mathscr{L}_u - \mathscr{L}_u\mathscr{L}_v`. 试就作用对象为 :math:`f \in \mathscr{F}_M` 和 :math:`w^a \in \mathscr{F}_M(1, 0)` 的情况给出说明. 提示: 当作用对象为 :math:`w^a` 时可用雅可比恒等式.

.. admonition:: 题解 4.9

    当作用对象为 :math:`f` 时, :math:`\mathscr{L}_{[v, u]} f = [v, u](f) = v(u(f)) - u(v(f)) = \mathscr{L}_v\mathscr{L}_u(f) - \mathscr{L}_u\mathscr{L}_v(f) = [\mathscr{L}_v, \mathscr{L}_u]` 显然成立. 当作用对象为 :math:`w^a` 时, 
    
    .. math:: 
        \mathscr{L}_{[v, u]} w^a =&\ [[v, u], w]^a \\
        \mathscr{L}_{v}\mathscr{L}_{u} w^a =&\ \mathscr{L}_{v} [u, w] = [v, [u, w]] = -[[u, w], v] \\
        \mathscr{L}_{u}\mathscr{L}_{v} w^a =&\ \mathscr{L}_{u} [v, w] = [u, [v, w]] = [[w, v], u] \\
        [\mathscr{L}_v, \mathscr{L}_u] w^a =&\ \mathscr{L}_{v}\mathscr{L}_{u} w^a - \mathscr{L}_{u}\mathscr{L}_{v} w^a
            = -[[u, w], v] - [[w, v], u]
    
    由雅可比恒等式
    
    .. math:: 
        &\ [[v, u], w]^a + [[u, w], v] + [[w, v], u] = 0 \\ \Rightarrow &\ [[v, u], w]^a = -[[u, w], v] -[[w, v], u]
    
    因此得证.

.. admonition:: 题目 4.10

    设 :math:`F_{ab}` 是4维闵氏空间上的反对称张量场, 其在洛伦兹坐标系 :math:`\{ t, x, y, z \}` 的分量为 :math:`F_{01} = -F_{13} = x\rho^{-1},\ F_{02} = -F_{23} = y\rho^{-1}, \ F_{03} = F_{12} = 0`, 其中 :math:`\rho \equiv (x^2 + y^2)^{1/2}`. 试证 :math:`F_{ab}` 有旋转对称性, 即 :math:`\mathscr{L}_vF_{ab} = 0`, 其中 :math:`v^a = -y(\partial/\partial x)^a + x(\partial/\partial y)^a`.

.. admonition:: 题解 4.10

    张量李导数公式为
    
    .. math:: 
        (\mathscr{L}_v F)_{\mu\nu} = v^\sigma \partial_{\sigma}F_{\mu\nu} + F_{\sigma\nu}\partial_\mu v^\sigma
            + F_{\mu\sigma}\partial_\nu v^\sigma
    
    其中 :math:`F_{\mu\nu}` 对 :math:`x, y` 的偏导数为 (注意因为要与 :math:`v^a` 缩并, 因此只需计算 :math:`x, y` 偏导数)
    
    .. math:: 
        \partial_1 F_{01} =&\ -\partial_1 F_{13} = \frac{\partial (x/\rho)}{\partial x} = \frac{y^2}{\rho^3} \\
        \partial_2 F_{01} =&\ -\partial_2 F_{13} = \frac{\partial (x/\rho)}{\partial y} = -\frac{xy}{\rho^3} \\
        \partial_1 F_{02} =&\ -\partial_1 F_{23} = \frac{\partial (y/\rho)}{\partial x} = -\frac{xy}{\rho^3} \\
        \partial_2 F_{02} =&\ -\partial_2 F_{23} = \frac{\partial (y/\rho)}{\partial y} = \frac{x^2}{\rho^3}
    
    于是第一项不为零的分量为 (上指标代表第几项)
    
    .. math:: 
        \xtensor{L}{^1}{_{01}} =&\ -\xtensor{L}{^1}{_{13}} = -\xtensor{L}{^1}{_{10}} = \xtensor{L}{^1}{_{31}} \\
        =&\ (-y)\frac{y^2}{\rho^3}+x \left( -\frac{xy}{\rho^3} \right) = -\frac{(x^2+y^2)y}{\rho^3} = -y/r \\
        \xtensor{L}{^1}{_{02}} =&\ -\xtensor{L}{^1}{_{23}} = -\xtensor{L}{^1}{_{20}} = \xtensor{L}{^1}{_{32}} \\
        =&\ (-y)\left( -\frac{xy}{\rho^3} \right)+ x \frac{y^2}{\rho^3} = \frac{(x^2+y^2)x}{\rho^3} = x/r
    
    第二项不为零的分量为 (:math:`\partial_1 v^2 = 1, \partial_2 v^1 = -1`)
    
    .. math:: 
        \xtensor{L}{^2}{_{10}} =&\ F_{10}\partial_1 v^1 + F_{20}\partial_1 v^2 = F_{20} = -y/r \\
        \xtensor{L}{^2}{_{20}} =&\ F_{10}\partial_2 v^1 + F_{20}\partial_2 v^2 = -F_{10} = x/r \\
        \xtensor{L}{^2}{_{13}} =&\ F_{13}\partial_1 v^1 + F_{23}\partial_1 v^2 = F_{23} = -y/r \\
        \xtensor{L}{^2}{_{23}} =&\ F_{13}\partial_2 v^1 + F_{23}\partial_2 v^2 = -F_{13} = x/r
    
    第三项不为零的分量为 (:math:`\partial_1 v^2 = 1, \partial_2 v^1 = -1`)
    
    .. math:: 
        \xtensor{L}{^3}{_{01}} =&\ F_{01}\partial_1 v^1 + F_{02}\partial_1 v^2 = F_{02} = y/r \\
        \xtensor{L}{^3}{_{02}} =&\ F_{01}\partial_2 v^1 + F_{02}\partial_2 v^2 = -F_{01} = -x/r \\
        \xtensor{L}{^3}{_{31}} =&\ F_{31}\partial_1 v^1 + F_{32}\partial_1 v^2 = F_{32} = y/r \\
        \xtensor{L}{^3}{_{32}} =&\ F_{31}\partial_2 v^1 + F_{32}\partial_2 v^2 = -F_{31} = -x/r
    
    综上第二、三项之和为
    
    .. math:: 
        \xtensor{L}{^{23}}{_{01}} =&\ -\xtensor{L}{^{23}}{_{13}} = -\xtensor{L}{^{23}}{_{10}} = \xtensor{L}{^{23}}{_{31}} = y/r \\
        \xtensor{L}{^{23}}{_{02}} =&\ -\xtensor{L}{^{23}}{_{23}} = -\xtensor{L}{^{23}}{_{20}} = \xtensor{L}{^{23}}{_{32}} = -x/r
    
    因此 :math:`(\mathscr{L}_v F)_{\mu\nu} = 0`.

.. admonition:: 题目 4.11

    设 :math:`\xi^a` 是 :math:`(M, g_{ab})` 中的 Killing 矢量场, :math:`\nabla_a` 与 :math:`g_{ab}` 适配, 试证 :math:`\nabla_a\xi^a = 0`.

.. admonition:: 题解 4.11

    反对称张量的迹为零.

    .. math:: 
        0 = &\ g^{ab}\mathscr{L}_\xi g_{ab} = g^{ab}\xi^c\nabla_c g_{ab} + g^{ab}g_{cb}\nabla_a\xi^c + g^{ab}g_{ac}\nabla_b\xi^c \\
        =&\ \xtensor{\delta}{_c}{^a}\nabla_a\xi^c + \xtensor{\delta}{^b}{_c}\nabla_b\xi^c
        = \nabla_a\xi^a + \nabla_b\xi^b = 2\nabla_a\xi^a

.. admonition:: 题目 4.12

    设 :math:`\xi^a` 是 :math:`(M, g_{ab})` 中的 Killing 矢量场, :math:`\phi : M \to {\color{red}{M}}` 是等度规映射, 试证 :math:`\phi_*\xi^a` 也是 :math:`(M, g_{ab})` 中的 Killing 矢量场. 提示: 利用习题 5(c) 的结论.

.. admonition:: 题解 4.12

    利用 [定理4-1-2] 设 :math:`C(t)` 是 :math:`M` 中的曲线, :math:`T^a` 为曲线在 :math:`C(t_0)` 点的切矢, 则 :math:`\phi_* T^a \in V_{\phi(C(t_0))}` 是曲线 :math:`\phi(C(t))` 在 :math:`\phi(C(t_0))` 点的切矢 (曲线切矢的像是曲线像的切矢).

    设原来的 Killing 矢量场 生出的单参等度规群元为 :math:`\phi_t`, 而映射后的群元为 :math:`\phi'_t`. 其中 :math:`\phi_t` 定义为
    
    .. math:: 
        \phi_t(p) = C_p(t),\quad C_p(0) = \xi^a|_p
    
    其中 :math:`C_p(0)` 是过 :math:`p` 的积分曲线. 设 :math:`\phi(C_p(t))` 是曲线在映射 :math:`\phi` 下的像. 则
    
    .. math:: 
        \phi'_t(\phi(p)) = C'_{\phi(p)}(t), \quad  C'_{\phi(p)}(0) = \phi_* \xi^a|_{\phi(p)}
    
    由切之像等于像之切, 曲线 :math:`\phi(C_p(t))` 在 :math:`\phi(C_p(0))` 点的切矢就是 :math:`\phi_* \xi^a`, 因此 :math:`C'_{\phi(p)}(t) = \phi(C_p(t))`, 即 :math:`\phi(C_p(t))` 就是 :math:`\phi_* \xi^a` 对应的积分曲线. 则有
    
    .. math:: 
        \phi'_t(\phi(p)) = \phi(C_p(t)) = \phi(\phi_t(p))\quad\Rightarrow \phi'_t = \phi \circ \phi_t \circ \phi^{-1}
    
    由于 :math:`\xi^a` 是 Killing 场要求 :math:`\phi_t` 等度规, 即 :math:`\phi_t^* g_{ab} = g_{ab}`. 现在要证 :math:`\phi_*\xi^a` 也是 Killing 场, 即要求 :math:`\phi'_t` 等度规, 即 :math:`(\phi'_t)^* g_{ab} = g_{ab}`. 由于 :math:`\phi` 也等度规, 即有 :math:`\phi^* g_{ab} = g_{ab}`. 于是利用第5题(c)
    
    .. math:: 
        (\phi'_t)^* g_{ab} =&\ ((\phi \circ \phi_t) \circ \phi^{-1})^* g_{ab} = ((\phi^{-1})^* \circ (\phi \circ \phi_t)^*) g_{ab} \\
         =&\ ((\phi^{-1})^* \circ \phi_t^* \circ \phi^*) g_{ab} = (\phi^{-1})^*(\phi_t^*(\phi^*(g_{ab}))) = g_{ab}
    
    因此 :math:`\phi'_t` 等度规, :math:`\phi_*\xi^a` 也是 Killing 场.

.. admonition:: 题目 4.13

    设 :math:`\xi^a, \eta^a` 是 :math:`(M, g_{ab})` 中的 Killing 矢量场, 试证其对易子 :math:`[\xi, \eta]^a` 也是 Killing 矢量场. 注: 此结论使得 :math:`M` 上全体 Killing 矢量场的集合不但是矢量空间, 而且是李代数.

.. admonition:: 题解 4.13

    由 :math:`\xi^a, \eta^a` 是 Killing 矢量场知 :math:`\nabla_{(a}\xi_{b)} = \nabla_{(a}\eta_{b)} = 0`. 于是 (假设 :math:`\nabla_a` 是普通导数算符)
    
    .. math:: 
        \nabla_a[\xi, \eta]_b =&\  g_{bc} \nabla_a[\xi, \eta]^c = g_{bc} \nabla_a (\xi^d\nabla_d \eta^c - \eta^d\nabla_d \xi^c) \\
        = &\ g_{bc} \big[ \xi^d \nabla_a\nabla_d \eta^c + (\nabla_d \eta^c)(\nabla_a \xi^d) 
            - \eta^d \nabla_a\nabla_d \xi^c - (\nabla_d \xi^c)(\nabla_a \eta^d) 
        \big] \\
        =&\ \xi^d \nabla_a\nabla_d \eta_b + (\nabla_d \eta_b)(\nabla_a \xi^d) 
            - \eta^d \nabla_a\nabla_d \xi_b - (\nabla_d \xi_b)(\nabla_a \eta^d)  \\
        \nabla_b[\xi, \eta]_a =&\  g_{ac} \nabla_b[\xi, \eta]^c = g_{ac} \nabla_b (\xi^d\nabla_d \eta^c - \eta^d\nabla_d \xi^c) \\
        = &\ g_{ac} \big[ \xi^d \nabla_b\nabla_d \eta^c + (\nabla_d \eta^c)(\nabla_b \xi^d) 
            - \eta^d \nabla_b\nabla_d \xi^c - (\nabla_d \xi^c)(\nabla_b \eta^d) \big] \\
        =&\ \xi^d \nabla_b\nabla_d \eta_a + (\nabla_d \eta_a)(\nabla_b \xi^d) 
            - \eta^d \nabla_b\nabla_d \xi_a - (\nabla_d \xi_a)(\nabla_b \eta^d) \\
        =&\ \xi^d \nabla_b\nabla_d \eta_a + (\nabla^d \eta_a)(\nabla_b \xi_d) 
            - \eta^d \nabla_b\nabla_d \xi_a - (\nabla^d \xi_a)(\nabla_b \eta_d) \\
        =&\ \xi^d \nabla_b\nabla_d \eta_a + (\nabla_a \eta^d)(\nabla_d \xi_b) 
            - \eta^d \nabla_b\nabla_d \xi_a - (\nabla_a \xi^d)(\nabla_d \eta_b) \\
        \nabla_a[\xi, \eta]_b + \nabla_b[\xi, \eta]_a =&\ \xi^d \nabla_a\nabla_d \eta_b + \xi^d \nabla_b\nabla_d \eta_a
            - \eta^d \nabla_a\nabla_d \xi_b - \eta^d \nabla_b\nabla_d \xi_a \\
            =&\ \xi^d \nabla_d\nabla_a \eta_b + \xi^d \nabla_d\nabla_b \eta_a
            - \eta^d \nabla_d\nabla_a \xi_b - \eta^d \nabla_d\nabla_b \xi_a \\ 
            =&\ \xi^d \nabla_d (\nabla_a \eta_b + \nabla_b \eta_a) - \eta^d \nabla_d (\nabla_a \xi_b + \nabla_b \xi_a) = 0
    
    其中利用了
    
    .. math:: 
        g^{ac}(\nabla_c\xi_b + \nabla_b\xi_c) = \nabla^a\xi_b + \nabla_b\xi^a = 0

.. admonition:: 题目 4.14

    设 :math:`\xi^a` 是广义黎曼空间 :math:`(M, g_{ab})` 的 Killing 矢量场, :math:`\xtensor{R}{_{abc}}{^d}` 是 :math:`g_{ab}` 的黎曼曲率张量.

    (a) 试证 :math:`\nabla_a\nabla_b\xi^c = -\xtensor{R}{_{bca}}{^d}\xi_d`. 注: 此式对证明定理4-3-4 有重要用处. 提示: 由 :math:`\xtensor{R}{_{abc}}{^d}` 的定义以及 Killing 方程 (4-3-1) 可知 :math:`\nabla_a\nabla_b\xi_c + \nabla_b\nabla_c\xi_a = \xtensor{R}{_{abc}}{^d}\xi_d`. 此式称为第一式. 作指标替换 :math:`a \mapsto b,\ b \mapsto c,\ c\mapsto a` 得第二式, 再替换一次得第三式. 以第一、二式之和减第三式并利用式 (3-4-7) 便得证.
    (b) 利用 (a) 的结果证明 :math:`\nabla^a\nabla_a\xi_c = -R_{cd}\xi^d`, 其中 :math:`R_{cd}` 是里奇张量.

.. admonition:: 题解 4.14

    (a) 黎曼曲率张量的定义为 :math:`\big(\nabla_a\nabla_b - \nabla_b \nabla_a \big) \omega_c = \xtensor{R}{_{abc}}{^d}\omega_d`, 于是有
    
    .. math:: 
        \nabla_a\nabla_b\xi_c - \nabla_b \nabla_a\xi_c =&\ \xtensor{R}{_{abc}}{^d}\xi_d \\
        {\color{red}{\nabla_a\nabla_b\xi_c}} + {\color{blue}{\nabla_b \nabla_c\xi_a}} =&\ \xtensor{R}{_{abc}}{^d}\xi_d \\ 
        {\color{blue}{\nabla_b\nabla_c\xi_a}} + \nabla_c \nabla_a\xi_b =&\ \xtensor{R}{_{bca}}{^d}\xi_d \\ 
        \nabla_c\nabla_a\xi_b + {\color{red}{\nabla_a \nabla_b\xi_c}} =&\ \xtensor{R}{_{cab}}{^d}\xi_d \\ 
        2 {\color{blue}{\nabla_b \nabla_c\xi_a} }=&\ 3\xtensor{R}{_{[abc]}}{^d}\xi_d - 2\xtensor{R}{_{cab}}{^d}\xi_d \\
        \nabla_a \nabla_b\xi_c =&\ - \xtensor{R}{_{bca}}{^d}\xi_d
    
    (b)
    
    .. math:: 
        \xtensor{R}{_{bca}}{^d}\xi_d =&\ R_{bcad}\xi^d \\
        R_{cd}\xi^d =&\ \xtensor{R}{_{cbd}}{^b} \xi^d = g^{ba}R_{cbda} \xi^d = g^{ba}R_{bcad} \xi^d = g^{ba}\xtensor{R}{_{bca}}{^d}\xi_d \\
        g^{ba} \nabla_a \nabla_b\xi_c =&\ \nabla_a \nabla^a\xi_c = \nabla^a \nabla_a\xi_c \\
        \nabla^a \nabla_a\xi_c=&\ g^{ba}\nabla_a \nabla_b\xi_c =  -g^{ba}\xtensor{R}{_{bca}}{^d}\xi_d = -R_{cd}\xi^d

.. admonition:: 题目 4.15

    验证式 (4-3-3) 中的 :math:`(\partial/\partial \eta)^a` 的确满足 Killing 方程 (4-3-1).

.. admonition:: 题解 4.15

    由于是平直空间, 可直接用 :math:`\partial_a` 代替 :math:`\nabla_a`. 于是
    
    .. math:: 
        \partial_a (\D \eta)_b =&\ \partial_a [ t g_{bc} (\partial/\partial x)^c + x g_{bc} (\partial/\partial t)^c ] \\
            =&\ \partial_a [ t \cdot 1 \cdot(\D x)_b + x \cdot(-1)\cdot (\D t)_b ] \\
            =&\ (\D x)_b (\D t)_a - (\D t)_b (\D x)_a \\
        \partial_b (\D \eta)_a =&\ (\D x)_a (\D t)_b - (\D t)_a \cdot(\D x)_b \\
        \partial_a (\D \eta)_b + \partial_b (\D \eta)_a =&\ 0

.. admonition:: 题目 4.16

    找出2维欧氏空间中由 :math:`R^a = x(\partial/\partial y)^a - y(\partial/\partial x)^a` 生出的单参等度规群的任一元素 :math:`\phi_\alpha` 诱导的坐标变换.

.. admonition:: 题解 4.16

    矢量场 :math:`R^a \equiv (\partial/\partial \varphi)^a` 的积分曲线参数方程为 :math:`\D x^\mu(\varphi)/\D \varphi = \varphi^\mu`, 得
    
    .. math:: 
        &\ \frac{\D x(\varphi)}{\D \varphi} = -y(\varphi), \quad \frac{\D y(\varphi)}{\D \varphi} = x(\varphi) \\
        \Rightarrow &\ \frac{\D^2 x(\varphi)}{\D \varphi^2} = -x(\varphi)
    
    其解为
    
    .. math:: 
        x(\varphi) = x_p\cos\varphi -y_p\sin\varphi,\quad y(\varphi) = x_p\sin\varphi + y_p\cos\varphi
    
    于是由 :math:`\phi_\alpha` 诱导的新坐标满足
    
    .. math:: 
        x'_p =  x_p\cos\alpha - y_p\sin\alpha, \quad y'_p = x_p\sin\alpha + y_p\cos\alpha

.. admonition:: 题目 4.17

    设时空 :math:`(M, g_{ab})` 中的超曲面 :math:`\phi[S]` 上每点都有类光切矢而无类时切矢 ( "切矢" 指切于 :math:`\phi[S]`), 试证它必为类光超曲面. 提示: (1) 证明与类时矢量 :math:`t^a` 正交的矢量必类空 [选正交归一基底 :math:`\{ (e_\mu)^a \}` 使 :math:`(e_0)^a = t^a`]; (2) 证明类时超曲面上每点都有类时切矢; (3) 由以上两点证明本命题. 

.. admonition:: 题解 4.17

    (1) 设矢量 :math:`s^a` 与 :math:`t^a = (e_0)^a` 正交, 即
    
    .. math:: 
         g_{ab}s^at^b = (e_0)^a s^\mu (e^\mu)_a = s^\mu (e_0)^a (e^\mu)_a = s^\mu \xtensor{\eta}{^\mu}{_0} = -s^0 = 0
        
    于是 :math:`g_{ab}s^as^b = g_{\tau\sigma} (s^\sigma)^2,\quad \tau, \sigma = 1,2,\cdots`, 而由于是正交归一基底, :math:`g_{00} = -1, g_{\tau\tau} = 1 \quad \tau = 1,2,\cdots`, 因此必有 :math:`g_{ab}s^as^b = \sum_{\sigma} (s^\sigma)^2 > 0`, 从而 :math:`s^a` 是类空的.

    (2) 根据类时超曲面的定义, 类时超曲面的法矢处处类空. 而法矢与类时超曲面上的所有矢量正交. 若超曲面上一点不存在类时矢量, 则 :math:`(e_0)^a` 不是 :math:`W_q` 的基底, 那么 :math:`(e_0)^a` 将可以作为法矢, 违背了法矢处处类空的条件. 因此每点必存在类时矢量.

    (3) 由题设该超曲面不能是类时超曲面. (类时超曲面每点都有类时切矢). 若它是类空超曲面, 则法矢处处类时, 又与类时矢量正交的矢量必类空, 因此该类空超曲面上的点必为类空切矢, 不能存在类光切矢. 因此该超曲面只能是类光超曲面.

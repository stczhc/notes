
.. only:: html

    .. math::
        \renewenvironment{equation*}
        {\begin{equation}\begin{aligned}}
        {\end{aligned}\end{equation}}
        \renewcommand{\gg}{>\!\!>}
        \renewcommand{\ll}{<\!\!<}
        \newcommand{\I}{\mathrm{i}}
        \newcommand{\D}{\mathrm{d}}
        \newcommand{\DD}{\mathrm{D}}
        \newcommand{\DF}{\mathrm{D}_{\mathrm{F}}}
        \renewcommand{\C}{\mathrm{C}}
        \newcommand{\dt}{\frac{\D}{\D t}}
        \newcommand{\E}{\mathrm{e}}
        \renewcommand{\bm}{\boldsymbol}
        \newcommand{\xtensor}[3]{{#1}#2 {\vphantom{#1}}#3}

第七章习题
----------

.. admonition:: 题目 7.1

    试证弯曲时空麦氏方程 :math:`\nabla^a F_{ab} = -4\pi J_{b}` 蕴含电荷守恒律, 即 :math:`\nabla_a J^a = 0`. 注: :math:`\nabla^aF_{ab}=-4\pi J_b` 等价于式(7-2-8)而非式(7-2-9). 故本题表明式(7-2-8)而非式(7-2-9)可推出电荷守恒.

.. admonition:: 题目 7.2

    试证 :math:`\frac{\DF \omega_a}{\D \tau} = \frac{\DD \omega_a}{\D \tau} + (A_a \wedge Z_b)\omega^b\quad \forall \omega_a \in \mathscr{F}_G(0,1)`.

.. admonition:: 题目 7.3

    试证费米导数性质3.

.. admonition:: 题目 7.4

    试证类时线 :math:`G(\tau)` 上长度不变 (且非零) 的矢量场 :math:`v^a` 必经受时空转动. 提示: 令 :math:`u^a \equiv \DD v^a /\D \tau`, 则 :math:`u_a v^a = 0`. 先证: 无论 :math:`v_av^a` 为零与否, 总有 :math:`G(\tau)` 上矢量场 :math:`v'^a` 使 :math:`v'_av^a = 1`. 再验证 :math:`v^a` 经受以 :math:`\Omega_{ab} \equiv 2v'_{[a}u_{b]}` 为角速度2形式的时空转动.

.. admonition:: 题目 7.5

    设 :math:`\{ T, X, Y, Z \}` 为闵氏时空的洛伦兹坐标系, 曲线 :math:`G(\tau)` 的参数表达式为
    
    .. math:: 
        T=A^{-1} \mathrm{sh} A\tau, \quad x = A^{-1}\mathrm{ch} A\tau, \quad Y=Z = 0

    其中 :math:`A` 为常数.

    (a) 试证 :math:`G(\tau)` 是类时双曲线 (即图6-42的 :math:`G`), :math:`\tau` 是固有时, :math:`A` 是 :math:`G(\tau)` 的4加速 :math:`A^a` 的长度.
    (b) 试证从 :math:`\{ T, X, Y, Z \}` 系原点 :math:`o` 出发的与 :math:`G(\tau)` 有交的任一半直线 :math:`\mu(s)` 都与 :math:`G(\tau)` 正交.
    (c) 设 (b) 中的 :math:`\mu(s)` 的参数 :math:`s` 是 :math:`\mu` 的线长, 随着 :math:`\mu(s)` 取遍所有从 :math:`o` 出发并与 :math:`G(\tau)` 有交的半直线, 便得 :math:`G(\tau)` 上的一个空间矢量场 :math:`w^a \equiv (\partial/\partial s)^a`, 试证 :math:`w^a` 沿 :math:`G(\tau)` 费移.
    (d) 令 :math:`Z^a \equiv (\partial/\partial \tau)^a`, 选 :math:`\{ Z^a, w^a, (\partial/\partial Y)^a, (\partial /\partial Z)^a \}` 为 :math:`G(\tau)` 上的正交归一4标架场, 求出 :math:`G(\tau)` 的固有坐标系 :math:`\{ t, x, y, z \}` 并指出其坐标域.
        答: :math:`T = (A^{-1} + x) \mathrm{sh}At,\quad X = (A^{-1} + x) \mathrm{ch}At, \quad Y=y,\quad Z=z`.
    (e) 写出闵氏度规在上述固有坐标系中的线元表达式. 计算闵氏度规在该系的克氏符, 验证它满足引理7-4-3, 即式(7-4-10).

.. admonition:: 题目 7.6

    设 :math:`G` 是质点 :math:`L` 在点 :math:`p \in L` 的瞬时静止自由下落观者 (即 :math:`G` 的4速 :math:`Z^a` 与 :math:`L` 的4速 :math:`U^a` 在 :math:`p` 点相切), :math:`A^a` 是 :math:`L` 在 :math:`p` 点的4加速, :math:`a^a` 是 :math:`L` 在 :math:`p` 点相对于 :math:`G` 的3加速 [由式(7-4-3)定义], 试证 :math:`a^a = A^a`. 注: 本命题可视为命题6-3-6在弯曲时空的推广.

.. admonition:: 题目 7.7

    度规 :math:`g_{ab}` 叫 **里奇平直** 的, 若 :math:`g_{ab}` 的里奇张量为零. 试证 :math:`g_{ab}` 是真空爱因斯坦方程的解得充要条件为 :math:`g_{ab}` 是里奇平直的.

.. admonition:: 题目 7.8

    设 :math:`(M, g_{ab})` 为里奇平直时空, :math:`\xi^a` 是其中的一个 Killing 矢量场, 试证 :math:`F_{ab} := (\D \xi)_{ab}` 满足 :math:`(M, g_{ab})` 的无源 (:math:`J_a = 0`) 麦氏方程. 提示: 利用 Killing 场 :math:`\xi^a` 满足的 :math:`\nabla_a \xi^a =0` (第4章习题11的结果).

.. admonition:: 题目 7.9

    设 :math:`\xi_\mu (\mu =0,1,2,3)` 为方程 :math:`\partial^b\partial_b\xi_\mu = 0` 在初始条件式(7-9-10)-(7-9-13)下的解, 试证由 :math:`\xi_a = \xi_\mu (\D x^\mu)_a` 及 :math:`\gamma_{ab}` 按式(7-9-8) 构造的 :math:`\gamma'_{ab}` 在无源区既满足洛伦兹规范条件 :math:`\partial^a\overline{\gamma}'_{ab} = 0` 又满足 :math:`\gamma'=0` 和 :math:`\gamma'_{0i} = 0(i=1,2,3)`. 提示: (1) 根据解的唯一性定理, 只需证明 :math:`\gamma'=0` 和 :math:`\gamma'_{0i}=0` 分别是方程 :math:`\partial^c\partial_c\gamma = 0` 和 :math:`\partial^c\partial_c\gamma'_{0i} = 0` 的满足初始条件 :math:`\gamma'|_{\Sigma_0} = 0`, :math:`\partial \gamma'/\partial t|_{\Sigma_0} = 0`, :math:`\gamma'_{0i}|_{\Sigma_0} = 0` 和 :math:`\partial \gamma'_{0i}/\partial t|_{\Sigma_0} = 0` 的解. (2) 由 :math:`\partial^b\partial_b \xi_\mu = 0` 可得 :math:`\partial^a \xi_\mu /\partial t^2 = \nabla^2\xi_\mu`.

.. admonition:: 题目 7.10

    设 :math:`\gamma_{ab}` 满足 (a) :math:`\partial^a\overline{\gamma}_{ab} = 0`; (b) :math:`\gamma = 0`; (c) :math:`\gamma_{0i} = 0 (i = 1,2,3)`; (d) :math:`\gamma_{00} = \mathrm{const}`. 试找出一个 "无限小" 矢量场 :math:`\xi^a` 使 :math:`\tilde{\gamma}_{ab} \equiv \gamma_{ab} + \partial_a\xi_b + \partial_b\xi_a` 满足 (a) :math:`\partial^a \overline{\tilde{\gamma}}_{ab} = 0`; (b) :math:`\tilde{\gamma} = 0`; (c) :math:`\tilde{\gamma}_{0i} = 0 (i = 1,2,3)`; (d) :math:`\tilde{\gamma}_{00} = 0`.

.. admonition:: 题目 7.11

    试证命题7-9-2.

.. admonition:: 题目 7.12

    验证式(7-9-41)后的(1)~(3).

.. admonition:: 题目 7.13

    试证式(7-9-43).

.. admonition:: 题目 7.14

    验证式(7-9-36). 即 :math:`\nabla^a\nabla_a P = (\partial^2 P/\partial x^2)+(\partial^a P/\partial y^2)`.

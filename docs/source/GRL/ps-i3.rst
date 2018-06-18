
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
        \renewcommand{\bm}{\mathbf}
        \newcommand{\xtensor}[3]{{#1}#2 {\vphantom{#1}}#3}

第三章习题
----------

.. admonition:: 题目 3.1

    放弃 :math:`\nabla_a` 定义中的无挠性条件 (e),

    (1) 试证存在张量 :math:`\xtensor{T}{^c}{_{ab}}` (叫 **挠率张量**) 使
    
    .. math:: \nabla_a\nabla_b f - \nabla_b\nabla_a f = -\xtensor{T}{^c}{_{ab}}\nabla_c f,\quad
        \forall f \in \mathscr{F}.

    提示: 令 :math:`\tilde{\nabla}_a` 为无挠算符, 模仿定理3-1-4证明中的推导.

    (2) 试证 :math:`\xtensor{T}{^c}{_{ab}}u^av^b=u^a\nabla_av^c - v^a\nabla_a u^c - [u,v]^c\quad\forall u^a,v^a\in\mathscr{F}(1, 0)`.

.. admonition:: 题解 3.1

    (1) 注意 :math:`\xtensor{C}{^c}{_{ab}}` 的定义没有用到无挠性条件, 因此对有挠率的情况仍然成立. 令 :math:`\omega_a = \nabla_a f = \tilde{\nabla}_a f`, 其中 :math:`\tilde{\nabla}` 为无挠算符, 代入 :math:`\nabla_a \omega_b = \tilde{\nabla}_a \omega_b - \xtensor{C}{^c}{_{ab}} \omega_c` 得
    
    .. math:: 
        \nabla_a \nabla_b f = \tilde{\nabla}_a \tilde{\nabla}_b f - \xtensor{C}{^c}{_{ab}} \nabla_c f

    交换指标得
    
    .. math:: 
        \nabla_b \nabla_a f = \tilde{\nabla}_b \tilde{\nabla}_a f - \xtensor{C}{^c}{_{ba}} \nabla_c f
    
    两式相减, 利用 :math:`\big( \tilde{\nabla}_a \tilde{\nabla}_b - \tilde{\nabla}_b \tilde{\nabla}_a \big) f = 0`  得
    
    .. math::
        \nabla_a \nabla_b f - \nabla_b \nabla_a f = -\big( \xtensor{C}{^c}{_{ab}} - \xtensor{C}{^c}{_{ba}} \big) \nabla_c f
    
    令 :math:`\xtensor{T}{^c}{_{ab}} = \xtensor{C}{^c}{_{ab}} - \xtensor{C}{^c}{_{ba}}` 即得证.

    (2) 模仿定理3-1-9的证明.
    
    .. math:: 
        [u, v](f) =&\  [u, v]^c\nabla_c f = u(v(f)) - v(u(f)) = u^b \nabla_b \big(v^a\nabla_a f\big) - 
            v^b\nabla_b \big(u^a\nabla_a f \big) \\
            =&\ \big( u^b \nabla_b v^a - v^b\nabla_b u^a\big) \nabla_a f + u^av^b \big( \nabla_a\nabla_b f - 
                \nabla_b\nabla_a f \big) \\
            =&\ \big( u^b \nabla_b v^c- v^b\nabla_b u^c \big) \nabla_c f - u^av^b \xtensor{T}{^c}{_{ab}} \nabla_c f \\
        \xtensor{T}{^c}{_{ab}}u^av^b  =&\ u^b \nabla_b v^c- v^b\nabla_b u^c - [u, v]^c

.. admonition:: 题目 3.2

    设 :math:`v^a` 为矢量场, :math:`v^\nu` 和 :math:`v'^\nu` 为 :math:`v^a` 在坐标系 :math:`\{ x^\nu \}` 和 :math:`\{ x'^\nu \}` 的分量, :math:`\xtensor{A}{^\nu}{_\mu} \equiv \partial v^\nu/\partial x^\mu, \xtensor{{A'}}{^\nu}{_\mu} \equiv \partial v'^\nu / \partial x'^\mu`, 试证 :math:`\xtensor{A}{^\nu}{_\mu}` 和 :math:`\xtensor{{A'}}{^\nu}{_\mu}` 的关系一般而言不满足张量分量变换律. 提示: 利用 :math:`v^\nu` 与 :math:`v'^\nu` 之间的变换规律.

.. admonition:: 题解 3.2

    矢量变换式和张量变换式分别为
    
    .. math:: 
        v'^\nu = \frac{\partial x'^\nu}{\partial x^\mu} v^\mu,\quad 
        \xtensor{{A'}}{^\mu}{_\nu} = \frac{\partial x'^\mu}{\partial x^\sigma} \frac{\partial x^\rho}{\partial x'^\nu}
            \xtensor{A}{^\sigma}{_\rho}
    
    现在
    
    .. math:: 
        \xtensor{{A'}}{^\nu}{_\mu} =&\  \frac{\partial v'^\nu}{\partial x'^\mu} =
            \frac{\partial}{\partial x'^\mu}\left( \frac{\partial x'^\nu}{\partial x^\sigma} v^\sigma \right)
            = v^\sigma \frac{\partial}{\partial x'^\mu}\left( \frac{\partial x'^\nu}{\partial x^\sigma} \right)
                +  \frac{\partial x'^\nu}{\partial x^\sigma} \frac{\partial v^\sigma}{\partial x'^\mu} \\
            =&\ v^\sigma \frac{\partial}{\partial x'^\mu}\left( \frac{\partial x'^\nu}{\partial x^\sigma} \right)
                +  \frac{\partial x'^\nu}{\partial x^\sigma} \frac{\partial x^\rho}{\partial x'^\mu} \frac{\partial v^\sigma}{\partial x^\rho} = v^\sigma \frac{\partial}{\partial x'^\mu}\left( \frac{\partial x'^\nu}{\partial x^\sigma} \right)
                + \frac{\partial x'^\nu}{\partial x^\sigma} \frac{\partial x^\rho}{\partial x'^\mu}
                    \xtensor{A}{^\sigma}{_\rho}

.. admonition:: 题目 3.3

    试证定理3-1-7.

.. admonition:: 题解 3.3

    [定理3-1-7]
    
    .. math:: \xtensor{v}{^\nu}{_{;\mu}} = \xtensor{v}{^\nu}{_{,\mu}} + \xtensor{\Gamma}{^\nu}{_{\mu\sigma}}v^\sigma,\quad \omega_{\nu;\mu} = \omega_{\nu,\mu} - \xtensor{\Gamma}{^\sigma}{_{\mu\nu}}\omega_\sigma

    利用张量等式可得分量等式
    
    .. math:: 
        \nabla_a v^b =&\ \partial_a v^b + \xtensor{\Gamma}{^b}{_{ac}}v^c \\
        \xtensor{v}{^\nu}{_{;\mu}} (\D x^\mu)_a(\partial/\partial x^\nu)^b
            =&\ \partial_\mu v^\nu (\D x^\mu)_a(\partial/\partial x^\nu)^b
            + \xtensor{\Gamma}{^\nu}{_{\mu\sigma}} (\partial/\partial x^\nu)^b (\D x^\mu)_a (\D x^\sigma)_c v^\sigma 
                (\partial/\partial x^\sigma)^c \\
        \xtensor{v}{^\nu}{_{;\mu}} =&\  \partial_\mu v^\nu + \xtensor{\Gamma}{^\nu}{_{\mu\sigma}} v^\sigma
    
    对偶矢量的情形类似. 

.. admonition:: 题目 3.4

    用下式定义 :math:`\xtensor{\Gamma}{^\sigma}{_{\mu\nu}}`:
    
    .. math:: \left( \frac{\partial}{\partial x^\nu} \right)^b\nabla_b \left( \frac{\partial}{\partial x^\mu} \right)^a
        = \xtensor{\Gamma}{^\sigma}{_{\mu\nu}} \left( \frac{\partial}{\partial x^\sigma} \right)^a
    
    试证

    (a) :math:`\xtensor{\Gamma}{^\sigma}{_{\mu\nu}} = \xtensor{\Gamma}{^\sigma}{_{\nu\mu}}` (提示: 利用 :math:`\nabla_a` 的无挠性和坐标基矢间的对易性.)
    (b) :math:`\xtensor{v}{^\nu}{_{;\mu}} = \xtensor{v}{^\nu}{_{,\mu}} + \xtensor{\Gamma}{^\nu}{_{\mu\beta}}v^\beta` (注: 这其实是克氏符的等价定义.)

.. admonition:: 题解 3.4

    (a) 对无挠算符有 :math:`[u, v]^a =  u^b \nabla_b v^a - v^b\nabla_b u^a`. 令 :math:`u^a = \left( \frac{\partial}{\partial x^\mu} \right)^a, v_a =  \left( \frac{\partial}{\partial x^\nu} \right)^a`. 由坐标基矢间的对易性
    
    .. math:: 0 =&\ \left[ \frac{\partial}{\partial x^\mu}, \frac{\partial}{\partial x^\nu} \right]^a
        = \left( \frac{\partial}{\partial x^\mu} \right)^b \nabla_b \left( \frac{\partial}{\partial x^\nu} \right)^a
            - \left( \frac{\partial}{\partial x^\nu} \right)^b \nabla_b \left( \frac{\partial}{\partial x^\mu} \right)^a \\
        =&\ \big(\xtensor{\Gamma}{^\sigma}{_{\nu\mu}} - \xtensor{\Gamma}{^\sigma}{_{\mu\nu}} \big) \left( \frac{\partial}{\partial x^\sigma} \right)^a
    
    因此 :math:`\xtensor{\Gamma}{^\sigma}{_{\nu\mu}} = \xtensor{\Gamma}{^\sigma}{_{\mu\nu}}`.

    (b) 这个考察对协变导数分量记号和分量意义的理解. 注意, 当协变导数作用到矢量的分量,  相当于普通导数, 因为协变导数作用于标量对任意导数算符而言都只能得到一样的结果. 即 :math:`\nabla_a v^\sigma = \partial_a v^\sigma`
    
    .. math:: 
         \xtensor{v}{^\nu}{_{;\mu}} =&\ \nabla_a v^b (\D x^\nu)_b \left(\frac{\partial}{\partial x^\mu}\right)^a 
         = (\D x^\nu)_b \left(\frac{\partial}{\partial x^\mu}\right)^a \nabla_a \left[ v^\sigma \left(\frac{\partial}{\partial x^\sigma}\right)^b \right] \\
        =&\ (\D x^\nu)_b v^\sigma \left(\frac{\partial}{\partial x^\mu}\right)^a \nabla_a \left(\frac{\partial}{\partial x^\sigma}\right)^b + (\D x^\nu)_b \left(\frac{\partial}{\partial x^\mu}\right)^a \left(\frac{\partial}{\partial x^\sigma}\right)^b \partial_a v^\sigma \\
        =&\ (\D x^\nu)_b v^\sigma \xtensor{\Gamma}{^\rho}{_{\sigma\mu}} \left( \frac{\partial}{\partial x^\rho} \right)^b
            + \left(\frac{\partial}{\partial x^\mu}\right)^a \partial_a v^\sigma \xtensor{\delta}{^\nu}{_\sigma} \\
        =&\ \xtensor{\delta}{^\nu}{_\rho}  \xtensor{\Gamma}{^\rho}{_{\sigma\mu}} v^\sigma
            + \left(\frac{\partial}{\partial x^\mu}\right)^a \partial_a v^\nu \\
        =&\  \xtensor{\Gamma}{^\nu}{_{\sigma\mu}} v^\sigma + \xtensor{v}{^\nu}{_{,\mu}}
    
    最后一步是利用 "任一坐标系的 :math:`\partial_a` 作用于该系的任一坐标基矢和任一对偶坐标基矢结果为零." 即
    
    .. math:: 
        \xtensor{v}{^\nu}{_{,\mu}} =&\ \partial_a v^b (\D x^\nu)_b \left(\frac{\partial}{\partial x^\mu}\right)^a 
         = (\D x^\nu)_b \left(\frac{\partial}{\partial x^\mu}\right)^a \partial_a \left[ v^\sigma \left(\frac{\partial}{\partial x^\sigma}\right)^b \right] \\
        =&\ (\D x^\nu)_b v^\sigma \left(\frac{\partial}{\partial x^\mu}\right)^a \partial_a \left(\frac{\partial}{\partial x^\sigma}\right)^b + (\D x^\nu)_b \left(\frac{\partial}{\partial x^\mu}\right)^a \left(\frac{\partial}{\partial x^\sigma}\right)^b \partial_a v^\sigma \\
        =&\ \xtensor{\delta}{^\nu}{_\sigma} \left(\frac{\partial}{\partial x^\mu}\right)^a \partial_a v^\sigma
        = \left(\frac{\partial}{\partial x^\mu}\right)^a \partial_a v^\nu

.. admonition:: 题目 3.5

    判断是非:

    (1) :math:`\nabla_a (\D x^\mu )_b = 0`;
    (2) :math:`\xtensor{v}{^\nu}{_{;\mu}} = (\nabla_a v^b)(\partial/\partial x^\mu)^a(\D x^\nu)_b`;
    (3) :math:`\xtensor{v}{^\nu}{_{,\mu}} = (\partial_a v^b)(\partial/\partial x^\mu)^a(\D x^\nu)_b`;
    (4) :math:`\xtensor{v}{^\nu}{_{;\mu}} = (\partial/\partial x^\mu)^a\nabla_a v^\nu`;
    (5) :math:`\xtensor{v}{^\nu}{_{,\mu}} = (\partial/\partial x^\mu)^a\nabla_a v^\nu`;

.. admonition:: 题解 3.5

    (1) 不正确, 只有普通导数作用于对偶坐标基矢得零. 由第4题也可知道协变导数作用于坐标基矢不为零.
    (2) 正确.
    (3) 正确.
    (4) 不正确. 见第4题最后一步的证明. 其中 :math:`\partial_a v^\nu = \nabla_a v^\nu`. 这个等式等价于说协变导数作用于坐标基矢得零. 然而这只对普通导数成立.
    (5) 正确.

.. admonition:: 题目 3.6

    设 :math:`C(t)` 是 :math:`\{ x^\mu \}` 的坐标域内的曲线, :math:`x^\mu(t)` 是 :math:`C(t)` 在该系的参数表达式, :math:`v^a` 是 :math:`C(t)` 上的矢量场, 令 :math:`\mathrm{D} v^\mu/dt \equiv (\D x^\mu)_a(\partial/\partial t)^b\nabla_b v^a`, 试证
    
    .. math:: \mathrm{D} v^\mu/\D t \equiv \D v^\mu /\D t+ \xtensor{\Gamma}{^\mu}{_{\nu\sigma}}v^\sigma \D x^\nu (t)/\D t

.. admonition:: 题解 3.6

    利用 :math:`(\partial/\partial t)^b = \frac{\D x^\nu}{\D t} (\partial/\partial x^\nu)^b` 得
    
    .. math:: 
        \mathrm{D} v^\mu/\D t =&\ \frac{\D x^\nu}{\D t} (\D x^\mu)_a (\partial/\partial x^\nu)^b\nabla_b v^a
            = \frac{\D x^\nu}{\D t} \xtensor{v}{^\mu}{_{;\nu}} \\
            =&\ \frac{\D x^\nu}{\D t} \xtensor{v}{^\mu}{_{,\nu}} + \frac{\D x^\nu}{\D t}\xtensor{\Gamma}{^\mu}{_{\nu\sigma}} v^\sigma = \frac{\D v^\mu}{\D t} + \xtensor{\Gamma}{^\mu}{_{\nu\sigma}} v^\sigma \frac{\D x^\nu}{\D t}

.. admonition:: 题目 3.7

    求出3维欧氏空间中球坐标系的全部非零 :math:`\xtensor{\Gamma}{^\sigma}{_{\mu\nu}}`.

.. admonition:: 题解 3.7

    公式为 :math:`\xtensor{\Gamma}{^\sigma}{_{\mu\nu}} = \frac{g^{\sigma\rho}}{2} \big( g_{\rho\mu,\nu} +g_{\nu\rho,\mu}-g_{\mu\nu,\rho} \big)`. 球坐标系度规 :math:`\D s^2 = \D r^2 + r^2 \big(\D \theta^2 + \sin^2\theta\D \varphi^2 \big)`.

    度规导数为 (记指标 :math:`r = 1, \theta = 2, \varphi = 3`)
    
    .. math:: 
        g_{11,1} =&\ g_{11,2} = g_{11,3} = 0 \\
        g_{22,1} =&\ 2r,\quad g_{22,2} = g_{22,3} = 0 \\
        g_{33,1} =&\ 2r\sin^2\theta,\quad g_{33,2} = 2r^2\sin\theta\cos\theta,\quad g_{33,3} = 0
    
    克氏符为
    
    .. math:: 
        \xtensor{\Gamma}{^1}{_{11}} =&\ \frac{1}{2} g^{1\rho} \big( g_{\rho 1,1} +g_{1 \rho,1}-g_{11,\rho} \big)
            = \frac{1}{2} g^{11} \big( g_{11,1} +g_{11,1}-g_{11,1} \big) = 0 \\
        \xtensor{\Gamma}{^2}{_{11}} =&\ \frac{1}{2} g^{22} \big( g_{21,1} +g_{12,1}-g_{11,2} \big) = 0 \\
        \xtensor{\Gamma}{^3}{_{11}} =&\ \frac{1}{2} g^{33} \big( g_{31,1} +g_{13,1}-g_{11,3} \big) = 0 \\
        \xtensor{\Gamma}{^1}{_{12}} =&\ \frac{1}{2} g^{11} \big( g_{\mathbf{1}1,2} +g_{\mathbf{1}2,1}-g_{12,\mathbf{1}} \big) = 0 \\
        \xtensor{\Gamma}{^2}{_{12}} =&\ \frac{1}{2} g^{22} \big( g_{\mathbf{2}1,2} +g_{\mathbf{2}2,1}-g_{12,\mathbf{2}} \big) = \frac{1}{2}\frac{1}{r^2}\cdot 2r = \frac{1}{r} \\
        \xtensor{\Gamma}{^3}{_{12}} =&\ \frac{1}{2} g^{33} \big( g_{\mathbf{3}1,2} +g_{\mathbf{3}2,1}-g_{12,\mathbf{3}} \big) = 0 \\
        \xtensor{\Gamma}{^1}{_{13}} =&\ \frac{1}{2} g^{11} \big( g_{\mathbf{1}1,3} +g_{\mathbf{1}3,1}-g_{13,\mathbf{1}} \big) = 0 \\
        \xtensor{\Gamma}{^2}{_{13}} =&\ \frac{1}{2} g^{22} \big( g_{\mathbf{2}1,3} +g_{\mathbf{2}3,1}-g_{13,\mathbf{2}} \big) = 0 \\
        \xtensor{\Gamma}{^3}{_{13}} =&\ \frac{1}{2} g^{33} \big( g_{\mathbf{3}1,3} +g_{\mathbf{3}3,1}-g_{13,\mathbf{3}} \big) = \frac{1}{2}\frac{1}{r^2\sin^2\theta}\cdot 2r\sin^2\theta = \frac{1}{r} \\
        \xtensor{\Gamma}{^1}{_{22}} =&\ \frac{1}{2} g^{11} \big( g_{\mathbf{1}2,2} +g_{\mathbf{1}2,2}-g_{22,\mathbf{1}} \big) = -\frac{1}{2} 2r = -r \\
        \xtensor{\Gamma}{^2}{_{22}} =&\ \frac{1}{2} g^{22} \big( g_{\mathbf{2}2,2} +g_{\mathbf{2}2,2}-g_{22,\mathbf{2}} \big) = 0 \\
        \xtensor{\Gamma}{^3}{_{22}} =&\ \frac{1}{2} g^{33} \big( g_{\mathbf{3}2,2} +g_{\mathbf{3}2,2}-g_{22,\mathbf{3}} \big) = 0 \\
        \xtensor{\Gamma}{^1}{_{23}} =&\ \frac{1}{2} g^{11} \big( g_{\mathbf{1}2,3} +g_{\mathbf{1}3,2}-g_{23,\mathbf{1}} \big) = 0 \\
        \xtensor{\Gamma}{^2}{_{23}} =&\ \frac{1}{2} g^{22} \big( g_{\mathbf{2}2,3} +g_{\mathbf{2}3,2}-g_{23,\mathbf{2}} \big) = 0 \\
        \xtensor{\Gamma}{^3}{_{23}} =&\ \frac{1}{2} g^{33} \big( g_{\mathbf{3}2,3} +g_{\mathbf{3}3,2}-g_{23,\mathbf{3}} \big) = \frac{1}{2} \frac{1}{r^2\sin^2\theta}\cdot 2r^2\sin\theta\cos\theta = \cot\theta \\
        \xtensor{\Gamma}{^1}{_{33}} =&\ \frac{1}{2} g^{11} \big( g_{\mathbf{1}3,3} +g_{\mathbf{1}3,3}-g_{33,\mathbf{1}} \big) = -\frac{1}{2} 2r\sin^2\theta = -r\sin^2\theta \\
        \xtensor{\Gamma}{^2}{_{33}} =&\ \frac{1}{2} g^{22} \big( g_{\mathbf{2}3,3} +g_{\mathbf{2}3,3}-g_{33,\mathbf{2}} \big) = -\frac{1}{2} \frac{1}{r^2}\cdot 2r^2\sin\theta\cos\theta = -\sin\theta\cos\theta\\
        \xtensor{\Gamma}{^3}{_{33}} =&\ \frac{1}{2} g^{33} \big( g_{\mathbf{3}3,3} +g_{\mathbf{3}3,3}-g_{33,\mathbf{3}} \big) = 0
    
    非零分量为
    
    .. math:: 
        \xtensor{\Gamma}{^2}{_{12}} =&\ \xtensor{\Gamma}{^2}{_{21}} = \frac{1}{r},\quad
        \xtensor{\Gamma}{^3}{_{13}} = \xtensor{\Gamma}{^2}{_{31}} = \frac{1}{r}, \\
        \xtensor{\Gamma}{^1}{_{22}} =&\ -r,\quad \xtensor{\Gamma}{^3}{_{23}} = \xtensor{\Gamma}{^3}{_{32}} = \cot\theta \\
        \xtensor{\Gamma}{^1}{_{33}} =&\ -r\sin^2\theta,\quad \xtensor{\Gamma}{^2}{_{33}} = -\sin\theta\cos\theta

.. admonition:: 题目 3.9

    试证定理3-3-2、3-3-3和3-3-5.

.. admonition:: 题解 3.9

    (1) [定理3-3-2] 设曲线 :math:`\gamma(t)` 的切矢 :math:`T^a` 满足 :math:`T^b\nabla_b T^a = \alpha T^a`, 其中 :math:`\alpha` 为 :math:`\gamma(t)` 上的函数, 则存在 :math:`t'=t'(t)` 使得 :math:`\gamma'(t') [=\gamma(t)]` 为测地线.

    由 [定理3-3-1] 交换撇号可知 :math:`\alpha(t) = -\left( \frac{\D t'}{\D t} \right)^2 \frac{\D^2 t}{\D t'^2}`. 由此可解出 :math:`t'(t)`.

    (2) [定理3-3-3] 若 :math:`t` 是某测地线的仿射参数, 则该线的任一参数 :math:`t'` 是仿射参数的充要条件为 :math:`t' = at+b` (其中 :math:`a, b` 为常数且 :math:`a \neq 0`).

    由 [定理3-3-1] 知 :math:`\alpha = 0` 则 :math:`t'(t)` 对 :math:`t` 的一阶导数为无穷大 (不可导) (不满足重参数化定义) 或二阶导数为零. 于是必有二阶导数为零, 即 :math:`t'= a t + b`. 而重参数化又要求处处有非零的导数, 因此 :math:`a \neq 0`.

    (3) [定理3-3-5] 测地线的线长参数必为仿射参数.

    线长参数的定义为 :math:`l(t) = \int_{t_0}^t |T|(t'')\D t''`. 在 [定理3-3-1] 的 :math:`\alpha` 表达式中令 :math:`t'(t) = l(t)`, 现在要证线长参数为仿射参数, 即证 :math:`\alpha = 0`. 而 :math:`\D l(t) /\D t = |T|(t) = \mathrm{const}`. 因为对测地线 (注意 :math:`t` 是仿射参数), 切矢沿线平移, 而度规保内积, 切矢 :math:`T` 的长度不会随 :math:`t` 改变, 因此 :math:`\D^2 l(t) /\D t^2 = 0`, 即 :math:`\alpha = 0`, :math:`l` 是仿射参数.

.. admonition:: 题目 3.10

    (a) 写出球面度规 :math:`\D s^2 = R^2\big(\D \theta^2 + \sin^2\theta\D \varphi^2 \big)` (:math:`R` 为常数) 的测地线方程; 
    (b) 验证任一大圆弧 (配以适当参数) 满足测地线方程. 提示: 选球面坐标系 :math:`\{ \theta, \varphi \}` 使所给大圆弧为赤道的一部分, 并以 :math:`\varphi` 为仿射参数.

.. admonition:: 题解 3.10

    (a) 球面度规的克氏符只有两个不为零的分量
    
    .. math:: 
        \xtensor{\Gamma}{^\varphi}{_{\theta\varphi}} = \xtensor{\Gamma}{^\varphi}{_{\varphi\theta}} = \cot\theta,
        \quad \xtensor{\Gamma}{^\theta}{_{\varphi\varphi}} = -\sin\theta\cos\theta
    
    测地线方程为
    
    .. math:: 
        \frac{\D^2 \theta}{\D t^2} -\sin\theta\cos\theta \left(\frac{\D \varphi}{\D t}\right)^2 =&\ 0 \\
        \frac{\D^2 \varphi}{\D t^2} +2\cot\theta \frac{\D \varphi}{\D t}\frac{\D \theta}{\D t} =&\ 0
    
    (b) 令 :math:`\varphi = t` 为仿射参数, 则赤道测地线方程为 :math:`\theta(t) = \frac{\pi}{2}, \varphi(t) = t`. 于是
    
    .. math:: 
        \frac{\D^2 \varphi}{\D t^2} = 0,\quad \frac{\D \theta}{\D t} = 0
    
    第二式自动满足. 对第一式, 有
    
    .. math:: 0 -\sin \frac{\pi}{2}\cos\frac{\pi}{2} \cdot 1^2 = 0
    
    由于 :math:`\cos\frac{\pi}{2} = 0` 所以该式也成立.

.. admonition:: 题目 3.11

    试证定理3-4-2: 设 :math:`\omega_c, \omega'_c \in \mathscr{F}_M(0, 1)` 且 :math:`\omega'_c |_p = \omega_c |_p` 则

.. math:: \big[ \big( \nabla_a\nabla_b - \nabla_b\nabla_a \big) \omega'_c \big] \big\rvert_p =
    \big[ \big( \nabla_a\nabla_b - \nabla_b\nabla_a \big) \omega_c \big] \big\rvert_p

.. admonition:: 题解 3.11

    模仿 [定理3-1-2] 的证明. 只需证明
    
    .. math:: 
        \big[\nabla_a\nabla_b \big( \omega'_c - \omega_c \big) \big]_p = 
           \big[ \nabla_b\nabla_a \big( \omega'_c - \omega_c \big) \big]_p
    
    对 :math:`p` 点有 (注意 :math:`\big( \omega' - \omega \big)_{\mu}(p) = 0`)
    
    .. math:: 
        \big[ \nabla_a\nabla_b \big( \omega'_c - \omega_c \big)  \big]_p =&\ 
            \big\{ \nabla_a\nabla_b \big[ \big( \omega' - \omega \big)_\mu \big(\D x^\mu \big)_c \big] \big\}_p\\
            =&\ \big( \omega' - \omega \big)_{\mu}(p) \big[ \nabla_a\nabla_b \big(\D x^\mu \big)_c \big]_p
            +  \big[ \big(\D x^\mu \big)_c \nabla_a\nabla_b \big( \omega' - \omega \big)_\mu \big] _p
            = \big[ \big(\D x^\mu \big)_c \nabla_a\nabla_b \big( \omega' - \omega \big)_\mu \big] _p
    
    同理有
    
    .. math:: 
        \big[ \nabla_b\nabla_a \big( \omega'_c - \omega_c \big)  \big]_p =
            \big[ \big(\D x^\mu \big)_c \nabla_b\nabla_a \big( \omega' - \omega \big)_\mu \big] _p
    
    但 :math:`\big( \omega' - \omega \big)_\mu` 是标量场, :math:`\nabla_a\nabla_b` 和 :math:`\nabla_b\nabla_a` 作用结果一样. 因此 :math:`\big[ \nabla_a\nabla_b \big( \omega'_c - \omega_c \big)  \big]_p = \big[ \nabla_b\nabla_a \big( \omega'_c - \omega_c \big)  \big]_p`.

.. admonition:: 题目 3.12

    试证式(3-4-10): :math:`R_{abcd} = R_{cdab}`.

.. admonition:: 题解 3.12

    由循环恒等式 :math:`R_{[abc]d} = 0` 及 :math:`R_{abcd} = -R_{bacd}`  有
    
    .. math:: R_{abcd} = -R_{bcad} - R_{cabd}

    于是
    
    .. math:: 
        R_{abdc} =&\ -R_{bdac} - R_{dabc} = R_{dacb} -R_{dbca} = -R_{acdb} - R_{cdab}  -R_{dbca} \\
        =&\  -R_{acdb} {\color{red}{-R_{cdab}}} + R_{bcda} + {\color{red}{R_{cdba}}}
        = -2R_{cdab} -R_{cabd} - R_{bcad} = -2R_{cdab} +R_{abcd}
    
    即 :math:`2R_{cdab} = 2R_{abcd}`.

.. admonition:: 题目 3.13
    
    求出球面度规 (见题10) 的黎曼张量在坐标系 :math:`\{ \theta, \varphi \}` 的全部分量.

.. admonition:: 题解 3.13

    黎曼张量公式为
    
    .. math:: \xtensor{R}{_{\mu\nu\sigma}}{^\rho} = \xtensor{\Gamma}{^\rho}{_{\mu\sigma,\nu}}
        - \xtensor{\Gamma}{^\rho}{_{\nu\sigma,\mu}} + \xtensor{\Gamma}{^\lambda}{_{\sigma\mu}} \xtensor{\Gamma}{^\rho}{_{\nu\lambda}} - \xtensor{\Gamma}{^\lambda}{_{\sigma\nu}} \xtensor{\Gamma}{^\rho}{_{\mu\lambda}}
    
    克氏符为 :math:`\xtensor{\Gamma}{^2}{_{12}} = \xtensor{\Gamma}{^2}{_{21}} = \cot\theta, \quad \xtensor{\Gamma}{^1}{_{22}} = -\sin\theta\cos\theta`

    由定义知 :math:`\xtensor{R}{_{\mu\mu\sigma}}{^\rho} = 0`. 因此
    
    .. math:: 
        \xtensor{R}{_{121}}{^1} =&\ -\xtensor{R}{_{211}}{^1} = \xtensor{\Gamma}{^1}{_{11,2}}
        - \xtensor{\Gamma}{^1}{_{21,1}} + \xtensor{\Gamma}{^\lambda}{_{11}} \xtensor{\Gamma}{^1}{_{2\lambda}} - \xtensor{\Gamma}{^\lambda}{_{12}} \xtensor{\Gamma}{^1}{_{1\lambda}} = 0 \\
        \xtensor{R}{_{121}}{^2} =&\ -\xtensor{R}{_{211}}{^2} = \xtensor{\Gamma}{^2}{_{11,2}}
        - \xtensor{\Gamma}{^2}{_{21,1}} + \xtensor{\Gamma}{^\lambda}{_{11}} \xtensor{\Gamma}{^2}{_{2\lambda}} - \xtensor{\Gamma}{^\lambda}{_{12}} \xtensor{\Gamma}{^2}{_{1\lambda}} = \csc^2 \theta -\cot^2\theta = 1 \\
        \xtensor{R}{_{122}}{^1} =&\ -\xtensor{R}{_{212}}{^1} = \xtensor{\Gamma}{^1}{_{12,2}}
        - \xtensor{\Gamma}{^1}{_{22,1}} + \xtensor{\Gamma}{^\lambda}{_{21}} \xtensor{\Gamma}{^1}{_{2\lambda}} - \xtensor{\Gamma}{^\lambda}{_{22}} \xtensor{\Gamma}{^1}{_{1\lambda}} = \cos^2\theta-\sin^2\theta + \cot\theta(-\sin\theta\cos\theta) \\
        =&\ \cos^2\theta-\sin^2\theta -\cos^\theta = -\sin^2\theta \\
        \xtensor{R}{_{122}}{^2} =&\ -\xtensor{R}{_{212}}{^2} = \xtensor{\Gamma}{^2}{_{12,2}}
        - \xtensor{\Gamma}{^2}{_{22,1}} + \xtensor{\Gamma}{^\lambda}{_{21}} \xtensor{\Gamma}{^2}{_{2\lambda}} - \xtensor{\Gamma}{^\lambda}{_{22}} \xtensor{\Gamma}{^2}{_{1\lambda}} = 0
    
    进一步可以发现
    
    .. math:: 
        \xtensor{R}{_{122}}{^1} = g^{1\lambda}R_{122\lambda} = g^{11} R_{1221} = -g^{11} R_{1212} =
            -g^{11} g_{2\lambda} \xtensor{R}{_{121}}{^\lambda} =  -g^{11}g_{22} \xtensor{R}{_{121}}{^2}
            = -\sin^2\theta \xtensor{R}{_{121}}{^2}

.. admonition:: 题目 3.17

    试证2维广义黎曼空间的爱因斯坦张量为零. 提示: 2维广义黎曼空间的黎曼张量只有一个独立分量.

.. admonition:: 题解 3.17

    里奇张量为
    
    .. math:: 
        R_{11} = \xtensor{R}{_{121}}{^2}, \quad R_{12} = R_{21} = \xtensor{R}{_{122}}{^2} = 0, \quad
        R_{22} = \xtensor{R}{_{212}}{^1} = -\xtensor{R}{_{122}}{^1} = \frac{g_{22}}{g_{11}} \xtensor{R}{_{121}}{^2}
    
    标量曲率为
    
    .. math:: 
        R = g^{1\lambda}R_{1\lambda} + g^{2\lambda}R_{2\lambda} = \left(\frac{1}{g_{11}} + \frac{1}{g_{11}} \right) \xtensor{R}{_{121}}{^2} = \frac{2}{g_{11}} \xtensor{R}{_{121}}{^2} 
    
    于是
    
    .. math:: 
        G_{11} =&\ R_{11} - \frac{1}{2} R g_{11} = \xtensor{R}{_{121}}{^2} - \frac{1}{2} g_{11} \frac{2}{g_{11}} \xtensor{R}{_{121}}{^2} = 0 \\
        G_{12} =&\ G_{21} = R_{12} - \frac{1}{2} R g_{12} = 0\\
        G_{22} =&\ R_{22} - \frac{1}{2} R g_{22} = \frac{g_{22}}{g_{11}} \xtensor{R}{_{121}}{^2} - \frac{1}{2} g_{22} \frac{2}{g_{11}} \xtensor{R}{_{121}}{^2} = 0
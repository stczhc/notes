
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

第二章习题
----------

.. admonition:: 题目 2.4

    设 :math:`\{x, y\}` 为 :math:`\mathbb{R}^2` 的自然坐标, :math:`C(t)` 是曲线, 参数表达式为 :math:`x=\cos t, y = \sin t, t \in (0, \pi)`. 若 :math:`p = C(\pi/3)`, 写出曲线在 :math:`p` 的切矢在自然坐标基的分量, 并画图表出该曲线及该切矢.

.. admonition:: 题解 2.4

    曲线的切矢
    
    .. math:: T = \frac{\partial}{\partial t} = T_x\frac{\partial }{\partial x} + T_y\frac{\partial }{\partial y}
    
    其中
    
    .. math:: T_x|_p =T_x =&\ \frac{\D x(t)}{\D t} = -\sin t, \quad T_y = \frac{\D y(t)}{\D t} = \cos t \\
        p_x =&\ x(t = \pi / 3) = \frac{1}{2}, \quad p_y = y(t = \pi / 3) = \frac{\sqrt{3}}{2} \\
        {T_x}| _p = T_x(t = \pi / 3) =&\ -\frac{\sqrt{3}}{2}, \quad {T_y}|_p = T_y(t = \pi / 3) = \frac{1}{2}
    
    .. tikz:: 图 1.4

        \draw[->] (-3.5, 0) -- (3.5, 0) node[right] {$x$};
        \draw[->] (0, -0.5) -- (0, 4) node[above] {$y$};
        \draw[line width=1pt] (3, 0) arc (0:180:3); 
        \draw[fill=white, line width=1pt] (3, 0) circle (0.05);
        \draw[fill=white, line width=1pt] (-3, 0) circle (0.05);
        \draw[fill=black] ({3*cos(60)}, {3*sin(60)}) circle (0.05) node[right] {$p$};
        \draw[->, line width=1pt] ({3*cos(60)}, {3*sin(60)}) -- +({-3*sin(60)}, {3*cos(60)})
            node[left] {$T$};

.. admonition:: 题目 2.5

    设曲线 :math:`C(t)` 和 :math:`C'(t) \equiv C(2t_0 - t)` 在 :math:`C(t_0)=C'(t_0)` 点的切矢分别为 :math:`v` 和 :math:`v'`, 试证 :math:`v+v'=0`.

.. admonition:: 题解 2.5

    根据 [定理2-2-5], 令 :math:`t'(t) = 2t_0 - t`
    
    .. math:: v = \frac{\partial}{\partial t}\bigg\rvert_p = \frac{\partial t'(t)}{\partial t} \frac{\partial}{\partial t'}\bigg\rvert_p = -v'.
    
.. admonition:: 题目 2.6

    设 :math:`O` 为坐标系 :math:`\{ x^\mu \}` 的坐标域, :math:`p\in O, v \in V_p`, :math:`v^\mu` 是 :math:`v` 的坐标分量, 把坐标 :math:`x^\mu` 看作 :math:`O` 上的 :math:`\C^\infty` 函数, 试证 :math:`v^\mu = v(x^\mu)`. 提示: 用 :math:`v=v^\nu X_\nu` 两边作用于函数 :math:`x^\mu`.

.. admonition:: 题解 2.6

    .. math:: v(x^\mu) = v^\nu \left(\frac{\partial}{\partial x^\nu}\right)(x^\mu) = v^\nu  \xtensor{\delta}{^\mu}{_\nu}
        = v^\mu

.. admonition:: 题目 2.7

    设 :math:`M` 是2维流形, :math:`(O,\psi)` 和 :math:`(O', \psi')` 是 :math:`M` 上的两个坐标系, 坐标分别为 :math:`\{x, y\}` 和 :math:`\{x', y'\}`, 在 :math:`O\cap O'` 上的坐标变换为 :math:`x'=x, y'=y-\Omega x (\Omega = \mathrm{const})`, 试分别写出坐标基矢 :math:`\partial/\partial x, \partial/\partial y` 用坐标基矢 :math:`\partial/\partial x', \partial/\partial y'` 的展开式.

.. admonition:: 题解 2.7

    由 [定理2-2-3] 的证明中的变换公式, 

    .. math:: 
        \frac{\partial}{\partial x} = \frac{\partial x'^\nu}{\partial x} \frac{\partial}{\partial x'^\nu}
            = \frac{\partial}{\partial x'} - \Omega\frac{\partial}{\partial y'},\quad
        \frac{\partial}{\partial y} = \frac{\partial x'^\nu}{\partial y} \frac{\partial}{\partial x'^\nu}
            = \frac{\partial}{\partial y'}

.. admonition:: 题目 2.8

    (a) 试证 [第二节定义10] 的 :math:`[u,v]` 在每点满足矢量定义的两条件, 从而的确是矢量场.
    (b) 设 :math:`u,v,w` 为流形 :math:`M` 上的光滑矢量场, 试证雅克比恒等式
    
    .. math:: [[u,v], w] + [[w, u],v] + [[v,w], u] = 0

.. admonition:: 题解 2.8

    定义式为 :math:`[u,v](f) = u(v(f)) - v(u(f))`

    (a) 首先证 :math:`[u,v](\alpha f + \beta g) = \alpha [u,v](f) + \beta [u,v](g)`
    
        .. math::
            [u,v](\alpha f + \beta g) =&\ 
                u(v(\alpha f + \beta g)) - v(u(\alpha f + \beta g))
                = u(\alpha v(f) + \beta v(g)) - v(\alpha u(f)  + \beta u(g)) \\
                =&\ \alpha u(v(f)) + \beta u(v(g)) - \alpha v(u(f)) - \beta v(u(g)) \\
            \alpha [u,v](f) + \beta [u,v](g) = &\ 
                \alpha [u(v(f)) - v(u(f))] + \beta[u(v(g)) - v(u(g))] \\
                =&\ \alpha u(v(f)) + \beta u(v(g)) - \alpha v(u(f)) - \beta v(u(g))
        
        再证 :math:`[u,v](fg) = f|_p [u,v](g) + g|_p [u,v](f)`
        
        .. math:: 
            [u,v](fg) =&\ u(v(fg)) - v(u(fg)) = u[f| _p v(g) + g| _p v(f)] - v[f| _p u(g) + g|_p u(f)] \\
                =&\ f| _p u(v(g)) + g| _p u(v(f)) - f| _p v(u(g)) - g|_p v(u(f)) \\
            f| _p [u,v](g) + g| _p [u,v](f) =&\ f| _p [u(v(g)) - v(u(g))] + g| _p [u(v(f)) - v(u(f))] \\
                =&\ f| _p u(v(g)) + g| _p u(v(f)) - f| _p v(u(g)) - g|_p v(u(f))
    
    (b)

    .. math:: [[u,v], w](f) =&\ [u,v](w(f)) - w([u,v](f)) = \color{red}{u(v(w(f)))} \color{blue}{- v(u(w(f)))} \color{green}{- w(u(v(f)))} + \color{orange}{w(v(u(f)))} \\
              [[w,u], v](f) =&\ [w,u](v(f)) - v([w,u](f)) = \color{green}{w(u(v(f)))} \color{black}{- u(w(v(f)))} \color{purple}{- v(w(u(f)))} \color{blue}{+ v(u(w(f)))} \\
              [[v,w], u](f) =&\ [v,w](u(f)) - u([v,w](f)) = \color{purple}{v(w(u(f)))} \color{orange}{- w(v(u(f)))} \color{red}{-u(v(w(f)))} \color{black}{+ u(w(v(f)))}

.. admonition:: 题目 2.9

    设 :math:`\{ r, \varphi \}` 为 :math:`\mathbb{R}^2` 中某开集 (坐标域) 上的极坐标, :math:`\{ x, y \}` 为自然坐标,

    (a) 写出极坐标系的坐标基矢 :math:`\partial/\partial r` 和 :math:`\partial/\partial \varphi` (作为坐标域上的矢量场) 用 :math:`\partial/\partial x, \partial/\partial y` 展开的表达式.
    (b) 求矢量场 :math:`[\partial/\partial r, \partial/\partial x]` 用 :math:`\partial/\partial x, \partial/\partial y` 展开的表达式.
    (c) 令 :math:`\hat{e}_r \equiv \partial/\partial r, \hat{e}_\varphi \equiv r^{-1}\partial/\partial \varphi`, 求 :math:`[\hat{e}_r, \hat{e}_\varphi]` 用 :math:`\partial/\partial x, \partial/\partial y` 展开的表达式.

.. admonition:: 题解 2.9

    (a) 利用 :math:`x(r, \varphi) = r\cos\varphi,\quad y(r, \varphi) = r\sin\varphi`
    
        .. math:: \frac{\partial}{\partial r} =&\ \frac{\partial x(r, \varphi)}{\partial r} \frac{\partial}{\partial x}
            + \frac{\partial y(r, \varphi)}{\partial r} \frac{\partial}{\partial y} = \cos\varphi \frac{\partial}{\partial x}  + \sin\varphi \frac{\partial}{\partial y} \\
            \frac{\partial}{\partial \varphi} =&\ \frac{\partial x(r, \varphi)}{\partial \varphi} \frac{\partial}{\partial x} + \frac{\partial y(r, \varphi)}{\partial \varphi} \frac{\partial}{\partial y} = -r\sin\varphi \frac{\partial}{\partial x} + r\cos\varphi \frac{\partial}{\partial y}
    
    (b) 利用 :math:`\frac{\partial}{\partial x}\frac{x}{r} = -\frac{x^2}{r^3} + \frac{1}{r}, \quad \frac{\partial}{\partial y}\frac{x}{r} = -\frac{xy}{r^3}`
    
        .. math:: 
            \left[ \frac{\partial}{\partial r}, \frac{\partial}{\partial \varphi} \right](f) =&\ 
            \left[ \frac{x}{r} \frac{\partial}{\partial x}  + \frac{y}{r} \frac{\partial}{\partial y}, -y \frac{\partial}{\partial x} + x \frac{\partial}{\partial y} \right](f) \\
            =&\ \left( \frac{x}{r} \frac{\partial}{\partial x}  + \frac{y}{r} \frac{\partial}{\partial y} \right)\left( -y \frac{\partial f}{\partial x} + x \frac{\partial f}{\partial y} \right) - 
            \left( -y \frac{\partial}{\partial x} + x \frac{\partial}{\partial y} \right)\left( \frac{x}{r} \frac{\partial f}{\partial x}  + \frac{y}{r} \frac{\partial f}{\partial y} \right) \\
            =&\ \color{red}{-\frac{xy}{r} \frac{\partial^2 f}{\partial x^2}}
                 \color{black}{+ \frac{x}{r}\frac{\partial f}{\partial y}}
                 \color{green}{+ \frac{x^2}{r}\frac{\partial^2 f}{\partial x\partial y}}
                  \color{orange}{-\frac{y^2}{r} \frac{\partial^2 f}{\partial x\partial y}} \color{black}{ -\frac{y}{r}
            \frac{\partial f}{\partial x}} \color{blue}{+ \frac{xy}{r} \frac{\partial^2 f}{\partial y^2}} \\
            &\ -\Bigg[ \color{red}{-\frac{xy}{r} \frac{\partial^2 f}{\partial x^2}}
                \color{black}{-y\left(-\frac{x^2}{r^3} + \frac{1}{r}\right)
                \frac{\partial f}{\partial x} }
                \color{orange}{-\frac{y^2}{r} \frac{\partial^2 f}{\partial x\partial y}}
                \color{black}{-y \left( -\frac{xy}{r^3}\right)\frac{\partial f}{\partial y}} \\
            &\  \color{green}{+ \frac{x^2}{r} \frac{\partial^2 f}{\partial x\partial y}} 
                \color{black}{+x \left( -\frac{xy}{r^3}\right)\frac{\partial f}{\partial x} }
                \color{blue}{+ \frac{xy}{r} \frac{\partial^2 f}{\partial y^2}} 
                \color{black}{+ x \left( -\frac{y^2}{r^3} + \frac{1}{r}\right) \frac{\partial f}{\partial y}} \Bigg] \\
            =&\ \frac{x}{r}\frac{\partial f}{\partial y} -\frac{y}{r} \frac{\partial f}{\partial x} 
                -\Bigg[ \left(\color{blue}{\frac{x^2y}{r^3}} \color{black}{- \frac{y}{r}}\right) \frac{\partial f}{\partial x}  
                 \color{red}{+\frac{xy^2}{r^3}\frac{\partial f}{\partial y}}
                 \color{blue}{-\frac{x^2y}{r^3}\frac{\partial f}{\partial x}}
                 \color{black}{+}\left( \color{red}{-\frac{xy^2}{r^3}} \color{black}{+ \frac{x}{r}}\right) \frac{\partial f}{\partial y}
                 \Bigg] = 0
    
    (c)
    
    .. math:: 
        \left[ \frac{\partial}{\partial r}, \frac{1}{r} \frac{\partial}{\partial \varphi} \right](f)
            = \frac{\partial}{\partial r} \left( \frac{1}{r} \frac{\partial f}{\partial \varphi} \right)
                - \frac{1}{r} \frac{\partial}{\partial \varphi} \left(  \frac{\partial f }{\partial r}\right) 
            = -\frac{1}{r^2} \frac{\partial f}{\partial \varphi} + \frac{1}{r} \frac{\partial^2 f}{\partial r\partial \varphi} - \frac{1}{r} \frac{\partial^2 f }{\partial \varphi\partial r} = 
                -\frac{1}{r^2} \frac{\partial}{\partial \varphi} (f)

.. admonition:: 题目 2.10

    设 :math:`u, v` 为 :math:`M` 上的矢量场, 试证 :math:`[u, v]` 在任何坐标基底的分量满足
    
    .. math:: [u,v]^\mu = u^\nu \frac{\partial v^\mu}{\partial x^\nu} - v^\mu \frac{\partial u^\mu}{\partial x^\nu}

    提示: 用 :math:`v=v^\mu X_\mu,\quad v^\mu = v(x^\mu)`.

.. admonition:: 题解 2.10

    .. math:: 
        [u,v]^\mu =&\ [u,v](x^\mu) = u(v(x^\mu) - v(u(x^\mu) = u(v^\mu) - v(u^\mu) \\
         =&\ \left(u^\nu \frac{\partial}{\partial x^\nu}\right)(v^\mu) - \left(v^\nu \frac{\partial}{\partial x^\nu}\right)(u^\mu) = u^\nu \frac{\partial v^\mu}{\partial x^\nu} - v^\mu \frac{\partial u^\mu}{\partial x^\nu}

.. admonition:: 题目 2.11

    设 :math:`\{ e_\mu \}` 为 :math:`V` 的基底, :math:`\{ e^{\mu*} \}` 为其对偶基底, :math:`v\in V,\quad \omega \in V^*`, 试证
    
    .. math:: \omega = \omega (e_\mu) e^{\mu*},\quad v=e^{\mu*}(v)e_\mu

.. admonition:: 题解 2.11

    此为 [定理2-3-1] 证明的一部分. 对第一式, 需证明其作用到任一矢量空间基矢得到的结果, 左右两边都一样. 利用定义 :math:`e^{\mu*}(e_\nu) := \xtensor{\delta}{^\mu}{_\nu}`

    .. math::
        \omega (e_\mu) e^{\mu*}(e_\nu) =&\ \omega (e_\mu) \xtensor{\delta}{^\mu}{_\nu} = \omega (e_\nu) \\
        e^{\mu*}(v)e_\mu =&\ e^{\mu*}(v^\nu e_\nu)e_\mu = v^\nu \xtensor{\delta}{^\mu}{_\nu} e_\mu = v^\mu e_\mu = v

.. admonition:: 题目 2.12

    试证 :math:`\omega'_\nu = \frac{\partial x^\mu}{\partial x'^\nu} \omega_\mu` (定理2-3-4)

.. admonition:: 题解 2.12
    
    利用 [定理2-3-3] 令 :math:`f = x'^\nu` 得 :math:`\D x'^\nu = \frac{\partial x'^\nu}{\partial x^\mu} \D x^\mu`
    
    .. math:: 
        \omega = \omega_\mu \D x^\mu =&\ \omega'_\nu \D x'^\nu = \omega'_\nu \frac{\partial x'^\nu}{\partial x^\mu} \D x^\mu \\
        \omega_\mu =&\ \omega'_\nu \frac{\partial x'^\nu}{\partial x^\mu}

.. admonition:: 题目 2.19

    (a) 用张量变换律求出3维欧氏度规在球坐标系中的全部分量 :math:`g'_{\mu\nu}`.
    (b) 已知 4 维闵氏度规 :math:`g` 在洛伦兹系中的线元表达式为 :math:`\D s^2 = -\D t^2 + \D x^2 + \D y^2 + \D z^2`, 求 :math:`g` 及其逆 :math:`g^{-1}` 在新坐标系 :math:`\{t',x',y',z'\}` 的全部分量 :math:`g'_{\mu\nu}` 及 :math:`g'^{\mu\nu}`, 该新坐标系定义如下:
    
        .. math:: t' = t, \ z' = z, \ x' = (x^2 + y^2)^{1/2}\cos (\varphi - \omega t), \\
            y' = (x^2 + y^2)^{1/2} \sin (\varphi -\omega t), \quad \omega = \mathrm{const}
        
        其中 :math:`\varphi` 满足 :math:`\cos\varphi = y(x^2+y^2)^{-1/2}, \quad \sin\varphi = x(x^2+y^2)^{-1/2}`. 提示: 先求 :math:`g'^{\mu\nu}` 再求 :math:`g'_{\mu\nu}`.

.. admonition:: 题解 2.19

    (a) 张量变换律为 :math:`g'_{\mu\nu} = \frac{\partial x^\rho}{\partial x'^\mu}\frac{\partial x^\sigma}{\partial x'^\nu} g_{\rho\sigma}`.
    
    .. math::
        x = &\ r\sin\theta\cos\varphi,\quad y = r\sin\theta\sin\varphi,\quad z = r\cos\theta \\
        g'_{rr} =&\ \frac{\partial x^\rho}{\partial r}\frac{\partial x^\rho}{\partial r} g_{\rho\rho}
            = (\sin\theta\cos\varphi)^2 + (\sin\theta\sin\varphi)^2 + (\cos\theta)^2 = 1 \\
        g'_{r\theta} =&\ (\sin\theta\cos\varphi)(r\cos\theta\cos\varphi) + (\sin\theta\sin\varphi)(r\cos\theta\sin\varphi) - (\cos\theta)r\sin\theta \\
        =&\ r\cos\theta\sin\theta\left(\cos^2\varphi + \sin^2\varphi\right) - r\cos\theta\sin\theta = 0 \\
        g'_{r\varphi} =&\ (\sin\theta\cos\varphi)(-r\sin\theta\sin\varphi) + (\sin\theta\sin\varphi)(r\sin\theta\cos\varphi) = 0 \\
        g'_{\theta\theta} =&\ (r\cos\theta\cos\varphi)^2 + (r\cos\theta\sin\varphi)^2 + (-r\sin\theta)^2
            = r^2\left(\cos\theta^2 + \sin\theta^2 \right) = r^2 \\
        g'_{\theta\varphi} =&\ (r\cos\theta\cos\varphi)(-r\sin\theta\sin\varphi) + (r\cos\theta\sin\varphi)
            (r\sin\theta\cos\varphi) + (-r\sin\theta)\cdot 0 = 0 \\
        g'_{\varphi\varphi} =&\ (-r\sin\theta\sin\varphi)^2 + (r\sin\theta\cos\varphi)^2 = r^2\sin^2\theta
    
    (b) 张量变换律为 :math:`g'^{\mu\nu} = \frac{\partial x'^\mu}{\partial x^\rho}\frac{\partial x'^\nu}{\partial x^\sigma} g^{\rho\sigma}`. 令 :math:`r = (x^2 + y^2)^{1/2}`. 利用 :math:`\frac{\partial r}{\partial x} = \frac{x}{r}`. 考虑积化和差公式

    .. math:: 
        \sin\alpha\cos\beta =&\ \frac{1}{2} [\sin(\alpha + \beta) + \sin(\alpha - \beta)] \\
        \cos\alpha\sin\beta =&\ \frac{1}{2} [\sin(\alpha + \beta) - \sin(\alpha - \beta)] \\
        \cos\alpha\cos\beta =&\ \frac{1}{2} [\cos(\alpha + \beta) + \cos(\alpha - \beta)] \\
        \sin\alpha\sin\beta =&\ -\frac{1}{2} [\cos(\alpha + \beta) - \cos(\alpha - \beta)]
    
    与 :math:`\varphi` 相关的导数为

    .. math::
        \frac{\partial \cos\varphi}{\partial x} =&\ \frac{\partial }{\partial x} \frac{y}{r} = -\frac{xy}{r^3}
            = -\frac{y}{r^2}\sin\varphi \\
        \frac{\partial \sin\varphi}{\partial x} =&\ \frac{\partial }{\partial x} \frac{x}{r} = -\frac{x^2}{r^3} + \frac{1}{r} = \frac{y^2}{r^3} = \frac{y}{r^2}\cos\varphi \\
        \frac{\partial \cos\varphi}{\partial y} =&\ \frac{\partial }{\partial y} \frac{y}{r} = \frac{x^2}{r^3}
            = \frac{x}{r^2}\sin\varphi \\
        \frac{\partial \sin\varphi}{\partial y} =&\ \frac{\partial }{\partial y} \frac{x}{r} =  -\frac{xy}{r^3} = -\frac{x}{r^2}\cos\varphi \\
        \Rightarrow &\ \frac{\partial \varphi}{\partial x} = \frac{y}{r^2},\quad \frac{\partial \varphi}{\partial y} = -\frac{x}{r^2}
    
    从而

    .. math::
        \frac{\partial x'}{\partial x} =&\ \frac{\partial}{\partial x} r \cos(\varphi - \omega t) 
            = \cos(\varphi - \omega t) \frac{\partial r}{\partial x} + r\frac{y}{r^2}[-\sin(\varphi - \omega t)] = \frac{x\cos(\varphi - \omega t)}{r} - \frac{y\sin(\varphi - \omega t)}{r} \\
            =&\ \sin\varphi\cos(\varphi - \omega t) - \cos\varphi\sin(\varphi - \omega t) \\
            =&\ \frac{1}{2}[\sin(2\varphi - \omega t) + \sin(\omega t)] - \frac{1}{2}[\sin(2\varphi - \omega t) - \sin(\omega t)] = \sin(\omega t) \\
        \frac{\partial y'}{\partial y} =&\ \frac{\partial}{\partial y} r \sin(\varphi - \omega t) 
            = \sin(\varphi - \omega t) \frac{\partial r}{\partial y} - r\frac{x}{r^2}\cos(\varphi - \omega t) = \frac{y\sin(\varphi - \omega t)}{r} - \frac{x\cos(\varphi - \omega t)}{r} \\
            =&\ \cos\varphi\sin(\varphi - \omega t) - \sin\varphi\cos(\varphi - \omega t) = -\sin(\omega t) \\
        \frac{\partial x'}{\partial y} =&\ \frac{\partial}{\partial y} r \cos(\varphi - \omega t) 
            = \cos(\varphi - \omega t) \frac{\partial r}{\partial y} + r[-\frac{x}{r^2}][-\sin(\varphi - \omega t)] = \frac{y\cos(\varphi - \omega t)}{r} + \frac{x\sin(\varphi - \omega t)}{r} \\
            =&\ \cos\varphi\cos(\varphi - \omega t) + \sin\varphi\sin(\varphi - \omega t) = \cos(\omega t) \\
        \frac{\partial y'}{\partial x} =&\ \frac{\partial}{\partial x} r \sin(\varphi - \omega t) 
            = \sin(\varphi - \omega t) \frac{\partial r}{\partial x} + r\frac{y}{r^2}\cos(\varphi - \omega t) = \frac{x\sin(\varphi - \omega t)}{r} + \frac{y\cos(\varphi - \omega t)}{r} \\
            =&\ \sin\varphi\sin(\varphi - \omega t) + \cos\varphi\cos(\varphi - \omega t) = \cos(\omega t)
    
    .. math::
        g'^{t't'} =&\ \frac{\partial t'}{\partial x^\rho}\frac{\partial t'}{\partial x^\rho} g^{\rho\rho}
            = (-1)\cdot 1 \cdot 1 = -1 \\
        g'^{t'x'} =&\ \frac{\partial t'}{\partial x^\rho}\frac{\partial x'}{\partial x^\rho} g^{\rho\rho}
            = (-1)\cdot 1 \cdot \omega r\sin(\varphi -\omega t) = -\omega y' \\
        g'^{t'y'} =&\ \frac{\partial t'}{\partial x^\rho}\frac{\partial y'}{\partial x^\rho} g^{\rho\rho}
            = (-1)\cdot 1 \cdot (-\omega) r\cos(\varphi -\omega t) = \omega x' \\
        g'^{t'z'} =&\ \frac{\partial t'}{\partial x^\rho}\frac{\partial z'}{\partial x^\rho} g^{\rho\rho}
            = 0 \\
        g'^{x'x'} =&\ -[\omega r\sin(\varphi -\omega t)]^2 + \sin^2(\omega t) + \cos^2(\omega t)
            = 1 - \omega^2 r^2\sin^2(\varphi -\omega t) = 1 - \omega^2y'^2 \\
        g'^{x'y'} =&\ -[\omega r\sin(\varphi -\omega t)][(-\omega) r\cos(\varphi -\omega t)] + \sin(\omega t)\cos(\omega t) - \sin(\omega t)\cos(\omega t) \\
        =&\ \omega^2 r^2\sin(\varphi -\omega t)\cos(\varphi -\omega t) = \omega^2x'y' \\
        g'^{x'z'} =&\ 0 \\
        g'^{y'y'} =&\ -[(-\omega) r\cos(\varphi -\omega t)]^2 + \cos^2(\omega t) + [-\sin^2(\omega t)]^2
            = 1 - \omega^2 r^2\cos(\varphi -\omega t) = 1 - \omega^2x'^2\\
        g'^{y'z'} =&\ 0 \\
        g'^{z'z'} =&\ 1
    
    所以
    
    .. math::
        g' = \begin{pmatrix} -1 & -\omega y' & \omega x' & 0 \\ -\omega y' & 1 - \omega^2y'^2 & \omega^2x'y' & 0 \\
          \omega x' & \omega^2x'y' & 1 - \omega^2x'^2 & 0 \\ 0 & 0 & 0 & 1 \end{pmatrix},\quad
        g'^{-1} = \begin{pmatrix} \omega^2\left(x'^2 + y'^2\right)-1 & -\omega y' & \omega x' & 0 \\ -\omega y' & 1 & 0 & 0 \\
          \omega x' & 0 & 1 & 0 \\ 0 & 0 & 0 & 1 \end{pmatrix}
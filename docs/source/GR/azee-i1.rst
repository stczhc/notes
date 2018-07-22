
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

.. note::
    Einstein Gravity in a Nutshell, Anthony Zee, 2013.

I.1 牛顿定律
------------

牛顿定律可以写为

.. math:: m \frac{\D^2 x^i}{\D t^2} = F^i

其中上标(index) :math:`i = 1,2,3,\cdots, D` (:math:`D` 维空间). 注意这里的 :math:`x` 有时表示 :math:`x` 坐标轴, 取值是 :math:`-\infty` 到 :math:`+\infty`, 它不是时间的函数. 但有时又表示质点的位置, 这时它是时间的函数. 一般力 :math:`F` 只依赖于  :math:`x` 而不会依赖于 :math:`t` 或 :math:`\frac{\D x}{\D t}` . 复杂的力 (有时间或速度依赖的) 通常是由于在某些特殊情况做了一些近似.

.. admonition:: 例1

    在一维空间, 一个连在弹簧上的质点往复振动.

.. admonition:: 解答

    牛顿方程为 :math:`m\frac{\D^2 x}{\D t^2}=-kx` . 方程的解为 :math:`x(t) = a\cos\omega t + b\sin\omega t` , 其中  :math:`\omega=\sqrt{\frac{k}{m}}` . 注意回复力的方向和质点的坐标正负相反 (:math:`F(x)=-kx`). 

----------

.. admonition:: 例2

    在 :math:`t=0` 对一个一维质点施加瞬时作用力.

.. admonition:: 解答

    施加的作用力为 :math:`F(t) = w\delta(t)`. 其中 :math:`\delta(t)` 满足 :math:`\int \delta(t) \D t = 1` 牛顿方程为 :math:`\frac{\D^2 x}{\D t^2}=\frac{w}{m}\delta(t)`. 求解这个方程
    
    .. math:: v_+ - v_- = \int \frac{w}{m}\delta(t) \D t = \frac{w}{m}

    注意此时能量和动量都不守恒(因为力不是保守力, 保守力不应该依赖于时间). 一般地, 一个依赖于时间的力意味着这个描述不是动力学完全的(比如, 施加作用力的对象没有包括在系统中).

-----------

.. admonition:: 例3

    一个行星系统可以近似表示为一个质量为 :math:`m` 的质点围绕质量为 :math:`M` 的恒星运动.

.. admonition:: 行星运动方程

    根据万有引力方程和牛顿定律
    
    .. math:: m \frac{\D^2 \bm{r}}{\D t} = -GMm \frac{\bm{r}}{r^3}
        :label: eq1
    
    其中 :math:`\bm{r} = (x,y,z), r = \sqrt{\bm{r}\cdot\bm{r}} = \sqrt{x^2+y^2+z^2}`. 在概念上, :eq:`eq1` 中 :math:`m` 表示两种不同的质量. 左边惯性质量(inertial mass)描述物体不想运动的程度(the reluctance of the object to move). 右边引力质量(gravitational mass)描述物体对引力场反应的强度(how strongly the object responds to a gravitational field). :eq:`eq1` 中我们可以消去 :math:`m`, 得到
    
    .. math:: \ddot{\bm{r}}=-\kappa \frac{\bm{r}}{r^3}
    
    其中 :math:`\kappa=GM`.

.. admonition:: 行星运动方程的求解(暴力法)

    由于是有心力, 根据对称性我们知道运动是限制在一个平面的, 假定为 :math:`(x-y)` 平面. 令 :math:`z=0` 得
    
    .. math:: \ddot{x} = -\kappa x/r^3 \quad \ddot{y} = -\kappa y/r^3
        :label: eq3
    
    改为极坐标
    
    .. math::
        :nowrap:
        
        \begin{equation*}
            x =&\ r\cos\theta \\
            y =&\ r\sin\theta \\
            \dot{x} =&\ \dot{r}\cos\theta -r \dot{\theta}\sin\theta  \\
            \ddot{x} =&\ \ddot{r}\cos\theta - 2\dot{r}\dot{\theta}\sin\theta
            - r \ddot{\theta}\sin\theta - r \dot{\theta}^2\cos\theta\\
            \ddot{y} =&\ \ddot{r}\sin\theta + 2\dot{r}\dot{\theta}\cos\theta
            + r \ddot{\theta}\cos\theta - r \dot{\theta}^2\sin\theta
        \end{equation*}
    
    把 :eq:`eq3` 中的两式分别乘以 :math:`\cos\theta` 和 :math:`\sin\theta` 再相加, 得
    
    .. math::
        \ddot{x}\cos\theta =&\ \ddot{r}\cos^2\theta - 2\dot{r}\dot{\theta}\sin\theta\cos\theta
        - r \ddot{\theta}\sin\theta\cos\theta - r \dot{\theta}^2\cos^2\theta = -\kappa x\cos\theta/r^3\\
        \ddot{y}\sin\theta =&\ \ddot{r}\sin^2\theta + 2\dot{r}\dot{\theta}\cos\theta\sin\theta
        + r \ddot{\theta}\cos\theta\sin\theta - r \dot{\theta}^2\sin^2\theta =  -\kappa y\sin\theta/r^3 \\
        -\kappa \frac{x\cos\theta}{r^3} =&\ -\kappa \frac{x\cos^2\theta}{xr^2} \\
        -\kappa \frac{y\sin\theta}{r^3} =&\ -\kappa \frac{y\sin^2\theta}{yr^2} \\
        \ddot{r} - r \dot{\theta}^2 =&\ -\kappa /r^2
        :label: eqx
    
    另一方面, 把 :eq:`eq3` 中的两式分别乘以 :math:`\sin\theta` 和 :math:`\cos\theta` 再相减, 得
    
    .. math::
        :nowrap:
        
        \begin{equation*}
            \ddot{x}\sin\theta =&\ \ddot{r}\cos\theta\sin\theta - 2\dot{r}\dot{\theta}\sin^2\theta
            - r \ddot{\theta}\sin^2\theta - r \dot{\theta}^2\cos\theta\sin\theta = -\kappa x\sin\theta/r^3\\
            \ddot{y}\cos\theta =&\ \ddot{r}\sin\theta\cos\theta + 2\dot{r}\dot{\theta}\cos^2\theta
            + r \ddot{\theta}\cos^2\theta - r \dot{\theta}^2\sin\theta\cos\theta = -\kappa y\cos\theta/r^3 \\
            -\kappa \frac{x\sin\theta}{r^3} =&\ -\kappa \frac{r\cos\theta\sin\theta}{r^3} \\
            -\kappa \frac{y\cos\theta}{r^3} =&\ -\kappa \frac{r\sin\theta\cos\theta}{r^3} \\
            2 \dot{r}\dot{\theta} + r \ddot{\theta} =&\ 0 \\
            \frac{\D}{\D t}\left( r^2\dot{\theta} \right) =&\ 2 r\dot{r}\dot{\theta} + r^2 \ddot{\theta} = 0
        \end{equation*}
    
    即单位质量的角动量 :math:`l=r^2\dot{\theta}` 是守恒量(常数). [#l]_ 代入 :eq:`eqx` 得
    
    .. math:: \ddot{r} - r \left(\frac{l}{r^2}\right)^2 = -\frac{\kappa}{r^2}

    整理得
    
    .. math:: \ddot{r} = \frac{l^2}{r^3} -\frac{\kappa}{r^2} \equiv -\frac{\D u(r)}{\D r}

    其中 :math:`u(r)` 表示单位质量的势能. 有 :math:`\ddot{r} = f(r) = F(r)/m` 和 :math:`f(r) = -\frac{\D u(r)}{\D r}`. 按定义
    
    .. math::
        u(r) = \frac{l^2}{2r^2} -\frac{\kappa}{r}
        :label: ur
    
    利用对 :math:`r` 积分和对时间积分的链式法则, 得
    
    .. math::
        \dot{r}\ddot{r} =&\ -\frac{\D r}{\D t}\frac{\D u(r)}{\D r} \\
        \dot{r}\ddot{r} =&\ \frac{1}{2} \frac{\D (\dot{r}^2)}{\D t} \\
        \int \frac{1}{2} \frac{\D (\dot{r}^2)}{\D t} \D t =&\ \frac{\dot{r}^2}{2} + C_1\\
        \int \frac{\D r}{\D t}\frac{\D u(r)}{\D r} \D t =&\ u(r) + C_2 \\
        \Rightarrow\quad\frac{\dot{r}^2}{2} + u(r) =&\ \epsilon
        :label: eqp
    
    其中 :math:`\epsilon = E/m` (能量密度) 为积分常数. :eq:`eqp` 为"动能+势能=总能量"的形式, 根据总能量 :math:`\epsilon` 的大小, 决定了半径是在两个可能值之间变化(椭圆轨道),还是为常数(圆轨道), 或者是非束缚态.

.. admonition:: 行星运动方程的求解(分析力学方法)

    由万有引力 :math:`F(\bm{r})=-K\bm{r}/r^3` (其中 :math:`K=m\kappa=GMm`) 可以求对应的势能
    
    .. math:: F(\bm{r}) = -\frac{\D U(\bm{r})}{\D \bm{r}}\quad\Rightarrow \quad
        U(\bm{r}) = -\frac{K}{r}
    
    注意
    
    .. math:: \frac{\D (1/r)}{\D x} = \frac{\D (1/\sqrt{x^2+y^2+z^2})}{\D x} = -\frac{2x}{2(x^2+y^2+z^2)\sqrt{x^2+y^2+z^2}} = -\frac{x}{r^3}

    应用到 :math:`\bm{r} = (x, y,z)` 得
    
    .. math:: \frac{\D}{\D \bm{r}} \left( \frac{1}{r} \right) = - \frac{\bm{r}}{r^3}
    
    注意这个只是三位情况的一个证明. 后面章节 :eq:`vrnd` 式考虑了一般维度的情况.
    系统的拉格朗日量为 (根据理论力学拉格朗日量公式, 参见经典力学部分 :eq:`eqlcylin`)
    
    .. math:: L(r,\theta) = T - U = \frac{m}{2}\left( \dot{r}^2 + r^2 \dot{\theta}^2 \right) + \frac{K}{r}

    运动方程为 (参见经典力学部分 :eq:`lagrange`)
    
    .. math::
            \frac{\D }{\D t} \frac{\partial L}{\partial \dot{r}} - \frac{\partial L}{\partial r} =&\ 0 
            \Rightarrow &\ m \ddot{r} - mr\dot{\theta}^2 +\frac{K}{r^2} &= 0 \\
            \frac{\D }{\D t} \frac{\partial L}{\partial \dot{\theta}} - \frac{\partial L}{\partial \theta} =&\ 0 
            \Rightarrow &\ \frac{\D }{\D t} (mr^2 \dot{\theta}) = 2mr\dot{r} \dot{\theta} + mr^2 \ddot{\theta} &= 0
    
    和之前得到的运动方程一样. 

.. admonition:: 闭合轨道

    在 :eq:`eqp` 中解得 :math:`\dot{r}=\pm\sqrt{2[\epsilon - u(r)]}` 并除以 :math:`\dot{\theta} = l/r^2`, 得
    
    .. math:: \frac{\D r}{\D \theta} = \pm\frac{r^2\sqrt{2[\epsilon - 2u(r)]}}{l}

    令 :math:`u = 1/r` (注意区分这个 :math:`u` 和 :math:`u(r)` 表示两个不同的量), 并利用 :eq:`ur` 可以把 :math:`2[\epsilon - u(r)]` 写为
    
    .. math::
            2[\epsilon - u(r)] = 2\epsilon - 2 \left[ \frac{l^2}{2r^2} -\frac{\kappa}{r} \right]
            = 2\epsilon - l^2u^2 + 2\kappa u \equiv -l^2 (u-u_{\mathrm{max}})(u-u_{\mathrm{min}})
    
    再令 :math:`u = u_{\mathrm{min}} + (u_{\mathrm{max}} - u_{\mathrm{min}})\sin^2\zeta`, 得 [#tri1]_
    
    .. math::
        :nowrap:
        
        \begin{equation*}
            \D u =&\ \D [u_{\mathrm{min}} + (u_{\mathrm{max}} - u_{\mathrm{min}})\sin^2\zeta] = (u_{\mathrm{max}} - u_{\mathrm{min}})2\sin\zeta\cos\zeta \D \zeta \\
            u_{\mathrm{max}} - u =&\ u_{\mathrm{max}} - u_{\mathrm{min}} - (u_{\mathrm{max}} - u_{\mathrm{min}})\sin^2\zeta = (u_{\mathrm{max}} - u_{\mathrm{min}})\cos^2\zeta \\
            u - u_{\mathrm{min}} =&\ (u_{\mathrm{max}} - u_{\mathrm{min}})\sin^2\zeta \\
            (u_{\mathrm{max}} - u)(u - u_{\mathrm{min}}) =&\ [(u_{\mathrm{max}} - u_{\mathrm{min}})\sin\zeta\cos\zeta]^2 \\
            \D u =&\ \D (1/r) = -\D r/r^2
        \end{equation*}
    
    从而

    .. math::
        \Delta \theta =&\ 2\int_{r_{\mathrm{min}}}^{r_{\mathrm{max}}} \frac{\D \theta}{\D r} \D r 
        = 2 \int_{u_{\mathrm{max}}}^{u_{\mathrm{min}}} \frac{l \D r}{r^2\sqrt{2\epsilon - l^2u^2 + 2\kappa u }} \\
        =&\ 2 \int_{u_{\mathrm{min}}}^{u_{\mathrm{max}}} \frac{l r^2 \D u}{lr^2\sqrt{(u_{\mathrm{max}}-u)(u-u_{\mathrm{min}}) }}
        = 4 \int_{0}^{\pi/2} \frac{(u_{\mathrm{max}} - u_{\mathrm{min}})\sin\zeta\cos\zeta \D \zeta}{(u_{\mathrm{max}} - u_{\mathrm{min}})\sin\zeta\cos\zeta} \\
        =&\ 4 \int_{0}^{\pi/2} \D \zeta = 2\pi
        :label: rthetaclose
    
    一般情况下做有界运动的质点轨道不是封闭的. 只有两种类型的有心力场, 其中的一切有界运动的轨道是封闭的, 这两种场的势能与 :math:`\frac{1}{r}` 或 :math:`r^2` (空间振子)成正比.

.. [#l] [朗道力学P31] 无限邻近的两个径矢和轨道微元围成的扇形面积等于 :math:`\frac{1}{2} \bm{r}^2 \D \theta` 将它表示为 :math:`\D f`, 其中 :math:`\dot{f}` 称为掠面速度. 角动量守恒 :math:`L=\D (mr^2\dot{\theta}) = 2m \dot{f} = \mathrm{const}` 意味着掠面速度为常数, 即在相等时间间隔内质点径矢扫过相同的面积(开普勒第二定律).

.. [#tri1] 三角函数公式(此处似乎没用到) :math:`\sin 2\alpha = 2\sin\alpha\cos\alpha, \quad \cos 2\alpha = 1-2\sin^2\alpha = 2\cos^2\alpha - 1`.

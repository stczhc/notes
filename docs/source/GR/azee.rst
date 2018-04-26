
广义相对论(徐一鸿)
==================

.. note::
    Einstein Gravity in a Nutshell, Anthony Zee, 2013.

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
    
    .. admonition:: 动力学方程

        根据万有引力方程和牛顿定律
        
        .. math:: m \frac{\D^2 \bm{r}}{\D t} = -GMm \frac{\bm{r}}{r^3}
            :label: eq1
        
        其中 :math:`\bm{r} = (x,y,z), r = \sqrt{\bm{r}\cdot\bm{r}} = \sqrt{x^2+y^2+z^2}`. 在概念上, :eq:`eq1` 中 :math:`m` 表示两种不同的质量. 左边惯性质量(inertial mass)描述物体不想运动的程度(the reluctance of the object to move). 右边引力质量(gravitational mass)描述物体对引力场反应的强度(how strongly the object responds to a gravitational field). :eq:`eq1` 中我们可以消去 :math:`m`, 得到
        
        .. math:: \ddot{\bm{r}}=-\kappa \frac{\bm{r}}{r^3}
        
        其中 :math:`\kappa=GM`.
    
    .. admonition:: 动力学方程的求解(暴力法)

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
           :nowrap:
           
           \begin{equation*}
              \ddot{x}\cos\theta =&\ \ddot{r}\cos^2\theta - 2\dot{r}\dot{\theta}\sin\theta\cos\theta
                - r \ddot{\theta}\sin\theta\cos\theta - r \dot{\theta}^2\cos^2\theta = -\kappa x\cos\theta/r^3\\
              \ddot{y}\sin\theta =&\ \ddot{r}\sin^2\theta + 2\dot{r}\dot{\theta}\cos\theta\sin\theta
                + r \ddot{\theta}\cos\theta\sin\theta - r \dot{\theta}^2\sin^2\theta =  -\kappa y\sin\theta/r^3 \\
              -\kappa \frac{x\cos\theta}{r^3} =&\ -\kappa \frac{x\cos^2\theta}{xr^2} \\
              -\kappa \frac{y\sin\theta}{r^3} =&\ -\kappa \frac{y\sin^2\theta}{yr^2} \\
              \ddot{r} - r \dot{\theta}^2 =&\ -\kappa /r^2
           \end{equation*}
           
        .. math::
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
        
        即角动量 :math:`l=r^2\dot{\theta}` 是守恒量(常数). 代入 :eq:`eqx` 得
        
        .. math:: \ddot{r} - r \left(\frac{l}{r^2}\right)^2 = -\frac{\kappa}{r^2}

        整理得
        
        .. math:: \ddot{r} = \frac{l^2}{r^3} -\frac{\kappa}{r^2} \equiv -\frac{\D u(r)}{\D r}

        其中 :math:`u(r)` 表示单位质量的势能. 有 :math:`\ddot{r} = f(r) = F(r)/m` 和 :math:`f(r) = -\frac{\D u(r)}{\D r}`. 按定义 :math:`u(r) = \frac{l^2}{2r^2} -\frac{\kappa}{r}`. 利用对 :math:`r` 积分和对时间积分的链式法则, 得
        
        .. math::
           :nowrap:
           
           \begin{equation*}
              \dot{r}\ddot{r} =&\ -\frac{\D r}{\D t}\frac{\D u(r)}{\D r} \\
              \dot{r}\ddot{r} =&\ \frac{1}{2} \frac{\D (\dot{r}^2)}{\D t} \\
              \int \frac{1}{2} \frac{\D (\dot{r}^2)}{\D t} \D t =&\ \frac{\dot{r}^2}{2} + C_1\\
              \int \frac{\D r}{\D t}\frac{\D u(r)}{\D r} \D t =&\ u(r) + C_2 \\
              \Rightarrow\quad\frac{\dot{r}^2}{2} + u(r) =&\ \epsilon
           \end{equation*}
        
        .. math::
           :label: eqp
        
        其中 :math:`\epsilon = E/m` (能量密度) 为积分常数. :eq:`eqp` 为"动能+势能=总能量"的形式, 根据总能量 :math:`\epsilon` 的大小, 决定了半径是在两个可能值之间变化(椭圆轨道),还是为常数(圆轨道), 或者是非束缚态.

    .. admonition:: 动力学方程的求解(分析力学方法)

        由万有引力 :math:`F(\bm{r})=-K\bm{r}/r^3` 可以求对应的势能
        
        .. math:: F(\bm{r}) = -\frac{\D U(\bm{r})}{\D \bm{r}}\quad\Rightarrow \quad
            U(\bm{r}) = -\frac{K}{r}
        
        注意
        
        .. math:: \frac{\D (1/r)}{\D x} = \frac{\D (1/\sqrt{x^2+y^2+z^2})}{\D x} = -\frac{2x}{2(x^2+y^2+z^2)\sqrt{x^2+y^2+z^2}} = -\frac{x}{r^3}
        
        系统的哈密顿量为 (根据理论力学哈密顿量公式, 参见其他章节 :eq:`eqlcylin`)
        
        .. math:: L = T - U = \frac{m}{2}\left( \dot{r}^2 + r^2 \dot{\theta}^2 \right) + \frac{K}{r}
        



        

        


        

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
    
    .. admonition:: 解答

        根据万有引力方程和牛顿定律
        
        .. math:: m \frac{\D^2 \bm{r}}{\D t} = -GMm \frac{\bm{r}}{r^3}
            :label: eq1
        
        其中 :math:`\bm{r} = (x,y,z), r = \sqrt{\bm{r}\cdot\bm{r}} = \sqrt{x^2+y^2+z^2}`. 在概念上, :eq:`eq1` 中 :math:`m` 表示两种不同的质量. 左边惯性质量(inertial mass)描述物体不想运动的程度(the reluctance of the object to move). 右边引力质量(gravitational mass)描述物体对引力场反应的强度(how strongly the object responds to a gravitational field). :eq:`eq1` 中我们可以消去 :math:`m`, 得到
        
        .. math:: \ddot{\bm{r}}=-\kappa \frac{\bm{r}}{r^3}
        
        其中 :math:`\kappa=GM`.


        
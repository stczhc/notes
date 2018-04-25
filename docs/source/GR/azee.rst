
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

.. compound::
    dfggwgwfwefwef

.. compound::

    .. admonition:: 例A

        在一维空间, 一个连在弹簧上的质点往复振动.

    .. admonition:: 解答

        牛顿方程为 :math:`m\frac{\D^2 x}{\D t^2}=-kx` . 方程的解为 :math:`x(t) = a\cos\omega t + b\sin\omega t` , 其中  :math:`\omega=\sqrt{\frac{k}{m}}` . 注意回复力的方向和质点的坐标正负相反 (:math:`F(x)=-kx`). 



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

I.2 守恒量
----------

能量守恒
^^^^^^^^

当力可以由某势能函数对坐标的导数表示

.. math:: \bm{F}(\bm{x}) = - \frac{\D V(\bm{x})}{\D \bm{x}}

可由牛顿定律推出能量守恒

.. math::
    m\frac{\D^2 \bm{x}}{\D t^2} =&\ \bm{F} = -\frac{\D V(\bm{x})}{\D \bm{x}} \\
    m\frac{\D^2 \bm{x}}{\D t^2} \cdot \frac{\D \bm{x}}{\D t} 
         =&\ -\frac{\D V(\bm{x})}{\D \bm{x}} \cdot \frac{\D \bm{x}}{\D t} \\
    \dt \left[ \frac{1}{2}m \left(\frac{\D \bm{x}}{\D t}\right)^2 + V(\bm{x}) \right] =&\ 0

若对于给定的 :math:`F` 可以找到 :math:`V`, 则称满足了积性条件. 这个条件在一般维度的情况为

.. math:: \frac{\partial F^i(\bm{x})}{\partial x^j} = \frac{\partial F^j(\bm{x})}{\partial x^i}

在三维的情况即旋度为零 :math:`\nabla \times \bm{F} = \bm{0}`.

由 :math:`r^2 = \sum_i (x^i)^2` 的微分得 :math:`2r\D r = \sum_i 2x^i\D x^i` 即

.. math:: \frac{\D r}{\D \bm{x}} = \frac{\bm{x}}{r}
    :label: dbmx

若势能只是 :math:`r` 的函数, 应用到力和势能的关系 

.. math:: \bm{F}(\bm{x}) = -\frac{\D V(r)}{\D \bm{x}} = -\frac{\D V(r)}{\D r}\frac{\D r}{\D \bm{x}} 
    = -\frac{\bm{x}}{r}\frac{\D V(r)}{\D r}
    :label: vrnd

对万有引力的情况, :math:`\bm{F}(\bm{x})=-K\bm{x}/r^3=-\frac{\bm{x}}{r}\frac{K}{r^2}`, 因此 :math:`V'(r) = \frac{K}{r^2}` 得 :math:`V(r) = -\frac{K}{r}`.

下面求有心势场的力在各个方向的导数

.. math::
    \frac{\partial F^i(\bm{x})}{\partial x^j} =&\ 
        -\frac{\partial }{\partial x^j} \left[ x^i \cdot \frac{V'(r)}{r} \right] \\
    =&\ -\delta^{ij}\frac{V'(r)}{r} -x^i \frac{x^j}{r}\frac{\D }{\D r} \frac{V'(r)}{r} \\
    =&\ -\delta^{ij}\frac{V'(r)}{r} - \frac{x^ix^j}{r}\left[ -\frac{V'(r)}{r^2} + \frac{V''(r)}{r}\right] \\
    =&\ -\frac{1}{r}\left[ \delta^{ij}V'(r) + \frac{x^ix^j}{r^2}\left( -V'(r) +rV''(r)\right) \right]

它关于 :math:`x^i, x^j` 是对称的, 满足积性条件, 这里使用有心势场验证了之前的关系.

角动量守恒
^^^^^^^^^^

对于角动量守恒如果是三维的情况直接由拉格朗日量中 :math:`\theta` 是循环指标可以推出. 现在考虑一般维度的情况. 角动量守恒要求势能仅仅是 :math:`r` 的函数

.. math::
    m \frac{\D^2 \bm{x}}{\D t^2} = -\frac{\D V(r)}{\D \bm{x}}

把两边乘以 :math:`\bm{x}'` 变成张量表达式, 然后右边对 :math:`\bm{x}` 的求导可以利用 :eq:`dbmx` 改写为对 :math:`r` 的求导

.. math::
    m \frac{\D^2 \bm{x}}{\D t^2}\bm{x}' =&\ -\frac{\D V(r)}{\D r}\frac{\D r}{\D \bm{x}}\bm{x}' = 
        -\frac{\D V(r)}{\D r}\frac{\bm{x}\bm{x}'}{r} \\
    m \frac{\D}{\D t} \left( \frac{\D \bm{x}}{\D t}\bm{x}' \right) =&\ m\frac{\D \bm{x}}{\D t}\frac{\D \bm{x}'}{\D t} -\frac{\D V(r)}{\D r}\frac{\bm{x}\bm{x}'}{r}

交换 :math:`\bm{x}` 和 :math:`\bm{x}'` 再相减, 右边由于关于 :math:`\bm{x}` 和 :math:`\bm{x}'` 对称而为零. 于是

.. math:: \frac{\D L}{\D t} = \frac{\D}{\D t} \left( m\frac{\D \bm{x}}{\D t}\bm{x}'
    - m\frac{\D \bm{x}'}{\D t}\bm{x} \right) = 0

其中 :math:`L` 表示一个对称张量. 三维的时候这个张量除了对角元为0外, 包括角动量的三个独立分量. 
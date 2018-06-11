
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
        \newcommand{\arccot}{\operatorname{arccot}}
        \renewcommand{\bm}{\mathbf}

I.2 旋转: 不变性和无穷小变换
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. admonition:: 1 题目(矢量定义)

    假设有两个三维空间的矢量 :math:`\bm{p}` 和 :math:`\bm{q}`. 考虑下列数组
        :math:`\begin{pmatrix}p^2q^3\\p^3q^1\\p^1q^2\end{pmatrix}`. 证明它不是矢量 (考虑它在旋转时如何变换). 而
        :math:`\begin{pmatrix}p^2q^3-p^3q^2\\p^3q^1-p^1q^3\\p^1q^2-p^2q^1\end{pmatrix}` 按照矢量变换. 这其实是叉积 :math:`\bm{p}\times\bm{q}`.

.. admonition:: 1 题解

    
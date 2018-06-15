
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
        \newcommand{\xtensor}[3]{{#1}#2 {\vphantom{#1}}#3}

I.2 旋转: 不变性和无穷小变换
^^^^^^^^^^^^^^^^^^^^^^^^^^^^

.. admonition:: 1 题目 (矢量定义)

    假设有两个三维空间的矢量 :math:`\bm{p}` 和 :math:`\bm{q}`. 考虑下列数组
        :math:`\begin{pmatrix}p^2q^3\\p^3q^1\\p^1q^2\end{pmatrix}`. 证明它不是矢量 (考虑它在旋转时如何变换). 而
        :math:`\begin{pmatrix}p^2q^3-p^3q^2\\p^3q^1-p^1q^3\\p^1q^2-p^2q^1\end{pmatrix}` 按照矢量变换. 这其实是叉积 :math:`\bm{p}\times\bm{q}`.

.. admonition:: 1 题解

    :math:`\bm{p}, \bm{q}` 在旋转时的变换为 :math:`p'^m = \xtensor{R}{^m}{_n}p^n, q'^m = \xtensor{R}{^m}{_n}q^n`. 设要证的量为 :math:`\bm{r}`. 则一方面
    
    .. math:: r'^1 = \xtensor{R}{^1}{_n}r^n = \xtensor{R}{^1}{_1}\big(p^2q^3-p^3q^2\big) + \xtensor{R}{^1}{_2}\big(p^3q^1-p^1q^3\big) + \xtensor{R}{^1}{_3}\big(p^1q^2-p^2q^1\big)

    另一方面
    
    .. math:: 
         r'^1 =&\ p'^2q'^3-p'^3q'^2 = \big( \xtensor{R}{^2}{_1}p^1 + \xtensor{R}{^2}{_2}p^2 + \xtensor{R}{^2}{_3}p^3 \big)
            \big( \xtensor{R}{^3}{_1}q^1 + \xtensor{R}{^3}{_2}q^2 + \xtensor{R}{^3}{_3}q^3 \big) \\
            &\ - \big( \xtensor{R}{^3}{_1}p^1 + \xtensor{R}{^3}{_2}p^2 + \xtensor{R}{^3}{_3}p^3 \big)
            \big( \xtensor{R}{^2}{_1}q^1 + \xtensor{R}{^2}{_2}q^2 + \xtensor{R}{^2}{_3}q^3 \big) \\
            =&\ \big(\xtensor{R}{^2}{_m} \xtensor{R}{^3}{_m} \big) p^mq^m - \big(\xtensor{R}{^3}{_m} \xtensor{R}{^2}{_m} \big) p^mq^m
             +\big( \xtensor{R}{^2}{_2}\xtensor{R}{^3}{_3} - \xtensor{R}{^2}{_3}\xtensor{R}{^3}{_2} \big) \big(p^2q^3-p^3q^2 \big) \\
             &\ +\big( \xtensor{R}{^3}{_3}\xtensor{R}{^1}{_1} - \xtensor{R}{^3}{_1}\xtensor{R}{^1}{_3} \big) \big(p^3q^1-p^1q^3 \big) + \big( \xtensor{R}{^1}{_1}\xtensor{R}{^2}{_2} - \xtensor{R}{^1}{_2}\xtensor{R}{^2}{_1} \big) \big(p^1q^2-p^2q^1 \big) \\
            =&\ \xtensor{R}{^1}{_1}\big(p^2q^3-p^3q^2\big) + \xtensor{R}{^1}{_2}\big(p^3q^1-p^1q^3\big) + \xtensor{R}{^1}{_3}\big(p^1q^2-p^2q^1\big)
    
    其中最后一步利用了 :math:`\xtensor{R}{^1}{_1} = \xtensor{R}{^2}{_2}\xtensor{R}{^3}{_3} - \xtensor{R}{^2}{_3}\xtensor{R}{^3}{_2}`. 考虑 :math:`\xtensor{(R^T)}{^1}{_1} = \xtensor{R}{^1}{_1}`, 而利用克莱姆法则 (Cramer's rule) 可以算出 :math:`\xtensor{(R^{-1})}{^1}{_1} = \xtensor{R}{^2}{_2}\xtensor{R}{^3}{_3} - \xtensor{R}{^2}{_3}\xtensor{R}{^3}{_2}`. 然而对对称正交矩阵 :math:`R^T=R^{-1}`. 因此它们相等. 
    
.. admonition:: 2 题目

    证明两个 delta 函数的积 :math:`\delta(x)\delta(y)` 在关于原点的转动下不变. 
    
.. admonition:: 2 题解

    考虑坐标系关于原点逆时针转动. 则
    
    .. math:: 
        x' = x \cos\theta + y\sin\theta, \quad y' = -x\sin\theta + y\cos\theta
    
    delta 函数定义为对任意连续函数 :math:`f(x), g(x)`, 有
    
    .. math:: \int_{-\infty}^\infty\int_{-\infty}^\infty \delta(x)\delta(y)f(x)g(y)\D x\D y = f(x= 0)g(y = 0)

    记坐标变换后的函数为 :math:`f'(x') = f(x), g'(x') = g(x)`. 现在只需证对任意连续函数 :math:`f(x), g(x)`, 有
    
    .. math:: \int_{-\infty}^\infty\int_{-\infty}^\infty \delta(x')\delta(y')f'(x')g'(y')\D x'\D y' = f(x= 0)g(y = 0)

    即要求 :math:`f'(x' = 0)g'(y' = 0) = f(x = 0)g(y = 0)`. 由坐标变换式这是显然的. 
    
.. admonition:: 3 题目

    利用
    
    .. math:: \mathscr{J}_x = \begin{pmatrix}0 & 0& 0\\0& 0& 1\\0& -1& 0\end{pmatrix},\quad
        \mathscr{J}_y = \begin{pmatrix}0 & 0& -1\\0& 0& 0\\1& 0& 0\end{pmatrix}

    证明关于 :math:`x` 的 :math:`\theta_x` 角转动为
    
    .. math:: R_x(\theta_x) = \begin{pmatrix} 1 & 0 & 0 \\ 0 & \cos\theta_x & \sin\theta_x \\ 0 & -\sin\theta_x & \cos\theta_x \end{pmatrix}

    写出 :math:`R_y(\theta_y)`. 证明 :math:`R_x(\theta_x)R_y(\theta_y) \neq R_y(\theta_y)R_x(\theta_x)`.

.. admonition:: 3 题解

    注意 :math:`\mathscr{J}_x^0 = I \neq I_x`, 所以 :math:`k = 0` 项要特殊处理.

    .. math:: 

        \mathscr{J}_x^2 =&\ \begin{pmatrix}0 & 0& 0\\0& -1 & 0\\0& 0& -1\end{pmatrix} \equiv -I_x,\quad
        \mathscr{J}_y^2 = \begin{pmatrix}-1 & 0& 0\\0& 0 & 0\\0& 0& -1\end{pmatrix} \equiv -I_y \\
        R_x(\theta_x) =&\ \E^{\theta_x \mathscr{J}_x } = \sum_{k = 0}^\infty \frac{\theta_x^k \mathscr{J}_x^k}{k!}
            = (I - I_x) + \left( \sum_{k = 0}^\infty \frac{(-1)^{2k} \theta_x^{2k} }{(2k)!} \right) I_x
                + \left( \sum_{k = 0}^\infty \frac{(-1)^{2k + 1} \theta_x^{2k + 1} }{(2k + 1)!} \right) \mathscr{J}_x \\ 
            =&\ I - I_x + \cos\theta I_x + \sin\theta \mathscr{J}_x = \begin{pmatrix} 1 & 0 & 0 \\ 0 & \cos\theta_x & \sin\theta_x \\ 0 & -\sin\theta_x & \cos\theta_x \end{pmatrix} \\
        R_y(\theta_y) =&\ \begin{pmatrix} \cos\theta & 0 & -\sin\theta \\ 0 & 1 & 0 \\ \sin\theta & 0 & \cos\theta_x \end{pmatrix}
    
    它们的乘积为
    
    .. math:: 

        R_x(\theta_x)R_y(\theta_y)=&\ \begin{pmatrix} \cos\theta_y & 0 & -\sin\theta_y \\
            \sin\theta_x\sin\theta_y & \cos\theta_x & \cos\theta_y\sin\theta_x \\
            \cos\theta_x \sin\theta_y & -\sin\theta_x & \cos\theta_x \cos\theta_y \end{pmatrix} \\
        R_y(\theta_y)R_x(\theta_x)=&\ \begin{pmatrix} \cos\theta_y & \sin\theta_x\sin\theta_y & -\cos\theta_x\sin\theta_y \\
            0 & \cos\theta_x & \sin\theta_x \\
            \sin\theta_y & -\cos\theta_y\sin\theta_x & \cos\theta_x \cos\theta_y \end{pmatrix}
    
.. admonition:: 4 题目

    计算 :math:`\big[ J_{(mn)}, J_{(pq)} \big]`, 其中 :math:`J_{(mn)}^{ij} = -\I \big(\delta^{mi}\delta^{nj}-\delta^{mj}\delta^{ni}\big)`. 注意 :math:`J_{(mm)} = 0, J_{(mn)} = -J_{(nm)}`.

.. admonition:: 4 题解
    
    .. math:: 
    
        \big[ J_{(mn)}, J_{(pq)} \big]^{ik} =&\ J_{(mn)}^{ij}J_{(pq)}^{jk} - J_{(pq)}^{ij}J_{(mn)}^{jk} 
            = -J_{(nm)}^{ij}J_{(pq)}^{jk} - J_{(pq)}^{ij}J_{(mn)}^{jk} \\
            =&\ \big(\delta^{ni}\delta^{mj}-\delta^{nj}\delta^{mi}\big)\big(\delta^{pj}\delta^{qk}-\delta^{pk}\delta^{qj}\big) + \big(\delta^{pi}\delta^{qj}-\delta^{pj}\delta^{qi}\big)\big(\delta^{mj}\delta^{nk}-\delta^{mk}\delta^{nj}\big) \\
            =&\ \delta^{ni}\delta^{mj}\delta^{pj}\delta^{qk} + \delta^{nj}\delta^{mi}\delta^{pk}\delta^{qj}
                -\delta^{ni}\delta^{mj}\delta^{pk}\delta^{qj} - \delta^{nj}\delta^{mi}\delta^{pj}\delta^{qk} \\
            &\ +\delta^{pi}\delta^{qj}\delta^{mj}\delta^{nk} +\delta^{pj}\delta^{qi}\delta^{mk}\delta^{nj} - \delta^{pi}\delta^{qj}\delta^{mk}\delta^{nj} - \delta^{pj}\delta^{qi}\delta^{mj}\delta^{nk} \\
            =&\ \color{blue}{\delta^{ni}\delta^{mp}\delta^{qk}} 
                \color{green}{+ \delta^{nq}\delta^{mi}\delta^{pk}}
                \color{red}{-\delta^{ni}\delta^{mq}\delta^{pk}}
                 \color{black}{- \delta^{np}\delta^{mi}\delta^{qk}} \\
            &\ \color{red}{+\delta^{pi}\delta^{qm}\delta^{nk}}
                 \color{black}{+\delta^{pn}\delta^{qi}\delta^{mk}}
                \color{green}{ -\delta^{pi}\delta^{qn}\delta^{mk}}
                \color{blue}{-\delta^{pm}\delta^{qi}\delta^{nk}} \\
            =&\ \color{blue}{\delta^{mp}\big( \delta^{ni} \delta^{qk} - \delta^{qi}\delta^{nk} \big)}
                \color{green}{+\delta^{nq}\big( \delta^{mi}\delta^{pk} - \delta^{pi}\delta^{mk}  \big)}
                \color{red}{ +\delta^{mq}\big( \delta^{pi}\delta^{nk} - \delta^{ni}\delta^{pk} \big) }
                \color{black}{+ \delta^{np}\big( \delta^{qi}\delta^{mk} - \delta^{mi}\delta^{qk} \big)} \\
            =&\ \I \left[ \delta^{mp}J_{(nq)}^{ik} + \delta^{nq}J_{(mp)}^{ik}
                 - \delta^{mq}J_{(np)}^{ik} - \delta^{np}J_{(mq)}^{ik} \right]

.. admonition:: 5 题目

    对一个三维矢量 :math:`\bm{p}`, 证明 :math:`p^ip^j` 若对 :math:`\bm{p}` 在空间所有可能取向取平均有
    
    .. math:: \frac{1}{4\pi}\int_0^{2\pi}\D \varphi \int_0^\pi \sin\theta\D \theta p^ip^j = \frac{1}{3}p^2\delta^{ij}

.. admonition:: 5 题解

    注意 :math:`p^x = p\sin\theta\cos\varphi, \ p^y = p\sin\theta\sin\varphi,\ p^z = p\cos\theta`, 利用
    
    .. math:: \int_0^{2\pi} \cos^2\varphi\D \varphi =&\ \int_0^{2\pi} \sin^2\varphi\D \varphi = \pi,\quad
        \int_0^{2\pi} \cos\varphi\sin\varphi\D \varphi = 0 \\
        \int_0^\pi \sin^3\theta\D \theta =&\ \frac{4}{3},\quad \int_0^\pi \sin\theta\cos^2\theta \D \theta = \frac{2}{3}\\
        \int_0^{2\pi} \cos\varphi\D \varphi =&\ \int_0^{2\pi} \sin\varphi\D \varphi = 0
    
    从而
    
    .. math:: 
        \frac{1}{4\pi}\int_0^{2\pi}\D \varphi \int_0^\pi \sin\theta\D \theta p^xp^x =&\  
            \frac{p^2}{4\pi} \int_0^{2\pi} \D \varphi \int_0^\pi \D \theta \sin^3\theta\cos^2\varphi = \frac{4}{3}\cdot \pi \frac{p^2}{4\pi} = \frac{p^2}{3} \\
        \frac{1}{4\pi}\int_0^{2\pi}\D \varphi \int_0^\pi \sin\theta\D \theta p^yp^y =&\  
            \frac{p^2}{4\pi} \int_0^{2\pi} \D \varphi \int_0^\pi \D \theta \sin^3\theta\sin^2\varphi = \frac{4}{3}\cdot \pi \frac{p^2}{4\pi} = \frac{p^2}{3} \\
        \frac{1}{4\pi}\int_0^{2\pi}\D \varphi \int_0^\pi \sin\theta\D \theta p^xp^y =&\  
            \frac{p^2}{4\pi} \int_0^{2\pi} \D \varphi \int_0^\pi \D \theta \sin^3\theta\sin\varphi\cos\varphi = 0 \\
        \frac{1}{4\pi}\int_0^{2\pi}\D \varphi \int_0^\pi \sin\theta\D \theta p^zp^z =&\  
            \frac{p^2}{4\pi} \int_0^{2\pi} \D \varphi \int_0^\pi \D \theta \sin\theta\cos^2\theta =  \frac{2}{3}\cdot 2\pi \frac{p^2}{4\pi} = \frac{p^2}{3} \\
        \frac{1}{4\pi}\int_0^{2\pi}\D \varphi \int_0^\pi \sin\theta\D \theta p^xp^z =&\  
            \frac{p^2}{4\pi} \int_0^{2\pi} \D \varphi \int_0^\pi \D \theta \sin^2\theta\cos\theta \cos\varphi = 0 \\
        \frac{1}{4\pi}\int_0^{2\pi}\D \varphi \int_0^\pi \sin\theta\D \theta p^yp^z =&\  
            \frac{p^2}{4\pi} \int_0^{2\pi} \D \varphi \int_0^\pi \D \theta \sin^2\theta\cos\theta \sin\varphi = 0
    
    因此
    
    .. math:: \frac{1}{4\pi}\int_0^{2\pi}\D \varphi \int_0^\pi \sin\theta\D \theta p^ip^j = \frac{1}{3}p^2\delta^{ij}
    
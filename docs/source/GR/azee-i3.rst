
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

I.3 旋转: 不变性和无穷小变换
----------------------------


.. note::
    量子力学原理, 王正行, 2008.

坐标空间中的转动矩阵
^^^^^^^^^^^^^^^^^^^^

考虑系统绕 :math:`z` 轴逆时针转过角度 :math:`\phi` 的变换 (坐标系不动). 系统中的一个点 :math:`\bm{r}` 在这个转动下转到了 :math:`\bm{r}'`, 我们有

.. math::
    \bm{r} =&\ x \hat{\bm{i}} + y \hat{\bm{j}}, \quad \bm{r}' = x' \hat{\bm{i}} + y' \hat{\bm{j}} \\
    \bm{r}_x = &\ x \hat{\bm{i}}, \bm{r}'_x = x\cos\phi \hat{\bm{i}} + x\sin\phi \hat{\bm{j}} \\
    \bm{r}_y = &\ y \hat{\bm{j}}, \bm{r}'_y = -y\sin\phi \hat{\bm{i}} + y\cos\phi \hat{\bm{j}} \\
    \bm{r}' =&\ \bm{r}'_x + \bm{r}'_y = (x\cos\phi -y\sin\phi) \hat{\bm{i}} + (x\sin\phi + y\cos\phi) \hat{\bm{j}}  \\
    \begin{pmatrix}x'\\y'\\z'\end{pmatrix} =&\ \begin{pmatrix} \cos\phi & -\sin\phi & 0\\
        \sin\phi & \cos \phi & 0 \\ 0 & 0 & 1 \end{pmatrix} \begin{pmatrix}x\\y\\z\end{pmatrix}

.. tikz::
    \draw[->] (-0.5, 0) -- (3.7, 0) node[above] {$x$};
    \draw[->] (0, -0.5) -- (0, 3.7) node[above] {$y$};
    \node at (-0.25, -0.25) {$O$};
    \draw[->,line width=1pt] (0, 0) -- (2.8, 1.3);
    \draw[->,line width=1pt] (0, 0) -- (1.54, 2.67);
    \draw[->,line width=0.5pt] (0, 0) -- (2.8, 0) node[right] {$\bm{r}_x$};
    \draw[->,line width=0.5pt] (0, 0) -- (0, 1.3) node[right] {$\bm{r}_y$};
    \draw[->,line width=0.5pt] (0, 0) -- (2.29, 1.61) node[right] {$\bm{r}'_x$};
    \draw[->,line width=0.5pt] (0, 0) -- (-0.75, 1.06) node[right] {$\bm{r}'_y$};
    \fill (2.8, 1.3) circle (0.05) node[right] {$\bm{r}$};
    \fill (1.54, 2.67) circle (0.05) node[right] {$\bm{r}'$};
    \draw[dashed] (0.0, 1.3) -- (2.8, 1.3) -- (2.8, 0.0);
    \draw[dashed] (-0.75, 1.06) -- (1.54, 2.67) -- (2.29, 1.61);
    \node at (0.4, 0.15) {$\phi$};
    \node at (-0.15, 0.4) {$\phi$};

记为 :math:`\bm{r}' = g(\hat{\bm{k}}, \phi) \bm{r}`, 其中 :math:`\hat{\bm{k}}` 是沿 :math:`z` 轴的单位矢量, :math:`g(\hat{\bm{k}}, \phi)` 是上述转动矩阵. 类似地, 系统绕 :math:`x` 轴转 :math:`\alpha` 角和绕 :math:`y` 轴转 :math:`\beta` 角的转动矩阵分别为

.. math::
    g(\hat{\bm{i}},\alpha) = \begin{pmatrix} 1 & 0 & 0 \\ 0 & \cos\alpha & -\sin\alpha \\
        0 & \sin\alpha & \cos \alpha \end{pmatrix},\quad
    g(\hat{\bm{j}},\beta) = \begin{pmatrix} \cos\beta & 0 & \sin\beta \\ 0 & 1 & 0\\
        -\sin\beta & 0 & \cos \beta \end{pmatrix}

:math:`\hat{\bm{i}}, \hat{\bm{j}}` 是沿 :math:`x, y` 轴的单位矢量. 于是, 系统绕 :math:`\bm{n}` 方向转过一个无限小角度 :math:`\theta` 的转动矩阵可以写成 (注意 :math:`\bm{n}` 可以分解到 :math:`\hat{\bm{i}}, \hat{\bm{j}}, \hat{\bm{k}}` 但是投影值没有用. 但是 :math:`\theta` 分解到 :math:`\hat{\bm{i}}, \hat{\bm{j}}, \hat{\bm{k}}` 的投影值 :math:`\theta_x, \theta_y, \theta_z` 则与 :math:`\bm{n}` 有一定关系.)

.. math::
    g(\bm{n},\theta) =&\ g(\hat{\bm{i}},\theta_x)g(\hat{\bm{j}},\theta_y)g(\hat{\bm{k}}, \theta_z)
        \approx \begin{pmatrix} 1 & 0 & 0 \\ 0 & 1 & -\theta_x \\ 0 & \theta_x & 1 \end{pmatrix}
            \begin{pmatrix} 1 & 0 & \theta_y \\ 0 & 1 & 0 \\ -\theta_y & 0 & 1 \end{pmatrix}
            \begin{pmatrix} 1 & -\theta_z & 0 \\ \theta_z & 1 & 0 \\ 0 & 0 & 1 \end{pmatrix} \\
        \approx&\ \begin{pmatrix} 1 & 0 & \theta_y \\ 0 & 1 & -\theta_x \\ -\theta_y & \theta_x & 1
            \end{pmatrix} \begin{pmatrix} 1 & -\theta_z & 0 \\ \theta_z & 1 & 0 \\ 0 & 0 & 1 \end{pmatrix} 
        \approx \begin{pmatrix} 1 & -\theta_z & \theta_y \\ \theta_z & 1 & -\theta_x \\ -\theta_y & \theta_x &    1 \end{pmatrix}

转动矩阵是正交的 (orthogonal), 可以用 2 维转动矩阵 :math:`R(\theta)` 验证 (注意这里考虑顺时针)

.. math:: R^T(\theta)R(\theta) = \begin{pmatrix} \cos\theta & -\sin\theta \\ \sin\theta & \cos\theta \end{pmatrix}
    \begin{pmatrix} \cos\theta & \sin\theta \\ -\sin\theta & \cos\theta \end{pmatrix} = 
    \begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix}
 
于是有 :math:`(\det R)^2 = 1 \Rightarrow \det R = \pm 1`. 正交矩阵的行列式可以是 :math:`-1` 或 :math:`+1`. 其中 :math:`-1` 的矩阵叫做反射矩阵 (reflection matrix). 具有单位行列式的矩阵叫做特殊的 (special).

无限小作用
^^^^^^^^^^

当角度很小时, 转动矩阵接近一个单位矩阵 :math:`R(\theta) \approx I+A`. 2 维无限小转动矩阵只有一个

.. math:: A = \theta\mathscr{J} = \theta\begin{pmatrix} 0 & 1 \\ -1 & 0 \end{pmatrix}

对3维的情况有 :math:`A = \vec{\theta}\cdot \vec{\mathscr{J}}`. 对有限角度的情况有

.. math:: R(\theta) = \lim_{N\to \infty} R\left(\frac{\theta}{N} \right)^N = \lim_{N\to\infty}
    \left( 1+\frac{\theta\mathscr{J}}{N} \right)^N = \E^{\theta \mathscr{J}}

考虑2维的情况. 现在想用 2 维无限小转动矩阵来得到有限角度的转动矩阵. 注意到 :math:`\mathscr{J}^2 = -I`, 可以分开指数级数的奇数项和偶数项.

.. math:: \E^{\theta\mathscr{J}} =&\ \sum_{n=0}^\infty \frac{\theta^n\mathscr{J}^n}{n!}
    =\left( \sum_{k=0}^\infty \frac{(-1)^k\theta^{2k}}{(2k)!} \right)I 
    + \left( \sum_{k=0}^\infty \frac{(-1)^k\theta^{2k + 1}}{(2k + 1)!} \right)\mathscr{J} \\
    =&\ \cos\theta I + \sin \theta \mathscr{J} = \cos \theta \begin{pmatrix} 1 & 0 \\ 0 & 1 \end{pmatrix}
        + \sin\theta \begin{pmatrix} 0 & 1 \\ -1 & 0 \end{pmatrix} = \begin{pmatrix} \cos\theta & \sin\theta \\ -\sin\theta & \cos\theta \end{pmatrix}

高维空间
^^^^^^^^

在 :math:`D` 维欧氏空间可以定义两相邻点的距离平方[根据广义勾股定理(generalization of Pythagora's theorem)]

.. math:: \D s^2 = \sum_{i=1}^D \left( \D x^i \right)^2

转动定义为保持 :math:`\D s` 不变的线性变换 :math:`\D \bm{x}' = R\D \bm{x}`. 满足两个条件 :math:`R^TR=I, \ \det R = 1` 的 :math:`D\times D` 的矩阵 :math:`R` 集合称作简单正交群(simple orthogonal group) :math:`SO(D)`.
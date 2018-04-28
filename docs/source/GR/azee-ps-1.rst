
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

I.1 牛顿定律
^^^^^^^^^^^^

.. admonition:: 1 题目(:math:`\delta` 函数的性质)

    对光滑函数 :math:`f(x)`, 证明积分 :math:`\int_{-\infty}^\infty \D x \delta (x) f(x) = f(0)`. 并通过对某光滑函数 :math:`f(x)` 求积分 :math:`\int_{-\infty}^\infty \D x \delta (ax) f(x)` 证明 :math:`\delta(ax)=\delta(x)/|a|`.

.. admonition:: 1 题解

    对任何 :math:`\epsilon > 0`, 根据积分中值定理, 存在 :math:`\xi \in [-\epsilon, \epsilon]` [#delta]_ 使得
    
    .. math::
        \int_{-\infty}^\infty \D x \delta (x) f(x) =&\ \int_{-\infty}^{-\epsilon} \D x \delta (x) f(x)
            + \int_{-\epsilon}^{\epsilon} \D x \delta (x) f(x) + \int_{\epsilon}^{\infty} \D x \delta (x) f(x) \\
            =&\ \int_{-\epsilon}^{\epsilon} \D x \delta (x) f(x)
            = f(\xi) \int_{-\epsilon}^{\epsilon} \D x \delta (x) = f(\xi)
    
    令 :math:`\epsilon \to 0`, 得 :math:`\xi = 0`, 于是
    
    .. math:: \int_{-\infty}^\infty \D x \delta (x) f(x) = f(0)
        :label: delta_sel
    
    先考虑 :math:`a>0`, 令 :math:`y = ax, \D y = a \D x`. 得
    
    .. math:: \int_{-\infty}^\infty \D x \delta (ax) f(x) = \frac{1}{a} \int_{-\infty}^\infty \D y \delta (y) f\left(\frac{y}{a}\right) = \frac{f(0)}{a}

    对 :math:`a<0`, 则有

    .. math:: \int_{-\infty}^\infty \D x \delta (ax) f(x) = \frac{1}{a} \int_{\infty}^{-\infty} \D y \delta (y) f\left(\frac{y}{a}\right) = \frac{f(0)}{-a}

    综上,
    
    .. math:: \int_{-\infty}^\infty \D x \delta (ax) f(x) = \frac{f(0)}{|a|}
        :label: delta_a

    将 :eq:`delta_sel` 式除以 :math:`|a|` 并与 :eq:`delta_a` 式相减, 得
    
    .. math:: \int_{-\infty}^\infty \D x \left[ \delta (ax) - \frac{\delta (x)}{|a|} \right] f(x) = 0

    由于 :math:`f(x)` 可以是任意函数, 所以括号中的部分必须恒等于0. 即 :math:`\delta (ax) = \frac{\delta (x)}{|a|}`.

.. admonition:: 积分中值定理(First Mean Value Theorem for Definite Integrals)
    
    设 :math:`f:[a,b]\to \mathbb{R}` 为一连续函数, :math:`g:[a,b]\to \mathbb{R}`. 要求 :math:`g(x)` 是可积函数且在积分区间不变号, 那么存在一点 :math:`\xi \in [a,b]` 使得
    
    .. math:: \int_a^b f(x)g(x) \D x = f(\xi)\int_a^b g(x)\D x
    
.. admonition:: 积分中值定理证明

    不失一般性, 设对所有 :math:`x, g(x) \geqslant 0`; 因为 :math:`f` 是闭区间上的连续函数, :math:`f` 取得最大值 :math:`M` 和最小值 :math:`m`. 于是
    
    .. math::
        mg(x) \leqslant&\  f(x) g(x) \leqslant Mg(x) \\
        m\int_a^b g(x) \D x \leqslant&\ \int_a^b f(x) g(x) \D x \leqslant M\int_a^b g(x) \D x
    
    若 :math:`\int_a^b g(x)\D x = 0`, 则 :math:`\int_a^b f(x) g(x) \D x = 0`, :math:`\xi` 可取 :math:`[a,b]` 上任意一点. 若不等于零那么 :math:`\int_a^b g(x)\D x > 0`.
    
    .. math:: m  \leqslant \frac{\int_a^b f(x) g(x) \D x}{\int_a^b g(x)\D x} \leqslant M

    因为 :math:`m \leqslant f(x) \leqslant M` 是连续函数, 则必存在一点 :math:`\xi \in [a,b]`, 使得
    
    .. math:: f(\xi)=\frac{\int_a^b f(x) g(x) \D x}{\int_a^b g(x)\D x}

    :math:`g(x)\leqslant 0` 的情况按同样方法证明. 
    
.. admonition:: 2 题目(行星运动轨道)
    
    通过换元 :math:`u=1/r`, 求行星轨道 :math:`r(\theta)`.

.. admonition:: 2 题解

    由牛顿定律部分 :eq:`rthetaclose` 式知 (这里表示为不定积分, :math:`\theta_0` 是某积分常数)
    
    .. math:: \theta(r) = \theta_0 + \int \frac{l\D u}{\sqrt{2\epsilon - l^2u^2 + 2\kappa u }}
    
    在积分公式
    
    .. math:: \int \frac{\D x}{\sqrt{\alpha +\beta x + \gamma x^2}}
        = \frac{1}{\sqrt{-\gamma}} \arccos \left( -\frac{ 2\gamma x + \beta }
            {\sqrt{\beta^2-4\alpha\gamma}}  \right)
    
    令 :math:`\alpha = 2\epsilon, \beta = 2\kappa, \gamma = -l^2`, 得

    .. math::
        \beta^2-4\alpha\gamma =&\ 4\kappa^2+8\epsilon l^2 \\
        \cos (\theta-\theta_0) =&\  -\frac{-2l^2/r + 2\kappa}{2\sqrt{\kappa^2 + 2\epsilon l^2}}  = \frac{\frac{l^2}{r\kappa} - 1}{\sqrt{1 + \frac{2\epsilon l^2}{\kappa^2}}} \\
        \frac{1}{r} =&\ \frac{\kappa}{l^2} \left[ 1 + \sqrt{1 + \frac{2\epsilon l^2}{\kappa^2}}\cos (\theta-\theta_0)\right]
    
    其中偏心率(eccentricity)
    
    .. math::
        e = \sqrt{1 + \frac{2\epsilon l^2}{\kappa^2}}
        :label: eccentricity
    
    有如下几种情况
    
    .. math::
        e > 1 &\  \epsilon>0 &\ \text{双曲线(hyperbola)} \\
        e = 1 &\  \epsilon=0 &\ \text{抛物线(parabola)} \\
        e < 1 &\  \epsilon<0 &\ \text{椭圆(ellipse)} \\
        e = 0 &\  \epsilon= -\frac{\kappa^2}{2l^2} &\ \text{圆(circle)}

.. admonition:: 积分 :math:`\int \frac{\D x}{\sqrt{\alpha +\beta x + \gamma x^2}}` 的求解

    首先需要用到反三角函数导数公式. 分别设 :math:`\theta = \arcsin x, \theta = \arccos x`, 有
    
    .. math:: 
        \frac{\D \arcsin x}{\D x} =&\ \frac{\D \theta}{\D \sin \theta} = \frac{1}{\cos \theta}
        = \frac{1}{\sqrt{1-\sin^2\theta}} = \frac{1}{\sqrt{1-x^2}},\quad |x| < 1 \\
        \frac{\D \arccos x}{\D x} =&\ \frac{\D \theta}{\D \cos \theta} = -\frac{1}{\sin \theta}
        = -\frac{1}{\sqrt{1-\cos^2\theta}} = -\frac{1}{\sqrt{1-x^2}},\quad |x| < 1
    
    于是 (注意给 :math:`x` 乘以 :math:`2\gamma` 时, 由于 :math:`\gamma < 0`, 会多一个符号系数. 因此乘以 :math:`-2\gamma` 来避免符号变化)
    
    .. math:: 
        \int \frac{\D x}{\sqrt{\alpha +\beta x + \gamma x^2}} =&\  
             \int \frac{\D x}{\sqrt{\gamma \left(x + \frac{\beta}{2\gamma}\right)^2 +\alpha - \frac{\beta^2}{4\gamma}}} = \frac{1}{\sqrt{-\gamma}} \int \frac{\D x}{\sqrt{\frac{\beta^2-4\alpha\gamma}{4\gamma^2} - \left(x + \frac{\beta}{2\gamma}\right)^2 }} \\
            =&\ \frac{1}{\sqrt{-\gamma}} \int \frac{\D \left(x + \frac{\beta}{2\gamma}\right) }
            {\sqrt{\frac{\beta^2-4\alpha\gamma}{4\gamma^2}}}\frac{1}
            {\sqrt{1 - \left(\frac{x + \frac{\beta}{2\gamma}}{\sqrt{\frac{\beta^2-4\alpha\gamma}{4\gamma^2}}}\right)^2 }} \\
            =&\ -\frac{1}{\sqrt{-\gamma}}\int  \D \left( -\frac{ 2\gamma x + \beta }
            {\sqrt{\beta^2-4\alpha\gamma}}  \right)\frac{1}
            {\sqrt{1 - \left(-\frac{2\gamma x + \beta}{\sqrt{\beta^2-4\alpha\gamma}}\right)^2 }} \\
            =&\ \frac{1}{\sqrt{-\gamma}} \arccos \left( -\frac{ 2\gamma x + \beta }
            {\sqrt{\beta^2-4\alpha\gamma}}  \right)
    
.. admonition:: 3 题目(牛顿引力下光线偏折)

    牛顿认为光由粒子组成. 计算太阳对光的偏折, 考虑 :math:`\epsilon > 0` (双曲线) 的情况. 注意这些"光粒子"的质量在牛顿引力理论中是被消去了的. 

.. admonition:: 3 题解

    双曲线 :math:`\frac{x^2}{a^2} - \frac{y^2}{b^2} = 1` 的渐近线方程是 :math:`y=\pm \frac{b}{a} x`, 离心率是 :math:`e=\sqrt{1+\frac{b^2}{a^2}}`. 根据 :eq:`eccentricity` 式知 :math:`\frac{b}{a} = \sqrt{\frac{2\epsilon l^2}{\kappa^2}}`. 于是偏折角
    
    .. math:: \varphi = 2\arctan \sqrt{\frac{2\epsilon l^2}{\kappa^2}} = 2\arccot \sqrt{\frac{\kappa^2}{2\epsilon l^2}}

    由泰勒展开 :math:`\arccot x = \frac{\pi}{2} -x + o(x)` 其中 :math:`o(x)` 是比 :math:`x` 高阶的无穷小. 于是
    
    .. math:: \varphi = 2 \left[ \frac{\pi}{2}- \sqrt{\frac{\kappa^2}{2\epsilon l^2}} \right]
        = \pi -\frac{2\kappa}{l\sqrt{2\epsilon}}
    

.. admonition:: 4 题目(牛顿第一壳层定理)

    证明牛顿第一壳层定理: 一个球壳质量分布施加的引力的作用等价于所有质量集中在分布中心一点的情形.

.. admonition:: 4 题解

    考虑引力对 :math:`P` 点的作用, 不失一般性, 设其坐标为 :math:`P(0,0,z)`. 设球面质量为 :math:`M`, 中心点引力的情况为
    
    .. math::
        F_1 = -\frac{GMm}{z^2} \bm{\hat{k}}
    
    .. tikz:: \draw[->] (0, -1.7) -- (0, 2.8) node[above] {$z$};
        \draw[->] (-2, 0) -- (2, 0) node[right] {$x$};
        \draw (0, 0) circle (1.2);
        \fill (0, 2.3) circle (0.05) node[right] {$P$};
        \fill (0.6, 1.04) circle (0.05) node[right] {$S$};
        \draw[dashed] (0, 2.3) -- (0.6, 1.04) -- (0, 0) node[left] {$O$};
        \node[right] at (0.3, 0.5) {$R$};
        \node[right] at (0.3, 1.8) {$r$};
        \node[left] at (0, 1.5) {$z$};
        \node at (0.12, 0.45) {$\theta$};
        \node at (0.12, 1.85) {$\alpha$};
        \draw[dashed] (0.6, 1.04) -- (0, 1.04) node[left] {$T$};

    
    球面分布的情况为 (垂直 :math:`\bm{\hat{k}}` 方向的投影相互抵消, 只需计算平行 :math:`\bm{\hat{k}}` 方向的投影之和). 由图上可以看出 :math:`r^2 = z^2+R^2-2zR\cos\theta`. 得
    
    .. math:: 
        F_2 = -\frac{GMm}{4\pi R^2}  \int_0^{\pi} \frac{2\pi R^2 \sin\theta\cos\alpha}{z^2+R^2-2zR\cos\theta} \D \theta \bm{\hat{k}}
    
    注意到 :math:`R\cos\theta = \overline{TO}, z - \overline{TO} = r\cos \alpha`, 于是
    
    .. math::
        \cos \alpha = \frac{z-R\cos\theta}{\sqrt{z^2+R^2-2zR\cos\theta}}
    
    得
    
    .. math:: 
        F_{2z} = -\frac{GMm}{2} \int_{-1}^1 \frac{(z-Rx)\D x}{\left(z^2+R^2-2zRx\right)^{\frac{3}{2}}}
    
    令 :math:`y=r^2=z^2+R^2-2zRx` 可知
    
    .. math::
        \D y = -2zR\D x, \quad -Rx = \frac{-z^2-R^2 +y}{2z},\quad z-Rx = \frac{z^2-R^2+y}{2z}
    
    并且当 :math:`x = \cos\theta` 在 -1 和 1 之间变化时, :math:`r^2` 在 :math:`(z+R)^2` 和 :math:`(z-R)^2` 之间变化. 仅考虑 :math:`z > R` 的情形. 于是
    
    .. math:: F_{2z} = -\frac{GMm}{2} \int_{(z+R)^2}^{(z-R)^2} \frac{(z^2-R^2+y)\D y}{(-4z^2R)y^{\frac{3}{2}}}
        :label: shellzr

    利用
    
    .. math:: \frac{\D}{\D y} y^{-1/2} = -\frac{1}{2} y^{-3/2}, \quad\frac{\D}{\D y} y^{1/2} = \frac{1}{2}  y^{-1/2}
    
    得
    
    .. math::
        \int_{(z+R)^2}^{(z-R)^2} \frac{(z^2-R^2+y)\D y}{y^{\frac{3}{2}}} =&\  (-2)(z^2-R^2) \left[ \frac{1}{z-R} - \frac{1}{z+R}\right] + 2 \left[ (z-R) - (z+R) \right] \\
        =&\ (-2)(z^2-R^2) \frac{z+R-(z-R)}{(z-R)(z+R)} -4R = -8R \quad(R<z)
    
    因此
    
    .. math:: F_{2z} = -\frac{GMm}{2} \frac{-8R}{-4z^2R} = -\frac{GMm}{z^2} = F_{1z}

.. admonition:: 5 题目(牛顿第二壳层定理)

    证明牛顿第二壳层定理: 在球壳内部没有引力.

.. admonition:: 5 题解

    现在假设 :math:`P` 点在球壳内.

    .. tikz:: \draw[->] (0, -2.2) -- (0, 2.2) node[above] {$z$};
        \draw[->] (-2.2, 0) -- (2.2, 0) node[right] {$x$};
        \draw (0, 0) circle (1.8);
        \fill (0, 1.2) circle (0.05) node[left] {$P$};
        \fill (0.6, 1.7) circle (0.05) node[right] {$S$};
        \draw[dashed] (0, 1.2) -- (0.6, 1.7) -- (0, 0) node[left] {$O$};
        \node[right] at (0.2, 0.7) {$R$};
        \node[right] at (0.05, 1.6) {$r$};
        \node[left] at (0, 0.6) {$z$};
        \node at (0.12, 0.45) {$\theta$};

    根据上面 :eq:`shellzr` 考虑 :math:`R>z` 的情形. 有
    
    .. math::
        \int_{(R+z)^2}^{(R-z)^2} \frac{(z^2-R^2+y)\D y}{y^{\frac{3}{2}}} =&\  (-2)(z^2-R^2) \left[ \frac{1}{R-z} - \frac{1}{R+z}\right] + 2 \left[ (R-z) - (R+z) \right] \\
        =&\ -(-2)(z^2-R^2) \frac{R+z-(R-z)}{(z-R)(z+R)} -4z = 4z-4z = 0 \quad(R>z)

.. admonition:: 6 题目(引力隧道)

    假设工程师可以构建连接地球上两个城市的直线隧道. 这样一辆车可以直接从一个城市坠落到另一个城市. 使用牛顿的两个壳层定理计算隧穿时间.

.. admonition:: 6 题解

    在地球内部时, 只有半径小于车所在半径位置部分的质量对引力有贡献. 

    .. tikz:: \draw[->] (0, -2.2) -- (0, 2.2) node[above] {$z$};
        \draw[->] (-2.2, 0) -- (2.2, 0) node[right] {$x$};
        \draw (0, 0) circle (1.8);
        \draw[dashed] (0, 0) circle (1.3);
        \draw[line width=1pt] (1.0,  1.5) node[above] {$A$} -- (1.0, -1.5) node[below] {$B$};
        \fill (1.0, 0.83) circle (0.05) node[right] {$P$};
        \draw[dashed] (0, 0) -- (1.0, 0.83);
        \node at (0.45, 0.12) {$\theta$};
        \node[right] at (1, 0) {$M$};
        \node[left] at (0, 0) {$O$};
    
    设 :math:`A` 点位置对应的极角为 :math:`\theta_0`. 当车从 :math:`A` 运动到 :math:`M`, :math:`\theta` 从 :math:`\theta_0` 到 :math:`0` 进行变化. 加速度决定于万有引力沿 :math:`\overline{AB}` 的投影, 投影系数为 :math:`\sin\theta`. 设地球半径为 :math:`R`, 则 :math:`P` 点受到的引力的有效半径为(也是引力作用的距离) :math:`r = \overline{OM}/\cos\theta`. 又 :math:`\overline{OM} = R\cos\theta_0`. 得引力来源的有效质量
    
    .. math:: M' = M \frac{\frac{4}{3}\pi \left(\frac{R\cos\theta_0}{\cos\theta}\right)^3}{\frac{4}{3}\pi R^3}
        = M \left(\frac{\cos\theta_0}{\cos\theta}\right)^3
    
    于是可得加速度为
    
    .. math::
        ma =&\  \frac{GM'm}{r^2}\sin\theta\\
        a =&\ GM\sin\theta\frac{\left(\frac{\cos\theta_0}{\cos\theta}\right)^3}{\left(\frac{R\cos\theta_0}{\cos\theta}\right)^2} = \frac{GM}{R^2} \cos\theta_0\tan\theta
    
    记车从 :math:`A` 到  :math:`P` (最终到 :math:`M`) 的位移为 :math:`q`. 则 :math:`q = R\sin\theta_0 - y`, 而纵坐标 :math:`y=\overline{PM}`, 即 :math:`y = \cos\theta_0\tan\theta`. 于是
    
    .. math::
        q =&\ R\sin\theta_0 - \cos\theta_0\tan\theta \\
        \frac{\D^2 q}{\D t^2} = a =&\ \frac{GM}{R^2} \cos\theta_0\tan\theta = \frac{GM(R\sin\theta_0 - q)}{R^2}
    
    再利用 :math:`y = R\sin\theta_0 - q` 得
    
    .. math::
        \frac{\D^2 y}{\D t^2} =&\ -\frac{GM}{R^2} y \\
        y(t) =&\ C_1 \cos \sqrt{\frac{GM}{R^2}}t + C_2 \sin \sqrt{\frac{GM}{R^2}}t
    
    边界条件为 :math:`t = 0` 时, :math:`y(t) = R\sin\theta_0, \frac{\D y(t)}{\D t} = 0`, 于是
    
    .. math::
        R\sin\theta_0 =&\ C_1 + C_2 \cdot 0 \quad\Rightarrow \quad C_1 = R\sin\theta_0 \\
        0 = &\ \sqrt{\frac{GM}{R^2}}\left[ -C_1  \cdot 0 + C_2 \right] \quad\Rightarrow \quad C_2 = 0
    
    因此运动方程为
    
    .. math:: y(t) = R\sin\theta_0 \cos \sqrt{\frac{GM}{R^2}}t
    
    当 :math:`y = 0` 时,
    
    .. math:: \sqrt{\frac{GM}{R^2}}t = \frac{\pi}{2} \quad\Rightarrow \quad t = \frac{\pi}{2}\sqrt{\frac{R^2}{GM}}

    从 :math:`A` 到 :math:`B` 的耗时是 :math:`A` 到 :math:`M` 的两倍, 时间为 :math:`\pi\sqrt{\frac{R^2}{GM}}`.

.. [#delta] 数学物理方法(第四版), 梁昆淼, 第84页.
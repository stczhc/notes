
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
        \renewcommand{\bm}{\boldsymbol}
        \newcommand{\xtensor}[3]{{#1}#2 {\vphantom{#1}}#3}

第六章习题
----------

.. admonition:: 题目 6.1

    惯性观者 :math:`G` 和 :math:`G'` 相对速率为 :math:`u = 0.6c`, 相遇时把钟读数都调为零. 用时空图讨论: (a) 在 :math:`G` 所属的惯性参考系看来 (以其同时观判断), 当 :math:`G` 钟读数为 :math:`5\mathrm{\ \mu s}` 时, :math:`G'` 钟的读数是多少? (b) 当 :math:`G` 钟读数为 :math:`5\mathrm{\ \mu s}` 时, 他实际看见 :math:`G'` 钟的读数是多少?

.. admonition:: 题解 6.1

    时空图如下:

    .. tikz::
        \draw[->,line width=1pt] (0, 0) -- (3.7, 0) node[right] {$x$};
        \draw[->,line width=1pt] (0, 0) -- (0, 4.0) node[above] {$t$};
        \draw[->,line width=1pt] (0, 0) -- (1.5, 4.0) node[above] {$t'$};
        \draw[line width=1pt] (0, 2) -- (0.8, 2);
        \draw[line width=1pt] (0, 2) -- (0.5, 1.5);
        \draw[line width=1pt] (0.54, 1.48) -- (0, 1.48);
        \fill[black] (0, 2) circle (0.08) node[left] {$a$};
        \fill[black] (0.76, 2) circle (0.08) node[right] {$b$};
        \fill[black] (0.54, 1.48) circle (0.08) node[right] {$c$};
        \fill[black] (0, 1.48) circle (0.08) node[left] {$d$};
        \fill[black] (0, 0) circle (0.08) node[left] {$o$};
        \draw[smooth, samples=100,domain=-0.3:0.5] plot({2* sinh(\x)}, {2*cosh(\x)});
    
    其中 :math:`oa` 为 :math:`G` 钟的世界线, :math:`\overline{oa} = 5\mathrm{\ \mu s}`. 以 :math:`G` 的同时观判断, :math:`G'` 的读数为 :math:`ob` 的线长. 实际看见的读数则为 :math:`oc` 的线长, 其中 :math:`ac` 为类光测地线. 令 :math:`t_0 = 5\mathrm{\ \mu s}`, 有
    
    .. math:: 
        \overline{ab} =&\ ut_0 \\
        \overline{ob} =&\ \sqrt{\overline{oa}^2 - \overline{ab}^2} = \sqrt{t_0^2 - (ut_0)^2} = \sqrt{1-u^2}t_0 
            = 4\mathrm{\ \mu s}

    令 :math:`\overline{ad} = x`. 有
    
    .. math:: 
        (t_0 - x)^2 - x^2 =&\ \big[ \sqrt{1-u^2} (t_0 - x) \big]^2 \\
        \sqrt{1-(1-u^2)} (t_0 - x) =&\ x
    
    而 :math:`\sqrt{1-(1-u^2)} = u = 0.6`, 得 :math:`1.6 x = 0.6 t_0`, 即 :math:`x = 0.375 t_0`, 于是
    
    .. math:: 
        \overline{oc} = \sqrt{1-u^2} (t_0 - x) = 0.8 (t_0 - 0.375 t_0) = 0.5 t_0 = 2.5 \mathrm{\ \mu s}
    
    注意, 由于闵氏时空也是平直时空, 所以普通几何的线段平行、长度的和差、平移性、对称性都适用, 只是勾股定理需要改变 (这会影响指向不同的线段之间的长度关系). 现在斜边长度的平方等于两直角边长度平方之差. 即若在直角三角形 :math:`ABC` 中, :math:`AC` 是斜边, 则有
    
    .. math:: 
        AC^2 = \big\lvert AB^2 -BC^2 \big\rvert

.. admonition:: 题目 6.2

    远方星体以 :math:`0.8c` 的速率 (匀速直线地) 离开我们, 我们测得它辐射来的闪光按5昼夜的周期变化. 用时空图求星上观者测得的闪光周期.

.. admonition:: 题解 6.2

    此题为光波的多普勒效应. :math:`u = 0.8c, \omega' = 1/5`. 由于
    
    .. math:: 
        \omega' = \sqrt{\frac{1-u}{1+u}}\omega = \frac{1}{3} \omega
    
    因此星上观者测得的闪光周期为 :math:`\omega = 3\omega' = 3/5, T = 1/\omega = 5/3` 昼夜.

.. admonition:: 题目 6.3

    把图6-20的 :math:`oa` 段和 :math:`oe` 段线长分别记作 :math:`\tau` 和 :math:`\tau'`. (a) 用两钟的相对速率 :math:`u` 表出 :math:`\tau'/\tau`; (b) 在 :math:`u = 0.6c` 和 :math:`u = 0.8c` 两种情况下求出 :math:`\tau'/\tau` 的数值.

.. admonition:: 题解 6.3

    下图表示 :math:`C` 钟 (观者 :math:`G`) 和 :math:`C'` 钟在 :math:`o` 点对齐, 在此之前的 :math:`a` 点, :math:`G` 左眼看自己的钟, 右眼看 :math:`C'` 钟, 发现动钟较快.

    .. tikz::
        \draw[line width=1pt] (0, -5) -- (0, 0);
        \draw[line width=1pt] (1.75, -4) -- (0, 0);
        \draw[<-,line width=1pt] (0, -2) -- (1.5, -3.5);
        \draw[smooth, samples=100,domain=-0.8:0.8] plot({2* sinh(\x)}, {-2*cosh(\x)});
        \fill[black] (0, 0) circle (0.08) node[right] {$o$};
        \fill[black] (0, -2) circle (0.08) node[right] {$a$};
        \fill[black] (1.5, -3.5) circle (0.08) node[right] {$e$};
        \fill[black] (0, -3.5) circle (0.08) node[right] {$b$};
        \draw (0, -3.5) -- (1.5, -3.5);
        \node[right] at (-2,-2) {\small 校准曲线};
        \node[right] at (0.5,-0.7) {\small $C'$ 钟};
        \node[right, rotate=90] at (-0.3, -5) {\small $C$ 钟 (观者 $G$)};
    
    (a) 由图可知, :math:`\overline{oe} = \overline{ob} / \gamma`. 令 :math:`\overline{be} = \overline{ab} = x`, 得
    
        .. math:: 
            (\tau + x)^2 - x^2 =&\ \tau'^2 = \left(\frac{\overline{ob}}{\gamma}\right)^2 = \frac{(\tau + x)^2}{\gamma^2} = \frac{(\tau + x)^2}{(1-u^2)^{-1}} \\
            \sqrt{1-(1-u^2)} (\tau + x) =&\ u(\tau + x) = x \\
            \tau =&\ \frac{1-u}{u} x \\
            \tau' =&\ \frac{\overline{ob}}{\gamma} = \left(\frac{1-u}{u}x + x \right)\sqrt{1-u^2} = \frac{\sqrt{1-u^2}}{u}x \\
            \frac{\tau}{\tau'} =&\ \frac{1-u}{u} \cdot \frac{u}{\sqrt{1-u^2}} = \sqrt{\frac{1-u}{1+u}}
    
        这其实是相向而行情况的多普勒效应, 注意频率和周期因子互为倒数.
    
    (b) :math:`u = 0.6c` 时,
    
        .. math:: 
            \frac{\tau'}{\tau} = \sqrt{\frac{1+u}{1-u}} = \sqrt{\frac{1.6}{0.4}} = 2

        :math:`u = 0.8c` 时,

        .. math:: 
            \frac{\tau'}{\tau} = \sqrt{\frac{1+u}{1-u}} = \sqrt{\frac{1.8}{0.2}} = 3

.. admonition:: 题目 6.4

    惯性质点 :math:`A, B, C` 排成一直线并沿此线相对运动, 相对速率 :math:`u_{BA} = 0.6c, u_{CA} = 0.8c`, :math:`A, B` 所在惯性系各为 :math:`\mathscr{R}_A` 和 :math:`\mathscr{R}_B`. 设 :math:`\mathscr{R}_B` 系认为 (测得) :math:`C` 走了 60m, 画出时空图并求 :math:`\mathscr{R}_A` 认为 (测得) 这一过程的时间.

    .. tikz::

        \draw[line width=1pt] (0, 0) -- (5, 0);
        \fill[black] (0, 0) circle (0.05) node[below] {$A$};
        \fill[black] (1.3, 0) circle (0.05) node[below] {$B$};
        \fill[black] (2.6, 0) circle (0.05) node[below] {$C$};
        \draw[->,line width=1pt] (1.3, 0.6) -- (2, 0.6);
        \draw[->,line width=1pt] (2.6, 0.6) -- (3.4, 0.6);
        \draw[white] (0, 1) -- (1, 1);

.. admonition:: 题解 6.4

    .. tikz::

        \draw[line width=1pt] (0, 0) -- (6, 0);
        \fill[black] (0, 0) circle (0.08) node[below] {$A$};
        \fill[black] (1.3, 0) circle (0.08) node[below] {$B$};
        \fill[black] (2.6, 0) circle (0.08) node[below] {$C$};
        \draw[->,line width=1pt] (1.3, -0.3) -- (2, -0.3);
        \draw[->,line width=1pt] (2.6, -0.3) -- (3.4, -0.3);
        \draw[->,line width=1pt] (2.6, 0) -- (2.6, 4) node[above] {$t_A$};
        \draw[->,line width=1pt] (2.6, 0) -- (3.8, 4) node[above] {$t_B$};
        \draw[->,line width=1pt] (2.6, 0) -- (5, 4) node[above] {$t_C$};
        \draw[->,line width=1pt] (2.6, 0) -- (6, 1.2) node[above] {$x_B$};
        \draw[->,line width=1pt] (2.6, 1.786) -- (6, 3) node[above] {$x_B$};
        \draw[->,line width=1pt] (2.6, 2.3) -- (6, 2.3) node[right] {$x_A$};
        \draw (3.2, 2) -- (2.6, 2);
        \fill[black] (3.2, 2) circle (0.08) node[right] {$c$};
        \fill[black] (2.6, 2.3) circle (0.08) node[left] {$a$};
        \fill[black] (4, 2.3) circle (0.08) node[above] {$b$};
        \fill[black] (2.6, 1.786) circle (0.08) node[left] {$d$};
        \fill[black] (2.6, 2) circle (0.08) node[left] {$e$};
        \fill[black] (2.6, 0) circle (0.08) node[above left] {$o$};

    如图, 已知 :math:`\overline{ob} = \gamma_{CA}^{-1}\overline{oa}, \overline{bd} = \gamma_{BA}^{-1}\overline{ab}`. 已知 :math:`\overline{cb}` 求 :math:`\overline{ab}`.

    思路如下: 设 :math:`\overline{ec} = x`. 则可得到 :math:`ec, cd, ed, co, oe, od` 的长度. 设 :math:`\overline{ab} = y`. 则可得到 :math:`ab, oa, ob, ad, bd, od` 的长度. 利用 :math:`od` 长度相等可以消去一个变量. 消去变量后由于 :math:`\overline{bd} = \overline{bc} + \overline{cd}` 而 :math:`\overline{bc}` 已知, 可求出未知量.

    首先 :math:`\overline{ec} = u_{BA}\overline{oe}, \overline{ed} = u_{BA}\overline{ec}` 得 :math:`\overline{ed} = u_{BA}^2\overline{oe}`, 从而 :math:`\overline{od} = \overline{oe} - \overline{ed} = (1-u_{BA}^2)\overline{oe}`.

    类似地, :math:`\overline{ab} = u_{CA}\overline{oa}, \overline{ad} = u_{BA}\overline{ab}` 得 :math:`\overline{ad} = u_{BA}u_{CA}\overline{oa}`, 从而 :math:`\overline{od} = \overline{oa} - \overline{ad} = (1-u_{CA}u_{BA})\overline{oa}`. 于是 :math:`(1-u_{CA}u_{BA}^2)\overline{oa} = (1-u_{BA}^2)\overline{oe}` 得到 :math:`\overline{oa} = \frac{1-u_{BA}^2}{1-u_{CA}u_{BA}}\overline{oe}`. 于是
    
    .. math:: 
        \overline{bd} =&\ \gamma_{BA}^{-1} \overline{ab} = \frac{u_{CA}}{\gamma_{BA}}\overline{oa} 
        = \frac{u_{CA}}{\gamma_{BA}} \frac{1-u_{BA}^2}{1-u_{CA}u_{BA}}\overline{oe} \\
        =&\ \sqrt{1-u_{BA}^2} u_{CA}\frac{1-u_{BA}^2}{1-u_{CA}u_{BA}}\overline{oe}
        = \frac{u_{CA} (1-u_{BA}^2)^{3/2}}{1-u_{CA}u_{BA}} \overline{oe} \\
        \overline{cd} =&\ \gamma_{BA}^{-1} \overline{ec} = \frac{u_{BA}}{\gamma_{BA}}\overline{oe}
        = u_{BA}\sqrt{1-u_{BA}^2} \overline{oe} \\
        \overline{bc} =&\ \overline{bd} - \overline{cd} = \left[ u_{CA}\frac{1-u_{BA}^2}{1-u_{CA}u_{BA}} - u_{BA} \right] \sqrt{1-u_{BA}^2} \overline{oe} \\
        =&\ \left[ \frac{u_{CA}-u_{CA}u_{BA}^2 -u_{BA} + u_{CA}u_{BA}^2}{1-u_{CA}u_{BA}} \right] \sqrt{1-u_{BA}^2} \overline{oe} \\
        =&\ \frac{u_{CA}-u_{BA}}{1-u_{CA}u_{BA}} \sqrt{1-u_{BA}^2} \overline{oe}
    
    另一方面
    
    .. math:: 
        \overline{ab} =&\ u_{CA}\overline{oa} = u_{CA} \frac{1-u_{BA}^2}{1-u_{CA}u_{BA}}\overline{oe} \\
        =&\ u_{CA} \frac{1-u_{BA}^2}{1-u_{CA}u_{BA}} \frac{1}{\sqrt{1-u_{BA}^2}} \frac{1-u_{CA}u_{BA}}{u_{CA}-u_{BA}} \overline{bc} \\
        =&\ \frac{u_{CA} \sqrt{1-u_{BA}^2}}{u_{CA} - u_{BA}} \overline{bc}
        = \frac{0.8 \sqrt{1-0.6^2}}{0.8 - 0.6} \cdot 60\mathrm{\ m} = 192\mathrm{\ m}
    
    但是求的是过程的时间, 因此是 :math:`oa` 线长. 则
    
    .. math:: 
        t = \frac{192\mathrm{\ m}}{0.8\cdot 3\times 10^8 \mathrm{\ m/s}} = 8\times 10^{-7}\mathrm{\ s}

.. admonition:: 题目 6.5

    :math:`A, B` 是同一惯性系的两个惯性观者, 他们互相发射中子, 每一中子以相对速率 :math:`0.6c` 离开中子枪. 设 :math:`B` 测得 :math:`B` 枪的中子发射率为 :math:`10^4\mathrm{\ s^{-1}}` (即每秒发 :math:`10^4` 个), 求 :math:`A` 所发中子 (根据中子自己的标准钟) 测得的 :math:`B` 枪的中子发射率 (要求画时空图求解).

.. admonition:: 题解 6.5

    .. tikz::
        \draw[line width=1pt] (0, 0) -- (0, 6) node[above] {$A$};
        \draw[line width=1pt] (2, 0) -- (2, 6) node[above] {$B$};
        \draw[->, line width=1pt] (0, 0.5) -- (2, 3) node[right] {$b$};
        \draw[->, line width=1pt] (2, 3) -- (0, 5.5);
        \draw[->, line width=1pt] (2, 1) node[right] {$d$} -- (0, 3.5);
        \draw[line width=1pt] (2, 2) node[right] {$c$} -- (1.2, 2) node[left] {$a$};

    如图, 已知 :math:`bd` 线长为 :math:`10^{-4}\mathrm{\ s}`, 求 :math:`ab` 线长. 首先 :math:`\overline{bc} = \frac{1}{2} \overline{bd}`, 则
    
    .. math:: 
        \overline{ab} = \sqrt{1 - u^2} \overline{bc} = \frac{\sqrt{1 - u^2}}{2} \overline{bd} = 0.4 \overline{bd} = 4\times 10^{-5}\mathrm{\ s}
    
    于是 :math:`A` 所发中子测得的 :math:`B` 枪的中子发射率为 :math:`2.5\times 10^{-4}\mathrm{\ s}`.

.. admonition:: 题目 6.6

    静止 :math:`\mu` 子的平均寿命为 :math:`\tau_0 = 2\times 10^{-6}\mathrm{\ s}`. 宇宙线产生的 :math:`\mu` 子相对于地球以 :math:`0.995c` 的速率匀速直线下落, 用时空图求地球观者测得的 (a) :math:`\mu` 子的平均寿命; (b) :math:`\mu` 子在其平均寿命内所走过的距离.

.. admonition:: 题解 6.6

    .. tikz::
        \draw[->, line width=1pt] (0, 0) node[left] {$o$} -- (0, 5) node[above] {$t$};
        \draw[->, line width=1pt] (0, 0) -- (4, 0) node[right] {$x$};
        \draw[->, line width=1pt] (0, 0) -- (2.5, 5) node[above] {$t'$};
        \draw[line width=1pt] (1.3, 2.6) node[right] {$b$} -- (0, 2.6) node[left] {$a$};

    如图, :math:`ob` 线长为 :math:`\tau_0`, 地球观者测得的 :math:`\mu` 子的平均寿命为 :math:`oa` 线长, :math:`\mu` 子在其平均寿命内所走过的距离为 :math:`ab` 线长. 于是
    
    .. math:: 
        \overline{oa} =&\ \frac{1}{\sqrt{1-u^2}}\overline{ob} = \frac{2\times 10^{-6}\mathrm{\ s}}{\sqrt{1-0.995^2}} = 2.0025 \times 10^{-5} \mathrm{\ s} \\
        \overline{ab} =&\ u \overline{oa} = 0.995 \times 3\times 10^8 \mathrm{\ m/s} \times 2.0025 \times 10^{-5} \mathrm{\ s} = 5977 \mathrm{\ m}

.. admonition:: 题目 6.7

    从惯性系 :math:`\mathscr{R}` 看来 (认为, 测得), 位于某地 :math:`A` 的两标准钟甲、乙指零时开始以速率 :math:`v = 0.6c` 一同做匀速直线运动, 两钟指 :math:`1\mathrm{\ s}` 时到达某地 :math:`B`. 甲钟在到达 :math:`B` 时立即以速率 :math:`v` 向 :math:`A` 地匀速返回, 乙钟在 :math:`B` 地停留 :math:`1\mathrm{\ s}` (按他的钟) 后以速率 :math:`v` 向 :math:`A` 地匀速返回. 另有丙钟一直呆在 :math:`A` 地, 且当甲、乙离 :math:`A` 地时也指零, (a) 画出甲、乙、丙的世界线; (b) 求乙钟返回 :math:`A` 地时三钟的读数 :math:`\tau_{\text{甲}}, \tau_{\text{乙}}` 和 :math:`\tau_{\text{丙}}`.

.. admonition:: 题解 6.7

    .. tikz::
        \draw[->, line width=1pt] (0, 0) -- (1, 0) node[below] {$A$} -- (2, 0) node[below] {$B$} -- (3, 0) node[right] {$x$};
        \draw[->, line width=1pt] (0, 0) -- (0, 6) node[above] {$t$};
        \draw[line width=1pt] (1, 0) -- (1, 3) node[left] {丙} -- (1, 6);
        \draw[dashed, line width=1pt] (2, 0) -- (2, 6);
        \draw[line width=1pt] (1, 0) -- (2, 2) node[right] {$a$} -- (1, 4) node[left] {甲};
        \draw[line width=1pt] (2, 2) -- (2, 3) node[right] {$b$} -- (1, 5) node[left] {乙};

    由题意 :math:`Aa` 线长为 :math:`1\mathrm{\ s}`, :math:`ab` 线长也为 :math:`1\mathrm{\ s}`. 易知 :math:`\tau_{\text{甲}} = \tau_{\text{乙}} = 1+1+1 = 3\mathrm{\ s}`. 而丙钟的读数
    
    .. math:: 
        \tau_{\text{丙}} = 1\mathrm{\ s} + \frac{1}{\sqrt{1-v^2}} \cdot 2\mathrm{\ s} = 3.5\mathrm{\ s}

.. admonition:: 题目 6.8

    (单选题) 双子 :math:`A, B` 静止于某惯性系 :math:`\mathscr{R}` 中的同一时空点上. :math:`A` 从某时刻 (此时  :math:`A, B` 年龄相等) 开始向东以速率 :math:`u` 相对于 :math:`\mathscr{R}` 系做惯性运动, 一段时间以后 :math:`B` 以速率 :math:`v > u` 向东追上 :math:`A`, 则相遇时 :math:`A` 的年龄 (1) 比 :math:`B` 大, (2) 比 :math:`B` 小, (3) 与 :math:`B` 等.

.. admonition:: 题解 6.8

    .. tikz::
        \draw[->, line width=1pt] (0, 0) -- (3, 0) node[right] {$x$};
        \draw[->, line width=1pt] (0, 0) -- (0, 3) node[above] {$t$};
        \draw[line width=1pt] (0, 1.4) node[above right] {$B$} -- (2.5, 2.5);
        \draw[line width=1pt] (0, 0) node[left] {$O$} -- (2.5, 2.5) node[below] {$A$};

    由图易知, :math:`A` 经过的时间 :math:`OA` 为测地线, :math:`B` 经过的时间为 :math:`OB+BA`. 测地线最长, 所以 :math:`A` 的年龄比 :math:`B` 大. 选 (1).

.. admonition:: 题目 6.9

    标准钟 :math:`A, B` 静止于某惯性系中的同一空间点上. :math:`A` 钟从某时刻开始以速率 :math:`u = 0.6c` 匀速直线飞出, :math:`2\mathrm{\ s}` (根据 :math:`A` 钟) 后以 :math:`u = 0.6c` 匀速直线返航. 已知分手时两钟皆指零. (1) 求重逢时两钟的读数; (2) 当 :math:`A` 钟指 :math:`3\mathrm{\ s}` 时 :math:`A` 看见 :math:`B` 钟指多少?

.. admonition:: 题解 6.9

    :math:`A` 钟总共经过了 :math:`2+2=4` 秒. :math:`A` 钟的读数为 :math:`\tau_A = 4` 秒. :math:`B` 钟的读数为
    
    .. math:: 
        \tau_B = \frac{1}{\sqrt{1-u^2}} \tau_A = 1.25 \times 4\mathrm{\ s} = 5\mathrm{\ s}
    
    .. tikz::
        \draw[->, line width=1pt] (0, 0) -- (3, 0) node[right] {$x$};
        \draw[->, line width=1pt] (0, 0) -- (0, 5) node[above] {$t$};
        \draw[line width=1pt] (0, 0) node[left] {$o$} -- (1, 2) node[right]{$a$} -- (0, 4) node[left] {$b$};
        \draw[line width=1pt] (0.5, 3) node[right] {$c$} -- (0, 3) node[left] {$d$};
        \draw[line width=1pt] (0.5, 3) -- (0, 2.5) node[left] {$e$};

    当 :math:`A` 钟指 :math:`3\mathrm{\ s}` 时, :math:`A` 在 :math:`c` 处, :math:`ec` 为类光测地线, :math:`A` 看见 :math:`B` 钟的读数为 :math:`oe` 线长. 由于 :math:`bc = 1`, 得 :math:`bd = 1.25`, :math:`cd = de = bd \times u = 1.25 \cdot 0.6 = 0.75`, 于是 :math:`oe = ob - bd - de = 5 - 1.25 - 0.75 = 3\mathrm{\ s}`.

.. admonition:: 题目 6.10

    地球自转线速率在赤道之值约为每小时 :math:`1600\mathrm{\ km}`. 甲、乙为赤道上的一对孪生子. 甲乘飞机以每小时 :math:`1600\mathrm{\ km}` 的速率向西绕赤道飞行一圈后回家与乙重逢 (忽略地球和太阳引力场的影响. 由第7章可知引力的存在对应于时空的弯曲). (a) 画出地球表面的世界面和甲、乙的世界线 (甲相对于地面的运动抵消了地球自转的效应, 所以甲是惯性观者); (b) 甲与乙中谁更年轻? (c) 两者年龄差多少? (答: 约为 :math:`10^{-7}\mathrm{\ s}`). 注: 本实验已于1971年完成, 当然不是对人而是对铯原子钟.

.. admonition:: 题解 6.10

    .. tikz::
        \draw[->, line width=1pt] (0, 0) -- (3, 0) node[right] {$x$};
        \draw[->, line width=1pt] (0, 0) -- (0, 5) node[above] {$t$};
        \draw[line width=1pt] (0, 0) node[left] {$o$} -- (1, 2) node[right]{$a$} -- (0, 4) node[left] {$b$};
    
    如图, :math:`ob` 为甲的世界线, :math:`oab` 为乙的世界线. 甲经过的时间为
    
    .. math:: 
        t_1 = 3600\mathrm{\ s} \times 24 = 86400\mathrm{\ s}
    
    乙经过的时间为
    
    .. math:: 
        \frac{u}{c} =&\ 1600\times 10^3 \mathrm{\ m/h} \times \frac{1}{3600} \mathrm{\ h/s} \times \frac{1}{3\times 10^8\mathrm{\ m/s}} = 1.481\times 10^{-6} \\
        t_2 =&\ \gamma^{-1} t_1 = \sqrt{1-(u/c)^2} t_1 = \big(1-1.10\times 10^{-12}\big)t_1 \\
        t_1 - t_2 =&\ 1.10\times 10^{-12} \times  86400\mathrm{\ s} = 9.48\times 10^{-8}\mathrm{\ s}
    
    所以乙更年轻, 年龄差 :math:`9.48\times 10^{-8}\mathrm{\ s}`.

.. admonition:: 题目 6.11

    静长 :math:`l = 5m` 的汽车以 :math:`u = 0.6c` 的速率匀速进库, 库有坚硬后墙. 为简化问题, 假定车头撞墙的信息以光速传播, 车身任一点接到信息立即停下. (a) 设司库测得在车头撞墙的同时车尾的钟 :math:`C_W` 指零, 求车尾 "获悉" 车头撞墙这一信息时 :math:`C_W` 的度数; (b) 求车完全停下后的静长 :math:`\hat{l}`; (c) 用 :math:`u` 表出新旧静长比 :math:`\hat{l}/l`.

.. admonition:: 题解 6.11

    .. tikz::
        \draw[line width=1pt] (0, 0) -- (0, 6) node[above] {库门};
        \draw[line width=1pt] (2, 0) -- (2, 6) node[above] {库墙};
        \draw[line width=1pt] (0, 4) -- (2, 4) node[right] {$a$};
        \draw[dashed, line width=1pt] (0, 0) -- (2.5, 5);
        \draw[dashed, line width=1pt] (-1.6, 0) -- (1.4, 6);
        \draw[line width=1pt] (2, 4) -- (0.933, {6-0.933}) node[left] {$b$};
        \draw[->, line width=1pt] (2, 4) -- (1.5, 4.5);
        \draw[line width=1pt] (2, {6-0.933}) node[right] {$d$} -- (0.933, {6-0.933}) -- (0.933, 4) node[below] {$c$};
        \node[below] at (0.4, 4) {$e$};
    
    如图, :math:`ae` 线长为在司库坐标系测得的车长. :math:`be` 线长为 :math:`C_W` 的读数. 车完全停下后的静长为 :math:`bd` 线长. 则
    
    .. math:: 
        \overline{ae} =&\ \gamma^{-1} l = \sqrt{1-u^2} l \\
        \overline{ae} =&\ \overline{ec} + \overline{ca} = \overline{ec} + \overline{cb} = \left(1 + \frac{1}{u} \right) \overline{ec} \\
        \hat{l} =&\ \overline{bd} = \overline{bc} = \frac{1}{u} \overline{ec} = \frac{1}{u} \left(1 + \frac{1}{u} \right)^{-1} \sqrt{1-u^2} l \\
        =&\ \frac{\sqrt{1-u^2}}{u+1} l = \sqrt{\frac{1-u}{1+u}} l = \frac{l}{2} \\
        \hat{l}/l =&\ \sqrt{\frac{1-u}{1+u}} \\
        \overline{be} =&\ \gamma^{-1} \overline{bc} = \sqrt{1-u^2} \sqrt{\frac{1-u}{1+u}} l/c = (1-u) l/c = 0.4 (l / c) = 2\mathrm{\ m} / c = 6.67\times 10^{-9} \mathrm{\ s}

.. admonition:: 题目 6.12

    试证 [命题6-3-4] 质点世界线上各点的4加速 :math:`A^a` 与4速 :math:`U^a` 正交, 即 :math:`A^aU_a = \eta_{ab}A^aU^b = 0`.

.. admonition:: 题解 6.12

    由定义 :math:`A^a = U^b \partial_b U^a` 得
    
    .. math:: 
        A^aU_a =&\ U^b U_a (\partial_b U^a) = U^b (\partial_b U^aU_a) - U^b U^a (\partial_b U_a) = U^b (\partial_b U^aU_a) - U^b U_a (\partial_b U^a) \\
        2A^aU_a =&\ U^b (\partial_b U^aU_a) = 0
    
    其中利用了闵氏度规是和导数算符相适配的, 所以可以跨越导数算符升降指标. 最后一步利用了 :math:`U^aU_a = -1`.

.. admonition:: 题目 6.13

    设观者世界线为 :math:`t\sim x` 面内的双曲线 :math:`G`, 图中 :math:`K` 值为已知, :math:`A^a` 为观者的4加速, 求 :math:`A^aA_a` (结论是 :math:`A^aA_a` 为常数, 因此 :math:`G` 称为匀加速运动观者. 请注意这指的是4加速.)

    .. tikz::

        \draw[->] (-2.4, 0) -- (2.4, 0) node[right] {$x$};
        \draw[->] (0, -2.4) -- (0, 2.4) node[above] {$t$};
        \draw[dash dot] (-2, -2) -- (2, 2);
        \draw[dash dot] (-2, 2) -- (2, -2);
        \draw[smooth, samples=100,domain=-1.3:1.3,line width=1.5pt] plot({cosh(\x)}, {sinh(\x)});
        \draw[line width=1.5pt] (0, 0) -- (1, 0);
        \node[below] at (0.5, 0) {$K$};
        \node[right] at (1.2, 0.6) {$G$};

.. admonition:: 题解 6.13

    设双曲线为 :math:`x = K \mathrm{ch}\tau', \quad t = K\mathrm{sh}\tau', \quad y=z=0`. 而当 :math:`\tau' \to 0` 时, 应有 :math:`t = \tau`, 其中 :math:`\tau` 为固有时即线长参数. 于是有 :math:`\tau = K\tau'`. 则双曲线方程为
    
    .. math:: 
        x = K \mathrm{ch}(\tau / K), \quad t = K \mathrm{sh}(\tau / K),\quad y=z=0
    
    于是可以得到 :math:`U^a` 的坐标系分量
    
    .. math:: 
        \frac{\partial}{\partial \tau} =&\ \frac{\partial x}{\partial \tau} \frac{\partial}{\partial x} + \frac{\partial t}{\partial \tau} \frac{\partial}{\partial t} \\
        =&\ \mathrm{sh}(\tau / K) \frac{\partial}{\partial x} + \mathrm{ch}(\tau / K)\frac{\partial}{\partial t} \\
        =&\ \frac{t}{K} \frac{\partial}{\partial x} + \frac{x}{K} \frac{\partial}{\partial t}
    
    从而
    
    .. math:: 
        A^a =&\ U^b\partial_b U^a = \left(\frac{\partial}{\partial x^\mu} \right)^a U^b\partial_b U^\mu = \left(\frac{\partial}{\partial x^\mu} \right)^a \frac{\partial U^\mu}{\partial \tau} \\
        =&\ \left(\frac{\partial}{\partial x} \right)^a \frac{\partial \frac{t}{K} }{\partial \tau}
            +\left(\frac{\partial}{\partial t} \right)^a \frac{\partial \frac{x}{K} }{\partial \tau} \\
        =&\ \frac{x}{K^2} \left(\frac{\partial}{\partial x} \right)^a+ \frac{t}{K^2} \left(\frac{\partial}{\partial t}\right)^a

    则
    
    .. math:: 
        A^aA_a = \left(\frac{x}{K^2} \right)^2 - \left(\frac{t}{K^2} \right)^2 = \frac{x^2 - t^2}{K^4}
    
    利用 :math:`\mathrm{ch}^2 x - \mathrm{sh}^2 x = 1` 得
    
    .. math:: 
        \frac{x^2 - t^2}{K^4} = \frac{\mathrm{ch}^2(\tau / K) - \mathrm{sh}^2(\tau / K)}{K^2} = \frac{1}{K^2} = \mathrm{const}
    
    因此 :math:`A^aA_a` 为常数.

.. admonition:: 题目 6.14

    试证 [命题6-6-2] 设惯性系 :math:`\mathscr{R}` 和 :math:`\mathscr{R}'` 由洛伦兹变换

    .. math:: 
        t = \gamma(t' + vx'),\quad x = \gamma (x'+v t'),\quad y = y',\quad z = z'

    相联系, 则两者测同一电磁场 :math:`F_{ab}` 所得值 :math:`(\bm{E}, \bm{B})` 和 :math:`(\bm{E}', \bm{B}')` 有如下关系

    .. math:: 
        E'_1 =&\ E_1, \quad E'_2 = \gamma(E_2 - vB_3),\quad E'_3 = \gamma(E_3 + v B_2); \\
        B'_1 =&\ B_1, \quad B'_2 = \gamma (B_2 + vE_3), \quad B'_3 = \gamma (B_3 -vE_2)

.. admonition:: 题解 6.14

    由于 :math:`F_{ab}` 是张量, 而 :math:`E_a, B_a` 依赖于参考系, 有
    
    .. math:: 
        E'_\mu = F'_{\mu\nu}Z'^\nu,\quad B'_\mu = -{}^*F'_{\mu\nu}Z'^\nu
    
    由张量变换律
    
    .. math:: 
        F'_{\mu\nu} = \frac{\partial x^\sigma}{\partial x'^\mu}\frac{\partial x^\rho}{\partial x'^\nu} F_{\sigma\rho}
    
    得
    
    .. math:: 
        F'_{00} =&\ \frac{\partial x^\sigma}{\partial t'} \frac{\partial x^\rho}{\partial t'} F_{\sigma\rho} 
            = \frac{\partial x^{(\sigma}}{\partial t'} \frac{\partial x^{\rho)}}{\partial t'} F_{[\sigma\rho]} = 0\\
        F'_{10} =&\ \frac{\partial x^\sigma}{\partial x'} \frac{\partial x^\rho}{\partial t'} F_{\sigma\rho} 
            = \left(\frac{\partial x}{\partial x'} \frac{\partial t}{\partial t'} - \frac{\partial t}{\partial x'} \frac{\partial x}{\partial t'} \right) F_{10} = (\gamma^2 - v^2\gamma^2) F_{10} = F_{10} \\
        F'_{20} =&\ \frac{\partial x^\sigma}{\partial y'} \frac{\partial x^\rho}{\partial t'} F_{\sigma\rho} 
            = \frac{\partial y}{\partial y'} \left( \frac{\partial t}{\partial t'} F_{20} + \frac{\partial x}{\partial t'} F_{21} \right) = \gamma (F_{20} - vF_{12}) \\
        F'_{30} =&\ \frac{\partial x^\sigma}{\partial z'} \frac{\partial x^\rho}{\partial t'} F_{\sigma\rho} 
            = \frac{\partial z}{\partial z'} \left( \frac{\partial t}{\partial t'} F_{30} + \frac{\partial x}{\partial t'} F_{31} \right) = \gamma (F_{30} + vF_{31}) \\
        {}^*F'_{00} =&\ 0 \\
        {}^*F'_{10} =&\ F'^{23}\varepsilon_{2310} = -F'_{23} = -\frac{\partial x^\sigma}{\partial y'} \frac{\partial x^\rho}{\partial z'} F_{\sigma\rho} 
            = -\frac{\partial y}{\partial y'} \frac{\partial z}{\partial z'} F_{23} = -F_{23} \\
        {}^*F'_{20} =&\ F'^{31}\varepsilon_{3120} = -F'_{31} = -\frac{\partial x^\sigma}{\partial z'} \frac{\partial x^\rho}{\partial x'} F_{\sigma\rho} 
            = -\frac{\partial z}{\partial z'} \left( \frac{\partial x}{\partial x'} F_{31} + \frac{\partial t}{\partial x'} F_{30} \right) = - \gamma( F_{31} + v F_{30} ) \\
        {}^*F'_{30} =&\ F'^{21}\varepsilon_{2130} = F'_{21} = \frac{\partial x^\sigma}{\partial y'} \frac{\partial x^\rho}{\partial x'} F_{\sigma\rho} 
            = \frac{\partial y}{\partial y'} \left( \frac{\partial x}{\partial x'} F_{21} + \frac{\partial t}{\partial x'} F_{20} \right) = \gamma( F_{21} + v F_{20} )
    
    于是
    
    .. math:: 
        E'_1 =&\ F'_{10} = F_{10} = E_1 \\
        E'_2 =&\ F'_{20} = \gamma (F_{20} - vF_{12}) = \gamma (E_2 - vB_3) \\
        E'_3 =&\ F'_{30} = \gamma (F_{30} + vF_{31}) = \gamma (E_3 + vB_2) \\
        B'_1 =&\ -{}^*F'_{10} = F_{23} = B_1\\
        B'_2 =&\ -{}^*F'_{20} = \gamma( F_{31} + v F_{30} ) = \gamma(B_2 + vE_3) \\
        B'_3 =&\ -{}^*F'_{30} = -\gamma( F_{21} + v F_{20} ) = \gamma(B_3 - vE_2)

.. admonition:: 题目 6.15

    设瞬时观者测 :math:`F_{ab}` 所得电场和磁场分别为 :math:`E^a` 和 :math:`B^a` (也记作 :math:`\bm{E}` 和 :math:`\bm{B}`), 试证
    
    (a) :math:`F_{ab}F^{ab} = 2(B^2-E^2)`,
    (b) :math:`F_{ab}\ {}^*F^{ab} = 4\bm{E}\cdot \bm{B}`. 提示: 可用惯性坐标基底把 :math:`F_{ab}\ {}^*F^{ab}` 写成分量表达式.

    注: 本题表明, 虽然 :math:`\bm{E}` 和 :math:`\bm{B}` 都是观者依赖的, :math:`B^2 - E^2` 和 :math:`\bm{E} \cdot \bm{B}` 却同观者无关. 事实上,由 :math:`F_{ab}` 能构造的独立的不变量只有这两个.

.. admonition:: 题解 6.15

    (a) 由于提升指标时, 若含有零指标则需添加负号, 否则不用添加. 因此电场分量带有负号. 得
    
    .. math:: 
        F_{ab}F^{ab} =&\ F_{\mu\nu} F^{\mu\nu} = F_{10}F^{10} + F_{20}F^{20} + F_{30}F^{30} + F_{12}F^{12} + F_{13}F^{13} + F_{23}F^{23} \\
            &\ + F_{01}F^{01} + F_{02}F^{02} + F_{03}F^{03} + F_{21}F^{21} + F_{31}F^{31} + F_{32}F^{32} \\
        =&\ -2(F_{10}^2 + F_{20}^2 + F_{30}^2) + 2(F_{12}^2 + F_{13}^2 + F_{23}^2) = 2(B^2 - E^2)
    
    (b) 根据上一题有 :math:`{}^*F_{10} = -F_{23}, \quad {}^*F_{20} = -F_{31},\quad {}^*F_{30} = -F_{12}`. 类似有
    
    .. math:: 
        {}^*F_{23} =&\ F^{01}\varepsilon_{0123} = -F_{01} = F_{10} \\
        {}^*F_{31} =&\ F^{02}\varepsilon_{0231} = -F_{02} = F_{20} \\
        {}^*F_{12} =&\ F^{03}\varepsilon_{0312} = -F_{03} = F_{30}
    
    注意若指标含有零 :math:`{}^*F^{ab} = -{}^*F_{ab}`
    
    .. math:: 
        F_{ab}\ {}^*F^{ab} =&\ F_{\mu\nu}\ {}^*F^{\mu\nu} = F_{10}F_{23} + F_{20}F_{31} + F_{30}F_{12} + F_{12}F_{30} + F_{13}F_{20} + F_{23}F_{10} \\
        &\ + F_{01}F_{32} + F_{02}F_{31} + F_{03}F_{21} + F_{21}F_{03} + F_{31}F_{02} + F_{32}F_{01} \\
        =&\ 4(E_1B_1 + E_2B_2 + E_3B_3) = 4\bm{E}\cdot \bm{B}

.. admonition:: 题目 6.16

    试证命题6-6-5 (只须证后两个麦氏方程). [命题6-6-5] 对任一惯性系 :math:`\{ t, x, y, z \}`, 由 :eq:`4-maxwell` 可导出3维麦氏方程

    .. math:: 
        \bm{\nabla}\cdot \bm{E} = 4\pi\rho, \quad \bm{\nabla}\times \bm{E} = -\frac{\partial \bm{B}}{\partial t},\quad
        \bm{\nabla}\cdot \bm{B} = 0,\quad \bm{\nabla}\times \bm{B} = 4\pi \bm{j} + \frac{\partial \bm{E}}{\partial t}

.. admonition:: 题解 6.16

    (a) :math:`\bm{\nabla}\cdot \bm{B} = 0` 的推导. 利用 :math:`\partial_{[a}F_{bc]}` 得
    
    .. math:: 
        \bm{\nabla}\cdot \bm{B} =&\ \hat{\partial}^aB_a = \partial^aB_a = -\partial^a ({}^*F_{ab}Z^b) \\
         =&\ -Z^b \partial^a ({}^*F_{ab}) = -\frac{1}{2} Z^b \varepsilon_{cdab} \partial^a F^{cd}
        = -\frac{1}{2} Z^b \varepsilon_{[cda]b} \partial^a F^{cd} = -\frac{1}{2} Z^b \varepsilon_{[a|b|cd]} \partial^{[a} F^{cd]} = 0

    (b) :math:`\bm{\nabla}\times \bm{B} = 4\pi \bm{j} + \frac{\partial \bm{E}}{\partial t}` 的推导. 利用 :math:`\partial^aF_{ab} = -4\pi J_b` 得
    
    .. math:: 
        \big( \bm{\nabla}\times \bm{B} \big)_c = \xtensor{\hat{\varepsilon}}{^{ab}}{_c}\hat{\partial}_a B_b
    
    因为 :math:`\xtensor{\hat{\varepsilon}}{^{ab}}{_c} = Z_d \xtensor{\varepsilon}{^{dab}}{_c}` 是三维空间体元, 与其缩并的 :math:`\hat{\partial}_a` 可改为 :math:`\partial_a`, 得
    
    .. math:: 
        \big( \bm{\nabla}\times \bm{B} \big)_c =&\ Z_d \xtensor{\varepsilon}{^{dab}}{_c} \partial_a B_b 
        = - Z_d \xtensor{\varepsilon}{^{dab}}{_c} \partial_a \big( {}^*F_{be}Z^e \big) \\
        =&\ -\frac{1}{2} Z_dZ^e \eta_{ch} \varepsilon^{dabh} \varepsilon_{fgbe} \partial_a F^{fg}
        = -\frac{1}{2} Z_dZ^e \eta_{ch} \varepsilon^{bdah} \varepsilon_{bfge} \partial_a F^{fg} \\
        =&\ \frac{3!}{2} Z_dZ^e \eta_{ch} \xtensor{\delta}{^{[d}}{_f} \xtensor{\delta}{^a}{_g} \xtensor{\delta}{^{h]}}{_e} \partial_a F^{fg} = 3Z_d Z^{[e} \eta_{ce} \partial_a F^{da]} \\
        =&\ Z_d Z^e \eta_{ce} \partial_a F^{da} + Z_d Z^d \eta_{ce} \partial_a F^{ae} + Z_d Z^a \eta_{ce} \partial_a F^{ed} \\
        =&\ - Z_d Z_c \partial_a F^{ad} - \eta_{ce} \partial_a F^{ae} +Z^a Z_d \eta_{ce} \partial_a F^{ed}
    
    其中 (利用 :math:`J^a = \rho Z^a + j^a`)
    
    .. math:: 
        Z^a Z_d \eta_{ce} \partial_a F^{ed} =&\ Z^a Z^d \partial_a F_{cd} = Z^a \partial_a (F_{cd}Z^d) =Z^a \partial_a E_c 
        = \frac{\partial E_c}{\partial t} \\
        - Z_d Z_c \partial_a F^{ad} - \eta_{ce} \partial_a F^{ae} =&\ 4 \pi Z_d Z_c J^d + 4\pi \eta_{ce} J^e = -4\pi \rho  Z_c + 4\pi J_c \\
        =&\ 4\pi (-\rho  Z_c +  \rho Z_c + j_c ) = 4\pi j_c
    
    因此 :math:`\bm{\nabla}\times \bm{B} = 4\pi \bm{j} + \frac{\partial \bm{E}}{\partial t}`.

.. admonition:: 题目 6.17

    试证瞬时观者测得的电磁场能量密度和3动量密度分别为 :math:`T_{00} = (E^2+B^2)/8\pi` 和 :math:`w_i = -T_{i0} = (\bm{E}\times \bm{B})_i / 4\pi, i = 1, 2, 3`. 提示: 用 :math:`F_{ab}` 的对称表达式可简化 :math:`T_{00}` 的计算.

.. admonition:: 题解 6.17

    由定义 :math:`T_{ab} = \frac{1}{8\pi} (F_{ac}\xtensor{F}{_b}{^c} + {}^*F_{ac}\ {}^*\xtensor{F}{_b}{^c})` 得
    
    .. math:: 
        T_{00} =&\ \frac{1}{8\pi} \big( F_{01}\xtensor{F}{_0}{^1} + F_{02}\xtensor{F}{_0}{^2} + F_{03}\xtensor{F}{_0}{^3}
            + {}^*F_{01}\ {}^*\xtensor{F}{_0}{^1} + {}^*F_{02}\ {}^*\xtensor{F}{_0}{^2} + {}^*F_{03}\ {}^*\xtensor{F}{_0}{^3} \big) \\
        =&\ \frac{1}{8\pi} \big( E_1^2 + E_2^2 + E_3 ^2 + B_1^2 + B_2^2 + B_3^2 \big) \\
        =&\ \frac{E^2+B^2}{8\pi}
    
    对第二式, 注意因为有一个指标为零, 故缩并指标只能是空间指标. 得

    .. math:: 
        T_{i0} = \frac{1}{8\pi} \big (F_{i1}\xtensor{F}{_0}{^1} + F_{i2}\xtensor{F}{_0}{^2} + F_{i3}\xtensor{F}{_0}{^3} + {}^*F_{i1}\ {}^*\xtensor{F}{_0}{^1} + {}^*F_{i2}\ {}^*\xtensor{F}{_0}{^2} + {}^*F_{i3}\ {}^*\xtensor{F}{_0}{^3} \big)
    
    由 :math:`B_k = \frac{1}{2}\varepsilon_{ijk} F_{ij}` (因为 :math:`ij` 可调换顺序) 得 :math:`F_{ij} = \varepsilon_{ijk} B_k` (因为 :math:`ij` 不可调换顺序) 和 :math:`\xtensor{F}{_0}{^i} = F_{0i} = -E_i`, 于是
    
    .. math:: 
        &\ F_{i1}\xtensor{F}{_0}{^1} + F_{i2}\xtensor{F}{_0}{^2} + F_{i3}\xtensor{F}{_0}{^3}  \\
        =&\ - \varepsilon_{i1k} B_k E_1 - \varepsilon_{i2k} B_k E_2 - \varepsilon_{i3k} B_k E_3 = -\varepsilon_{ijk} E_j B_k
    
    另外注意到 :math:`{}^*\xtensor{F}{_0}{^i} = {}^*F_{0i} = -{}^*F_{i0} = B_i` 和
    
    .. math:: 
        {}^*F_{ij} = \frac{1}{2} \varepsilon_{\mu\nu ij} F^{\mu\nu} = \varepsilon_{0k ij} F^{0k} = -\varepsilon_{ijk} F_{0k} = \varepsilon_{ijk} E_k
    
    得
    
    .. math:: 
        &\ {}^*F_{i1}\ {}^*\xtensor{F}{_0}{^1} + {}^*F_{i2}\ {}^*\xtensor{F}{_0}{^2} + {}^*F_{i3}\ {}^*\xtensor{F}{_0}{^3} \\
        =&\ \varepsilon_{i1k} E_k B_1 + \varepsilon_{i2k} E_k B_2 + \varepsilon_{i3k} E_k B_3 = \varepsilon_{ijk} E_k B_j
        = -\varepsilon_{ijk} E_j B_k
    
    因此
    
    .. math:: 
        T_{i0} = -2\cdot \frac{1}{8\pi} \cdot \varepsilon_{ijk} E_j B_k = -\frac{1}{4\pi} (\bm{E}\times \bm{B})_i
    
    即 :math:`w_i = -T_{i0} = (\bm{E}\times \bm{B})_i / 4\pi`.

.. admonition:: 题目 6.18

    (a) 试证4电流密度为 :math:`J^a` 的电磁场 :math:`F_{ab}` 的能动张量 :math:`{\color{red}{T_{ab}}}` 满足 :math:`\partial^aT_{ab} = -F_{bc}J^c` (由此可知当 :math:`J^a = 0` 时有 :math:`\partial^a T_{ab} = 0`)
    
    (b) 试证上式在惯性坐标系中的时间分量反映能量守恒. 空间分量反映3动量守恒. 提示: 用4洛伦兹力表达式 (6-6-20) 把 :math:`F_{bc}J^c` 改写为洛伦兹力密度.

.. admonition:: 题解 6.18

    (a) 由 :math:`T_{ab}` 定义得
    
    .. math:: 
        \partial^aT_{ab} =&\ \frac{1}{4\pi} \big[ \partial^a \big( F_{ac} \xtensor{F}{_b}{^c} \big) - \frac{1}{4} \eta_{ab} \partial^a  \big( F_{cd} F^{cd} \big) \big] \\
        =&\ \frac{1}{4\pi} \big[  \xtensor{F}{_b}{^c} \partial^a F_{ac} + F_{ac} \partial^a \xtensor{F}{_b}{^c}
            - \frac{1}{2} \eta_{ab} F^{cd} \partial^a F_{cd} \big] \\
        =&\ \frac{1}{4\pi} \big[ \xtensor{F}{_b}{^c} (-4\pi J_c) + F^{ac} \partial_a F_{bc} -\frac{1}{2}F^{cd}\partial_b F_{cd} \big]
            \\
        =&\ -F_{bc} J^c + \frac{1}{8\pi} \big[ F^{ac} \partial_a F_{bc} - F^{ca} \partial_a F_{bc} - F^{cd}\partial_b F_{cd} \big] \\
        =&\ -F_{bc} J^c + \frac{1}{8\pi} \big[ F^{ac} \partial_a F_{bc} - F^{ac} \partial_c F_{ba} - F^{ca}\partial_b F_{ca} \big] \\
        =&\ -F_{bc} J^c + \frac{1}{8\pi} \big[ F^{ac} \partial_a F_{bc} + F^{ac} \partial_c F_{ab} + F^{ac}\partial_b F_{ca} \big] \\
        =&\ -F_{bc} J^c + \frac{3}{8\pi} F^{ac} \partial_{[a} F_{bc]} = -F_{bc} J^c
    
    (b) 根据4洛伦兹力表达式 :math:`F^a = q\xtensor{F}{^a}{_b}U^b` 得4洛伦兹力密度 :math:`F^a = \rho_0 \xtensor{F}{^a}{_b}U^b = \xtensor{F}{^a}{_b} J^b`. 于是 :math:`F_a = F_{ab} J^b = -\partial^bT_{ba}`. 注意4洛伦兹力密度和通常的4力满足的规律不同. 得
    
    .. math:: 
        F_i =&\ f_i = F_{i0}J^0 + F_{ij}J^j = \rho E_i + F_{ij}j^j = \rho (E_i + F_{ij} u^j) \\
        \bm{f} \cdot \bm{u} =&\ f_i u^i = \rho (E_i u^i + F_{ij} u^j u^i ) = E_i j^i + \rho F_{[ij]} u^{(j} u^{i)} = E_i j^i  \\
        F_0 =&\ F_{0i}J^i = -E_i j^i = -\bm{f} \cdot \bm{u} 

    下面推导能量守恒. 得
    
    .. math:: 
        F_0 =&\ -\bm{f} \cdot \bm{u}  = -\partial^bT_{b0} = \frac{\partial T_{00} }{\partial t} - \frac{\partial T_{i0} }{\partial x^i} \\
        =&\ \frac{\partial \mu }{\partial t} + \frac{\partial w^i }{\partial x^i } = \frac{\partial \mu }{\partial t}  + \bm{\nabla}\cdot \bm{w}
    
    此即 :math:`\frac{\partial \mu }{\partial t}  + \bm{\nabla}\cdot \bm{w} = -\bm{f} \cdot \bm{u}`.

    下面推导动量守恒. 有
    
    .. math:: 
        F_i =&\ f_i = -\partial^b T_{bi} = \frac{\partial T_{0i} }{\partial t} - \frac{\partial T_{j0} }{\partial x^j} \\
        =&\ -\frac{w^i }{\partial t} - \frac{\partial T_{j0} }{\partial x^j}
    
    此即 :math:`\bm{f} + \frac{\bm{w}}{\partial t} = - \bm{\nabla}\cdot T`.

.. admonition:: 题目 6.19

    试证式 (6-6-29) :math:`A_a = -\phi (\D t)_a + a_a` 中的 :math:`a^a` 和 :math:`\phi` 满足 :math:`\bm{B} = \bm{\nabla}\times \bm{a}` 和 :math:`\bm{E} = -\bm{\nabla}\phi - \partial \bm{a} /\partial t`, 因而的确是电动力学中的3矢势和标势.

.. admonition:: 题解 6.19

    由定义 :math:`E_a = F_{ab}Z^b` 和 :math:`F_{ab} = \partial_a A_b - \partial_b A_a` 得
    
    .. math:: 
        E_a =&\ F_{ab}Z^b = (\partial_a A_b - \partial_b A_a) Z^b = \partial_a (A_bZ^b) - Z^b \partial_b A_a 
        = -\partial_a \phi -\frac{\partial A_a}{\partial t} \\
        =&\ -\partial_i \phi (\D x^i)_a - \frac{\partial \phi}{\partial t} (\D t)_a -\left( -\frac{\partial \phi}{\partial t} (\D t)_a
            + \frac{\partial a_i}{\partial t} (\D x^i)_a \right) \\
        =&\ \left( -\partial_i \phi - \frac{\partial a_i}{\partial t} \right) (\D x^i)_a \\
        \bm{E} =&\ -\bm{\nabla}\phi - \frac{\partial \bm{a}}{\partial t}
    
    由定义 :math:`B_a = -{}^*F_{ab}Z^b = -{}^*F_{a0} = -{}^*F_{i0} (\D x^i)_a` 得
    
    .. math:: 
        -{}^*F_{i0} = -\frac{1}{2} \varepsilon_{i0jk}F^{jk} = \frac{1}{2} \varepsilon_{ijk} F_{jk}
    
    从而
    
    .. math:: 
        B_a =&\ \frac{1}{2} \varepsilon_{ijk} F_{jk} (\D x^i)_a \\
        =&\ \frac{1}{2} \varepsilon_{ijk} (\partial_j A_k - \partial_k A_j) (\D x^i)_a \\
        =&\ \frac{1}{2} \varepsilon_{i[jk]} (\partial_{[j} a_{k]} - \partial_{[k} a_{j]}) (\D x^i)_a \\
        =&\ \frac{1}{2} \varepsilon_{i[jk]} (\partial_{[j} a_{k]} + \partial_{[j} a_{k]}) (\D x^i)_a \\
        =&\ \varepsilon_{ijk} \partial_{j} a_{k} (\D x^i)_a \\
        \bm{B} =&\ \bm{\nabla}\times\bm{a}

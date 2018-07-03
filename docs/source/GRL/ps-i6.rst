
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

.. admonition:: 题目 6.6

    静止 :math:`\mu` 子的平均寿命为 :math:`\tau_0 = 2\times 10^{-6}\mathrm{\ s}`. 宇宙线产生的 :math:`\mu` 子相对于地球以 :math:`0.995c` 的速率匀速直线下落, 用时空图求地球观者测得的 (a) :math:`\mu` 子的平均寿命; (b) :math:`\mu` 子在其平均寿命内所走过的距离.

.. admonition:: 题目 6.7

    从惯性系 :math:`\mathscr{R}` 看来 (认为, 测得), 位于某地 :math:`A` 的两标准钟甲、乙指零时开始以速率 :math:`v = 0.6c` 一同做匀速直线运动, 两钟指 :math:`1\mathrm{\ s}` 时到达某地 :math:`B`. 甲钟在到达 :math:`B` 时立即以速率 :math:`v` 向 :math:`A` 地匀速返回, 乙钟在 :math:`B` 地停留 :math:`1\mathrm{\ s}` (按他的钟) 后以速率 :math:`v` 向 :math:`A` 地匀速返回. 另有丙钟一直呆在 :math:`A` 地, 且当甲、乙离 :math:`A` 地时也指零, (a) 画出甲、乙、丙的世界线; (b) 求乙钟返回 :math:`A` 地时三钟的读数 :math:`\tau_{\text{甲}}, \tau_{\text{乙}}` 和 :math:`\tau_{\text{丙}}`.

.. admonition:: 题目 6.8

    (单选题) 双子 :math:`A, B` 静止于某惯性系 :math:`\mathscr{R}` 中的同一时空点上. :math:`A` 从某时刻 (此时  :math:`A, B` 年龄相等) 开始向东以速率 :math:`u` 相对于 :math:`\mathscr{R}` 系做惯性运动, 一段时间以后 :math:`B` 以速率 :math:`v > u` 向东追上 :math:`A`, 则相遇时 :math:`A` 的年龄 (1) 比 :math:`B` 大, (2) 比 :math:`B` 小, (3) 与 :math:`B` 等.

.. admonition:: 题目 6.9

    标准钟 :math:`A, B` 静止于某惯性系中的同一空间点上. :math:`A` 钟从某时刻开始以速率 :math:`u = 0.6c` 匀速直线飞出, :math:`2\mathrm{\ s}` (根据 :math:`A` 钟) 后以 :math:`u = 0.6c` 匀速直线返航. 已知分手时两钟皆指零. (1) 求重逢时两钟的读数; (2) 当 :math:`A` 钟指 :math:`3\mathrm{\ s}` 时 :math:`A` 看见 :math:`B` 钟指多少?

.. admonition:: 题目 6.10

    地球自转线速率在赤道之值约为每小时 :math:`1600\mathrm{\ km}`. 甲、乙为赤道上的一对孪生子. 甲乘飞机以每小时 :math:`1600\mathrm{\ km}` 的速率向西绕赤道飞行一圈后回家与乙重逢 (忽略地球和太阳引力场的影响. 由第7章可知引力的存在对应于时空的弯曲). (a) 画出地球表面的世界面和甲、乙的世界线 (甲相对于地面的运动抵消了地球自转的效应, 所以甲是惯性观者); (b) 甲与乙中谁更年轻? (c) 两者年龄差多少? (答: 约为 :math:`10^{-7}\mathrm{\ s}`). 注: 本实验已于1971年完成, 当然不是对人而是对铯原子钟.

.. admonition:: 题目 6.11

    静长 :math:`l = 5m` 的汽车以 :math:`u = 0.6c` 的速率匀速进库, 库有坚硬后墙. 为简化问题, 假定车头撞墙的信息以光速传播, 车身任一点接到信息立即停下. (a) 设司库测得在车头撞墙的同时车尾的钟 :math:`C_W` 指零, 求车尾 "获悉" 车头撞墙这一信息时 :math:`C_W` 的度数; (b) 求车完全停下后的静长 :math:`\hat{l}`; (c) 用 :math:`u` 表出新旧静长比 :math:`\hat{l}/l`.

.. admonition:: 题目 6.12

    试证命题6-3-4.

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

.. admonition:: 题目 6.14

    试证命题6-6-2.

.. admonition:: 题目 6.15

    设瞬时观者测 :math:`F_{ab}` 所得电场和磁场分别为 :math:`E^a` 和 :math:`B^a` (也记作 :math:`\bm{E}` 和 :math:`\bm{B}`), 试证
    
    (a) :math:`F_{ab}F^{ab} = 2(B^2-E^2)`,
    (b) :math:`F_{ab}\ {}^*F^{ab} = 4\bm{E}\cdot \bm{B}`. 提示: 可用惯性坐标基底把 :math:`F_{ab}\ {}^*F^{ab}` 写成分量表达式.

    注: 本题表明, 虽然 :math:`\bm{E}` 和 :math:`\bm{B}` 都是观者依赖的, :math:`B^2 - E^2` 和 :math:`\bm{E} \cdot \bm{B}` 却同观者无关. 事实上,由 :math:`F_{ab}` 能构造的独立的不变量只有这两个.

.. admonition:: 题目 6.16

    试证命题6-6-5 (只须证后两个麦氏方程).

.. admonition:: 题目 6.17

    试证瞬时观者测得的电磁场能量密度和3动量密度分别为 :math:`T_{00} = (E^2+B^2)/8\pi` 和 :math:`w_i = -T_{i0} = (\bm{E}\times \bm{B})_i / 4\pi, i = 1, 2, 3`. 提示: 用 :math:`F_{ab}` 的对称表达式可简化 :math:`T_{00}` 的计算.

.. admonition:: 题目 6.18

    (a) 试证4电流密度为 :math:`J^a` 的电磁场 :math:`F_{ab}` 的能动张量 :math:`F_{ab}` 满足 :math:`\partial^aT_{ab} = -F_{bc}J^c` (由此可知当 :math:`J^a = 0` 时有 :math:`\partial^a T_{ab} = 0`)
    
    (b) 试证上式在惯性坐标系中的时间分量反映能量守恒. 空间分量反映3动量守恒. 提示: 用4洛伦兹力表达式 (6-6-20) 把 :math:`F_{bc}J^c` 改写为洛伦兹力密度.

.. admonition:: 题目 6.19

    试证式 (6-6-29) 中的 :math:`a^a` 和 :math:`\phi` 满足 :math:`\bm{B} = \bm{\nabla}\times \bm{a}` 和 :math:`\bm{E} = -\bm{\nabla}\phi - \partial \bm{a} /\partial t`, 因而的确是电动力学中的3矢势和标势.

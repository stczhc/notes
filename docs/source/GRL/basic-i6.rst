
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
        \newcommand{\xtensor}[3]{{#1}#2 {\vphantom{#1}}#3}
        \newcommand{\oiint}{{\rlap{\,\subset\!\supset}\iint}}
        \renewcommand{\bm}{\boldsymbol}

.. note::
    微分几何入门与广义相对论 (上册, 第二版), 梁灿彬, 2006.

第六章 狭义相对论
=================

第一节 4维表述基础
------------------

1 预备知识
^^^^^^^^^^

不论是否发生了什么, 空间的一点和时间的一瞬的结合就叫一个 **事件** (event). 全部事件的集合叫 **时空** (spacetime), 故每个事件也叫一个时空点. 把时空看成4维流形 (并配以适当的附加结构, 例如一个洛伦兹度规) 是物理学默认的一个基本出发点 (基本假设). 非相对论物理学和狭义相对论物理学假定时空流形是 :math:`\mathbb{R}^4` (两者的区别在于 :math:`\mathbb{R}^4` 上的附加结构); 广义相对论物理学则允许时空流形为任意4维连通流形. 

一个粒子的全部历史由一系列事件组成, 因此对应于时空中的一条曲线, 称为该粒子的 **世界线** (world line). 进行物理观测的人叫 **观者** (observer). 为了观测, 观者手中应有一个走时准确的钟, 叫 **标准钟** (standard clock), 该钟的读数称为该观者的 **固有时** (proper time). 从数学上看, 固有时 :math:`\tau` 无非是质点世界线的一个特殊参数. 一个观者只能对发生在自己世界线上的事件做直接观测. 为了对全时空的任何事件进行观测, 需要处处设置观者, 这种无处不在的观者们就构成一个参考系. 无数观者的集合 :math:`\mathscr{R}` 叫一个 **参考系** (reference frame), 若它满足如下条件: 时空中的任一点有且仅有 :math:`\mathscr{R}` 内的一个观者的世界线经过.

2 狭义相对论的背景时空
^^^^^^^^^^^^^^^^^^^^^^

根据狭义相对论, 描述 :math:`p, q` 的联系的重要物理量是元间隔, 可借用任一惯性坐标系 :math:`\{ t, x, y, z \}` 定义为

.. math:: 
    \D s^2 = -\D t^2 + \D x^2 + \D y^2 + \D z^2

元间隔的一个重要性质是它在从一个惯性系变到另一惯性系时形式不变, 即

.. math:: 
    -\D t^2 + \D x^2 + \D y^2 + \D z^2 = -\D t'^2 + \D x'^2 + \D y'^2 + \D z'^2

(此即 "间隔不变性" , 可由洛伦兹变换验证). 可以认为物理上的元间隔对应于数学上的闵氏线元, 物理上的惯性坐标系对应于数学上的洛伦兹坐标系, 狭义相对论的背景时空对应于闵氏空间 :math:`(\mathbb{R}^4, \eta_{ab})`. 狭义相对论物理学是研究物理客体在闵氏时空中演化规律的学问, 发生在闵氏时空的任何物理现象都属于狭义相对论物理学范畴.

用惯性坐标系可定义任何粒子的速率. 设 :math:`L` 为粒子的世界线, :math:`p, q` 为 :math:`L` 上两邻点 :math:`(t_1, x_1, y_1, z_1)` 和 :math:`(t_2, x_2, y_2, z_2)` 分别为 :math:`p` 和 :math:`q` 在某惯性系 :math:`\mathscr{R}` 中的坐标. 令

.. math:: 
    \D t \equiv t_2 -t_1,\quad \D x \equiv x_2 -x_1,\quad \D y \equiv y_2-y_1,\quad \D z \equiv z_2-z_1

则粒子在 :math:`p` 时相对于 :math:`\mathscr{R}` 系的速率定义为

.. math:: 
    u := \frac{\sqrt{\D x^2 + \D y^2 + \D z^2}}{\D t}

可知世界线 :math:`L` 介于 :math:`p, q` 之间的线元为

.. math:: 
    \D s^2 = -(1-u^2) \D t^2

上式表明 :math:`u = 1` 同 :math:`\D s^2 = 0` (线元为类光) 等价; :math:`u < 1` 同 :math:`\D s^2 < 0` (线元为类时) 等价. 因此, (1) 光子世界线是 (闵氏时空的) 类光曲线; (2) 质点世界线是 (闵氏时空的) 类时曲线.

3 惯性观者和惯性系
^^^^^^^^^^^^^^^^^^

狭义相对论的基本假设是光速不变原理和狭义相对性原理, 后者又包含两个层次的内容: (1) 在所有观者 (质点) 中存在一类特殊观者, 称为 **惯性观者** (inertial observer); (2) 各惯性观者平权, 不存在特殊的惯性观者. 惯性观者相对于所在惯性坐标系 :math:`\{ t, x, y, z \}` 的速率 :math:`u = 0`, 因而其世界线重合于该系的一条 :math:`t` 坐标线. 任一惯性观者的世界线都是类时测地线.

既然洛伦兹坐标系的每一 :math:`t` 坐标线都对应于一个惯性观者, 该系的全体 :math:`t` 坐标线组成的参考系便称为 **惯性参考系**, 而该坐标系称为该惯性参考系内的一个 **惯性坐标系**. 惯性坐标系和惯性参考系又统称 **惯性系**. 属于同一惯性参考系的所有惯性观者的世界线是平行测地线. 一个质点叫做 "自由的" 或 "做惯性运动的", 若其世界线为测地线. 平移和空间转动对应的都是同一惯性参考系内的坐标变换. 可见同一惯性参考系内存在许多不同惯性坐标系, 然而由一个伪转动相联系的两个惯性系却必然分属两个不同惯性坐标系, 因为它们的 :math:`t` 坐标线不同. 

.. admonition:: 备注
    
    每个惯性观者在自己对应的惯性系空间坐标不会改变, 只有 :math:`t` 会变. 然而, 若一个惯性观者在其他惯性系, 则只是测地线, 它的 :math:`x, y, z` 坐标可以改变. 同一参考系内部可以有不同坐标系, 说明观者集合一样, 但是同时进行时间平移或者空间旋转. 其中空间旋转相当于对观者进行重新标号 (确定 :math:`x, y, z` 坐标).

4 固有时与坐标时
^^^^^^^^^^^^^^^^

[定义1] 一个钟称为 **标准钟** 或 **理想钟** (ideal clock), 若它在自己世界线上任二点 :math:`p_1, p_2` 的读数 :math:`\tau_1, \tau_2` 之差等于该线在 :math:`p_1, p_2` 之间的线长, 即

.. math:: 
    \tau_2 - \tau_1 = \int_{p_1}^{p_2} \sqrt{-\D s^2}

[注2] 应注意分清与钟有关的两个概念: **走时率** (rate) 和 **初始设定** (setting). 标准钟只对走时率提出要求, 而参考系内的钟同步问题则只涉及初始 (零点) 设定.

[注5] 今后谈到世界线时默认以固有时 :math:`\tau` 为参数, 而固有时间等于线长, 因此其切矢 :math:`(\partial/\partial \tau)^a` 的长度为1. 于是应把观者理解为一条有单位切矢的类时曲线.

[注6] 光子没有固有时概念 (类光曲线线长恒为零), 因此不能充当观者.

设 :math:`x^0` 是坐标系的类时坐标, :math:`x^1, x^2, x^3` 是类空坐标, 则坐标域中任一点 :math:`p` 的 :math:`x^0` 值称为事件 :math:`p` 在该系的 **坐标时** (coordinate time), 惯性系的坐标时叫 **惯性坐标时**, 其定义域为全 :math:`\mathbb{R}^4`. 要特别注意坐标时与固有时的以下两点区别: (1) 固有时只对世界线上的点而言, 脱离世界线就没有固有时概念. (2) 同一时空点 :math:`p` 在不同坐标系中可有不同坐标时, 而固有时则与坐标系无关.

.. admonition:: 备注

    固有时相当于标准钟, 或者寿命. 则钟衡量的已经不是坐标的时间, 还衡量空间的变化. 事实上钟衡量的是4维线元. 4维线元中时间和空间符号相反, 因此速度越低的物体寿命越短. 光子以光速运动, 寿命是无穷大.

[命题6-1-1] 设 :math:`L(\tau)` 是某质点的世界线, :math:`\tau` 为固有时, :math:`t` 为惯性系 :math:`\mathscr{R}` 的坐标时, 则

.. math:: 
    \D t/\D \tau = \gamma_u,\quad \gamma_u \equiv (1-u^2)^{-1/2}

其中 :math:`u` 是质点相对于 :math:`\mathscr{R}` 的速率. 惯性观者在本惯性系内的坐标时等于自己的固有时.

5 时空图
^^^^^^^^

画时空图时, 先任选一惯性系 :math:`\mathscr{R}` 作基准, 并用数值向上的轴为其 :math:`t` 轴 (代表时间的流逝), 水平轴为其 :math:`x` 轴. 时空图的 "欺骗性" 不但体现在正交性上, 还体现在曲线长度的判断中. 双曲线称为 **校准曲线**.

6 狭义相对论与非相对论时空结构的对比
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

相对论与非相对论物理学在时间、空间概念上的差别源于两者时空结构的不同. 非相对论物理学默认时空流形为 :math:`\mathbb{R}^4`, 并具有某些内禀的附加结构. 其一就是存在一个称为 **绝对时间** (absolute time) 的光滑函数 :math:`t : \mathbb{R}^4 \to \mathbb{R}`, 事件的同时性是绝对的. 狭义相对论只有相对同时面.

第二节 典型效应分析
-------------------

1 "尺缩" 效应
^^^^^^^^^^^^^

尺子世界面是绝对的, 直线段 :math:`oa` 和 :math:`ob` 分别是惯性系 :math:`\mathscr{R}` 和 :math:`\mathscr{R}'` 在 :math:`t = 0` 和 :math:`t' = 0` 时测得的一维尺.

.. tikz::

    \draw[color=white,fill=black!10] (0, -1.5) -- (0, 4.0) -- (2, 4) -- (2, -1.5) -- (0, -1.5);
    \draw[->,line width=1pt] (0, 0) -- (3.7, 0) node[right] {$x$};
    \draw[->,line width=1pt] (0, -1.5) -- (0, 4.0) node[above] {$t$};
    \draw[line width=1pt] (2, -1.5) -- (2, 4.0);
    \draw[->,line width=1pt] (0, 0) -- (3.5, 1.5) node[right] {$x'$};
    \draw[->,line width=1pt] (0, 0) -- (1.5, 4.0) node[above] {$t'$};
    \draw[smooth, samples=100,domain=-0.7:0.7] plot({2* cosh(\x)}, {2*sinh(\x)});
    \fill[black] (0, 0) circle (0.08) node[left] {$o$};
    \fill[black] (2, 0) circle (0.08) node[left] {$a$};
    \fill[black] (2, 0.86) circle (0.08) node[left] {$b$};
    \node[right, rotate=90] at (1,1) {尺子世界面};
    \node[right] at (2.5,0.3) {$t= 0$ 的同时面};
    \node[right, rotate=27] at (2.5,1.3) {$t'= 0$ 的同时面};
    \node[right] at (2.5,-1.3) {校准曲线};
    \draw[line width=1.7pt] (0, 0) -- (2, 0);
    \draw[line width=1.7pt] (0, 0) -- (2, 0.86);

根据校准曲线知 :math:`l_{ob} < l_{oa}`, 可见动尺较短. 欲求两者之间的定量关系, 只须计算两线段长. 线长是绝对量, 计算结果同所选坐标系无关. 为便于比较, 我们用同一坐标系计算 (与 :math:`\mathscr{R}` 相应的惯性系 :math:`\{t, x, y, z\}`) 计算. 由闵氏线元在该系的表达式得 :math:`l_{oa} = \sqrt{x_a^2 - 0} = x_a`, :math:`l_{ob} = \sqrt{x_b^2 - t_b^2}`. :math:`x'` 轴的方程为 :math:`t = vx`. (根据洛伦兹变换, :math:`x'` 轴方程为 :math:`t' = 0`, 即 :math:`\gamma(t - vx) = 0`) 故 :math:`t_b = vx_b`, 由图可以看出 :math:`x_b = x_a`, 代入上式便得 :math:`l_{ob} = \gamma^{-1}x_b = \gamma^{-1}x_a = \gamma^{-1}l_{oa}`.

2 "钟慢" 效应
^^^^^^^^^^^^^

考虑惯性系 :math:`\mathscr{R}` 的两个标准钟 :math:`C_1, C_2` 和惯性系 :math:`\mathscr{R}'` 的一个标准钟 :math:`C'`. 从 :math:`\mathscr{R}` 系看来, :math:`C_1, C_2` 钟静止而 :math:`C'` 钟运动. 开始时 :math:`C'` 钟与 :math:`C_1` 钟重合 (事件 :math:`o`), 两钟调成指零. 一段时间后, :math:`C'` 钟与 :math:`C_2` 钟重合 (事件 :math:`b`). 由 "固有时间等于线长" 可知 :math:`C'` 钟在 :math:`b` 点的读数等于 :math:`l_{ob}`. :math:`C_2` 钟在 :math:`b` 时的读数等于 :math:`l_{cb} = l_{oa}`. 过 :math:`a` 作校准曲线可知 :math:`l_{ob} < l_{oa} = l_{cb}`, 故 :math:`\mathscr{R}` 系认为 :math:`C'` 钟 (动钟) 较慢. :math:`\mathscr{R}` 系测得的动、静钟所走时间的定量关系为 :math:`l_{ob} = \gamma^{-1}l_{oa}`.

.. tikz::

    \draw[->,line width=1pt] (0, 0) -- (4.0, 0) node[right] {$x$};
    \draw[->,line width=1pt] (0, 0) -- (0, 4.0) node[above] {$t$};
    \draw[->,line width=1pt] (0, 0) -- (2.0, 4.0) node[above] {$t'$};
    \node[right] at (1.8, 3.7) {$C'$ 钟世界线};
    \fill[black] (0, 0) circle (0.08) node[left] {$o$};
    \fill[black] (1.5, 0) circle (0.08) node[below] {$c$};
    \fill[black] (0, 3) circle (0.08) node[left] {$a$};
    \fill[black] (1.5, 3) circle (0.08) node[right] {$b$};
    \draw[line width=1pt] (1.5, 0) -- (1.5, 4);
    \draw[line width=1pt] (0, 3) -- (4, 3);
    \node[right, rotate=90] at (0.3,0.2) {$C_1$ 钟世界线};
    \node[right, rotate=90] at (1.8,0.2) {$C_2$ 钟世界线};
    \node[right] at (2, -0.3) {$t = 0$ 的同时面};
    \node[right] at (2, 2.7) {$t = t_b$ 的同时面};
    \draw[smooth, samples=100,domain=-0.1:0.7] plot({3* sinh(\x)}, {3*cosh(\x)});
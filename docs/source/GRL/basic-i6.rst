
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

3 孪子效应
^^^^^^^^^^

下图是孪子效应的时空图, 两曲线分别是孪生子甲、乙的世界线. 甲线为竖直线表明甲守在家中 (惯性观者), 乙线为非测地线表明乙外出做太空遨游并返回. :math:`p, q` 两点分别代表分手和重逢事件. 已知分手时两人年龄相等, 重逢时年龄是否还想等? 如果不等, 孰大孰小? 这无非是甲乙两人介于 :math:`p, q` 之间固有时间的比较问题, 也就是甲乙两线介于 :math:`p, q` 之间的线长 :math:`l_{\text{甲}}` 和 :math:`l_{\text{乙}}` 的比较问题. 因为闵氏时空中两点间的类时测地线是该两点间类时线的最长者, 所以 :math:`l_{\text{甲}} > l_{\text{乙}}`, 可见重逢时乙比甲年轻.

.. tikz::

    \draw[line width=1pt] (0, -0.7) -- (0, 4.7);
    \draw[line width=1pt] (0, 0) .. controls (1.5, 2) and (0.1, 2.7) .. (0, 4.0);
    \fill[black] (0, 0) circle (0.05) node[left] {$p$};
    \fill[black] (0, 4) circle (0.05) node[left] {$q$};
    \node[left] at (0, 2) {甲};
    \node[right] at (0.8, 2) {乙};

4 车库佯谬
^^^^^^^^^^

设汽车与车库静长相等. 汽车匀速进库时, 司机想: "动库变短, 车放不下." 司库想: "动车收缩, 放下有余." 司机的想法对吗? 司库的想法对吗? 为明确并简化问题, 设车库并无后墙. 下图是汽车匀速进库的时空图 (画图时可借用校准曲线以保证车和库有相等静长). 由图易见, 以司库所在惯性系的同时面测量, 车短于库, 放下有余; 以司机所在惯性系的同时面测量, 车长于库, 不能放下. 两人看法都对.

.. tikz::

    \draw[line width=1pt] (0.6, -0.7) -- (0.6, 4.7);
    \draw[line width=1pt] (2, -0.7) -- (2, 4.7);
    \draw[line width=1pt] (-3, 2) -- (2, 2);
    \draw[dashed, line width=1pt] (-1, -0.7) -- (3, 4.7);
    \draw[dashed, line width=1pt] (0.0, -0.7) -- (4, 4.7);
    \draw[smooth, samples=100,domain=-0.9:0.9] plot({2 - 1.4* cosh(\x)}, {2 + 1.4*sinh(\x)});
    \draw[line width=1pt] (2, 2) -- (0.2, 1.1) -- (-3, -0.5);
    \node[right] at (-2.7, 2.3) {司库同时面};
    \node[right, rotate=28] at (-2.7, 0) {司机同时面};
    \node[left] at (0.6, 4.5) {库 ``门"};
    \node[above] at (1.8, 4.7) {库 ``{}墙"};
    \node[above] at (3, 4.7) {车尾};
    \node[above] at (4, 4.7) {车头};

第三节 质点运动学和动力学
-------------------------

相对性原理在牛顿力学中要求物理定理的数学表达式在伽利略变换下不变 (称为 **伽利略协变性**), 在狭义相对论中则要求物理定律的数学表达式在洛伦兹变换下不变 (称为 **洛伦兹协变性**). 在几何单位制中, 3维表述中的主要定义和规律如下 (式中各量除质量 :math:`m` 与观者无关之外, 都是相对于某惯性系 :math:`\{ t, x, y, z \}` 而言的.)

1. 质点的3速(3维速度的简称) :math:`\bm{u} := \frac{\D \bm{r}}{\D t}`, 其中位矢 :math:`\bm{r} \equiv x\hat{\bm{i}} + y\hat{\bm{j}} + z \hat{\bm{k}}`.
2. 质点的3加速 :math:`\bm{a} := \frac{\D \bm{u}}{\D t}`.
3. 质点的3动量 :math:`\bm{p} := \gamma m\bm{u},\quad \gamma \equiv (1-u^2)^{-1/2},\quad u \equiv |\bm{u}|`.
4. 质点的能量 :math:`E := \gamma m`.
5. 质点所受的3力 :math:`\bm{f} := \frac{\D \bm{p}}{\D t}`.
6. 3力 :math:`\bm{f}` 的功率与受力质点能量的关系 :math:`\bm{f} \cdot \bm{u} = \frac{\D E}{\D t}`.
7. 带电质点在电磁场中所受3力 (洛伦兹力) :math:`\bm{f} = q(\bm{E} + \bm{u} \times \bm{B})`, 其中 :math:`q` 为质点电量, :math:`\bm{u}` 为质点3速, :math:`\bm{E}` 和 :math:`\bm{B}` 分别为电场和磁场.

[注1] (1) 此处的 :math:`\gamma` 是 :math:`\gamma_u \equiv (1-u^2)^{-1/2}` 的简写, 而洛伦兹变换式中的 :math:`\gamma` 则代表 :math:`(1-v^2)^{-1/2}`, 其中 :math:`v` 是两个惯性系之间的相对速率, :math:`u` 则是所论粒子相对于所选惯性系的速率. (2) 相对论中经常涉及坐标系的变换, 因此经常用到 "不变量" 一词. **守恒量** (conserved quantity) 是在物理过程中保持常值 (不随时间而变) 的量, 强调物理过程; **不变量** (invariant) 是指不随坐标系、参考系和观者等人为因素而变的量, 强调坐标系等的变换. 能量是守恒量而非不变量, (静)质量是不变量而非守恒量, 带电粒子的电量则既是不变量又是守恒量.

[定义1] 质点的 **4维速度** (**4速**, 4-velocity) :math:`U^a` 是质点世界线 (以固有时 :math:`\tau` 为参数) 的切矢, 即

.. math:: 
    U^a := (\partial/\partial \tau)^a

[命题6-3-1] 令 :math:`U^a \equiv \eta_{ab} U^b`, 则 :math:`U^aU_a = -1`.

[证明] 固有时是类时曲线的线长参数, 而以线长为参数的切矢有单位长.

理论上最简单、明确、基本的观测是直接观测, 即对发生在观者身上 (世界线上) 的事件的观测, 亦称 **当时当地观测** (local measurement). 在观测发生在世界线上 :math:`p` 点的事件时, 在某些情况下重要的不是整条世界线而只是在 :math:`p` 点的4速. 这时没有必要强调观者的世界线如何如何, 只须给定该世界线在 :math:`p` 点的切矢 :math:`Z^a`. 于是可提炼一个更为抽象的概念, 称为 **瞬时观者** (instantaneous observer), 它由两个要素, :math:`p` 点及 :math:`p` 点的一个 (指向未来的) 类时单位矢 :math:`Z^a` 构成, 记作 :math:`(p, Z^a)`. 设 :math:`w^a \in V_p`, 当 :math:`w^a \in W_p = \{ w^a \in V_p | \eta_{ab} w^aZ^b = 0 \}` 时, 就说 :math:`w^a` 对观者 :math:`G` 而言是 **空间矢量** (spatial vector). (非零)空间矢量一定是类空矢量, 反之不然. 由定义知类空矢量是绝对的, 空间矢量则是相对的 (取决于观者4速 :math:`Z^a`). 

[定义2] 设 :math:`L(\tau)` 为任意质点, :math:`p \in L`, 则质点相对于任一瞬时观者 :math:`(p, Z^a)` 的 **3速** :math:`u^a` 定义为

.. math:: 
    u^a := \xtensor{h}{^a}{_b} U^b /\gamma

其中 :math:`p` 点的 :math:`\eta_{ab}` 在 :math:`W_p` 上的诱导度规是 :math:`h_{ab} \equiv \eta_{ab} + Z_aZ_b`, :math:`\gamma \equiv \D t /\D \tau` 也可表为 :math:`\gamma = -U^aZ_a` 因为

.. math:: 
    -U^aZ_a = -\eta_{ab}U^aZ^b = -\eta_{\mu\nu}U^\mu (\partial/\partial t)^\nu = -\eta_{00}U^0 (\partial/\partial t)^0 = U^0 = \frac{\D t}{\D \tau} = \gamma

[定义3] 质点对瞬时观者的3速度矢量 :math:`u^a` 的长度 :math:`u = \sqrt{u^au_a}` 叫质点对该瞬时观者的 **3速率**, 其中 :math:`u_a := \eta_{ab}u^b = h_{ab}u^b`.

.. admonition:: 备注

    这里需要证明 :math:`\gamma = (1-u^2)^{-1/2}` 和此处的 :math:`\gamma` 是一致的. 即
    
    .. math:: 
        u^2 =&\ h_{ab} u^au^b = h_{ab}(\xtensor{h}{^a}{_c}U^c)(\xtensor{h}{^b}{_d}U^d)/\gamma^2
        =h_{cd} U^cU^d/\gamma^2 \\
        =&\ (\eta_{cd}U^cU^d + Z_cZ_dU^cU^d)/\gamma^2 =  (\eta_{cd}U^cU^d + \gamma^2)/\gamma^2 \\
        =&\ 1 -1/\gamma^2
    
    于是 :math:`1- u^2 = 1/\gamma^2`.

如果瞬时观者 :math:`(p, Z^a)` 恰好与被观测粒子的世界线 :math:`L` 相切, 则 :math:`(p, Z^a)` 称为该粒子的 **瞬时静止观者** (在他看来粒子 :math:`L` 在 :math:`p` 时刻静止), 这时由 :math:`p` 和 :math:`Z^a` 决定的测地线 :math:`G` 称为粒子 :math:`L` 在 :math:`p` 时刻的 **瞬时静止惯性观者**, :math:`G` 所属的惯性参考系称为 :math:`L` 在 :math:`p` 时刻的 **瞬时静止惯性参考系**, 该参考系内的任一惯性坐标系称为 :math:`L` 在 :math:`p` 时刻的 **瞬时静止惯性坐标系**.

[命题6-3-2] 质点的4速可借瞬时观者 :math:`(p, Z^a)` 做 :math:`3+1` 分解

.. math:: 
    U^a = \gamma(Z^a + u^a)

其中 :math:`u^a` 为质点相对于瞬时观者的3速, :math:`\gamma\equiv -Z^aU_a`.

[证明] :math:`\gamma u^a = \xtensor{h}{^a}{_b}U^b = (\xtensor{\delta}{^a}{_b} + Z^aZ_b)U^b = U^a - \gamma Z^a`.

[注5] 由此可知 :math:`\gamma u^a` 是 :math:`U^a` 的空间分量. 取惯性系 :math:`\{t, x, y, z\}` 使 :math:`(\partial/\partial t)^a = Z^a`, 可知 :math:`\gamma Z^a` 是 :math:`U^a` 的时间分量. 故 :math:`U^a = \gamma(1, u^a)`, 与狭义相对论书上的 :math:`U^\mu = \gamma(c, \bm{u})` 一致.

[定义4] 设质点的 (静) 质量为 :math:`m`, 4速为 :math:`U^a`, 则其 **4动量** (4-momentum) :math:`P^a` 定义为

.. math:: 
    P^a := mU^a
    :label: 4-momentum

[命题6-3-3] 质点的4动量可借瞬时观者 :math:`(p, Z^a)` 做 :math:`3+1` 分解

.. math:: 
    P^a = EZ^a + p^a
    :label: 3-momentum

其中 :math:`E` 为能量, :math:`p^a` 为3动量, 按照之前列出的定义.

[证明] :math:`P^a = mU^a = m(\gamma Z^a + \gamma u^a) = EZ^a + p^a`.

[注7] 该命题说明3动量 :math:`p^a` 和能量 :math:`E` 分别是4动量 :math:`P^a` 的空间分量和时间分量, 后者亦可表为 (用 :math:`Z_a` 缩并 :eq:`4-momentum` 易得) :math:`E = -P^aZ_a`.

质点的4动量 :math:`P^a` 把两个不同概念, 即质点的能量和动量, 有机地统一为一个物理量, 它与观者无关 (:math:`P^a` 是绝对的), 但如何分解为时间分量和空间分量却与观者有关 (:math:`P^a` 的分解是相对的).

.. admonition:: 备注

    注意在表达式 :math:`E = -P^aZ_a` 中, 看起来是不依赖坐标系的等式, :math:`E` 像是一个4维标量. 但是其实 :math:`Z_a` 代表了一个选定的参考系, 所以 :math:`P_a` 和 :math:`Z_a` 是独立的, :math:`E` 不是4维标量或不变量.

[注8] 由 :eq:`3-momentum` 很易推出质量、能量与3动量的关系式

.. math:: 
    P^aP_a = (EZ^a + p^a)(EZ_a + p_a) = -E^2 + p^2

其中 :math:`p` 代表3动量的大小. 另一方面, :math:`P^aP_a = mU^amU_a = -m^2`, 于是

.. math:: 
    E^2 = m^2 + p^2

这正是熟知公式 :math:`E^2 + m^2c^4+p^2c^2` 在 :math:`c = 1` 时的表现.

[定义5] 质点的 **4加速** (4-acceleration) 定义为

.. math:: 
    A^a := U^b \partial_b U^a

其中 :math:`U^a` 为质点的4速, :math:`\partial_b` 是与 :math:`\eta_{ab}` 适配的导数算符 (:math:`\partial_a\eta_{bc} = 0`). 注意 :math:`U^a` 在世界线外无定义, 但是上式仅仅是求 :math:`U^a` 在 :math:`U^a` 方向的方向导数.

[注9] 由定义可知 (1) 4加速是绝对的; (2) :math:`A^a = 0` 等价于 :math:`U^b\partial_b U^a = 0` (世界线为测地线), 即质点做惯性运动. 可见质点做惯性运动 (自由质点) 的充要条件是其4加速为零. 

[命题6-3-4] 质点世界线上各点的4加速 :math:`A^a` 与4速 :math:`U^a` 正交, 即 :math:`A^aU_a = \eta_{ab}A^aU^b = 0`.

[证明] 习题. 提示: 利用 :math:`U^b\partial_b (U^aU_a) = 2U_aU^b \partial_b U^a`.

与3速 :math:`u^a` 不同, 只用一个观者 :math:`G` 不足以决定质点 :math:`L` 的3加速.

[定义6] 设质点世界线 :math:`L(\tau)` 在惯性坐标系 :math:`\{ t, x^i \}` 的参数表达式为 :math:`t=t(\tau), x^i = x^i(\tau)`, 则它相对于该系的 **3加速** 定义为

.. math:: 
    a^a := \frac{\D^2 x^i(t)}{\D t^2} \left( \frac{\partial}{\partial x^i} \right)^a

其中 :math:`x^i(t)` 是 :math:`x^i = x^i(\tau)` 同 :math:`t=t(\tau)` 结合而得的函数 :math:`x^i = x^i(\tau)` (即 :math:`\tau` 以 :math:`t` 为参数的参数式). 

[注10] 易见本定义同 :math:`{\color{red}{\bm{a} = \frac{\D \bm{u}}{\D t}}}` 一致.

[命题6-3-5] 质点的4加速 :math:`A^a` 在惯性系 :math:`\mathscr{R}` 的分量为

.. math:: 
    A^0 = \gamma^4 \bm{u}\cdot \bm{a}, \quad A^i = \gamma^2a^i + \gamma^4 (\bm{u}\cdot \bm{a})u^i

其中 :math:`\bm{u}` 和 :math:`\bm{a}` 分别为质点相对于 :math:`\mathscr{R}` 系的3速和3加速, :math:`\gamma \equiv (1-u^2)^{-1/2},\quad u \equiv \sqrt{\bm{u}\cdot \bm{u}}`.

[注11] 自由质点的 :math:`A^a = 0`, 它相对于任一惯性系的3加速 :math:`a^a = 0`.

[命题6-3-6] 质点的4加速等于它相对于瞬时静止惯性坐标系的3加速.

[定义7] 质点所受的 **4力** (4-force) 定义为

.. math:: 
    F^a := U^b \partial_b P^a

其中 :math:`U^a` 和 :math:`P^a` 分别是质点的 4速和4动量. 该式也叫质点的相对论运动方程 (的4维形式), 其实它只是4力的定义, 真正的物理定律还须把它与4力在每一具体情况的表示式结合而得.

[命题6-3-7] 质点所受4力在惯性坐标系 :math:`\{ x^\mu \}` 的空间分量 :math:`F^i(i = 1,2,3)` 等于它所受3力对应分量 :math:`f^i` 的 :math:`\gamma` 倍, 4力的时间分量 :math:`F^0` 等于3力的功率 :math:`\bm{f}\cdot \bm{u}` 的 :math:`\gamma` 倍. 即

.. math:: 
    F^i = \gamma f^i, \quad F^0 = \gamma \bm{f}\cdot \bm{u}

其中 :math:`\gamma \equiv (1-u^2)^{-1/2}`, :math:`u` 是质点对该系的3速 :math:`\bm{u}` 的大小. 

[证明] 

.. math:: 
    F^i =&\ U^b \partial_b P^i = \frac{\D p^i}{\D \tau} = \frac{\D p^i}{\D t} \frac{\D t}{\D \tau}  = \gamma f^i \\
    F^0 =&\ U^b\partial_b P^0 = \frac{\D E}{\D \tau} = \frac{\D E}{\D t} \frac{\D t}{\D \tau}  = \gamma \bm{f}\cdot \bm{u}

为了观测, 每个观者除需要标准钟外, 往往还要配备一个 **3维标架** (triad). 3标架在数学上被抽象为观者世界上的三个正交归一空间矢量场 :math:`\{ (e_i)^a, i=1,2,3 \}`, "空间" 是指它们都与观者的4速 :math:`Z^a` 正交. 于是, 连同 :math:`(e_0)^a = Z^a` 在内, 观者世界线上就有四个正交归一矢量场, 称为观者的 **4维标架** (tetrad) **场**. 今后谈及观者的4标架场时如无声明都指右手标架场. 对惯性观者的准确定义是: 惯性观者是做惯性运动的无自转观者. "做惯性运动" 即世界线为测地线, 而 "无自转" 则是对线上的4标架场的要求. 

第四节 连续介质的能动张量
-------------------------

连续介质在许多方面类似于电磁场, 可与电磁场统称为 **物质场**. 设宏观小体积 :math:`V` 内的静质量为 :math:`m`, 它相对于某惯性系的3速为 :math:`\bm{u}`, 则其3动量为 :math:`\bm{p} = \gamma m \bm{u} = (E/c^2) \bm{u}`, 其中 :math:`E` 是它的能量, 以 :math:`V` 除全式便得

.. math:: 
    3\text{动量密度} = \frac{1}{c^2} \text{能量密度} \times \bm{u} = \frac{1}{c^2}\text{能流密度}

当取 :math:`c = 1` 时3动量密度便等于能流密度. 电磁场的能量密度、动量密度、能流密度 (坡印廷矢量) 、动量流密度统一组成一个 :math:`(0,2)` 型张量 :math:`T_{ab}`, 称为 **能动张量** (energy-momentum tensor), 是4维闵氏时空的张量场. 事实上, 所有物质场都有自己的能动张量 :math:`T_{ab}`, 它们有以下重要性质和物理意义:

1. :math:`T_{ab} = T_{ba}`.
2. 任何封闭 (与外界无相互作用) 物质场有 :math:`\partial^aT_{ab} = 0`. 下面将看到这正是能量、3动量和角动量守恒律的体现 (角动量守恒律还要求 :math:`T_{ab} = T_{ba}`). 
3. 对任意瞬时观者 :math:`(p, (e_\mu)^a), (e_0)^a = Z^a` 有

    (a) :math:`\mu \equiv T_{ab}Z^aZ^b = T_{00}` 是该观者测得的能量密度;
    (b) :math:`w_i \equiv -T_{ab}Z^a(e_i)^b = -T_{0i}` 是该观者测得的3动量密度 (能流密度) 的 :math:`i` 分量.
    (c) :math:`T_{ab}(e_i)^a(e_j)^b = T_{ij}` 是该观者测得的3应力张量 (stress tensor) 的 :math:`ij` 分量. 把 :math:`\hat{T}^{ab} \equiv T^{ij}(e_i)^a(e_j)^b` 称为 **3动量流密度张量**.

可见能动张量 :math:`T_{ab}` 是绝对的, 而能量密度、3动量密度……则是相对的.

[定义1] :math:`W^a := -\xtensor{T}{^a}{_b}Z^b` 叫瞬时观者 :math:`(p, Z^a)` 测得的 **4动量密度**.

[命题6-4-1] 瞬时观者 :math:`(p, (e_\mu)^a), (e_0)^a = Z^a` 测得的4动量密度 :math:`W^a` 可做如下分解:

.. math:: 
    W^a = \mu Z^a + w^a

其中 :math:`\mu` 和 :math:`w^a \equiv w^i (e_i)^a` 分别是该观者测得的能量密度和3动量密度, 后者是该观者的空间矢量.

[证明] 注意 :math:`(e_0)^a = Z^a, (e_0)_a = Z_a, Z^aZ_a = -1, (e_0)^a(e^0)_a = 1,  (e^0)_a = -Z_a`.

.. math:: 
    W^0 =&\ W^a(e^0)_a = -\xtensor{T}{^a}{_b}Z^b (-Z_a) = T_{ab}Z^bZ^a = \mu \\
    W^i =&\ W^a(e^i)_a = -\xtensor{T}{^a}{_b}Z^b (e^i)_a = T_{ab} Z^b (e^i)^a = w^i

[注1] 上式和 :math:`P^a =EZ^a + p^a` 很像, 两式都是把4矢量做 :math:`3+1` 分解. 但应注意一个区别: 4动量 :math:`P^a` 与观者无关, 而4动量密度 :math:`W^a` 却依赖于观者 (由定义1知 :math:`W^a` 是观者依赖的4矢).

[命题6-4-2] :math:`\partial^aT_{ab} = 0\Rightarrow \ {}` 能量守恒.

[证明] 设 :math:`t, x, y, z` 为惯性系 :math:`\mathscr{R}` 的坐标, 令 :math:`Z^a \equiv (\partial/\partial t)^a`, 则对 :math:`W \equiv -\xtensor{T}{^a}{_b} Z^b` 求导得 (注意 :math:`Z^b` 是坐标基矢, 求导为零)

.. math:: 
    \partial_a W^a = \partial_a (-\xtensor{T}{^a}{_b} Z^b) = -Z^b \partial_a \xtensor{T}{^a}{_b} = -Z^b \partial^a T_{ab} = 0

其中利用了 :math:`\partial^a T_{ab} = 0`. 因而

.. math:: 
    0 = \partial_\mu W^\mu = \partial_0 W^0 + \partial_iW^i = \frac{\partial \mu}{\partial t} + \bm{\nabla}\cdot\bm{w}

因为 :math:`\mu` 和 :math:`w^a` 分别为 :math:`\mathscr{R}` 系测得的能量密度和能流密度, 上式很像电动力学的连续性方程 :math:`(\partial \rho/\partial t) + \bm{\nabla}\cdot\bm{j} = 0`. 仿照由后者得出电荷守恒的推理便知上式导致能量守恒.

[注2] 还可由 :math:`\partial^aT_{ab} = 0` 推出3动量守恒和角动量守恒, 因此 :math:`\partial^aT_{ab} = 0` 亦称 **守恒方程**.

第五节 理想流体动力学
---------------------

[定义1] **理想流体** (perfect fluid) 是这样一种物质场, 其能动张量可表为

.. math:: 
    T_{ab} = \mu U_aU_b + p(\eta_{ab} + U_aU_b) = (\mu + p) U_aU_b + p\eta_{ab}

其中 :math:`\mu, p` 是函数 (标量场), :math:`U^a` 是矢量场, 满足 :math:`U^aU_a=-1`, 叫理想流体的 **4速场**.

流体本身可看作一个参考系. 设瞬时观者 :math:`(p, (e_\mu)^a)` 的4速 :math:`(e_0)^a` 满足 :math:`(e_0)^a = U^a|_p`, 则他相对于流体参考系静止, 故称瞬时 **静止观者** (rest observer), 但其他参考系认为他随流体一起运动, 故 :math:`(p, U^a|_p)` 也称瞬时 **随动观者** 或 **共动观者** (comoving observer). 对共动观者

.. math:: 
    T_{ab} (e_0)^a(e_0)^b =&\ T_{ab} U^aU^b = (\mu + p) U_aU_bU^aU^b + p\eta_{ab}U^aU^b \\
    =&\ (\mu + p) - p = \mu

可见[定义1] 中的 :math:`\mu` 是共动观者测得的能量密度, 也叫 **固有能量密度**. 以 :math:`\{ (e_i)^a \}` 代表共动观者的3标架, 有 :math:`T_{ab} (e_i)^a(e_j)^b = p\eta_{ab}(e_i)^a(e_j)^b = p\delta_{ij}`, 可见共动观者测得的3维应力张量的矩阵形式为

.. math:: 
    \begin{bmatrix} p & 0 & 0 \\ 0 & p & 0 \\ 0 & 0 & p \end{bmatrix}

即只有压强而无切向应力 (这正是普通定义的理想流体的一个重要特征), 而且由 :math:`T_{11} = T_{22} = T_{33} = p` 和共动观者3标架的任意性可知压强是各向同性的. :math:`T_{ab}(e_0)^a(e_i)^b = 0` 则表明共动观者测得的能流密度为零, 因而没有热传导.

通常把微观足够大而宏观足够小的流体体元称为 **流体质点**. 应注意流体质点与组成流体的微观粒子在概念上的差别. 实际上, 把理想气体看作理想流体时已对分子的微观运动做了统计平均处理, :math:`U^a` 是平均后的4速场. 理想气体的压强 :math:`p` 和质量密度 :math:`\mu` 有如下的熟知关系: :math:`p = \mu \overline{u^2} / 3`. 其中 :math:`\overline{u^2}` 是分子随机运动速率平方的平均. 因 :math:`\overline{u^2} \ll c^2`, 故 :math:`(p/c^2) \ll \mu`, 在 :math:`c = 1` 的单位制中就是 :math:`p \ll \mu`. 这一结论对任何非相对论流体都成立, 然而相对论流体就不同. 恒温箱内达到热平衡的电磁辐射 (叫 **黑体辐射**) 可看作极端相对论理想流体的例子, 与箱子相对静止的参考系就是流体的静止系 (共动系). 箱内辐射相对于此系是各向同性的, 因而此系亦称黑体辐射的各向同性参考系. 箱内电磁辐射与理想气体有颇多类似之处, 可称为 **光子气** (photon gas), 其压强 :math:`p` 与能量密度 :math:`\mu` 的关系为 :math:`p = \mu/3 (\overline{u^2} = 1)`.

牛顿力学的理想流体服从两个重要规律, 即描述质量密度 :math:`\mu` 时间变率的连续性方程 (反映质量守恒)

.. math:: 
    \frac{\partial \mu}{\partial t} + \bm{\nabla}\cdot (\mu \bm{u}) = 0

和描述3速 :math:`\bm{u}` 的时间变率的欧拉方程

.. math:: 
    -\bm{\nabla}p = \mu \left[ \frac{\partial \bm{u}}{\partial t} + (\bm{u}\cdot \bm{\nabla}) \ \bm{u} \right]

这两个规律在相对论理想流体力学的推广, 可以通过 :math:`\partial^aT_{ab} = 0` 在共动观者的时间和空间方向投影得到. 即理想流体的相对论运动方程

.. math:: 
    U^a\partial_a \mu + (\mu + p) \partial_a U^a =&\ 0\\
    (\mu + p) U^a \partial_aU_c + \partial_c p + U_cU^b \partial_b p =&\ 0

压强为零的理想流体叫 **尘埃** (dust). 对尘埃, 第二式简化为 :math:`U^a \partial_a U_c = 0`, 可见尘埃粒子的世界线为测地线. 这是自然的, 因为 :math:`p = 0` 表明粒子不受力.

第六节 电动力学
---------------

1 电磁场和4电流密度
^^^^^^^^^^^^^^^^^^^

电动力学涉及的物质场有二: (1) 电磁场; (2) 全体带电质点组成的连续流体: 它们既是电磁场的源, 又受电磁场的作用. 在4维语言中, 电磁场由闵氏时空的2形式场 :math:`F_{ab}` (叫 **电磁场张量**) 描述. 电场 :math:`\bm{E}` 和磁场 :math:`\bm{B}` 则是观者测量 :math:`F_{ab}` 得到的两个空间矢量.

[定义1] 瞬时观者 :math:`(p, Z^a)` 测得的 **电场** :math:`E^a` 和 **磁场** :math:`B^a` 由下式定义

.. math:: 
    E_a := F_{ab}Z^b, \quad B_a := -{}^*F_{ab}Z^b, \quad (E^a := \eta^{ab}E_b, \quad B^a := \eta^{ab}B_b)

其中 :math:`{}^*F_{ab}` 是 :math:`F_{ab}` 的对偶微分形式, 也是2形式场.

[命题6-6-1] :math:`E^a` 和 :math:`B^a` 是瞬时观者 :math:`(p, (e_\mu)^a), (e_0)^a = Z^a` 的空间矢量, 且

.. math:: 
    E_1 = F_{10},\quad E_2 = F_{20},\quad E_3 = F_{30};\quad B_1 = F_{23},\quad B_2 = F_{31},\quad B_3 = F_{12}

[命题6-6-2] 设惯性系 :math:`\mathscr{R}` 和 :math:`\mathscr{R}'` 由洛伦兹变换

.. math:: 
    t = \gamma(t' + vx'),\quad x = \gamma (x'+v t'),\quad y = y',\quad z = z'

相联系, 则两者测同一电磁场 :math:`F_{ab}` 所得值 :math:`(\bm{E}, \bm{B})` 和 :math:`(\bm{E}', \bm{B}')` 有如下关系

.. math:: 
    E'_1 =&\ E_1, \quad E'_2 = \gamma(E_2 - vB_3),\quad E'_3 = \gamma(E_3 + v B_2); \\
    B'_1 =&\ B_1, \quad B'_2 = \gamma (B_2 + vE_3), \quad B'_3 = \gamma (B_3 -vE_2)
    :label: EEBB

[命题6-6-3] 设 :math:`p` 点的两个瞬时观者 :math:`(p, (e_\mu)^a)` 和 :math:`(p, (e'_\mu)^a)` 的正交归一4标架有如下联系: :math:`(e'_2)^a = (e_2)^a, (e'_3)^a = (e_3)^a`, 则他们测同一电磁场所得值 :math:`(\bm{E}, \bm{B})` 和 :math:`(\bm{E}', \bm{B}')` 也有 :eq:`EEBB` 的关系, 其中 :math:`\gamma \equiv -(e_0)^a(e'_0)_a`.

[证明] 本命题只涉及 :math:`p` 点的当地测量, 不涉及求导. 因此这说明 [命题6-6-2] 对非惯性系也成立.

电磁场的源是电荷和电流. 在4维语言中, 连续分布的电荷和电流可看作由大量带电质点组成的尘埃.

[定义2] 带电粒子流的 **4电流密度** (4-current density) 定义为

.. math:: 
    J^a := \rho_0 U^a

其中 :math:`\rho_0` 是共动观者测得的 **电荷密度**. 共动观者测得的 **3电流密度** 为零.

[命题6-6-4] :math:`J^a` 可借瞬时观者 :math:`(p, Z^a)` 做如下 :math:`3+1` 分解

.. math:: 
    J^a = \rho Z^a + j^a

电荷与质量一样是描写带电粒子内禀性质的物理量. 不参与相互作用的带电粒子的电荷保持不变. 当与其他粒子相互作用时, 作用前后的总电荷必定相等, 即众所周知的电荷守恒律. 在3维语言电动力学中这一定律被表述为连续性方程: :math:`(\partial \rho/\partial t) + \bm{\nabla}\cdot \bm{j} = 0` (对任一惯性系). 不难看出其相应的4维表述为 :math:`\partial_aJ^a = 0`.

2 麦氏方程
^^^^^^^^^^

:math:`\bm{E}` 和 :math:`\bm{B}` 的运动方程就是熟知的麦氏方程. 由它们可推出麦氏方程的4维形式

.. math:: 
    \partial^a F_{ab} =&\ -4\pi J_b \\
    \partial_{[a}F_{bc]} =&\ 0
    :label: 4-maxwell

其中第一式已把电荷守恒率包含在内, 因为由它可得

.. math:: 
    \partial^b J_b = -(4\pi)^{-1}\partial^b\partial^aF_{ab} = -(4\pi)^{-1} \partial^{(b}\partial^{a)}F_{[ab]} = 0

因而电荷守恒. 

[命题6-6-5] 对任一惯性系 :math:`\{ t, x, y, z \}`, 由 :eq:`4-maxwell` 可导出3维麦氏方程

.. math:: 
    \bm{\nabla}\cdot \bm{E} = 4\pi\rho, \quad \bm{\nabla}\times \bm{E} = -\frac{\partial \bm{B}}{\partial t},\quad
    \bm{\nabla}\cdot \bm{B} = 0,\quad \bm{\nabla}\times \bm{B} = 4\pi \bm{j} + \frac{\partial \bm{E}}{\partial t}

其中第一、四式对应于 :eq:`4-maxwell` 第一式, 第二、三式对应于 :eq:`4-maxwell` 第二式.

[注1] 此处采用几何高斯制, 3维麦氏方程在系数上与常见形式略有区别.

[注2] 对非惯性坐标系, 由 :eq:`4-maxwell` 推出的方程将有别于通常的3维麦氏方程.

3 4维洛伦兹力
^^^^^^^^^^^^^

前已指出, 带电质点是电磁场的场源 (以 :math:`J^a` 体现), 它对电磁场 :math:`F_{ab}` 的影响由 :eq:`4-maxwell` 反映. 反之, 带电质点也受到电磁场的作用力, 即洛伦兹力

.. math:: 
    \bm{f} = q(\bm{E} + \bm{u} \times \bm{B})

其中 :math:`q` 及 :math:`\bm{u}` 分别代表质点的电荷及3速. 上式与3力定义 :math:`\bm{f} = \D \bm{p} / \D t` 结合便给出带电质点在电磁场中的运动方程 (设无其他力)

.. math:: 
    \frac{\D \bm{p}}{\D t} = q (\bm{E} + \bm{u} \times \bm{B})

对另一惯性参考系 :math:`\mathscr{R}'`, 有

.. math:: 
    \frac{\D \bm{p}'}{\D t} = q (\bm{E}' + \bm{u}' \times \bm{B}')

注意质点的电荷是不变量.

[命题6-6-6] 设质点的电荷为 :math:`q`, 4速为 :math:`U^a`, 4动量为 :math:`P^a`, 则电磁场 :math:`F_{ab}` 对它的4力 (叫 **4维洛伦兹力**) 为

.. math:: 
    F^a = q\xtensor{F}{^a}{_b} U^b

其中 :math:`\xtensor{F}{^a}{_b} \equiv \eta^{ac}F_{cb}`. 因而只受电磁力的质点的4维运动方程为

.. math:: 
    q\xtensor{F}{^a}{_b} U^b = U^b\partial_b P^a

4 电磁场的能动张量
^^^^^^^^^^^^^^^^^^

在3维形式的电动力学中, 电磁场的能量密度、能流密度、动量密度、动量流密度 (即应力张量) 已有明确定义. 这些3维量可由一个4维张量 (电磁场的能动张量 :math:`T_{ab}` 统一表为 (称为第一、第二定义式)

.. math:: 
    T_{ab} = \frac{1}{4\pi} (F_{ac}\xtensor{F}{_b}{^c} -\frac{1}{4} \eta_{ab}F_{cd}F^{cd}) = \frac{1}{8\pi} (F_{ac}\xtensor{F}{_b}{^c} + {}^*F_{ac}\ {}^*\xtensor{F}{_b}{^c})

其中 :math:`{}^*F_{ac}` 是 :math:`F_{ac}` 的对偶形式. :math:`{}^*\xtensor{F}{_b}{^c} = \eta^{ac}\ {}^*F_{ba}`. 不难验证它具有能动张量性质1和3. 选定任一惯性系后, 由第二定义式易得 (习题)

.. math:: 
    T_{00} = \frac{1}{8\pi} (E^2+B^2)

由第一定义式易得 (习题)

.. math:: 
    w_i = -T_{i0} = \frac{1}{4\pi} (\bm{E}\times \bm{B})_i,\quad i = 1,2,3

这正是该系惯性观者测电磁场所得的能量密度和能流密度 (也等于动量密度). 对于能动张量的性质2作如下说明. 当 :math:`J^a = 0` 时 (无源电磁场) 由麦氏方程4维形式可证 :math:`\partial^aT_{ab} = 0`, 即无源电磁场服从能量守恒、动量守恒、和角动量守恒律. 但若 :math:`J^a \neq 0`, 则不满足 :math:`\partial^aT_{ab}` (习题 18(a)). 这是自然的, 因为电磁场与带电粒子之间有相互作用, 从而要交换能量、动量和角动量 (习题 18(b)). 然而, 电磁场和带电粒子的总能动张量则仍是守恒的.

5 电磁4势及其运动方程, 电磁波
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

由于 :math:`F_{ab}` 是2形式, 用外微分概念可把麦氏方程第二式改写为 :math:`\D \bm{F} = 0`, 即 :math:`\bm{F}` 是闭的. 因背景流形为 :math:`\mathbb{R}^4`, 可知 :math:`\bm{F}` 是恰当的, 即在 :math:`\mathbb{R}^4` 上存在1形式场 :math:`A_a` 使 :math:`\bm{F} = \D \bm{A}`, 或

.. math:: 
    F_{ab} = \partial_a A_b - \partial_b A_a

[定义3] 满足 :math:`\bm{F} = \D \bm{A}` 的 :math:`A_a` 叫电磁场 :math:`F_{ab}` 的 **4势** (4-potential).

给定 :math:`\bm{F}` 后, 4势并不唯一. 设 :math:`\bm{A}` 是 :math:`\bm{F}` 的4势, :math:`\chi` 是 :math:`\mathbb{R}^4` 上任意 :math:`\C^2` 函数, 则 :math:`\tilde{\bm{A}} \equiv \bm{A} + \D \chi` 也是 :math:`\bm{F}` 的4势, 因 :math:`\D \D \chi = 0`. 这就是熟知的规范自由性. 附加条件 :math:`\partial^a A_a = 0` 叫 **洛伦兹规范**, 满足这条件的 :math:`A_a` 一定存在.

把 :math:`A_a` 在任一惯性系 :math:`\{ t, x^i \}` 分解为时间分量和空间分量

.. math:: 
    A_a = -\phi (\D t)_a + a_a

则不难证明 :math:`\phi` 和 :math:`a_a` 分别是电磁场 :math:`\bm{F}` 的标势和3矢势.

用4势可重新表述麦氏方程. 麦氏方程第二式已经被 :math:`\bm{F} = \D \bm{A}` 自动满足, 第一式则可表为

.. math:: 
    -4\pi J_b = \partial^a (\partial_a A_b - \partial_b A_a) = \partial^a \partial_a A_b - \partial_b\partial_a A_a

于是洛伦兹规范下的 :math:`A_b` 便满足如下的简单方程

.. math:: 
    \partial^a \partial_a A_b = -4\pi J_b

上式相当于3维语言电动力学中关于标势 :math:`\phi` 和矢势 :math:`\bm{a}` 的达朗伯方程 (d'Alembert equation), 对无源电磁场则成为波动方程

.. math:: 
    \partial^a\partial_a A_b = 0

考虑上述方程的形如 :math:`A_b = C_b\cos\theta` 的波动解, 其中 :math:`\theta` 是实标量场, 称为 **相位** (phase); :math:`C^b` 是非零的常矢量场 ( "常" 字是指 :math:`\partial_aC^b = 0`), 称为 **偏振矢量** (polarization verctor). 代入方程得

.. math:: 
    \cos\theta (\partial^a \theta) \partial_a \theta + \sin \theta \partial^a \partial_a \theta = 0

可见, 满足

.. math:: 
    (\partial^a \theta) \partial_a \theta = 0

和 

.. math:: 
    \partial^a\partial_a \theta = 0

的 :math:`A_b = C_b\cos\theta` 是波动方程的解. 令 :math:`K^a \equiv \partial^a \theta`, 则 :math:`K^a` 是超曲面 :math:`\mathscr{S} = \{ p \in \mathbb{R}^4 | \theta_p = C \}` (:math:`C =` 常数) 上的法矢场(定理4-4-2). 另一方面, 由 :math:`(\partial^a \theta) \partial_a \theta = 0` 得 :math:`K^aK_a = 0`, 故 :math:`K^a` 是类光矢量场, 可见 :math:`\mathscr{S}` 是类光超曲面. 再者, :math:`K^aK_a` 还导致

.. math:: 
    0 = \partial_b (K^aK_a) = 2 K^a\partial_b \partial_a\theta = 2 K^a\partial_a \partial_b\theta = 2 K^a\partial_a K_b

可见 :math:`K^a` 的积分曲线是躺在 :math:`\mathscr{S}` 上的类光测地线. 由 :math:`\partial^a\partial_a \theta = 0` 还可知 :math:`\partial^aK_a = 0`.

设 :math:`\{ t, x^i \}` 为任一惯性坐标系, 则 :math:`K_a` 可用其对偶坐标基矢展开

.. math:: 
    (\D \theta)_a = \partial_a \theta = K_a = K_\mu (\D x^\mu)_a

我们只讨论 :math:`K^a` 为常矢量场 (:math:`\partial_b K^a = 0`) 的情况. 这时 :math:`K_\mu` 为常数, 上式可被积分而得

.. math:: 
    \theta = K_\mu x^\mu + \theta_0

借用惯性系 :math:`\{ t, x^i \}` 把 :math:`K^a` 做 :math:`3+1` 分解

.. math:: 
    K^a = \omega (\partial/\partial t)^a + k^a

其中 :math:`k^a` 和 :math:`\omega \equiv K^0` 分别代表 :math:`K^a` 的空间和时间分量. 再令

.. math:: 
    k_a \equiv \eta_{ab} k^b,\quad k_i \equiv (\partial /\partial x^i)^a

则在 :math:`\theta_0` 取0时有

.. math:: 
    A_b = C_b \cos(\omega t - k_ix^i)

这同单色平面波的熟知表达式一致, 因而可称为 **单色平面电磁波** (monochromatic plane wave), :math:`\omega` 和 :math:`k^a` 则可分别解释为角频率和3维波矢量, 于是 :math:`K^a` 称为 **4维波矢量**. :math:`K^a` 的积分曲线可看作4维语言的光线.

:math:`K^a` 是绝对的, 而 :math:`\omega` 及 :math:`k^a` 是相对的. 任一时空点 :math:`p` 的 :math:`K^a` 也可借该点的任一瞬时观者 :math:`(p, Z^a)` 分解为

.. math:: 
    K^a = \omega Z^a + k^a, \quad \omega = -K^a Z_a

:math:`\omega` 和 :math:`k^a` 可分别解释为该观者测得的角频率和3波矢. 由4波矢 :math:`K^a` 的类光性 :math:`K^aK_a = 0` 易知

.. math:: 
    \omega^2 = k^ak_a = k^a

局域单色平面电磁波可看作由一大群光子组成的光子流, 它们有近似相同的 :math:`K^a` 和 :math:`C^a`. 可改用相应电磁波的4波矢 :math:`K^a` 按下式定义光子的4动量 :math:`P^a`

.. math:: 
    P^a := \hbar K^a,\quad (\hbar \equiv j/2\pi)
    :label: photon-momentum-def

并规定光子世界线是这样的类光测地线, 其仿射参数 :math:`\beta` 满足

.. math:: 
    P^a = (\partial /\partial \beta)^a

于是光子世界线重合于相应电磁波的4波矢 :math:`K^a` 的积分曲线. 在 :math:`3+1` 分解方面, 仿照普通粒子, 我们把光子4动量的时间和空间分量分别定义为光子的能量 :math:`E` 和3动量 :math:`p^a`, 即

.. math:: 
    P^a = EZ^a + p^a

注意到 :eq:`photon-momentum-def`, 对比得

.. math:: 
    E= \hbar\omega ,\quad p^a = \hbar k^a

即光子的能量 :math:`E` 和3动量 :math:`p^a` 分别是相应电磁波的角频率 :math:`\omega` 和3波矢 :math:`k^a` 的 :math:`\hbar` 倍. 由 :math:`P^aP_a = 0` 易知光子的能量 :math:`E` 和3动量 :math:`p^a` 的长度 :math:`p` 由如下简单关系

.. math:: 
    E^2 = p^ap_a = p^2

6 光波的多普勒效应
^^^^^^^^^^^^^^^^^^

设观者和光源有任意运动状态 (其世界线为任意类时线), 4速各为 :math:`U^a` 和 :math:`V^a`. 光源在 :math:`p` 时所发的光被观者在 :math:`q` 时收到. 默认此光是局域单色平面波. 设光子的4波矢为 :math:`K^a`, 发光时 :math:`V^a` 测得的角频率为 :math:`\omega = (-K^aV_a)|_p`, 接收光时 :math:`U^a` 测得的角频率为 :math:`\omega' = (-K^aU_a)|_q`. 今欲求 :math:`\omega'` 与 :math:`\omega` 的关系. 因平直时空有绝对平移概念, 将 :math:`U^a|_q` 和 :math:`K^a|_q` 平移至 :math:`p` 点, 则 :math:`\omega' = (-K^aU_a)|_p`. 以下省略下标 :math:`p`, 但记住计算在 :math:`p` 点进行. 有

.. math:: 
    K^a = \omega V^a + k^a

令

.. math:: 
    \gamma \equiv -V^a U_a

则

.. math:: 
    U_a = \gamma V_a + \gamma u_a

其中 :math:`\gamma u^a` 为 :math:`U^a` 在 :math:`(p, V^a)` 的 "空间小平面" 上的投影. 故

.. math:: 
    \omega' = -(\omega V^a + k^a)(\gamma V_a + \gamma u_a) = \gamma (\omega -k^au_a)

设空间矢量 :math:`k^a` 与 :math:`u^a` 夹角为 :math:`\theta`, 得

.. math:: 
    \omega' = \gamma\omega (1-u\cos \theta)

这就是多普勒效应的定量关系. 若 :math:`\theta = 0` (观者与光源相背而行) 得

.. math:: 
    \omega' = \gamma \omega (1-u) = \sqrt{\frac{1-u}{1+u}} \omega < \omega

即红移; 若 :math:`\theta = \pi` (观者正对光源相向而行), 则

.. math:: 
    \omega' = \gamma \omega (1+u) = \sqrt{\frac{1+u}{1-u}} \omega > \omega

即蓝移; 若 :math:`\theta=\pi/2` (横向运动), 则 :math:`\omega' = \gamma \omega` 即横向多普勒效应.

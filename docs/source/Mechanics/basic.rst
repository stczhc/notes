
经典力学(朗道)
============

.. note::
    朗道理论物理学教程, 力学, 2007.

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

最小作用量原理
------------

每一个力学系统可以用一个确定的函数(拉格朗日函数) :math:`L(q,\dot{q},t)` 表示, 并且系统的运动还要满足下面的条件.

**最小作用量原理** 假设在 :math:`t=t_1` 和 :math:`t=t_2` 系统的位置由两组坐标 :math:`q^{(1)}` 和 :math:`q^{(2)}` 确定 (这是问题的边界条件, 这两个坐标是固定的, 不是变量). 那么, 系统在这两个位置之间的运动使得积分 (称为作用量)

.. math:: S[q]=\int_{t_1}^{t_2} L(q,\dot{q}, t) \D t

取最小值. 我们可以通过求解使 :math:`S` 取最小值得问题来推导运动方程. 设 :math:`q_0(t)` 是使 :math:`S` 取最小值的函数, 即用任意函数 :math:`q_0(t) + \delta q(t)` 代替 :math:`q_0(t)` 都会使 :math:`S` 增大. 其中函数 :math:`\delta q(t)` 在 :math:`t_1` 到 :math:`t_2` 都是小量, 称为函数 :math:`q_0(t)` 的变分. 根据边界条件, :math:`q_0(t) + \delta q(t)` 在 :math:`t=t_1, t_2` 也应该取值 :math:`q^{(1)}, q^{(2)}`, 因此

.. math:: \delta q(t_1) = \delta q(t_2) = 0
    :label: q1q2

记 :math:`\delta S \equiv \delta S[q]|_{q=q_0} = S[q_0+\delta q] - S[q_0]`, 最小作用量原理要求 :math:`\delta S = 0` . 下面记 :math:`q_0` 为 :math:`q`. 对变分我们只需考虑线性主部, 即

.. math:: \delta L(q,\dot{q}) = \frac{\partial L}{\partial q} \delta q + \frac{\partial L}{\partial \dot{q}} \delta \dot{q}

得(利用 :math:`\delta \dot{q} = \frac{\D}{\D t} \delta q`)

.. math::
   :nowrap:
   
   \begin{equation*}
      \delta S =&\ \int_{t_1}^{t_2} [L(q + \delta q,\dot{q} + \delta \dot{q}, t)-L(q,\dot{q}, t)] \D t
      = \int_{t_1}^{t_2} \delta L(q,\dot{q}, t) \D t \\
      =&\ \int_{t_1}^{t_2} \left[ \frac{\partial L}{\partial q} \delta q + \frac{\partial L}{\partial \dot{q}} \left( \frac{\D}{\D t} \delta q \right) \right] \D t
   \end{equation*}

对第二项进行分部积分

.. math:: \int_{t_1}^{t_2} \frac{\partial L}{\partial \dot{q}} \left( \frac{\D}{\D t} \delta q \right) \D t
    = \left[ \frac{\partial L}{\partial \dot{q}}  \delta q \right]_{t_1}^{t_2} - \int_{t_1}^{t_2} 
    \frac{\D }{\D t} \left( \frac{\partial L}{\partial \dot{q}} \right) \delta q \D t

得

.. math::
   :nowrap:
   
   \begin{equation*}
      \delta S =&\ \left[ \frac{\partial L}{\partial \dot{q}}  \delta q \right]_{t_1}^{t_2} + \int_{t_1}^{t_2} 
    \left[ \frac{\partial L}{\partial q} - \frac{\D }{\D t} \left( \frac{\partial L}{\partial \dot{q}} \right) \right] \delta q \D t
   \end{equation*}

根据 :eq:`q1q2` 可知第一项 :math:`\left[ \frac{\partial L}{\partial \dot{q}}  \delta q \right]_{t_1}^{t_2}` 为零. 剩下的积分在 :math:`\delta q` 取任何值时都应该等于零. 这只有在被积函数恒等于零的情况下才有可能. 于是我们得到拉格朗日方程

.. math:: \frac{\D }{\D t} \frac{\partial L}{\partial \dot{q}} - \frac{\partial L}{\partial q} = 0
    :label: lagrange

对于有 :math:`s` 个自由度的系统, 在最小作用量原理中有 :math:`s` 个不同的函数 :math:`q_i(t)` 应该独立变分, 因此有 :math:`s` 个方程

.. math:: \frac{\D }{\D t} \frac{\partial L}{\partial \dot{q}_i} - \frac{\partial L}{\partial q_i} = 0,\quad i =1,2,\dots, s


运动方程
-------

力学状态的确定: 只给定广义坐标可以确定某一时刻的状态, 但不足以确定下一时刻的状态. 经验表明, 同时给定系统的所有广义坐标和广义速度就可以确定系统的状态. 并不需要再给定加速度.

现在假定给定初始和结束位置作为限定条件, (而不是给定初始位置和速度作为限定条件). 那么拉格朗日函数只能定义到相差一个对时间和坐标的任意函数的时间全导数项. 考虑两个拉格朗日函数 :math:`L(q,\dot{q},t)` 和 :math:`L'(q,\dot{q}, t)`, 它们相差某个坐标和时间的函数 :math:`f(q,t)` 对时间的全导数

.. math:: L'(q,\dot{q}, t) = L(q,\dot{q}, t) + \frac{\D }{\D t} f(q,t)

计算作用量 :math:`S`

.. math::
   :nowrap:
   
   \begin{equation*}
      S' =&\ \int_{t_1}^{t_2} L'(q,\dot{q}, t) \D t = \int_{t_1}^{t_2} L(q,\dot{q}, t) \D t + \int_{t_1}^{t_2} \frac{\D }{\D t} f(q,t) \D t \\
      =&\ S + f(q^{(2)},t_2) - f(q^{(1)},t_1)
   \end{equation*}

即 :math:`S` 和 :math:`S` 相差一个附加项 :math:`\Delta S = f(q^{(2)},t_2) - f(q^{(1)},t_1)`. 这个附加项在求 :math:`S` 变分时消失, 即 :math:`\delta\Delta S = 0`. 条件 :math:`\delta S' = 0` 和 :math:`\delta S = 0` 完全等价, 因此运动方程也一样. 

自由质点的拉格朗日函数
------------------

下面研究质点相对于惯性参考系的自由运动. 我们已经知道, 这种情况下拉格朗日函数只能依赖于速度的平方. 我们利用伽利略相对性原理来确定这个关系. 也就是说, 当变换参考系时,物理定律有相同的形式. 那么两者的拉格朗日函数也就必须只相差一个任意函数的时间全导数. 

如果惯性参考系 :math:`K` 以无穷小速度 :math:`\epsilon` 相对于另一惯性参考系 :math:`K` 运动, 则有 :math:`\bm{v}'=\bm{v}+\bm{\epsilon}`. 拉格朗日函数 :math:`\mathscr{L}(v^2)` 经过伽利略变换后得到 :math:`\mathscr{L}'`, 由于在所有惯性参考系中运动方程的形式都相同,如果两个拉格朗日量存在差异的话,只能相差某个关于时间和坐标的函数的全导数. 

.. math::
    \mathscr{L}' = \mathscr{L}(v'^2) = \mathscr{L}(v^2+2\bm{v}\cdot \bm{\epsilon} +\epsilon^2)

将这个表达式展开成 :math:`\bm{\epsilon}` 的幂级数并忽略一阶以上的无穷小量得

.. math:: \mathscr{L}(v'^2)=\mathscr{L}(v^2)+2\frac{\partial \mathscr{L}}{\partial v^2}\bm{v}\cdot\bm{\epsilon}
    :label: eq2

具体来看

.. math::
    :nowrap:

    \begin{equation*}
        \mathscr{L}(v'^2) \equiv&\  L(v') = \mathscr{L}(v^2+2\bm{v}\cdot \bm{\epsilon} +\epsilon^2) \\
        L(v') = &\ L(v) |_{\bm{\epsilon}=\bm{0}} + \bm{\epsilon} \cdot \frac{\partial L}{\partial \bm{v}} \\
        =&\ \mathscr{L}(v^2) + \bm{\epsilon} \cdot \frac{\partial L}{\partial \bm{v}}\\
        \frac{\partial L}{\partial \bm{v}} =&\ \frac{\partial \mathscr{L}}{\partial v^2} \frac{\partial v^2}{\partial \bm{v}} 
        = \frac{\partial \mathscr{L}}{\partial v^2} (2 \bm{v})
    \end{equation*}

只有当 :eq:`eq2` 式右边第二项与速度 :math:`\bm{v}` 成线性依赖关系时,它才能是时间的全导数. 因此 :math:`\frac{\partial \mathscr{L}}{\partial v^2}` 不依赖于速度, 即该情况下拉格朗日函数与速度平方成正比

.. math::
    \mathscr{L} = \frac{m}{2}v^2

其中 :math:`m` 为常数. 

各坐标系的拉格朗日量
----------------

注意到 (这里没有二阶求导,只有微元的平方,其中括号省略了. 故分子分母都是微元的平方)

.. math::
    v^2=\left( \frac{\D l}{\D t}\right)^2 = \frac{\D l^2}{\D t^2}

是有用的. 因此为了得到拉格朗日量只需求出在特定坐标系中弧长微元 :math:`\D l` 的平方. 

在笛卡尔坐标系中 :math:`\D l^2 = \D x^2 + \D y^2 + \D z^2`, 进而有

.. math::
    L = \frac{m}{2} (\dot{x}^2 + \dot{y}^2 + \dot{z}^2)

在柱坐标系中 :math:`\D l^2 = \D r^2 + r^2\D \varphi^2 + \D z^2` 进而有

.. math::
    L = \frac{m}{2} (\dot{r}^2 + r^2\dot{\varphi}^2+\dot{z}^2)
    :label: eqlcylin

在球坐标系中 :math:`\D l^2 = \D r^2 + r^2\D \theta^2 + r^2\sin^2\theta \D \varphi^2`, 进而有

.. math::
    L = \frac{m}{2} (\dot{r}^2 + r^2\dot{\theta}^2+r^2\sin^2\theta\dot{\varphi}^2)


质点系
-----

.. note::
    力学(课程录像). 杨维纮.

力学系统相对参考系 :math:`K` 和 :math:`K'` 的能量 :math:`E` 和 :math:`E'` 的关系为

.. math::
    :nowrap:

    \begin{equation*}
        E =&\  \frac{1}{2} \sum_i m_i v_i^2+U = \frac{1}{2}\sum_i m_i (\bm{v}'_i + \bm{V})^2+U\\
        =&\ \frac{1}{2} \sum_i m_i {v'}_i^2+U + \frac{MV^2}{2} + \bm{V}\cdot \bm{P}' \\
        =&\ E' +  \bm{V}\cdot \bm{P}'  + \frac{MV^2}{2}
    \end{equation*}

力矩

.. math::
    \bm{\tau}=\bm{r}\times \bm{F}

刚体
------

刚体概念的优点: 只有6个自由度. 内力做功为零. 证明如下: 刚体定义给出:

.. math::
    (\bm{r}_i - \bm{r}_j)\cdot (\bm{r}_i - \bm{r}_j)=d_{ij}=\mathrm{const}
    \quad \Rightarrow\quad 2(\bm{r}_i - \bm{r}_j)\cdot (\bm{v}_i - \bm{v}_j) = 0

一对内力做功(微元)为

.. math::
    :nowrap:

    \begin{equation*}
        &\ \bm{f}_{ij}\cdot \D \bm{r}_i + \bm{f}_{ji}\cdot \D \bm{r}_j \\
        =&\ \bm{f}_{ij}\cdot(\D \bm{r}_i-\D \bm{r}_j ) \\
        =&\ \D t \bm{f}_{ij}\cdot(\bm{v}_i- \bm{v}_j )
    \end{equation*}

但两点之间的力平行于 :math:`\bm{r}_i - \bm{r}_j`, 所以上式为零. 最后一个优点是外力是滑移矢量. 
注意只能沿作用线移动. 这样可以把所有外力移动到一个作用点. 但是两个力平行则不很显然.
如果平行的力沿同一方向, 左边右边增加两个方向相反的力, 然后就可以有相交作用点. 然后就可以合并. 
只有方向相反, 作用线平行, 大小相等的力才不能消除. 这叫力偶. :math:`Fd` 叫力偶矩. 因为 :math:`d` 和 :math:`F` 一定是垂直的.

作用在刚体上的任何力系, 最终可以等效为作用于刚体某一点的力和一个力偶矩方向与之平行的力偶. 

刚体概念缺点: 不能用于纵波的运动. 不能用于相对论. 不能用于静不定问题.

刚体角速度和角动量方向不一定相同. 如果刚体绕自由轴转动, 则相同.如果不绕自由轴转动必须有外力矩. 

.. math::
    \bm{a}\times(\bm{b}\times\bm{c})=\bm{b}(\bm{a}\cdot \bm{c})-\bm{c}(\bm{a}\cdot \bm{b})

力矩可以相对任意点求,但是力矩做不做功要看系统是否绕那一点转动. 

解题注意事项
^^^^^^^^^

如果一个滑块不动, 静摩擦力由于没有位移而不做功. 纯滚动时静摩擦力也不做功, 因为力做功力矩做功相互抵消. 静摩擦力
与刚体运动趋势方向相反. 

自行车后轮摩擦力朝前, 因为如果是冰面, 摩擦力阻止接触点逆时针转动, 即朝后转动,所以摩擦力朝前阻止.
自行车运动时如果没有摩擦力, 则前轮不转. 前轮就是滑动, 摩擦力阻止向前滑动, 所以摩擦力向后.

刚体上任一点的速度(相对固定坐标系), 可用刚体的平动速度和转动角速度表示.

.. math::
    \bm{v} = \bm{V} + \bm{\Omega}\times \bm{r}
    
其中, :math:`\bm{V}` 是刚体质心速度, 也是刚体的平动速度. :math:`\bm{\Omega}` 是刚体转动角速度, 其方向与刚体转动轴
一致. 转动角速度以刚体任意一点为基元都是一样的. :math:`\bm{v}` 是刚体在固定坐标系(实验室坐标系)的速度. :math:`\bm{r}`
是刚体上那一点相对于质心的位置. 也就是在刚体坐标系的径矢. 

惯量张量
-------

下面研究刚体的动能

.. math::
    :nowrap:

    \begin{equation*}
        T = &\ \sum_i \frac{m_i}{2}(\bm{V} + \bm{\Omega}\times \bm{r}_i)^2 
        = \frac{\mu}{2}\bm{V}^2 + \sum_i \frac{m_i}{2} (\bm{\Omega}\times\bm{r}_i)^2 
        + \sum_i m_i \bm{V} \cdot (\bm{\Omega}\times \bm{r}_i) \\
        =&\ \frac{\mu}{2}\bm{V}^2 + \sum_i \frac{m_i}{2} (\bm{\Omega}\times\bm{r}_i)^2 
        + (\bm{V} \times \bm{\Omega} )\cdot \sum_i m_i\bm{r}_i
    \end{equation*}

若刚体坐标原点选在质心, 则最后一项为零. 所以

.. math::
    T= \frac{\mu}{2}\bm{V}^2 + \sum_i \frac{m_i}{2} (\bm{\Omega}\times\bm{r}_i)^2 

注意

.. math::
    :nowrap:

    \begin{equation*}
        (\bm{A}\times \bm{B})\cdot (\bm{A}\times \bm{B}) =&\ \bm{B}\cdot((\bm{A}\times \bm{B})\times \bm{A})
        = - \bm{B}\cdot[\bm{A}\times (\bm{A}\times \bm{B})] \\
        =&\ - \bm{B}\cdot[\bm{A}(\bm{A}\cdot \bm{B})-\bm{B}(\bm{A}\cdot \bm{A}) ] \\
        =&\ (\bm{A}\cdot \bm{A})(\bm{B}\cdot \bm{B}) - (\bm{A}\cdot \bm{B})^2
    \end{equation*}

因此

.. math::
    :nowrap:

    \begin{equation*}
        T= &\ \frac{\mu}{2}\bm{V}^2 + \sum_i \frac{m_i}{2} [\Omega^2r_i^2-(\bm{\Omega}\cdot \bm{r}_i)^2] \\
        =&\  \frac{\mu}{2}\bm{V}^2 + \sum_i \frac{m_i}{2} \left[ 
        \left(\sum_j\sum_k \Omega_j \Omega_k \delta_{jk} \right) \left(\sum_l r_{il}^2\right)
        -\left(\sum_j\Omega_j r_{ij} \right)\left(\sum_k\Omega_k r_{ik} \right)
        \right] \\
        =&\ \frac{\mu}{2}\bm{V}^2 + \sum_j\sum_k \Omega_j \Omega_k \sum_i \frac{m_i}{2}
        \left[ \delta_{jk} \left(\sum_l r_{il}^2\right) - r_{ij}r_{ik}\right]
    \end{equation*}

惯量张量则为

.. math::
    I_{jk} = \sum_i m_i
    \left[ \delta_{jk} \left(\sum_l r_{il}^2\right) - r_{ij}r_{ik}\right]

如果选取惯量主轴, 惯量张量可以对角化. 从而转动动能变为特别简单的形式

.. math::
    T_{rot} = \frac{1}{2} (I_1\Omega_1^2 + I_2\Omega_2^2 + I_3\Omega_3^2)

欧拉角
-----

.. math::
    \Omega_1 =&\ \dot{\varphi}\sin\theta\sin\psi + \dot{\theta}\cos\psi \\
    \Omega_2 =&\ \dot{\varphi}\sin\theta\cos\psi - \dot{\theta}\sin\psi \\
    \Omega_3 =&\ \dot{\varphi}\cos\theta + \dot{\psi}

自转能量 (spin energy)

.. math::
    E_{\mathrm{spin}} = \frac{1}{2}I(\Omega_1^2+\Omega_2^2) + \frac{1}{2}I_3\Omega_3^2
    = \frac{1}{2}I\left(\dot{\varphi}^2\sin^2\theta + \dot{\theta}^2\right)+\frac{1}{2}I_3 \left(\dot{\varphi}\cos\theta + \dot{\psi}\right)^2

质心的运动为

.. math::
    V_{\mathrm{CM}}^2 = (R\dot{\theta})^2 + (R\dot{\varphi}\sin\theta)^2

拉格朗日量

.. math::
    :nowrap:

    \begin{equation*}
        L =&\ \frac{1}{2}mV_{\mathrm{CM}}^2 + E_{\mathrm{spin}}- mgR\cos\theta \\
        =&\ \frac{1}{2} \left(I + mR^2\right)\left(\dot{\varphi}^2\sin^2\theta + \dot{\theta}^2\right)+\frac{1}{2}I_3 \left(\dot{\varphi}\cos\theta + \dot{\psi}\right)^2  -mgR\cos\theta
    \end{equation*}

欧拉方程
-----

.. math::
    :nowrap:

    \begin{equation*}
        I_1 \dot{\omega}_1 - \omega_2\omega_3(I_2-I_3)=&\ N_1 \\
        I_2 \dot{\omega}_2 - \omega_3\omega_1(I_3-I_1)=&\ N_2 \\
        I_3 \dot{\omega}_3 - \omega_1\omega_2(I_1-I_2)=&\ N_3 \\
    \end{equation*}


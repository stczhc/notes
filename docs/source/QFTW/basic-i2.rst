
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
        \renewcommand{\bm}{\boldsymbol}

第二章 相对论量子力学
=====================

第一节 量子力学
---------------

量子力学的基本观点如下:

(1) 物理态用 Hilbert 空间中的射线表示.

    Hilbert 空间 (记为 :math:`\mathscr{H}`) 的定义就按照往常的定义 (梁灿彬书附录B). 但是射线的定义不太一样 (这里定义的射线只包括归一化矢量).

    [定义1] 一个射线是归一化矢量 [即 :math:`(\psi, \psi) = 1`] 的一个集合, 即如果 :math:`\psi' = \xi \psi`, 则 :math:`\psi` 和 :math:`\psi'` 属于同一射线, 其中 :math:`\xi` 是满足 :math:`|\xi| = 1` 的任意复数. 即对任意满足 :math:`(\psi, \psi) = 1` 的 :math:`\psi \in \mathscr{H}` , 定义

    .. math:: 
        \mathscr{R} \equiv r_\psi := \{ \xi \psi | |\xi| = 1, \xi \in \mathbb{C}, \}

    为过 :math:`\psi` 的一条 **射线** (ray).

    从这个条件实际上可以推出, 若 :math:`\psi_1` 和 :math:`\psi_2` 是属于同一射线的两个矢量, 不妨设它们都属于射线 :math:`r_{\psi}`, 于是

    .. math:: 
        \psi_1 = \E^{\I \theta_1} \psi,\quad \psi_2 = \E^{\I \theta_2} \psi\quad \Rightarrow \psi_2 = \E^{\I (\theta_2-\theta_1)} \psi_1 \equiv \E^{\I \theta} \psi_1
        :label: q-psi1-phase

    即
    
    [引理0-1] 属于同一射线的两个矢量都是归一化的, 并且有一个相位的差别.

(2) 可观测量由厄米算符表示.

    [定义2] 厄米算符定义为满足 :math:`A^\dagger = A` 的算符 :math:`A`. 其中 :math:`A` 的共轭算符 :math:`A^\dagger` 定义为 :math:`(\phi, A^\dagger \psi) \equiv (A\phi, \psi) = \overline{(\psi, A\phi)}`.

    对于一个物理态 (表示为射线 :math:`\mathscr{R}`), 设 :math:`\psi \in \mathscr{R}` (于是可知 :math:`\psi` 是归一化的) 并且 :math:`\psi` 是 :math:`A` 的本征值为 :math:`\alpha` 的本征矢 (即 :math:`A\psi = \alpha\psi`), 那么这个物理态对于算符 :math:`A` 所表示的可观测量有一确定值. 由 :eq:`q-psi1-phase` 可知, 若取射线中的另一个矢量 :math:`\psi'`, 则也有 :math:`A\psi' = A \E^{\I \theta} \psi = \E^{\I \theta} A \psi = \E^{\I \theta} \alpha\psi = \alpha\psi'` 成立. 其中第二步利用了 :math:`A` 的线性性.

    [定理1] 对于厄米算符 :math:`A`, :math:`\alpha` 是实的, 并且属于不同本征值 :math:`\alpha` 的两个本征矢是正交的. (王正行书1.2题)

    [证明] (A) 由 :math:`A|\psi\rangle = \alpha|\psi\rangle` 两边取共轭得 :math:`\langle \psi |A^\dagger = \langle \psi |A = \langle \psi | \overline{\alpha}`. 其中第二步利用了 :math:`A` 的厄米性. 再分别左乘 :math:`\langle \psi |` 和右乘 :math:`|\psi\rangle` 得

    .. math:: 
        \langle \psi |A|\psi\rangle =&\ \langle \psi |\alpha|\psi\rangle = \alpha \\
        \langle \psi |A|\psi\rangle =&\ \langle \psi | \overline{\alpha} |\psi\rangle = \overline{\alpha}

    即 :math:`\alpha = \overline{\alpha}`, 从而 :math:`\alpha` 必须是实数.

    (B) 设 :math:`A|\psi_1\rangle = \alpha_1|\psi_1\rangle,A|\psi_2\rangle = \alpha_2|\psi_2\rangle`. 分别左乘 :math:`\langle \psi_2|` 和左乘 :math:`\langle \psi_1|` 可得

    .. math:: 
        \langle \psi_2 |A|\psi_1\rangle =&\ \alpha_1 \langle \psi_2 | \psi_1\rangle \\
        \langle \psi_1 |A|\psi_2\rangle =&\ \alpha_2 \langle \psi_1 | \psi_2\rangle

    对第二式取共轭, 再利用 :math:`\alpha_2` 是实数以及 :math:`A` 是厄米算符得

    .. math:: 
        \langle \psi_2 |A^\dagger|\psi_1\rangle =&\ \langle \psi_2 | \psi_1\rangle \overline{\alpha_2} \\
        \langle \psi_2 |A|\psi_1\rangle =&\ \alpha_2 \langle \psi_2 | \psi_1\rangle

    与 :math:`\alpha_1` 的式子相减得

    .. math:: 
        0 = (\alpha_1 - \alpha_2) \langle \psi_2 | \psi_1\rangle

    由于要求本征值不同, 即 :math:`\alpha_1 \neq \alpha_2`, 则有 :math:`\langle \psi_2 | \psi_1\rangle = 0`, 即两本征矢正交.

(3) 统计诠释. 在射线 :math:`\mathscr{R}` 所表示的物理态上测得 :math:`\mathscr{R}_n` 所表示的物理态的概率正比于 :math:`|(\psi, \psi_n)|^2`. 其中 :math:`\psi` 和 :math:`\psi_n` 是分别属于射线 :math:`\mathscr{R}` 和 :math:`\mathscr{R}_n` 的矢量. 即

    .. math:: 
        P(\mathscr{R} \to \mathscr{R}_n) \propto |(\psi, \psi_n)|^2
    
    如果态矢 :math:`\psi_n` 构成完全集, 则另一基本定理给出总几率1.

    这里 Weinberg 书上的表述为: "做一个实验以检验它是否处在由互相正交的射线 :math:`\mathscr{R}_1, \mathscr{R}_2, \cdots` 所表示的不同态中. (例如, 通过对一个或多个观测量的测量) [这里中文翻译版本少译了测量]", 并且上述的正比改成了等于. 首先, 如果是通过实验测量, 那么得到的测量结果只能是观测量的本征态, 而不能是任意的态. 一个观测量的各本征态应该是互相正交的 (如果不考虑简并的情况). Weinberg 的表述强调了实验测量, 但又重复要求了这些态的正交性 (如果不正交无法在完备时给出总几率1), 更重要的是, 它没有要求这些态都是某观测量的本征态. 如果这些态不是某观测量的本征态, 那么无法做这样的测量. 似乎可以默认认为所指定的 :math:`\mathscr{R}_n` 是某观测量的本征态, 问题不大. 下面需要证明的问题是, 如何定义射线正交, 为什么任意取两个代表所在射线的矢量给出的概率都一样, 以及为什么本征态组完备时可以给出单位概率.

    [定义3] 两条射线正交定义为在两条射线中分别任选的两个矢量都正交.

    [证明] 正交是方向性的特征, 和矢量的标量因子无关. 而同一射线中的矢量差别仅在相因子 :math:`\E^{\I\theta}`.

    [定理2] 假设 :math:`\psi, \psi'` 和 :math:`\psi_n, \psi'_n` 是分别属于射线 :math:`\mathscr{R}` 和 :math:`\mathscr{R}_n` 的矢量, 则 :math:`|(\psi, \psi_n)|^2 = |(\psi', \psi'_n)|^2`

    [证明] 设 :math:`\psi' = \E^{\I\theta}\psi, \psi'_n = \E^{\I\phi}\psi_n`. 则
    
    .. math:: 
        |(\psi', \psi'_n)|^2 = |(\E^{\I\theta}\psi, \E^{\I\phi}\psi_n)|^2 = |\E^{-\I\theta}\E^{\I\phi}(\psi, \E^{\I\phi}\psi_n)|^2 = |(\psi, \E^{\I\phi}\psi_n)|^2
    
    注意复数的模和相因子无关.

    [定理3] 若 :math:`\psi_1, \psi_2, \cdots, \psi_n` 构成完全集, 则
    
    .. math:: 
        \sum_{i = 1}^n |(\psi, \psi_i)|^2 = 1

    其中 :math:`\psi` 是属于待测量的物理态的射线的矢量 (因此是归一化矢量).
    
    [证明] 完全集的条件为 :math:`\sum_i |\psi_i\rangle\langle \psi_i | = 1`. 选择任意归一化的态矢 :math:`|\psi\rangle` 有
    
    .. math:: 
        1 = \langle \psi |\psi\rangle = \sum_i \langle \psi|\psi_i\rangle\langle \psi_i | \psi\rangle
        = \sum_i \langle \psi|\psi_i\rangle \overline{\langle \psi | \psi_i\rangle} = \sum_i |(\psi, \psi_i)|^2

第二节 对称性
-------------

1 反线性算符及其厄米共轭
^^^^^^^^^^^^^^^^^^^^^^^^

考虑一个保持系统不变的坐标变换 :math:`U : \mathscr{H} \to \mathscr{H}`. 那么原来属于同一射线 :math:`\mathscr{R}` 的不同矢量, 经过 :math:`U` 作用后应该仍属于同一射线 :math:`\mathscr{R'}`. 即这个坐标变换 :math:`U` 对应着一个射线变换 :math:`U_* : \mathscr{R} \mapsto \mathscr{R}'`. 此外, 还要维持统计诠释不变, 即

.. math:: 
    P(\mathscr{R} \to \mathscr{R}_n) =  P(\mathscr{R}' \to \mathscr{R}'_n)

即 :math:`|(\psi, \psi_n)|^2 = |(\psi', \psi'_n)|^2`.

[定理4(Wigner定理)] 对于任意这样的射线变换 :math:`U_*`, 我们可以定义 Hilbert 空间上的一个算符 :math:`U`, 使得如果 :math:`\psi` 在射线 :math:`\mathscr{R}` 中, 那么 :math:`U\psi` 在射线 :math:`\mathscr{R}'` 中 (从这里可以看出, Weinberg 的引入方法更为稳妥. 他先引入射线变换, 因为实验上射线是更基本的对象, 一个实验上视角的改变首先应该对物理态本身有所要求. 其次, 再根据这个对射线的要求来推导出对矢量的相应变换), 则 :math:`U` 要么是幺正且线性的

.. math:: 
    (U\phi, U\psi) = (\phi, \psi), \quad U (\xi\phi + \eta \psi) = \xi U\phi + \eta U\psi

要么是反幺正且反线性的

.. math:: 
    (U\phi, U\psi) = \overline{(\phi, \psi)}, \quad U (\xi\phi + \eta \psi) = \overline{\xi} U\phi + \overline{\eta} U\psi

下面需要定义反线性算符的共轭 (我们在前一节已经有了线性算符的共轭). Weinberg 书通过指出线性算符共轭的表达式无法被反线性算符满足而重新定义反线性算符的共轭. 我们可采取梁灿彬书附录 B 类似的方式, 以更基本的方法导出这一定义. 首先反线性算符的定义 (见梁灿彬命题B.1.1证明部分)

.. math:: 
    A(\psi + \phi) = A\psi + A\phi, \quad A(\xi \psi) = \overline{\xi}A\psi

上面关于 :math:`U` 的反线性性的定义其实是上式两个式子的简写.

[定义4'(错误, 后面解释)] (根据梁灿彬 B.1.3 定义14修改) :math:`\mathscr{H}` 上一个反线性算符 :math:`A : \mathscr{H} \to \mathscr{H}` 自然诱导出 :math:`\mathscr{H}^*` 上一个反线性算符 :math:`A^*: \mathscr{H}^* \to \mathscr{H}^*` 定义为

.. math:: 
    (A^* \eta)(\phi) := \eta(A \phi), \quad \forall A \in \mathscr{H}, \eta \in \mathscr{H}^*

但如此得到的 :math:`A^*` 作用于矢量后后并不能给出 :math:`\mathscr{H}^*` 中的元素, 因为

.. math:: 
    (A^* \eta)(\xi\phi) \equiv \eta(A \xi\phi) = \eta(\overline{\xi} A\phi) = \overline{\xi} \eta(A\phi)

上式表示, :math:`A^* \eta` 得到的结果 (:math:`A^*` 作用的像) 是反线性的. 只能修改定义

[定义4] :math:`\mathscr{H}` 上一个反线性算符 :math:`A : \mathscr{H} \to \mathscr{H}` 自然诱导出 :math:`\mathscr{H}^*` 上一个反线性算符 :math:`A^*: \mathscr{H}^* \to \mathscr{H}^*` 定义为

.. math:: 
    (A^* \eta)(\phi) := \overline{\eta(A \phi)}, \quad \forall A \in \mathscr{H}, \eta \in \mathscr{H}^*

首先证明 :math:`A^*` 作用于矢量后给出 :math:`\mathscr{H}^*` 中的元素, 因为 :math:`\mathscr{H}^*` 是矢量空间, 其中的元素 (:math:`\eta` 及 :math:`A^* \eta`) 对数乘应该是线性的, 所以

.. math:: 
    (A^* \eta)(\xi\phi) \equiv&\ \overline{\eta(A \xi\phi)} = \overline{\eta(\overline{\xi} A\phi)} = \overline{\overline{\xi} \eta(A\phi)} = \xi \overline{\eta(A\phi)} = \xi (A^* \eta)(\phi) \\
    (A^* \eta)(\phi + \psi) \equiv&\ \overline{\eta(A (\phi + \psi))} = \overline{\eta(A\phi + A\psi)} = \overline{\eta(A\phi) + \eta(A\psi)} = \overline{\eta(A\phi)} + \overline{\eta(A\psi)} = (A^* \eta)(\phi) + (A^* \eta)(\psi)

现在证明所得 :math:`A^*` 的反线性性. 证明如下:

.. math:: 
    A^*(\eta + \eta') (\phi) \equiv&\ \overline{(\eta + \eta')(A \phi)} = \overline{\eta(A \phi) + \eta'(A \phi)} = \overline{\eta(A \phi)} + \overline{\eta'(A \phi)} = (A^*\eta) (\phi) + (A^*\eta') (\phi) \\
    A^*(\xi\eta) (\phi) \equiv&\ \overline{(\xi\eta)(A \phi)} = \overline{\xi\cdot \eta(A \phi)} = \overline{\xi} \ \overline{\eta(A \phi)} = \overline{\xi} (A^*\eta) (\phi)

[定理5] (根据梁灿彬命题B-1-3修改) 反线性算符 :math:`A` 的伴随算符 :math:`A^\dagger := \nu^{-1}\circ A^* \circ \nu` 满足

.. math::
    (f, A^\dagger g) = \overline{(Af, g)}

或者 (:math:`f, g` 交换, 等号两边对换, 然后两边取共轭)

.. math:: 
    (f, Ag) = \overline{(A^\dagger f, g)}

反之, 若反线性算符 :math:`B:\mathscr{H}\to \mathscr{H}` 满足

.. math:: 
    (f, Ag) = \overline{(Bf, g)},\quad \forall f, g \in \mathscr{H}

则 :math:`B = A^\dagger`.

[证明] 

.. math:: 
    \overline{(f, Ag)} = \overline{\eta_f(Ag)} = (A^*\eta_f)(g) = ((\nu\circ A^\dagger \circ \nu^{-1})\eta_f)(g) = ((\nu\circ A^\dagger) f)(g) = \eta_{A^\dagger f}(g) = (A^\dagger f, g)

反之, [定理5]中两式相减得

.. math:: 
    0 = \overline{0} = (Bf, g) - (A^\dagger f, g) = ((B- A^\dagger)f, g),\quad \forall f, g \in \mathscr{H}

由于 :math:`g` 可任取, 因此 :math:`(B- A^\dagger)f = 0, \quad \forall f \in \mathscr{H}`. 于是 :math:`B = A^\dagger`.

[定理6a] 线性幺正算符 (根据定理4) 的定义满足 :math:`U^\dagger = U^{-1}`.

[证明] 利用幺正条件 :math:`(Uf, Ug) = (f, g)` 和线性共轭条件 :math:`(f, U^\dagger g) = (Uf, g)`

.. math:: 
    (f, U^\dagger U g) = (Uf, Ug) = (f, g) \quad \Rightarrow \quad U^\dagger U=1

[定理6b]  反线性反幺正算符 (根据定理4) 的定义满足 :math:`U^\dagger = U^{-1}`.

[证明] 利用反幺正条件 :math:`(Uf, Ug) = \overline{(f, g)}` 和反线性共轭条件 :math:`(f, U^\dagger g) = \overline{(Uf, g)}`

.. math:: 
    (f, U^\dagger U g) = \overline{(Uf, Ug)} = (f, g) \quad \Rightarrow \quad U^\dagger U=1

2 恒等射线变换的矢量变换
^^^^^^^^^^^^^^^^^^^^^^^^

总有一个平庸的对称变换 :math:`\mathscr{R} \to \mathscr{R}` (恒等变换) 它对应的算符 :math:`U` 是幺正线性的. (因为定理4指出, 任意物理上有用的射线变换必须要么是幺正线性的, 要么是反幺正反线性的, 这里缺一个证明, 也就是为什么恒等射线变换导致恒等矢量变换. 其实对应的矢量变换会差一个固定因子, 见下面的定理7) (这里 Weinberg 书有个错. 书中一般是用 :math:`T` 表示射线的变换, 而 :math:`U` 表示希尔伯特空间两个矢量的变换, 称为算符. 射线变换一般不能称为算符. 书中这里貌似讨论射线变换, 却用了记号 :math:`U` 并使用了名称 "算符" 其实应该是矢量变换. 但是基于物理考虑, 物理上的连续性只关于射线, 不关于矢量, 又不得不从射线变换开始讨论.) 由此, 连续性就会要求任何可以通过某些参数连续变化得到的对称性 (对称变换) (旋转, 平移, boost) 都必须由线性幺正算符 :math:`U` 表示, 而不是反线性反幺正算符 [这里中文书译错, "而不是" 被译成了 "或" ] (反幺正反线性算符表示的对称性在物理上重要性较低, 它们涉及时间方向的反演). 这里的意思是, 既然需要参数连续变化, 并且参数为0是恒等变换, 而恒等变换是幺正线性的, 那么就无法变着变着由幺正线性变成了反幺正反线性. (这一条只对连续参量的变换成立, 对离散变换不成立).

[引理7-1] 恒等射线变换 :math:`I_* : \mathscr{R} \mapsto \mathscr{R}` 对应的矢量变换 :math:`J : \mathscr{H} \to \mathscr{H}` (定义为 :math:`J f = f'`, 其中 :math:`f'` 满足与 :math:`f` 属于同一射线) 和恒等矢量变换 :math:`I` 的关系为 :math:`J = \E^{\I \theta} I`, 其中 :math:`\theta` 与该矢量变换作用的对象无关, 并且 :math:`J` 是线性算符.

[证明] 由于 :math:`f'` 满足与 :math:`f` 属于同一射线, 由引理[0-1]得 :math:`J f = f' = \E^{\I \theta} f`, 由于 :math:`f` 为任一矢量, 得 :math:`J = \E^{\I \theta} I`. 当然还应证 :math:`\theta` 与作用对象无关. 先设矢量空间为1维. 则所有归一化矢量之间仅相差系数 :math:`\xi`. 设 :math:`J(\xi f) = \E^{\I\theta_1}(\xi f), Jf = \E^{\I\theta_2}f`. 若 :math:`J` 为线性算符, 则利用 :math:`J(\xi f) = \xi Jf`, 得

.. math:: 
    J(\xi f) = \E^{\I\theta_1}(\xi f) = \xi Jf = \xi \E^{\I\theta_2}f

得 :math:`\theta_1 = \theta_2`. 若 :math:`J` 为反线性算符, 则利用 :math:`J(\xi f) = \overline{\xi} Jf`, 得

.. math:: 
    J(\xi f) = \E^{\I\theta_1}(\xi f) = \overline{\xi} Jf = \overline{\xi} \E^{\I\theta_2}f

由于 :math:`\xi` 可表为 :math:`\xi = \rho\E^{\I x}\ (\rho \neq 0)`, 代入上式得 :math:`\E^{\I\theta_1}\rho\E^{\I x} = \rho\E^{-\I x} \E^{\I\theta_2}`, 可推出 :math:`\theta_1 = \theta_2 -2x`. 可见在维数为1维的时候, 尚不能确定 :math:`J` 是线性算符还是非线性算符. 但若考虑维数高于一维, 选择两个方向不同的矢量 :math:`f` 和 :math:`g`, 由对加法的线性性 (:math:`J(f + g) = Jf + Jg`) 得

.. math:: 
    \E^{\I\theta_0}(f + g) =&\ \E^{\I\theta_1}f + \E^{\I\theta_2}g \\
    (\E^{\I\theta_0}-\E^{\I\theta_1})f =&\ (\E^{\I\theta_2} - \E^{\I\theta_0}) g

考虑到 :math:`f` 和 :math:`g` 是不同方向, 因此必有 :math:`\E^{\I\theta_0} = \E^{\I\theta_1} = \E^{\I\theta_2}` (假设 :math:`\theta` 取值范围为 :math:`0\sim 2\pi`), 也即不同维的 :math:`\theta` 系数必须相等, 但尚未说明所有系数必须相等. 若固定 :math:`f` 而改变 :math:`g`, 则 :math:`\E^{\I\theta_1}` 不变, :math:`\E^{\I\theta_2}` 和 :math:`\E^{\I\theta_0}` 决定于 :math:`g` 但必须相等, 因此对所有同维的 :math:`g`, 其系数必须相等. 从而所有系数必须相等. 也即 :math:`\theta` 为常数, 并且 :math:`J` 必须是线性算符.

[定理7] 恒等射线变换对应的矢量变换是幺正线性的.

[证明] 由定理4, 既然恒等射线变换是线性的, 那么它就必须是幺正的. 直接算也可得到

.. math:: 
    (J \phi, J\phi) = (\E^{\I\theta} \phi, \E^{\I\theta} J\phi) = \E^{\I(\theta-\theta)} (\phi, \psi) = (\phi, \psi)

3 无穷小幺正变换
^^^^^^^^^^^^^^^^

于是我们不妨在所有 :math:`J` 里面固定选择那个 :math:`\theta` 为零的 (记为 1) (现在看来似乎对结论没有任何影响, 但是或许会和 Berry 相有关?)

特别地, 一个和平庸变换只差无穷小的对称变换可以表示为一个线性幺正算符, 这个线性幺正算符和恒等算符差一个无穷小量 [这里中文书又译错, 应该是差距是无穷小, 或者 "和恒等变换无限接近" 而不能说 "这个对称变换是无穷小的" ]

.. math:: 
    U = 1+\I \epsilon t

其中 :math:`\epsilon` 是一个无穷小实数. 这里加上 :math:`\I` 是为了使 :math:`t` 是厄米的. 设 :math:`A` 是厄米算符, 即 :math:`A = A^\dagger`, 令 :math:`B = \I A`, 则 :math:`B^\dagger = (\I A)^\dagger = \overline{\I}A^\dagger = -\I A = -B`. 于是 :math:`B` 是反厄米的. 由 :math:`U` 的线性性也可推出 :math:`t` 必须是线性的.

[定理8] 设 :math:`U` 是幺正算符, 并且 :math:`U = 1+\I\epsilon t`, 其中 :math:`\epsilon` 是一个无穷小实数, 则 :math:`t` 是厄米算符.

[证明] 对幺正算符, 有 :math:`U^\dagger U = 1` 于是

.. math:: 
    (1+\I\epsilon t)^\dagger (1+\I\epsilon t) =&\ 1 -\I\epsilon t^\dagger + \I\epsilon t = 1 + \I\epsilon(t - t^\dagger) = 1 \\
    t - t^\dagger = &\ 0

由定理1, 这样的线性厄米算符是观测量的候选者. 事实上, 大多数或者全部物理观测量 (比如角动量和动量) 是由对称变换产生.

从 Weinberg 在后面的讨论可以看出, 他这里讨论的变换 :math:`U` 其实是射线的变换, 然后后面又说明了取因子 :math:`\theta` 为零的理由. 但是毕竟讨论射线变换的时候, 采用 "幺正算符" 等说法是不妥当的. 因此我们这里的讨论更为严谨. 他后面证明矢量变换多出的相位因子和矢量无关的方法其实和我们这里引理7-1的证明类似, 但他没有指出这不适用于1维的情况. 至于上面的无穷小变换, 按照他的本意应该是对射线变换定义的. 按照我们更严谨的处理方法, 则最好先不讨论 "一个无穷小幺正变换 (与单位变换只差一无限小量的幺正变换称为无穷小幺正变换 - 王正行P22) 究竟应该接近于 :math:`\theta` 为零的恒等变换还是 :math:`\theta` 不为零的恒等变换, 或者一部分对称变换接近于单位射线变换对应的某一个矢量变换 :math:`J`, 另一部分又接近其他 :math:`\theta` 的 :math:`J`" . 但是如果真的按照 Weinberg 的理由一律取 :math:`\theta = 0`, 则在此基础上讨论无穷小幺正变换就一定是接近矢量恒等变换的那个了.

4 对称变换群的表示
^^^^^^^^^^^^^^^^^^

对称变换的集合具有某些性质, 因而可以定义为 **群**. [此处中文书没有译出 "集合"]. 如果由两个射线变换 :math:`T_1 : \mathscr{R}_n \mapsto \mathscr{R}'_n, T_2 : \mathscr{R}'_n \mapsto \mathscr{R}''_n`. 这两个变换复合的结果是另一个对称变换, 记为 :math:`T_2T_1 : \mathscr{R}_n \mapsto \mathscr{R}''_n`. :math:`T : \mathscr{R}_n \mapsto \mathscr{R}'_n` 有逆, 记为 :math:`T^{-1} : \mathscr{R}'_n \mapsto \mathscr{R}_n`. 并且还存在恒等变换 :math:`T = 1`, 它保持射线不变.

相应于对称变换 :math:`T` 的幺正或反幺正算符 :math:`U(T)` 具有反映群结构的性质, 但是更复杂. 与对称变换本身不同, 算符 :math:`U(T)` 作用于 Hilbert 空间的矢量, 而不是射线. 对于 :math:`T_1 : \mathscr{R}_n \mapsto \mathscr{R}'_n`, 设 :math:`\psi_n` 是射线 :math:`\mathscr{R}_n` 中的一个矢量, :math:`U(T_1)` 作用于它得到的 :math:`U(T_1)\psi_n` 必须在射线 :math:`\mathscr{R}'_n` 中. 如果进一步用 :math:`T_2 : \mathscr{R}'_n \mapsto \mathscr{R}''_n` 作用, 那么 :math:`U(T_2)U(T_1)\psi_n` 必须在射线 :math:`\mathscr{R}''_n` 中. 但是 :math:`U(T_2T_1)\psi_n` 也在此射线中, 所以这两个矢量必然只能差一个相位 :math:`\theta_n(T_2, T_1)`

.. math:: 
    U(T_2)U(T_1)\psi_n = \E^{\I \theta_n(T_2, T_1)} U(T_2T_1)\psi_n
    :label: ut1t2-phase

[引理9-1] 一个幺正 (反幺正) 算符的逆 (也就是它的伴随算符) 也是幺正 (反幺正的).

[证明] 对幺正算符 :math:`U`, 有 :math:`(Uf, Ug) = (f, g)` 并且 :math:`UU^\dagger = 1`, 于是

.. math:: 
    (f, g) = (UU^\dagger f, UU^\dagger g) = (U^\dagger f, U^\dagger g)

即 :math:`(U^\dagger f, U^\dagger g) = (f, g)`, 则 :math:`U^\dagger` 也是幺正算符. 对反幺正算符

.. math:: 
    \overline{(f, g)} = \overline{(UU^\dagger f, UU^\dagger g)} = (U^\dagger f, U^\dagger g)

即 :math:`(U^\dagger f, U^\dagger g) = \overline{(f, g)}`, 则 :math:`U^\dagger` 也是反幺正算符.

[定理9] 假设 :math:`T(U)` 所能作用的态矢中, 任意两个的叠加都具有物理意义, 并且态矢对应的矢量空间大于一维, 则上述定义的 :math:`\theta_n(T_2, T_1)` 与态矢 :math:`\psi_n` 无关, 而只与射线变换 :math:`T_1, T_2` 有关, 即

.. math:: 
    \theta_n(T_2, T_1) = \theta(T_2, T_1)

[证明] 考虑任意两个不平行的矢量 :math:`\psi_A, \psi_B` (注意如果矢量空间只有一维, 则无法找到两个不平行的矢量). 考虑两个变换的复合 :math:`U(T_2T_1)` 作用于态矢 :math:`\psi_{AB} \equiv \psi_A + \psi_B`, 分别记由 :math:`\psi_A, \psi_B, \psi_{AB}` 决定的相位为 :math:`\theta_A, \theta_B, \theta_{AB}`. 利用算符对加法的线性性 (无论是线性还是反线性算符, 其对加法的线性性都是一样的) 我们有

.. math:: 
    U(T_2)U(T_1)\psi_{AB} =&\ \E^{\I \theta_{AB}(T_2, T_1)} U(T_2T_1)\psi_{AB}
        = \E^{\I \theta_{AB}(T_2, T_1)} U(T_2T_1) (\psi_A + \psi_B) \\
        =&\ \E^{\I \theta_{AB}(T_2, T_1)} U(T_2T_1) \psi_A + \E^{\I \theta_{AB}(T_2, T_1)} U(T_2T_1) \psi_B \\
        =&\ \E^{\I \theta_{AB}(T_2, T_1)}\E^{-\I \theta_A(T_2, T_1)}U(T_2)U(T_1)\psi_A 
            + \E^{\I \theta_{AB}(T_2, T_1)}\E^{-\I \theta_B(T_2, T_1)}U(T_2)U(T_1)\psi_B

由于[引理9-1], 对上式两边左乘 :math:`U(T_1)^{-1}U(T_2)^{-1}` (注意 Weinberg 的书中, 他左乘的是 :math:`U(T_2T_1)`, 则无需考虑 :math:`U(T_2)` 和 :math:`U(T_1)` 各自是幺正还是反幺正的. 事实上, 它们可以不同. 它的正负号只需根据 :math:`U(T_2T_1)` 的幺正或反幺正性去取. 但是如何又能证明 :math:`U(T_2T_1)` 一定是幺正或者反幺正的呢? 答案是根据定理4, 对应于射线变换 :math:`T_2T_1` 的算符一定是幺正或反幺正的) 得

.. math:: 
    \psi_A + \psi_B =&\ \E^{\pm\I [\theta_{AB}(T_2, T_1)-\theta_A(T_2, T_1)]} \psi_A 
        + \E^{\pm\I [\theta_{AB}(T_2, T_1)-\theta_B(T_2, T_1)]} \psi_B \\
    (1-\E^{\pm\I [\theta_{AB}(T_2, T_1)-\theta_A(T_2, T_1)]})\psi_A =&\ (\E^{\pm\I [\theta_{AB}(T_2, T_1)-\theta_B(T_2, T_1)]}-1) \psi_B

若 :math:`U(T_1), U(T_2)` 幺正或反幺正性相同, 则取正号. 若它们幺正或反幺正性相反, 则取负号. 由上式可以看出, 由于 :math:`\psi_A` 和 :math:`\psi_B` 是线性无关的, 我们有

.. math:: 
    \theta_{AB}(T_2, T_1) = \theta_A(T_2, T_1) = \theta_B(T_2, T_1)

于是, 相位因子和态矢无关 (注意这里其实还无法推出与所有态矢无关, 因为证明时要求 :math:`\psi_A` 和 :math:`\psi_B` 线性无关. 那么自然就要问, 对两个线性相关的态矢 (两个态矢线性相关, 也就是它们平行), 它们对应的相位是否还相等呢? 这就要用类似[引理7-1]的证明的办法说明其实对于平行的矢量它们也是相等的).

于是我们可以把 :eq:`ut1t2-phase` 改写成算符等式

.. math:: 
    U(T_2)U(T_1) = \E^{\I \theta(T_2, T_1)} U(T_2T_1)
    :label: ut1t2-oper

当 :math:`\theta = 0` 时, 我们就可以说 :math:`U(T)` 构成了对称变换 (射线变换) 群的一个表示 (因为如果没有相位因子, 上式就和群乘法关系一致), 称为 **普通表示** (ordinary representation). 对于一般的 :math:`\theta`, 我们得到一个 **投影表示** (projective representation). 李群结构本身并不能告诉我们物理态矢构成一个普通表示还是投影表示. 但我们将会说明, 它会告诉我们这个群是否有任何内禀的投影表示.

注意到 [定理9] 有一个附加要求, 即要求任意两个态的叠加都有物理意义. 事实上可能不存在一个物理系统处于由 :math:`\psi_A + \psi_B` 表示的叠加态. 例如, 两个总角动量分别为整数和半整数的态就不能叠加. 在这样的情况下, 我们说在不同态矢类之间有一个 "超选择定则" (superselection rule). 从而, 相位 :math:`\theta(T_2, T_1)` 可能决定于算符 :math:`U(T_2)U(T_1)` 和 :math:`U(T_2T_1)` 所作用的的态所属的类. 在2.7节会进一步解释相位和投影表示. 我们将证明, 任何具有投影表示的对称群总是可以扩张 (在不改变物理意义的情况下), 从而它的表示是非投影的, 即 :math:`\theta = 0`. 直到第2.7节我们假设已经做了这样的扩张, 即 :math:`\theta = 0`.

现在, 我们在 :eq:`ut1t2-oper` 取 :math:`T_1` 为恒等射线映射, 其对应的算符记为 :math:`J`, 并取 :math:`\theta(T_2, T_1) = 0`, 则

.. math:: 
    U(T_2)J = U(T_2)

于是 :math:`J` 只能是恒等矢量变换. 也就是说, 当 :eq:`ut1t2-oper` 的 :math:`\theta` 取为0时, 相应的 :math:`J` 的 :math:`\theta` 也必须取为0.

5 连通李群 (酉群)
^^^^^^^^^^^^^^^^^

**连通李群** (connected Lie group) 是一种具有特殊物理意义的群. 这个群由可由实连续参数 :math:`\theta^a` (注意这里使用了抽象指标记号) 表示的变换 :math:`T(\theta)` 作为群元构成 (这个条件是李群的第一个条件, 也就是李群是一个群, 同时是一个实流形). 每个群元都可以通过群内的一条路径连接到群中的恒等元 (这个条件表示连通性). 群乘法采取以下形式 (这个条件表示李群还要求群乘法对应的流形映射是光滑的)

.. math:: 
    T(\theta')T(\theta) = T\big(f(\theta', \theta)\big)

其中 :math:`f^a(\theta', \theta)` 是一个 :math:`\theta'` 和 :math:`\theta` 的函数. 把 :math:`\theta^a = 0` 作为恒等元的坐标 (这里存在坐标是因为这是一个李群) 则有

.. math:: 
    f^a(\theta, 0) = f^a(0, \theta) = \theta^a
    :label: fa-zero-theta

根据先前的讨论, 这样的连续群中的变换在 Hilbert 空间中的表示必定为幺正 (而不是反幺正) 算符 :math:`U(T(\theta))` (这里用上了连通性. 首先群中必须有恒等元, 恒等元的表示必为线性幺正的. 连通性表示该李群无法存在两个分支. 那么所有能连续变化到恒等元的群元都只能是线性幺正的). 对一个李群, 这样的算符可以至少在恒等元的有限邻域表示为幂级数

.. math:: 
    U(T(\theta)) = 1 + \I \theta^a t_a + \frac{1}{2} \theta^b\theta^c t_{bc} + \cdots
    :label: ut-base

其中 :math:`t_a, t_{bc} = t_{cb}` 等是与 :math:`\theta` 无关的厄米算符. 其中 :math:`t_a` 的厄米性在前面已经证过. 下面需要证 :math:`t_{bc}` 的对称性和厄米性.

[定理10] :math:`t_{bc}` 是对称反厄米算符. [这里 Weinberg 书错误. Weinberg 认为应该是厄米算符. 实际上后面的推导只是用到了它的对称条件, 而没有用到厄米或反厄米条件. ]

[证明] 首先对称性是由于小括号的传递: :math:`\frac{1}{2} \theta^b\theta^c t_{bc} = \frac{1}{2} \theta^{(b}\theta^{c)} t_{bc} = \frac{1}{2} \theta^{(b}\theta^{c)} t_{(bc)} = \frac{1}{2} \theta^b\theta^c t_{(bc)}`. 即 :math:`t_{bc} = t_{(bc)}`. 利用 :math:`U^\dagger U = 1` 和 :math:`t_a` 已经是厄米算符得 (保留到2阶项)

.. math:: 
    1 =&\ (1 + \I \theta^a t_a + \frac{1}{2} \theta^b\theta^c t_{bc})^\dagger (1 + \I \theta^a t_a + \frac{1}{2} \theta^b\theta^c t_{bc}) \\
    =&\ 1 -\I \theta^a t_a^\dagger + \I \theta^a t_a + (-\I \theta^a t_a^\dagger)(\I \theta^b t_b) + \frac{1}{2} \theta^b\theta^c t_{bc}^\dagger + \frac{1}{2} \theta^b\theta^c t_{bc} \\
    =&\ 1 + \I \theta^a(t_a - t_a^\dagger) + \theta^b\theta^c t_b^\dagger t_c + \frac{1}{2} \theta^b\theta^c (t_{bc}^\dagger + t_{bc}) \\
    0 =&\ t_b^\dagger t_c + \frac{1}{2} (t_{bc}^\dagger + t_{bc})

似乎无法证出 :math:`t_{ab}` 为厄米算符. 这个证明错在, 当初得到 :math:`t_a = t_a^\dagger` 的时候, 是忽略了二阶项 :math:`t_b^\dagger t_c`. 实际上, 我们有

.. math:: 
    1 =&\ (1 + \I \theta^a t_a)^\dagger(1 + \I \theta^a t_a) \\
    =&\ 1 -\I \theta^a t_a^\dagger + \I \theta^a t_a -\theta^a\theta^b t_a^\dagger t_b \\
    0=&\ \I \theta^a (t_a-t_a^\dagger) -\theta^a\theta^b t_a^\dagger t_b

代入之前的式子得

.. math:: 
    \frac{1}{2} (t_{bc}^\dagger + t_{bc}) = 0\quad \Rightarrow \quad t_{bc}^\dagger = -t_{bc}

即 :math:`t_{bc}` 是反厄米算符 (注意这里的下标 :math:`bc` 不是表示矩阵元. :math:`t_{bc}` 的每一个分量都应该表示为一个矩阵). 下面采用另一种证法. 展开式可写为

.. math:: 
    U(T(\theta)) =&\ 1 + \I \theta^a t_a + \frac{1}{2} \theta^a\theta^b t_{ab} + \cdots \\
                 =&\ 1 + \I \theta^a \left( t_a - \frac{1}{2}\I \theta^b t_{ab} \right) + \cdots \\
                 \equiv&\ 1 + \I \theta^a T_a + \cdots

其中 :math:`T_a \equiv t_a - \frac{1}{2}\I \theta^b t_{ab}`. 利用 :math:`U^\dagger U = 1` 得

.. math:: 
    1 =&\ (1 + \I \theta^a T_a)^\dagger (1 + \I \theta^a T_a ) = 1 -\I \theta^a T_a^\dagger + \I \theta^a T_a \\
        =&\ 1 +  \I \theta^a (T_a - T_a^\dagger)

于是得 :math:`T_a = T_a^\dagger`. 此即

.. math:: 
    t_a - \frac{1}{2}\I \theta^b t_{ab} = t_a^\dagger + \frac{1}{2}\I \theta^b t_{ab}^\dagger

而 :math:`t_a = t_a^\dagger`, 于是得 :math:`t_{ab}^\dagger = -t_{ab}`, 即 :math:`t_{ab}` 是反厄米算符.

6 酉群李代数
^^^^^^^^^^^^

[定理11] 假设 :math:`U(T(\theta))` 构成变换群的一个普通 (非投影的) 表示, 即

.. math:: 
    U\big( T(\theta') \big) U\big( T(\theta) \big) = U \big( T(f(\theta', \theta)) \big)
    :label: u-theta-f

则 :math:`U(T)` 对应的厄米和反厄米算符满足

.. math:: 
    t_{bc} = -t_bt_c -\I \xtensor{f}{^a}{_{bc}} t_a

进一步有

.. math:: 
    [t_b, t_c] = \I \xtensor{C}{^a}{_{bc}} t_a, \quad \xtensor{C}{^a}{_{bc}} = -\xtensor{f}{^a}{_{bc}}+\xtensor{f}{^a}{_{cb}}

其中 :math:`\xtensor{f}{^a}{_{bc}}` 是与 :math:`U(T(\theta))` 构成的变换群 (李群) 结构有关的实常数.

[证明] 思路是把 :eq:`u-theta-f`  利用 :eq:`ut-base` 展开成 :math:`\theta^a` 和 :math:`\theta'^a` 的级数. 我们有

.. math:: 
    f^a(\theta', \theta) =&\  f^a + \xtensor{g}{^a}{_b}\theta^b + \xtensor{{g'}}{^a}{_b}\theta'^b + \xtensor{f}{^a}{_{bc}} \theta'^b\theta^c \\
    &\ + \xtensor{h}{^a}{_{bc}} \theta^b\theta^c+ \xtensor{{h'}}{^a}{_{bc}} \theta'^b\theta'^c + \cdots

利用 :eq:`fa-zero-theta` 可知 :math:`f^a(0, 0) = f^a = 0`,  利用 :math:`f^a(\theta', 0) = \theta'^a` 可知 :math:`\xtensor{{g'}}{^a}{_b} = 1, \ \xtensor{{h'}}{^a}{_{bc}} = 0`, 利用 :math:`f^a(0, \theta) = \theta^a` 可知 :math:`\xtensor{g}{^a}{_b} = 1, \ \xtensor{h}{^a}{_{bc}} = 0`. 于是

.. math:: 
    f^a(\theta', \theta) = \theta^a + \theta'^a + \xtensor{f}{^a}{_{bc}} \theta'^b\theta^c + \cdots

因为要求是实流形, 而 :math:`f(\theta', \theta)` 代表由实参数 :math:`\theta, \theta'` 得到的新的变换的实参数, 所以 :math:`\xtensor{f}{^a}{_{bc}}` 必须是实系数. 于是

.. math:: 
    U(T(f(\theta', \theta))) =&\ 1 + \I \big( \theta^a + \theta'^a + \xtensor{f}{^a}{_{bc}} \theta'^b\theta^c + \cdots \big) t_a  \\
    &\ + \frac{1}{2} \big( \theta^b + \theta'^b + \cdots \big) \big( \theta^c + \theta'^c + \cdots \big) t_{bc} + \cdots \\
    =&\ 1 + \I t_a\theta^a + \I t_a\theta'^a + \frac{t_{bc}}{2} \big(\theta^b\theta^c + \theta'^b\theta'^c\big) +  \big( \I \xtensor{f}{^a}{_{bc}} t_a + t_{bc} \big)\theta'^b\theta^c + \cdots 

另一方面

.. math:: 
    &\ U\big( T(\theta') \big) U\big( T(\theta) \big)\\
    =&\ \big( 1 + \I \theta'^a t_a + \frac{1}{2} \theta'^b\theta'^c t_{bc} + \cdots \big) \cdot \big( 1 + \I \theta^a t_a + \frac{1}{2} \theta^b\theta^c t_{bc} + \cdots \big) \\
    =&\ 1 + \I t_a \theta^a + \I t_a \theta'^a + \frac{t_{bc}}{2} \big(\theta^b\theta^c + \theta'^b\theta'^c\big) -t_bt_c\theta'^b\theta^c + \cdots 

根据 :eq:`u-theta-f` 可知以上两式必须相等. 比较可见, 有关 :math:`1, \theta, \theta', \theta^2, \theta'^2` 的项的系数都自动匹配, 但是 :math:`\theta'^b\theta^c` 项的系数给出

.. math:: 
    \I \xtensor{f}{^a}{_{bc}} t_a + t_{bc} = -t_bt_c.
    :label: fabc-tbc

注意其中 :math:`t_a, t_{bc}` 是联系 :math:`\theta` 和 :math:`U(T)` 的算符 (只与李群中某一点有关). 而 :math:`\xtensor{f}{^a}{_{bc}}` 是与李群乘法定义有关的实系数 (与李群乘法有关). 因此这个式子说明, 如果我们知道了群结构 (即函数 :math:`f(\theta, \theta')`), 从而知道了它的二次项系数 :math:`\xtensor{f}{^a}{_{bc}}`, 我们就可以从生成元 :math:`t_a` 计算 :math:`U(T(\theta))` 的二阶项 (:math:`t_{bc}`). 但是根据[定理10], :math:`t_{bc}` 是对称张量, 于是

.. math:: 
    -\I \xtensor{f}{^a}{_{bc}} t_a - t_{bc} =&\ t_bt_c \\
    \I \xtensor{f}{^a}{_{cb}} t_a - t_{bc} =&\ t_ct_b

两式相减得

.. math:: 
    [t_b, t_c] = \I \xtensor{C}{^a}{_{bc}} t_a ,\quad \xtensor{C}{^a}{_{bc}} = -\xtensor{f}{^a}{_{bc}}+\xtensor{f}{^a}{_{cb}}
    :label: tb-tc-comm

其中实常数 :math:`\xtensor{C}{^a}{_{bc}}` 称为 (李代数的) **结构常数** (structure constants). 利用这组对易关系, 可以把 :math:`\{ t_a \}` 定义为 **李代数** (Lie algebra).

[定理12] 矢量空间 :math:`\{ t_a \}` 构成李代数, 其李括号定义为 :math:`[t_b, t_c] := t_b t_c - t_c t_b = \I \xtensor{C}{^a}{_{bc}} t_a`.

[证明] 定义了李括号的矢量空间 :math:`\mathscr{V}` 称为李代数. 李括号的定义必须为双线性映射 (要求李括号的结果还得到矢量空间 :math:`\mathscr{V}` 内的元素), 并且满足以下两个条件:

(a) :math:`[A, B] = -[B, A],\quad \forall A, B \in \mathscr{V}`.
(b) :math:`[A, [B, C]] + [C, [A, B]] + [B, [C, A]] = 0,\quad \forall A, B, C \in \mathscr{V}`.

考虑到 :math:`[t_b, t_c] = t_b t_c - t_c t_b` 双线性性和条件 (a) 很显然. 而根据 :math:`[t_b, t_c] = \I \xtensor{C}{^a}{_{bc}} t_a` 可知李括号的结果仍是 :math:`\mathscr{V}` 的元素. 下面考虑条件 (b):

.. math:: 
    &\ [A, [B, C]] + [C, [A, B]] + [B, [C, A]] \\
    =&\ A(BC-CB)-(BC-CB)A + C(AB-BA)-(AB-BA)C + B(CA-AC)-(CA-AC)B \\
    =&\ ABC-ACB-ABC+ACB -BCA+BAC+BCA-BAC+CBA+CAB-CBA-CAB = 0

也就是只要对易子按照 :math:`[A, B] = AB-BA` 方式定义, 则自动满足条件 (a), (b), 唯一需要保证的就是 :math:`[A, B]` 仍给出原矢量空间的元素.

在2.7节, 我们将证明对易关系 :eq:`tb-tc-comm` 是接续完成以下过程的唯一条件: :math:`U(T(\theta))` 的完整幂级数展开可以从无限个类似于 :eq:`fabc-tbc` 的方程序列计算得到, 只要我们知道一阶项 (即生成元 :math:`t_a`) (因为 :eq:`fabc-tbc` 表示从一阶项可以推出二阶项, 类似地可以得到从二阶项推出三阶项的式子, 所以可以得到类似于 :eq:`fabc-tbc` 的方程的序列, 从而得到所有阶的幂级数展开系数). 这并不意味着如果我们知道 :math:`t_a` 就可以对所有 :math:`\theta^a` 唯一地确定 :math:`U(T(\theta))`, 但是这意味着至少在恒等元 (坐标 :math:`\theta^a = 0`) 的一个有限邻域内, :math:`U(T(\theta))` 可以被唯一确定, 也就是说对于在这个邻域的 :math:`\theta, \theta', f(\theta, \theta')`, :eq:`u-theta-f` 总会满足. 到所有 :math:`\theta^a` 的扩张会在 2.7 节介绍. (这一段其实是想表达如果已知李代数 :math:`\{ t_a \}`, 我们对于整个李群 :math:`\{ U(T(\theta)) \}` 的结构能知道多少. 李代数是李群恒等元的切空间, 因此当然能决定恒等元的一个邻域的情况. )

7 阿贝尔李代数
^^^^^^^^^^^^^^

下面讨论一个重要的特殊情形, 后面会反复遇到. 假设函数 :math:`f(\theta, \theta')` 是相加的 (也可以只对部分坐标成立)

.. math:: 
    f^a(\theta, \theta') = \theta^a + \theta'^a

当我们的变换群只包括时空平移变换, 或者只包括绕某一固定轴的旋转变换 (但不能是既包括平移也包括旋转的变换群) 的时候, 那么这个相加条件是满足的, 也就是符合这一特例. (假设所考虑的坐标 :math:`\theta` 是一维矢量, 即一个实数. 在这种情况下, 如果相加条件对所有坐标成立, 相当于所考虑的变换群其实可以整个表示为一个单参子群. 对于单参子群, 可以定义指数映射. 如果只对部分坐标成立, 实际上这些满足该条件的坐标构成李群中的一条曲线, :math:`\theta` 是曲线的参数.) 由于 :math:`f^a(\theta, \theta')` 表达式中没有二次项, 所以系数 :math:`\xtensor{f}{^a}{_{bc}}` 为零, 结构常数也就为零. 所以所有生成元 (李代数元) 都对易

.. math:: 
    [t_b, t_c] = 0

这里 Weinberg 书直接说 "这样的群称为 **阿贝尔** (Abelian) 群", 但是不明确 (其实是这个李代数对应的变换群是阿贝尔群). 首先我们根据上式可以知道, :math:`\{ t_a \}` 构成阿贝尔李代数 (任一两个元素的李括号都为零的李代数称为 **阿贝尔李代数**). 阿贝尔群的定义则是群乘法具有交换律, 因此为了证明所得的群是阿贝尔群, 我们需要证明 :math:`U(T(\theta))U(T(\theta')) = U(T(\theta'))U(T(\theta))`. 这个很好证, 因为

.. math:: 
    U(T(\theta))U(T(\theta')) =&\ U(T(f(\theta, \theta'))) = U(T(\theta + \theta')) = U(T(\theta' + \theta)) \\
    =&\ U(T(f(\theta', \theta))) = U(T(\theta'))U(T(\theta))

在这种情况下, 容易对所有 :math:`\theta^a` 计算 :math:`U(T(\theta))` (注意上面引入相加性条件的时候, 说的是也可以只对所有坐标 :math:`\theta^a` 的一个子集成立. 而如果只对一个子集成立的话, 那也就只能对那个子集里面的 :math:`\theta^a` 计算 :math:`U(T(\theta))` 了). 在 :eq:`u-theta-f` 中取 :math:`\theta = \theta' = \frac{1}{2}x` 则 :math:`f^a(\theta, \theta') = \theta^a + \theta'^a = x`. 于是得

.. math:: 
    U(T(x)) = U(T(x/2)) U(T(x/2))

而 :math:`U(T(x/2))` 又可按类似方法拆成两项. 一般地,

.. math:: 
    U\big( T(\theta) \big) = \left[ U \left( T \left( \frac{\theta}{N} \right) \right) \right]^N

取极限 :math:`N \to \infty`, 并只保留 :math:`U(T(\theta/N))` 的一阶项 (根据 :eq:`ut-base`)

.. math:: 
    U(T(\theta/N)) = 1 + \frac{\I}{N} \theta^at_a + \cdots

得

.. math:: 
    U\big( T(\theta) \big) = \lim_{N \to \infty} \left[ U \left( T \left( \frac{\theta}{N} \right) \right) \right]^N = \lim_{N \to \infty} \left[ 1 + \frac{\I}{N} \theta^at_a \right]^N

利用恒等式 :math:`\lim_{n\to \infty} \big( 1 + \frac{x}{n} \big)^n = \E^x` 得

.. math:: 
    U\big( T(\theta) \big) = \exp (\I t_a \theta^a)

第三节 量子洛伦兹变换
---------------------

1 等度规条件
^^^^^^^^^^^^

根据相对性原理, 物理规律在所有惯性坐标系中有相同数学表达式, 用于狭义相对论 (爱因斯坦相对性原理) 就要求物理规律的数学表达式具有洛伦兹协变性. 这和伽利略相对性原理不同. 牛顿力学遵循的是伽利略相对性原理. 两种相对性原理的不同体现在, 不同惯性系的坐标如何变换. 根据洛伦兹协变性, 如果 :math:`x^\mu` 是某惯性系的坐标 (其中 :math:`x^1, x^2, x^3` 是笛卡儿空间坐标, :math:`x^0 = t` 是时间坐标, 光速被设为1), 那么在任何其他惯性系的坐标 :math:`x'^\mu` 必须满足 (这个表达式其实表示线元是时空不变量)

.. math:: 
    \eta_{\mu\nu} (\D x'^\mu) (\D x'^\nu) = \eta_{\mu\nu} (\D x^\mu) (\D x^\nu)
    :label: line-element-inva

其中 :math:`\eta_{\mu\nu}` 是对角矩阵, 其对角元为

.. math:: 
    \eta_{11} = \eta_{22} = \eta_{33} = +1, \eta_{00} = -1.

注意这里号差为 :math:`+2`, 在相对论和弦论领域采用此号差比较普遍. 而对粒子物理一般采用 :math:`-2` 号差. 按照求和约定, 重复指标如果一个在上一个在下, 代表求和.

如果把 :math:`\eta_{\mu\nu}` 的具体值代入 :eq:`line-element-inva`, 则得到更明显的线元不变表达式

.. math:: 
    -\D t^2 + \D (x^1)^2 + \D (x^2)^2 + \D (x^3)^2 = -\D t'^2 + \D (x'^1)^2 + \D (x'^2)^2 + \D (x'^3)^2

注意, 物理上说线元不变. 但是线元是4维时空的标量, 按数学的理解本来就应该是不变的, 所以好像什么也没说. 这里的问题在于, 数学上度规作为一个张量, 其分量不一定在不同坐标系不变, 因此数学上线元一定不变, 而度规不一定. 但是物理上讨论线元的时候, 我们默认线元的表达式固定了, 也就是默认了度规不能变化. 在这种情况下线元成为了一个关于坐标 (元) 的函数, 我们就会看到结果是线元不变 (因为度规这个概念被省略了).

[定理13] 线元不变的条件 :math:`\eta_{\mu\nu} (\D x'^\mu) (\D x'^\nu) = \eta_{\mu\nu} (\D x^\mu) (\D x^\nu)` 等价于如下条件

.. math:: 
    \eta_{\mu\nu} \frac{\partial x'^\mu}{\partial x^\rho} \frac{\partial x'^\nu}{\partial x^\sigma} = \eta_{\rho\sigma}

[证明] 简单的证明是先改写为

.. math:: 
    \eta_{\mu\nu} (\D x'^\mu) (\D x'^\nu) = \eta_{\rho\sigma} (\D x^\rho) (\D x^\sigma)

再移项得 (其实右边是对 :math:`\rho, \sigma` 求和, 不应该直接移项. 但是其实是理解的问题. 不同 :math:`\D x^\mu` 应该是独立的分量, 不会因为求和而混合. 因此其实可以移项)

.. math:: 
    \eta_{\mu\nu} \frac{\partial x'^\mu}{\partial x^\rho} \frac{\partial x'^\nu}{\partial x^\sigma} = \eta_{\rho\sigma}

下面考虑另一种证明方法. 把线元不变的条件看成对偶矢量的等式

.. math:: 
    \eta_{\mu\nu} (\D x'^\mu)_a (\D x'^\nu)_b = \eta_{\mu\nu} (\D x^\mu)_a (\D x^\nu)_b

而对偶矢量的变换关系为 (梁灿彬书定理2-3-3)

.. math:: 
    (\D x'^\mu)_a = \frac{\partial x'^\mu}{\partial x^\nu} (\D x^\nu)_a

于是

.. math:: 
    \eta_{\mu\nu} (\D x'^\mu)_a (\D x'^\nu)_b =&\ \eta_{\mu\nu} \frac{\partial x'^\mu}{\partial x^\rho} (\D x^\rho)_a \frac{\partial x'^\nu}{\partial x^\sigma} (\D x^\sigma)_b = \eta_{\rho\sigma} (\D x^\rho)_a (\D x^\sigma)_b \\
    \eta_{\mu\nu} \frac{\partial x'^\mu}{\partial x^\rho} \frac{\partial x'^\nu}{\partial x^\sigma}(\D x^\rho)_a  (\D x^\sigma)_b =&\ \eta_{\rho\sigma} (\D x^\rho)_a (\D x^\sigma)_b

可见若已知

.. math:: 
    \eta_{\mu\nu} \frac{\partial x'^\mu}{\partial x^\rho} \frac{\partial x'^\nu}{\partial x^\sigma} = \eta_{\rho\sigma}

两边与 :math:`(\D x^\rho)_a (\D x^\sigma)_b` 缩并可以得到第一式. 但是反过来似乎不那么简单. 但是实际上需要解释第一式其实求和并不是把所有项混合, 而是不同 :math:`\D x^\mu` 的系数是独立相等的, 这从 "更明显的线元表达式" 也可以看出来.

下面考虑如何从第一式推出第二式. 首先考虑度规张量在两个不同坐标系的展开

.. math:: 
    \eta_{ab} = \eta_{\mu\nu} (\D x^\mu)_a (\D x^\nu)_b = \eta'_{\mu\nu} (\D x'^\mu)_a (\D x'^\nu)_b

则由已知条件知

.. math:: 
    \eta'_{\mu\nu} (\D x'^\mu)_a (\D x'^\nu)_b = \eta_{\mu\nu} (\D x'^\mu)_a (\D x'^\nu)_b
    :label: xeta-ab-munu

下面若能证明从上式能推出 :math:`\eta_{\mu\nu} = \eta'_{\mu\nu}`, 实际上也就证明了等价性. 因为 :math:`\eta_{\mu\nu} = \eta'_{\mu\nu}` 加上张量变换律 :math:`\eta_{\mu\nu} \frac{\partial x^\mu}{\partial x'^\rho} \frac{\partial x^\nu}{\partial x'^\sigma} = \eta'_{\rho\sigma}` 就得到第二式. 根据张量分量的定义式

.. math:: 
    \eta_{\mu\nu} \equiv \eta_{ab} \left(\frac{\partial}{\partial x^\mu} \right)^a \left(\frac{\partial}{\partial x^\nu}\right)^b

以及坐标基矢与对偶坐标基矢的关系

.. math:: 
    \left(\frac{\partial}{\partial x^\mu} \right)^a (\D x'^\nu)_a = \xtensor{\delta}{^\mu}{_\nu}

于是 :eq:`xeta-ab-munu` 两边与 :math:`\left(\frac{\partial}{\partial x^\rho} \right)^a \left(\frac{\partial}{\partial x^\sigma} \right)^b` 缩并得

.. math:: 
    \eta'_{\mu\nu} (\D x'^\mu)_a (\D x'^\nu)_b \left(\frac{\partial}{\partial x^\rho} \right)^a \left(\frac{\partial}{\partial x^\sigma} \right)^b
    =&\ \eta'_{\mu\nu} \xtensor{\delta}{^\mu}{_\rho} \xtensor{\delta}{^\nu}{_\sigma} 
    = \eta'_{\rho\sigma} \\
    \eta_{\mu\nu} (\D x'^\mu)_a (\D x'^\nu)_b \left(\frac{\partial}{\partial x^\rho} \right)^a \left(\frac{\partial}{\partial x^\sigma} \right)^b
    =&\ \eta_{\rho\sigma}

于是得到 :math:`\eta_{\mu\nu} = \eta'_{\mu\nu}`.

对于第一个式子, 它表示线元不变: :math:`\eta_{\mu\nu} (\D x'^\mu) (\D x'^\nu) = \eta_{\mu\nu} (\D x^\mu) (\D x^\nu)`. 注意到等式两边都是标量, 它本来就是4维时空中的不变量, 那么这个式子实质上要求了什么? 注意, 这个式子本来应该是 :math:`\eta'_{\mu\nu} (\D x'^\mu) (\D x'^\nu) = \eta_{\mu\nu} (\D x^\mu) (\D x^\nu)`, 也就是第一个 :math:`\eta'_{\mu\nu}` 应该因为坐标变换而又变化. 所以线元不变的式子实质是要求度规在坐标变换下不能改变, 也就是 :math:`\eta'_{\mu\nu} = \eta_{\mu\nu}`. 但是注意第一式是两个数的等式, 第二式是张量等式, 所以第一式 "看上去" 要求更少 (但其实是对偶矢量乘积的等式, 和第二式有等量的信息, 见上面的证明).

下面考虑第二个式子的意义

.. math:: 
    \eta_{\mu\nu} \frac{\partial x'^\mu}{\partial x^\rho} \frac{\partial x'^\nu}{\partial x^\sigma} = \eta_{\rho\sigma}

:math:`\eta_{ab}` 作为一个张量 (绝对量) 自然应该是不随坐标变换而变的. 但是一般地说, 它应该在不同坐标系有不同的分量, 分别记为 :math:`\eta_{\mu\nu}` 和 :math:`\eta'_{\mu\nu}`. 上面的式子左边其实是张量变换律, 它给出 :math:`\eta'_{\rho\sigma}`. 因此上面的式子就要求 :math:`\eta'_{\rho\sigma} = \eta_{\rho\sigma}`. 也就是这个张量在不同坐标系的分量还要相等. 这个是被动观点, 总结一下就是, 度规在不同坐标系的分量相同. 我们还知道洛伦兹变换组成的群是等度规群, 这是主动观点. 在主动观点下, 我们认为坐标系不变, 那么一个变换把一个张量 (闵氏空间中的一点) 映射到另一个张量, 这两个张量一般而言就不相等了 (作为绝对量也不相等). 但是等度规变换如果作用到度规张量上, 还得到它自己, 相当于恒等变换. 这两种观点是等价的, 所讨论的坐标变换 :math:`x^\mu \mapsto x'^\mu` 必然是一个等度规变换.

这些变换有一个特殊性质, 即光速在任何惯性系是不变的 (用我们这里的单位, 就是1). 以单位速度传播的光波满足 :math:`|\D \bm{x}/\D t| = 1`, 即 :math:`\eta_{\mu\nu} \D x^\mu \D x^\nu = \D \bm{x}^2 - \D t^2 = 0`, 从而根据相对性原理第一式 :eq:`line-element-inva`, 在另一个坐标系有 :math:`\eta_{\mu\nu} \D x'^\mu \D x'^\nu = 0`, 从而 :math:`|\D \bm{x'}/\D t'| = 1`, 即光速不变.


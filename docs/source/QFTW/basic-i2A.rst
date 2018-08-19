
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
    

第二章 相对论量子力学 (A)
=========================

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
        |(\psi', \psi'_n)|^2 = |(\E^{\I\theta}\psi, \E^{\I\phi}\psi_n)|^2 = |\E^{-\I\theta}\E^{\I\phi}(\psi, \psi_n)|^2 = |(\psi, \psi_n)|^2
    
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
    (A^* \eta)(\phi) := \eta(A \phi), \quad \forall A \in \mathscr{H}, \eta \in \mathscr{H}^*, \phi \in \mathscr{H}

注意其中的 :math:`\eta_f( \phi) := (f, \phi)` 表示求与 :math:`\mathscr{H}^*` 中 :math:`\eta` 对应的 :math:`\mathscr{H}` 的 :math:`f` 与 :math:`\phi` 的内积.
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

[定理10(错误)] :math:`t_{bc}` 是对称反厄米算符. [这里 Weinberg 书错误. Weinberg 认为应该是厄米算符. 实际上后面的推导只是用到了它的对称条件, 而没有用到厄米或反厄米条件. ] [这里经过仔细考虑, 应该只能推出 :math:`t_b^\dagger t_c + \frac{1}{2} (t_{bc}^\dagger + t_{bc}) = 0`, :math:`t_{bc}` 既不是反厄米算符也不是厄米算符. ]

[证明] 首先对称性是由于小括号的传递: :math:`\frac{1}{2} \theta^b\theta^c t_{bc} = \frac{1}{2} \theta^{(b}\theta^{c)} t_{bc} = \frac{1}{2} \theta^{(b}\theta^{c)} t_{(bc)} = \frac{1}{2} \theta^b\theta^c t_{(bc)}`. 即 :math:`t_{bc} = t_{(bc)}`. 利用 :math:`U^\dagger U = 1` 和 :math:`t_a` 已经是厄米算符得 (保留到2阶项)

.. math:: 
    1 =&\ (1 + \I \theta^a t_a + \frac{1}{2} \theta^b\theta^c t_{bc})^\dagger (1 + \I \theta^a t_a + \frac{1}{2} \theta^b\theta^c t_{bc}) \\
    =&\ 1 -\I \theta^a t_a^\dagger + \I \theta^a t_a + (-\I \theta^a t_a^\dagger)(\I \theta^b t_b) + \frac{1}{2} \theta^b\theta^c t_{bc}^\dagger + \frac{1}{2} \theta^b\theta^c t_{bc} \\
    =&\ 1 + \I \theta^a(t_a - t_a^\dagger) + \theta^b\theta^c t_b^\dagger t_c + \frac{1}{2} \theta^b\theta^c (t_{bc}^\dagger + t_{bc}) \\
    0 =&\ t_b^\dagger t_c + \frac{1}{2} (t_{bc}^\dagger + t_{bc})

似乎无法证出 :math:`t_{ab}` 为厄米算符. 这个证明似乎可以这么修改, 当初得到 :math:`t_a = t_a^\dagger` 的时候, 是忽略了二阶项 :math:`t_b^\dagger t_c`. 实际上, 我们有

.. math:: 
    1 =&\ (1 + \I \theta^a t_a)^\dagger(1 + \I \theta^a t_a) \\
    =&\ 1 -\I \theta^a t_a^\dagger + \I \theta^a t_a -\theta^a\theta^b t_a^\dagger t_b \\
    0=&\ \I \theta^a (t_a-t_a^\dagger) -\theta^a\theta^b t_a^\dagger t_b

代入之前的式子得

.. math:: 
    \frac{1}{2} (t_{bc}^\dagger + t_{bc}) = 0\quad \Rightarrow \quad t_{bc}^\dagger = -t_{bc}

即 :math:`t_{bc}` 是反厄米算符 (注意这里的下标 :math:`bc` 不是表示矩阵元. :math:`t_{bc}` 的每一个分量都应该表示为一个矩阵). 注意上面这个证明不对. 因为在讨论 :math:`t_a` 的时候, :math:`t_a^\dagger t_b` 是二阶项, 必须舍去. 也就是说, 在一阶近似下确定 :math:`t_a` 的厄米性, 然后利用这个条件再讨论二阶的情况, 不能把一阶二阶的情况混为一谈. 另一方面, 一旦写 :math:`(1 + \I \theta^a t_a)^\dagger(1 + \I \theta^a t_a) = 1` 就表示必须忽略二阶项, 因为如果考虑二阶项, 不能只考虑 :math:`t_a^\dagger t_b`, 因为 :math:`t_{bc}` 也会造成影响. 因此在考虑二阶项时只考虑 :math:`t_a^\dagger t_b` 是不完全的. 下面采用另一种证法. 展开式可写为

.. math:: 
    U(T(\theta)) =&\ 1 + \I \theta^a t_a + \frac{1}{2} \theta^a\theta^b t_{ab} + \cdots \\
                 =&\ 1 + \I \theta^a \left( t_a - \frac{1}{2}\I \theta^b t_{ab} \right) + \cdots \\
                 \equiv&\ 1 + \I \theta^a T_a + \cdots

其中 :math:`T_a \equiv t_a - \frac{1}{2}\I \theta^b t_{ab}`. 利用 :math:`U^\dagger U = 1` 得

.. math:: 
    1 =&\ (1 + \I \theta^a T_a)^\dagger (1 + \I \theta^a T_a ) = 1 -\I \theta^a T_a^\dagger + \I \theta^a T_a \\
        =&\ 1 +  \I \theta^a (T_a - T_a^\dagger)

于是得 :math:`T_a = T_a^\dagger`. [这个地方不对. 既然 :math:`T_a` 内部展开到了二阶, 那么这里 :math:`T^\dagger T` 的项就不应该舍去, 它也是二阶项. ] 此即

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

7 酉群的单参子群
^^^^^^^^^^^^^^^^

下面讨论一个重要的特殊情形, 后面会反复遇到. 假设函数 :math:`f(\theta, \theta')` 是相加的 (additive) (也可以只对部分坐标成立)

.. math:: 
    f^a(\theta, \theta') = \theta^a + \theta'^a
    :label: f-theta-additive

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
    :label: ut-exp

这些变换构成的子群是酉群的一个单参子群, 其李代数是阿贝尔李代数.

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
    :label: isometric-cond

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

2 洛伦兹变换
^^^^^^^^^^^^

[定理14] 满足 :eq:`isometric-cond` 的坐标变换 :math:`x^\mu \mapsto x'^\mu` 必须是 **线性的** (linear)

.. math:: 
    x'^\mu = \xtensor{\Lambda}{^\mu}{_\nu} x^\nu + a^\mu
    :label: trans-linear-poin

其中 :math:`a^\mu` 是任意常数, :math:`\xtensor{\Lambda}{^\mu}{_\nu}` 是满足下列条件的常矩阵

.. math:: 
    \eta_{\mu\nu}\xtensor{\Lambda}{^\mu}{_\rho}\xtensor{\Lambda}{^\nu}{_\sigma} = \eta_{\rho\sigma}
    :label: lorentz-trans-cond

[证明] 满足 :eq:`isometric-cond` 的坐标变换是等度规变换. 在闵氏时空, 这样的等度规变换只有10个, 包括4个平移, 3个转动和3个推进 (boost). 这里 :math:`a^\mu` 是表示平移对应的变换, 而 :math:`\xtensor{\Lambda}{^\mu}{_\nu}` 表示剩余类型的变换. 实际上, Poincaré 群是4维平移群 :math:`T(4)` 与6维洛伦兹群 (不考虑量子力学引入的复数域的情况下) :math:`L \equiv \mathrm{SO}(1, 3)` 的半直积群. 这个群的每个群元由一对常数表示, 记为 :math:`(a, \Lambda)`. 之所以是半直积, 因为群乘法为 (证明见 定理16)

.. math:: 
    (a_1, \Lambda_1)(a_2, \Lambda_2) = (a_1 + \Lambda_1a_2, \Lambda_1 \Lambda_2)

要证明 :math:`\xtensor{\Lambda}{^\mu}{_\nu}` 满足条件

.. math:: 
    \eta_{\mu\nu}\xtensor{\Lambda}{^\mu}{_\rho}\xtensor{\Lambda}{^\nu}{_\sigma} = \eta_{\rho\sigma}

对比 :eq:`isometric-cond` 发现只需证

.. math:: 
    \xtensor{\Lambda}{^\mu}{_\rho}\xtensor{\Lambda}{^\nu}{_\sigma} = \frac{\partial x'^\mu}{\partial x^\rho} \frac{\partial x'^\nu}{\partial x^\sigma} \quad \Leftarrow\quad \xtensor{\Lambda}{^\mu}{_\rho} = \frac{\partial x'^\mu}{\partial x^\rho}

:eq:`trans-linear-poin` 对 :math:`x^\rho` 求导得

.. math:: 
    \frac{\partial x'^\mu}{\partial x^\rho} = \xtensor{\Lambda}{^\mu}{_\nu} \frac{x^\nu}{\partial x^\rho} = \xtensor{\Lambda}{^\mu}{_\nu} \xtensor{\delta}{^\nu}{_\rho} = \xtensor{\Lambda}{^\mu}{_\rho}

注意, 此处一旦确定了坐标变换的线性性, 那么写成 :eq:`trans-linear-poin` 就是必然的, 因为一个线性变换必须包括一个常数项和一个张量系数. 然后由等度规条件可以确定对张量系数所加的限制. 对代表平移的常数项 :math:`a` 没有限制.

下面考虑把洛伦兹变换写成另一种形式. 矩阵 :math:`\eta_{\mu\nu}` 有逆矩阵, 记作 :math:`\eta^{\mu\nu}`, 它和 :math:`\eta_{\mu\nu}` 矩阵元相同: 它是对角矩阵, 对角元为 :math:`\eta^{00} = -1, \eta^{11} = \eta^{22} = \eta^{33} = +1`.

[定理15] 条件 :math:`\eta_{\mu\nu}\xtensor{\Lambda}{^\mu}{_\rho}\xtensor{\Lambda}{^\nu}{_\sigma} = \eta_{\rho\sigma}` 等价于 :math:`\eta^{\mu\nu}\xtensor{\Lambda}{^\rho}{_\mu}\xtensor{\Lambda}{^\sigma}{_\nu} = \eta^{\rho\sigma}`.

[证明] 对第一式两边乘 :math:`\eta^{\sigma\tau}\xtensor{\Lambda}{^\kappa}{_\tau}`, 合理地插入括号, 得

.. math:: 
    \eta^{\sigma\tau}\xtensor{\Lambda}{^\kappa}{_\tau}\eta_{\rho\sigma} =&\ \xtensor{\delta}{^\tau}{_\rho}\xtensor{\Lambda}{^\kappa}{_\tau} = \xtensor{\Lambda}{^\kappa}{_\rho} \\
    \eta_{\mu\nu}\xtensor{\Lambda}{^\mu}{_\rho}\xtensor{\Lambda}{^\nu}{_\sigma} \eta^{\sigma\tau}\xtensor{\Lambda}{^\kappa}{_\tau} =&\ \Lambda_{\nu\rho} \big( \xtensor{\Lambda}{^\nu}{_\sigma} \xtensor{\Lambda}{^\kappa}{_\tau} \eta^{\sigma\tau} \big)

其中对 :math:`\xtensor{\Lambda}{^\kappa}{_\rho}` 的 :math:`\kappa` 指标可以降指标得

.. math:: 
    \xtensor{\Lambda}{^\kappa}{_\rho} = \eta^{\nu\kappa} \Lambda_{\nu\rho}

于是得 :math:`\eta^{\nu\kappa} \Lambda_{\nu\rho} = \Lambda_{\nu\rho} \big( \xtensor{\Lambda}{^\nu}{_\sigma} \xtensor{\Lambda}{^\kappa}{_\tau} \eta^{\sigma\tau} \big)`. 两边乘矩阵 :math:`\Lambda_{\nu\rho}` 的逆, 得

.. math:: 
    \eta^{\nu\kappa} = \xtensor{\Lambda}{^\nu}{_\sigma} \xtensor{\Lambda}{^\kappa}{_\tau} \eta^{\sigma\tau}

3 群乘法和逆元
^^^^^^^^^^^^^^

这些变换构成一个群. 要证明这一点, 需要定义群乘法, 并证明存在逆元. 下面证明, 如果以复合变换定义为群乘法, 那么所得的变换仍然是群中的元素.

[定理16] 考虑两个洛伦兹变换

.. math:: 
    x^\mu \mapsto&\  x'^\mu = \xtensor{\Lambda}{^\mu}{_\nu} x^\nu + a^\mu \\
    x'^\mu \mapsto&\  x''^\mu = \xtensor{{\Lambda'}}{^\mu}{_\nu} x'^\nu + {a'}^\mu

它们的复合变换为

.. math:: 
    x^\mu \mapsto  x''^\mu =&\ \xtensor{{\Lambda'}}{^\mu}{_\rho} x'^\rho + {a'}^\mu
        \xtensor{{\Lambda'}}{^\mu}{_\rho} \big(\xtensor{\Lambda}{^\rho}{_\nu} x^\nu + a^\rho\big) + {a'}^\mu \\
        =&\ \big( \xtensor{{\Lambda'}}{^\mu}{_\rho} \xtensor{\Lambda}{^\rho}{_\nu} \big) x^\nu
            + \big( \xtensor{{\Lambda'}}{^\mu}{_\rho} a^\rho + {a'}^\mu \big)

仍为一个洛伦兹变换 (即满足 :eq:`lorentz-trans-cond`).

[证明] 对平移项 :math:`\xtensor{{\Lambda'}}{^\mu}{_\rho} a^\rho + {a'}^\mu` 洛伦兹变换并没有给出任何限制. 因此只需检验 :math:`\xtensor{{\Lambda'}}{^\mu}{_\rho} \xtensor{\Lambda}{^\rho}{_\nu}` 这一项. 利用 :math:`\Lambda, \Lambda'` 都满足 :eq:`lorentz-trans-cond`, 有

.. math:: 
    \eta_{\mu\nu} \big( \xtensor{{\Lambda'}}{^\mu}{_\kappa} \xtensor{\Lambda}{^\kappa}{_\rho} \big)
        \big( \xtensor{{\Lambda'}}{^\nu}{_\lambda} \xtensor{\Lambda}{^\lambda}{_\sigma} \big) 
    =&\ \big( \eta_{\mu\nu} \xtensor{{\Lambda'}}{^\mu}{_\kappa} \xtensor{{\Lambda'}}{^\nu}{_\lambda} \big)
        \xtensor{\Lambda}{^\kappa}{_\rho}  \xtensor{\Lambda}{^\lambda}{_\sigma}  \\
    =&\ \eta_{\kappa\lambda} \xtensor{\Lambda}{^\kappa}{_\rho}  \xtensor{\Lambda}{^\lambda}{_\sigma} \\
    =&\ \eta_{\rho\sigma}

现在坐标变换 (或者矢量变换) 可以由 :math:`(\Lambda, a)` 表示, 根据之前的讨论, 它们构成物理态的变换 (射线变换) 的一个表示. 之前我们使用 :math:`U` 表示矢量变换, :math:`T(U)` 表示矢量变换对应的射线变换. 现在用 :math:`T(\Lambda, a)` 表示对应的射线变换. 由于矢量变换是射线变换的一个表示, 而射线变换群的群乘法定义为映射的复合 (见 :eq:`u-theta-f`), 因此我们有

.. math:: 
    T(\Lambda', a')T(\Lambda, a) = T(\Lambda'\Lambda, \Lambda' a + a')
    :label: t-lambda-a-compose

取 :eq:`lorentz-trans-cond` 的行列式, 得

.. math:: 
    \det \eta (\det \Lambda)^2 = \det \eta \quad \Rightarrow \quad -(\det \Lambda)^2 = -1 \quad \Rightarrow \quad (\det \Lambda)^2 = 1

这说明 :math:`\Lambda` 的行列式是一个相因子 :math:`\E^{\I \theta}`. 注意量子力学复空间是指考虑了态矢的变换是复空间. 现在只是考虑坐标变换 :math:`\Lambda`, 它是实空间的变换. 所以其实只能有 :math:`\det \Lambda = \pm 1`, 变换群就不连通. 但是量子力学复空间的情况下 (即后面要考虑的 :math:`U` 变换作用的态矢空间), 变换群仍是连通的 (在复空间, 该行列式的值可以连续变化). 另一方面, 由于行列式不为零, :math:`\Lambda` 有逆, 记为 :math:`\xtensor{(\Lambda^{-1})}{^\rho}{_\nu}`. 

[定理17] :math:`\xtensor{(\Lambda^{-1})}{^\rho}{_\nu} = \eta_{\nu\mu}\eta^{\rho\sigma}\xtensor{\Lambda}{^\mu}{_\sigma} = \xtensor{\Lambda}{_\nu}{^\rho}`. 因此求一个齐次洛伦兹变换的逆矩阵, 就是先将矩阵转置, 然后将所有 :math:`0i` 和 :math:`i0` 分量全部变号 (因为两个上下标的上下位置发生了改变).

[证明] 首先由逆矩阵定义我们有

.. math:: 
    \xtensor{(\Lambda^{-1})}{^\lambda}{_\nu} \xtensor{\Lambda}{^\nu}{_\sigma} = \xtensor{\delta}{^\lambda}{_\sigma}

:eq:`lorentz-trans-cond` 式两边乘 :math:`\eta^{\lambda\rho}`, 得

.. math:: 
    \eta^{\lambda\rho} \eta_{\mu\nu}\xtensor{\Lambda}{^\mu}{_\rho}\xtensor{\Lambda}{^\nu}{_\sigma} =&\ \eta_{\rho\sigma}\eta^{\lambda\rho} \\
    \big(\eta^{\lambda\rho} \eta_{\mu\nu}\xtensor{\Lambda}{^\mu}{_\rho} \big)  \xtensor{\Lambda}{^\nu}{_\sigma} =&\ \xtensor{\delta}{^\lambda}{_\sigma}

与逆矩阵定义式对比得

.. math:: 
    \xtensor{(\Lambda^{-1})}{^\lambda}{_\nu} = \eta^{\lambda\rho} \eta_{\mu\nu}\xtensor{\Lambda}{^\mu}{_\rho}

[定理18] 变换 :math:`T(\Lambda, a)` 的逆变换为 :math:`T(\Lambda^{-1}, -\Lambda^{-1}a)`.

[证明] 根据 :eq:`t-lambda-a-compose`, 若令等式右边为恒等变换 :math:`T(1, 0)` 则 :math:`T(\Lambda', a')` 即为所求的逆变换. 我们有

.. math:: 
    \Lambda'\Lambda = 1\quad \Rightarrow&\ \quad \Lambda' = \Lambda^{-1} \\
    \Lambda' a + a' = 0\quad \Rightarrow&\ \quad a' = -\Lambda' a = -\Lambda^{-1} a

为了证明 :math:`(\Lambda^{-1}, -\Lambda^{-1}a)` 确实是变换群中的元素 (仍为洛伦兹变换), 还需要证明 :math:`\Lambda^{-1}` 满足 :eq:`lorentz-trans-cond`. 我们有

.. math:: 
    \eta_{\mu\nu} \xtensor{(\Lambda^{-1})}{^\mu}{_\rho}\xtensor{(\Lambda^{-1})}{^\nu}{_\sigma}
    =&\ \eta_{\mu\nu} \eta^{\mu\tau} \eta_{\rho\lambda}\xtensor{\Lambda}{^\lambda}{_\tau}
        \eta^{\nu\gamma} \eta_{\sigma\kappa}\xtensor{\Lambda}{^\kappa}{_\gamma} \\
    =&\ \xtensor{\delta}{^\tau}{_\nu} \eta^{\nu\gamma}\eta_{\rho\lambda} \eta_{\sigma\kappa} \xtensor{\Lambda}{^\lambda}{_\tau} \xtensor{\Lambda}{^\kappa}{_\gamma} \\
    =&\ \eta^{\tau\gamma} \xtensor{\Lambda}{^\lambda}{_\tau} \xtensor{\Lambda}{^\kappa}{_\gamma}  \eta_{\rho\lambda} \eta_{\sigma\kappa}
    = \eta^{\lambda\kappa} \eta_{\rho\lambda} \eta_{\sigma\kappa} = \xtensor{\delta}{^\lambda}{_\sigma} \eta_{\rho\lambda} = \eta_{\rho\sigma}

其中第四步应用了定理15.

恒等元当然是 :math:`T(1, 0)`, 它对应的 :math:`\xtensor{\Lambda}{^\mu}{_\rho} = \xtensor{\delta}{^\mu}{_\rho}`, 显然满足条件 :eq:`lorentz-trans-cond`.

4 固有正时洛伦兹群
^^^^^^^^^^^^^^^^^^

为了与前面的讨论相联系, 射线变换 :math:`T(\Lambda, a)` 诱导出物理 Hilbert 空间的幺正线性矢量变换 (算符), 记作 :math:`U(\Lambda, a)`

.. math:: 
    \psi \mapsto U(\Lambda, a) \psi

注意这个地方与前面的标记稍有差别, :math:`T(\Lambda, a)` 是 :math:`T(U(\Lambda, a))` 的简写. 算符 :math:`U` 满足复合规则

.. math:: 
    U(\Lambda', a')U(\Lambda, a) = U(\Lambda' \Lambda, \Lambda' a + a')

和之前一样, 上式右边的相因子被略去不写. 一般而言, 需要对洛伦兹群进行扩张. 2.7节将介绍合适的扩张.

整个变换群 :math:`T(\Lambda, a)` 被称为 **非齐次洛伦兹群** (inhomogeneous Lorentz group), 或者 **Poincaré群** (Poincaré group). 它有一些重要的子群. 首先, :math:`a^\mu = 0` 的那些变换显然构成一个子群, 满足

.. math:: 
    T(\Lambda', 0) T(\Lambda, 0) = T(\Lambda'\Lambda, 0)

称为 **齐次洛伦兹群** (homogeneous Lorentz group). 除此之外, 满足 :math:`\det \Lambda = +1` 的变换显然构成非齐次洛伦兹群或者齐次洛伦兹群的一个子群. 另一方面, 根据 :eq:`lorentz-trans-cond` 及[定理15], 考虑它的 :math:`00` 分量, 有

.. math:: 
    \eta_{00} =&\ -1 = \eta_{\mu\nu}\xtensor{\Lambda}{^\mu}{_0}\xtensor{\Lambda}{^\nu}{_0} = 
        -\big( \xtensor{\Lambda}{^0}{_0} \big)^2 + \xtensor{\Lambda}{^i}{_0} \xtensor{\Lambda}{^i}{_0} \\
    \eta^{00} =&\ -1 = \eta^{\mu\nu}\xtensor{\Lambda}{^0}{_\mu}\xtensor{\Lambda}{^0}{_\nu} = 
        -\big( \xtensor{\Lambda}{^0}{_0} \big)^2 + \xtensor{\Lambda}{^0}{_i} \xtensor{\Lambda}{^0}{_i} \\
    \big( \xtensor{\Lambda}{^0}{_0} \big)^2 =&\ 1 + \xtensor{\Lambda}{^i}{_0} \xtensor{\Lambda}{^i}{_0} = 1 + \xtensor{\Lambda}{^0}{_i} \xtensor{\Lambda}{^0}{_i}
    :label: lambda-i0

其中 :math:`i` 对 :math:`1, 2, 3` 求和. 这里含有 :math:`i` 的项不能写成平方形式, 是为了让 :math:`i` 指标出现两次表示求和. 这里按照 Weinberg 的意思, 考虑 :math:`\Lambda` 都是实数 (即经典狭义相对论的情况, 因为若是量子力学, 应该允许矩阵元为复数). 那么 :math:`\xtensor{\Lambda}{^i}{_0} \xtensor{\Lambda}{^i}{_0}` 相当于内积, 必须大于等于零. 从而 :math:`\big( \xtensor{\Lambda}{^0}{_0} \big)^2 \geqslant 1`. 于是要么 :math:`\xtensor{\Lambda}{^0}{_0} \geqslant +1` 要么 :math:`\xtensor{\Lambda}{^0}{_0} \leqslant -1`.

[引理19-1] 设 :math:`a \geqslant 1, b \geqslant 1`, 则 :math:`ab - \sqrt{a^2 - 1}\sqrt{b^2 - 1} \geqslant 1`.

[证明] 由 :math:`(a - b)^2 \geqslant 0` 得 :math:`a^2 + b^2 \geqslant 2ab`. 于是

.. math:: 
    -2ab \geqslant&\ -a^2 -b^2 \\
    a^2b^2 + 1 -2ab \geqslant&\ -a^2 -b^2 + a^2b^2 + 1 \\
    (ab - 1)^2 \geqslant&\ (a^2 - 1)(b^2 - 1)

现在, 由于 :math:`a \geqslant 1, b \geqslant 1`, 得 :math:`ab - 1\geqslant 0, a^2 - 1 \geqslant 0, b^2 - 1 \geqslant 0`. 因此可以两边开平方, 不等式仍然成立.

.. math:: 
    ab - 1 \geqslant&\ \sqrt{a^2 - 1}\sqrt{b^2 - 1} \\
    ab - \sqrt{a^2 - 1}\sqrt{b^2 - 1} \geqslant&\  1

[引理19-2] 基本不等式 :math:`\sqrt{\frac{a^2+b^2}{2}} \geqslant \frac{a+b}{2} \geqslant \sqrt{ab} \geqslant \frac{2ab}{a+b}`.

[定理19] 满足 :math:`\xtensor{\Lambda}{^0}{_0} \geqslant +1` 的变换构成一个子群, 其中的群乘法按照Poincaré群的群乘法相同的方式定义. 注意 满足 :math:`\xtensor{\Lambda}{^0}{_0} \leqslant -1` 的变换不构成子群, 因为恒等元不在其中.

[证明] 为了证明它构成子群, 对两个群元, 表示为 :math:`\xtensor{\Lambda}{^\mu}{_\nu}` 和 :math:`\xtensor{{\Lambda'}}{^\mu}{_\nu}`, 需要证明它们的乘积 :math:`\Lambda'\Lambda` 也满足 :math:`\xtensor{(\Lambda'\Lambda)}{^0}{_0} \geqslant +1`. 首先有

.. math:: 
    \xtensor{(\Lambda'\Lambda)}{^0}{_0} = \xtensor{{\Lambda'}}{^0}{_0}\xtensor{\Lambda}{^0}{_0} + \xtensor{{\Lambda'}}{^0}{_i}\xtensor{\Lambda}{^i}{_0}

而由 :eq:`lambda-i0` 知分量为 :math:`\xtensor{\Lambda}{^i}{_0}` 和 :math:`\xtensor{\Lambda}{^0}{_i}` 的矢量的长度为

.. math:: 
    \sqrt{\xtensor{\Lambda}{^i}{_0}\xtensor{\Lambda}{^i}{_0}} = \sqrt{\xtensor{\Lambda}{^0}{_i}\xtensor{\Lambda}{^0}{_i}} = \sqrt{\big( \xtensor{\Lambda}{^0}{_0} \big)^2 - 1}

而 :math:`\xtensor{{\Lambda'}}{^0}{_i}\xtensor{\Lambda}{^i}{_0}` 是矢量的内积, 它等于两个矢量的长度乘积乘以两矢量夹角的余弦. 而余弦函数的绝对值小于等于1. 因此有不等式

.. math:: 
    \big\lvert \xtensor{{\Lambda'}}{^0}{_i}\xtensor{\Lambda}{^i}{_0} \big\rvert \leqslant \sqrt{\big( \xtensor{{\Lambda'}}{^0}{_0} \big)^2 - 1} \sqrt{\big( \xtensor{\Lambda}{^0}{_0} \big)^2 - 1}

于是

.. math:: 
    \xtensor{(\Lambda'\Lambda)}{^0}{_0} =&\ \xtensor{{\Lambda'}}{^0}{_0}\xtensor{\Lambda}{^0}{_0} + \xtensor{{\Lambda'}}{^0}{_i}\xtensor{\Lambda}{^i}{_0} \\
    \geqslant&\ \xtensor{{\Lambda'}}{^0}{_0}\xtensor{\Lambda}{^0}{_0} - \sqrt{\big( \xtensor{{\Lambda'}}{^0}{_0} \big)^2 - 1} \sqrt{\big( \xtensor{\Lambda}{^0}{_0} \big)^2 - 1} \geqslant 1

其中最后一步的理由如下. 设 :math:`a = \xtensor{{\Lambda'}}{^0}{_0}, b = \xtensor{\Lambda}{^0}{_0}`, 由题设知 :math:`a \geqslant 1, b \geqslant 1`. 利用 [引理19-1] 可以得到结果.

满足 :math:`\det \Lambda = +1` 和 :math:`\xtensor{\Lambda}{^0}{_0} \geqslant +1` 的洛伦兹变换的子群, 称为 **固有正时洛伦兹群** (proper orthochronous Lorentz group). 因为不可能通过一个连续的参数变换从 :math:`\det \Lambda = +1` 变到 :math:`\det \Lambda = -1`, 或者从 :math:`\xtensor{\Lambda}{^0}{_0} \geqslant +1` 变到 :math:`\xtensor{\Lambda}{^0}{_0} \leqslant -1` (即 Poincaré群本身是非连通的, 而固有正时洛伦兹群是含有单位元的一个连通子群), 任何可以通过恒等元进行连续参数变换得到的洛伦兹变换的 :math:`\det \Lambda` 和 :math:`\xtensor{\Lambda}{^0}{_0}` 必须和恒等变换具有相同的符号. 于是这样的洛伦兹变换必定属于固有正时洛伦兹群.

任何洛伦兹变换要么是固有正时的, 要么可以写成固有正时洛伦兹群的一个群元和一个离散变换 :math:`\mathscr{P}, \mathscr{T}` 或 :math:`\mathscr{PT}` 的乘积, 其中 :math:`\mathscr{P}` 是空间反射, 其非零元为

.. math:: 
    \xtensor{\mathscr{P}}{^0}{_0} = 1, \xtensor{\mathscr{P}}{^1}{_1} = \xtensor{\mathscr{P}}{^2}{_2} = \xtensor{\mathscr{P}}{^3}{_3} = -1

:math:`\mathscr{P}` 的作用将改变 :math:`\Lambda` 行列式的符号. :math:`\mathscr{T}` 是时间反演, 其非零元为

.. math:: 
    \xtensor{\mathscr{T}}{^0}{_0} = -1, \xtensor{\mathscr{T}}{^1}{_1} = \xtensor{\mathscr{T}}{^2}{_2} = \xtensor{\mathscr{T}}{^3}{_3} = 1

:math:`\mathscr{T}` 的作用同时改变 :math:`\Lambda` 行列式的符号和 :math:`\xtensor{\Lambda}{^0}{_0}` 的符号.

因此, 对整个洛伦兹群的研究就可以通过研究它的固有正时子群, 加上空间反射和时间反演. 在2.6节我们将分别考虑空间反射和时间反演. 在那之前, 我们仅处理齐次或非齐次固有正时洛伦兹群.

第四节 Poincaré 代数
--------------------

1 无穷小坐标变换
^^^^^^^^^^^^^^^^

根据2.2节, 李对称群的很多信息都被包括在恒等元附近的群元性质中 (李代数是李群恒等元的切空间). 非齐次洛伦兹群的恒等元是变换 :math:`\xtensor{\Lambda}{^\mu}{_\nu} = \xtensor{\delta}{^\mu}{_\nu},\ a^\mu = 0`, 因此我们可以研究如下形式的变换

.. math:: 
    \xtensor{\Lambda}{^\mu}{_\nu} = \xtensor{\delta}{^\mu}{_\nu} + \xtensor{\omega}{^\mu}{_\nu},\quad
    a^\mu = \epsilon^\mu
    :label: infinitesimal-expansion

其中 :math:`\xtensor{\omega}{^\mu}{_\nu}` 和 :math:`\epsilon^\mu` 都是无穷小量. 根据洛伦兹条件 :eq:`lorentz-trans-cond`

.. math:: 
    \eta_{\rho\sigma} =&\ \eta_{\mu\nu} \big( \xtensor{\delta}{^\mu}{_\rho} + \xtensor{\omega}{^\mu}{_\rho} \big)
        \big( \xtensor{\delta}{^\nu}{_\sigma} + \xtensor{\omega}{^\nu}{_\sigma} \big) \\
        =&\ \eta_{\sigma\rho} + \omega_{\sigma\rho} + \omega_{\rho\sigma} + O(\omega^2)

这里我们使用指标升降的约定, 即指标可以通过与 :math:`\eta_{\mu\nu}` 或 :math:`\eta^{\mu\nu}` 进行收缩来升降

.. math:: 
    \omega_{\sigma\rho} \equiv \eta_{\mu\sigma} \xtensor{\omega}{^\mu}{_\rho},\quad
    \xtensor{\omega}{^\mu}{_\rho} \equiv \eta^{\mu\sigma} \omega_{\sigma\rho}

仅保留 :math:`\omega` 的一阶项得 :math:`\eta_{\rho\sigma} = \eta_{\sigma\rho} + \omega_{\sigma\rho} + \omega_{\rho\sigma}`. 注意度规 :math:`\eta_{\rho\sigma}` 是对称的. 因此得 :math:`\omega_{\sigma\rho} + \omega_{\rho\sigma} = 0`, 即 :math:`\omega` 是反称的

.. math:: 
    \omega_{\mu\nu} = -\omega_{\nu\mu}
    :label: omega-antisym

一个反称的四维二阶张量具有 :math:`(4\times 3)/2 = 6` 个独立分量, 再加上 :math:`\epsilon^\mu` 的四个分量, 一个非齐次洛伦兹变换可以由 :math:`6+4=10` 个参数描述. (这里其实是利用了李代数的维数等于李群维数的结论. 李代数的维数一般比较好决定. )

注意这里有三个层次的变换. 最底层是坐标变换, 也就是李群的坐标 (作为标记群元的参数, 之前记为 :math:`\theta`. 李群作为流形一定有) 的变换.

2 无穷小幺正算符
^^^^^^^^^^^^^^^^

由于 :math:`U(1, 0)` 作为矢量变换对应的射线变换是恒等射线变换, 它必须正比于单位算符 (引理7-1), 通过选择相位, 我们可以让它等于单位算符. 与无穷小洛伦兹变换 (注意这个地方无穷小洛伦兹变换是指这个变换与单位变换相差无穷小量, 而不是本身是无穷小. 但是一般都简称无穷小洛伦兹变换) 对应的 :math:`U(1+\omega, \epsilon)` 必须等于1加上 :math:`\omega_{\rho\sigma}` 和 :math:`\epsilon{\rho}` 的线性项. 无穷小幺正变换也是无穷小幺正算符, 可以写为

.. math:: 
    U(1+\omega, \epsilon) = 1+ \frac{1}{2} \I \omega_{\rho\sigma} J^{\rho\sigma} - \I \epsilon_\rho P^\rho + \cdots
    :label: ujp-expansion

其中 :math:`J^{\rho\sigma}` 和 :math:`P^\rho` 是 :math:`\omega-` 和 :math:`\epsilon-` 无关的算符, 省略号代表 :math:`\omega` 和/或 :math:`\epsilon` 的高阶项.

[定理20] 为使 :math:`U(1+\omega, \epsilon)` 为幺正的, 算符 :math:`J^{\rho\sigma}` 和 :math:`P^\rho` 必须是厄米的. 并且 :math:`J^{\rho\sigma}` 还是反称的.

[证明] 利用 :math:`U^\dagger U = 1` 得

.. math:: 
    1 =&\ \big( 1+ \frac{1}{2} \I \omega_{\rho\sigma} J^{\rho\sigma} - \I \epsilon_\rho P^\rho \big)^\dagger \big( 1+ \frac{1}{2} \I \omega_{\rho\sigma} J^{\rho\sigma} - \I \epsilon_\rho P^\rho \big) \\
    =&\ 1 + \frac{1}{2} \I \omega_{\rho\sigma} \big( J^{\rho\sigma} - J^{\rho\sigma\dagger} \big) - \I \epsilon_\rho \big(P^\rho - P^{\rho\dagger} \big)

注意到 :math:`\omega` 和 :math:`\epsilon` 可以任取并且独立变化, 因此有

.. math:: 
    J^{\rho\sigma\dagger} = J^{\rho\sigma}, \quad P^{\rho\dagger} = P^\rho

:math:`J^{\rho\sigma}` 的反称性可以通过中括号的传递

.. math:: 
    \frac{1}{2} \I \omega_{\rho\sigma} J^{\rho\sigma} = \frac{1}{2} \I \omega_{[\rho\sigma]} J^{\rho\sigma} = \frac{1}{2} \I \omega_{[\rho\sigma]} J^{[\rho\sigma]} = \frac{1}{2} \I \omega_{\rho\sigma} J^{[\rho\sigma]}

即 :math:`J^{\rho\sigma} = -J^{\sigma\rho}`.

我们将说明, :math:`P^1, P^2, P^3` 是动量算符的分量, :math:`J^{23}, J^{31}, J^{12}` 是角动量矢量的分量, :math:`P^0` 是能量算符, 或者 **哈密顿量** (Hamiltonian).

3 无穷小幺正算符的线性变换
^^^^^^^^^^^^^^^^^^^^^^^^^^

现在我们研究 :math:`J^{\rho\sigma}` 和 :math:`P^\rho` 在洛伦兹变换 :math:`U(\Lambda, a)` 下性质. 考虑如下乘积

.. math:: 
    U(\Lambda, a)U(1+\omega, \epsilon)U^{-1}(\Lambda, a)

其中 :math:`\xtensor{\Lambda}{^\mu}{_\nu}` 和 :math:`a^\mu` 是新变换的与 :math:`\omega` 及 :math:`\epsilon` 无关的参数. 但是这里需要说明, 在线性变换 :math:`U(\Lambda, a)` 作用下, 为什么算符 :math:`U(1+\omega, \epsilon)` 要按照上式进行变换. 这由如下定理保证 (王正行P21). 其实这里的关系类似于推前映射和流形间的映射的关系. 假设映射不是变换到自身的, 设 :math:`U : M \to N` (并且有逆), 那么, 算符 :math:`A` 只能作用于 :math:`M` 中的元素, :math:`A'` 只能作用于 :math:`N` 中的元素. 那么自然的定义就是 :math:`A' = UAU^{-1}`.

[定理21] 设 :math:`U` 为线性变换, :math:`\psi` 为态矢. 若 :math:`\psi` 在 :math:`U` 作用下按如下规则变换

.. math:: 
    \psi \to \psi' = U\psi

则算符 :math:`A` 按如下规则变换

.. math:: 
    A \to A' = UAU^{-1}

[证明] 考虑方程 :math:`\phi = A\psi`, 这个方程在线性变换下形式不应该改变, 即 :math:`\phi' = A'\psi'`. 另一方面有 :math:`\phi' = U\phi`. 于是

.. math:: 
    U\phi = UA\psi = A'\psi' = A'U\psi

由于 :math:`\psi` 是任意态矢, 我们有 :math:`UA = A'U`. 两边右乘 :math:`U^{-1}` 得 :math:`A' = UAU^{-1}`.

根据定理18, :math:`U^{-1}(\Lambda, a) = U(\Lambda^{-1}, -\Lambda^{-1}a)`. 根据复合规则 :eq:`t-lambda-a-compose`, 有

.. math:: 
    U(\Lambda, a)U(1+\omega, \epsilon)U^{-1}(\Lambda, a) =&\  U(\Lambda, a)U(1+\omega, \epsilon)
        U(\Lambda^{-1}, -\Lambda^{-1}a) \\
    =&\ U(\Lambda(1+\omega), \Lambda\epsilon + a)U(\Lambda^{-1}, -\Lambda^{-1}a) \\
    =&\ U(\Lambda(1+\omega)\Lambda^{-1}, -\Lambda(1+\omega)\Lambda^{-1}a + \Lambda\epsilon + a) \\
    =&\ U(\Lambda(1+\omega)\Lambda^{-1}, -\Lambda\omega\Lambda^{-1}a + (-\Lambda\Lambda^{-1}a + a)+ \Lambda\epsilon) \\
    =&\ U(1 + \Lambda\omega\Lambda^{-1}, \Lambda\epsilon -\Lambda\omega\Lambda^{-1}a)
    :label: u-omega-lambda-raw

下面要处理好上下标的问题. 利用缩并的指标可以调整上下顺序, 从 :eq:`ujp-expansion` 得

.. math:: 
    U(1+\omega, \epsilon) = 1+ \frac{1}{2} \I \xtensor{\omega}{^\rho}{_\sigma}\xtensor{J}{_\rho}{^\sigma}
        - \I \epsilon^\rho P_\rho + \cdots
    :label: ujp-expansion2

利用 :eq:`ujp-expansion2` 将 :eq:`u-omega-lambda-raw` 保留到一阶项得 (注意这里假定了 :math:`\Lambda` 和 :math:`\I` 对易, 也就是说这里只考虑固有正时洛伦兹变换. 因为若是一般的洛伦兹变换, 时间反演是反线性的.)

.. math:: 
    U(1 + \Lambda\omega\Lambda^{-1}, \Lambda\epsilon -\Lambda\omega\Lambda^{-1}a) 
    =&\ 1 + \frac{1}{2}\I (\Lambda\omega\Lambda^{-1})_{\mu\nu}J^{\mu\nu} -\I (\Lambda\epsilon -\Lambda\omega\Lambda^{-1}a)_\mu P^\mu \\
    =&\ 1 + \I \big[ \frac{1}{2} (\Lambda\omega\Lambda^{-1})_{\mu\nu}J^{\mu\nu} - (\Lambda\epsilon -\Lambda\omega\Lambda^{-1}a)_\mu P^\mu \big] \\
    U(\Lambda, a)U(1+\omega, \epsilon)U^{-1}(\Lambda, a) =&\ U(\Lambda, a) \big[ 1+ \frac{1}{2} \I \omega_{\rho\sigma} J^{\rho\sigma} - \I \epsilon_\rho P^\rho \big] U^{-1}(\Lambda, a) \\
    =&\ 1 + \I U(\Lambda, a) \big[ \frac{1}{2} \omega_{\rho\sigma} J^{\rho\sigma} - \epsilon_\rho P^\rho \big] U^{-1}(\Lambda, a)

.. math:: 
    U(1 + \Lambda\omega\Lambda^{-1}, \Lambda\epsilon -\Lambda\omega\Lambda^{-1}a) 
    =&\ 1 + \frac{1}{2} \I \big[ \xtensor{(\Lambda\omega\Lambda^{-1})}{^\mu}{_\nu}\xtensor{J}{_\mu}{^\nu} - 2(\Lambda\epsilon -\Lambda\omega\Lambda^{-1}a)^\mu P_\mu \big] \\
    U(\Lambda, a)U(1+\omega, \epsilon)U^{-1}(\Lambda, a) 
    =&\ 1 + \frac{1}{2} \I U(\Lambda, a) \big[  \xtensor{\omega}{^\sigma}{_\rho}\xtensor{J}{_\sigma}{^\rho} - 2\epsilon^\rho P_\rho \big] U^{-1}(\Lambda, a)

比较 :math:`\omega_{\rho\sigma}` 和 :math:`\epsilon_\rho` 的系数得

.. math:: 
    &\ \xtensor{(\Lambda\omega\Lambda^{-1})}{^\mu}{_\nu}\xtensor{J}{_\mu}{^\nu} - 2(\Lambda\epsilon -\Lambda\omega\Lambda^{-1}a)^\mu P_\mu \\
    =&\ \xtensor{\Lambda}{^\mu}{_\sigma}\xtensor{\omega}{^\sigma}{_\rho}\xtensor{(\Lambda^{-1})}{^\rho}{_\nu}\xtensor{J}{_\mu}{^\nu} - 2\big[\xtensor{\Lambda}{^\mu}{_\rho} \epsilon^\rho - \xtensor{\Lambda}{^\mu}{_\sigma}\xtensor{\omega}{^\sigma}{_\rho}\xtensor{(\Lambda^{-1})}{^\rho}{_\nu}a^\nu \big]P_\mu \\
    =&\ \xtensor{\Lambda}{^\mu}{_\sigma}\xtensor{(\Lambda^{-1})}{^\rho}{_\nu} \big[ \xtensor{J}{_\mu}{^\nu} + 2 a^\nu P_\mu \big] \xtensor{\omega}{^\sigma}{_\rho} - 2\xtensor{\Lambda}{^\mu}{_\rho} P_\mu \epsilon^\rho \\
    &\ U(\Lambda, a) \big[ \xtensor{\omega}{^\sigma}{_\rho}\xtensor{J}{_\sigma}{^\rho} - 2\epsilon^\rho P_\rho \big] U^{-1}(\Lambda, a) \\
    =&\ \frac{1}{2}U(\Lambda, a)\xtensor{J}{_\sigma}{^\rho}U^{-1}(\Lambda, a) \xtensor{\omega}{^\sigma}{_\rho} - 2U(\Lambda, a)P_\rho U^{-1}(\Lambda, a)\epsilon^\rho

根据定理17, :math:`\xtensor{(\Lambda^{-1})}{^\rho}{_\nu} = \xtensor{\Lambda}{_\nu}{^\rho}`, 因此

.. math:: 
    U(\Lambda, a)\xtensor{J}{_\sigma}{^\rho}U^{-1}(\Lambda, a) =&\ \xtensor{\Lambda}{^\mu}{_\sigma}\xtensor{(\Lambda^{-1})}{^\rho}{_\nu} \big[ \xtensor{J}{_\mu}{^\nu} + 2 a^\nu P_\mu \big]  \\
    U(\Lambda, a)J^{\sigma\rho}U^{-1}(\Lambda, a) =&\ \Lambda^{\mu\sigma}\xtensor{(\Lambda^{-1})}{^\rho}{_\nu} \big[ \xtensor{J}{_\mu}{^\nu} + 2 a^\nu P_\mu \big]  \\
    =&\ \xtensor{\Lambda}{_\mu}{^\sigma}\xtensor{\Lambda}{_\nu}{^\rho} \big[ J^{\mu\nu} + 2 a^\nu P^\mu \big]  \\
    U(\Lambda, a)P_\rho U^{-1}(\Lambda, a) =&\ \xtensor{\Lambda}{^\mu}{_\rho} P_\mu = \xtensor{\Lambda}{_\mu}{_\rho} P^\mu \\
    U(\Lambda, a)P^\rho U^{-1}(\Lambda, a) =&\ \xtensor{\Lambda}{_\mu}{^\rho} P^\mu

下面需要证明 :math:`a^\nu P^\mu = a^{[\nu} P^{\mu]}`. 由于

.. math:: 
    U(\Lambda, a)J^{\rho\sigma}U^{-1}(\Lambda, a) = U(\Lambda, a)J^{[\rho\sigma]}U^{-1}(\Lambda, a)

得 (等号左边 :math:`U(\Lambda, a)J^{\rho\sigma}U^{-1}(\Lambda, a)` 反称, 右边 :math:`\xtensor{\Lambda}{_\mu}{^{\rho}}\xtensor{\Lambda}{_\nu}{^{\sigma}} \big[ J^{\mu\nu} + 2 a^\nu P^\mu \big]` 也必须反称)

.. math:: 
    \xtensor{\Lambda}{_\mu}{^{\rho}}\xtensor{\Lambda}{_\nu}{^{\sigma}} \big[ J^{\mu\nu} + 2 a^\nu P^\mu \big]
    = \xtensor{\Lambda}{_\mu}{^{[\rho}}\xtensor{\Lambda}{_\nu}{^{\sigma]}} \big[ J^{\mu\nu} + 2 a^\nu P^\mu \big]

即

.. math:: 
    \xtensor{\Lambda}{_\mu}{^{\rho}}\xtensor{\Lambda}{_\nu}{^{\sigma}} \big[ J^{\mu\nu} + 2 a^\nu P^\mu \big]
    =&\  -\xtensor{\Lambda}{_\mu}{^{\sigma}}\xtensor{\Lambda}{_\nu}{^{\rho}} \big[ J^{\mu\nu} + 2 a^\nu P^\mu \big] \\
    =&\  -\xtensor{\Lambda}{_\nu}{^{\rho}}\xtensor{\Lambda}{_\mu}{^{\sigma}} \big[ J^{\mu\nu} + 2 a^\nu P^\mu \big] \\
    =&\  -\xtensor{\Lambda}{_\mu}{^{\rho}}\xtensor{\Lambda}{_\nu}{^{\sigma}} \big[ J^{\nu\mu} + 2 a^\mu P^\nu \big] \\
    =&\  \xtensor{\Lambda}{_\mu}{^{\rho}}\xtensor{\Lambda}{_\nu}{^{\sigma}} \big[ J^{\mu\nu} - 2 a^\mu P^\nu \big]

于是 :math:`2 a^\nu P^\mu = 2 a^\mu P^\nu`, 即 :math:`a^\nu P^\mu` 反称. 或者写为

.. math:: 
    2 a^\nu P^\mu = 2 a^{[\nu} P^{\mu]} = a^\nu P^\mu - a^\mu P^\nu

于是我们最终得到

.. math:: 
    U(\Lambda, a)J^{\rho\sigma}U^{-1}(\Lambda, a)
    =&\ \xtensor{\Lambda}{_\mu}{^\rho}\xtensor{\Lambda}{_\nu}{^\sigma} \big[ J^{\mu\nu} - a^\mu P^\nu + a^\nu P^\mu\big] \\
    U(\Lambda, a)P^\rho U^{-1}(\Lambda, a) =&\ \xtensor{\Lambda}{_\mu}{^\rho} P^\mu
    :label: jp-lambda-trans

从上面的分析可以总结出一般的反称性传递的定理.

[定理22] 若 :math:`\xtensor{A}{^\mu}{_\sigma}\xtensor{A}{^\nu}{_\rho} = \xtensor{A}{^{[\mu}}{_\sigma}\xtensor{A}{^{\nu]}}{_\rho}`, 则 :math:`\xtensor{A}{^\mu}{_\sigma}\xtensor{A}{^\nu}{_\rho} = \xtensor{A}{^\mu}{_{[\sigma}}\xtensor{A}{^\nu}{_{\rho]}}`. 即一对上下指标如果可以左右交换, 上指标若反称, 那么下指标必反称, 不需要要求缩并.

[证明]

.. math:: 
    \xtensor{A}{^\mu}{_\sigma}\xtensor{A}{^\nu}{_\rho} = -\xtensor{A}{^\nu}{_\sigma}\xtensor{A}{^\mu}{_\rho} = -\xtensor{A}{^\mu}{_\rho}\xtensor{A}{^\nu}{_\sigma}

可以看出从左到右, 添加了负号并且 :math:`\sigma, \rho` 调换了位置. 因此

.. math:: 
    \xtensor{A}{^\mu}{_\sigma}\xtensor{A}{^\nu}{_\rho} = \xtensor{A}{^\mu}{_{[\sigma}}\xtensor{A}{^\nu}{_{\rho]}}

对齐次洛伦兹变换 (满足 :math:`a^\mu = 0`), :eq:`jp-lambda-trans` 相当于说 :math:`J^{\mu\nu}` 是张量 (的分量) 而 :math:`P^\mu` 是矢量 (的分量). 对纯平移 (满足 :math:`\xtensor{\Lambda}{^\mu}{_\nu} = \xtensor{\delta}{^\mu}{_\nu}`), 我们可以看出 :math:`P^\rho` 是平移不变量, 但 :math:`J^{\mu\nu}` 不是平移不变量. 一般地有 :math:`U(\Lambda, a)J^{\rho\sigma}U^{-1}(\Lambda, a)=J^{\mu\nu} - a^\mu P^\nu + a^\nu P^\mu`. 特别地, 其空间分量的变换关系由如下定理给出.

[定理23] :math:`J^{\rho\sigma}` 的空间-空间分量的在空间平移变换下的改变, 就是通常角动量在改变坐标系原点时的改变.

[证明] 对空间分量有

.. math:: 
    {J'}^{ij} = J^{ij} - a^iP^j + a^jP^i

在三维语言中, :math:`\bm{J} = \bm{r} \times \bm{P}`, 其中 :math:`\bm{P}` 是平移不变量, 而 :math:`\bm{r} \to \bm{r}' = U\bm{r}U^{-1} = \bm{r} - \bm{a}` (注意 :math:`\bm{r}` 是坐标算符, 此条在引理23-1证). 由于 :math:`J^k = \xtensor{\epsilon}{_{ij}}{^k}r^iP^j`, 而我们这里的 :math:`J^{ij} = \xtensor{\epsilon}{^{ij}}{_k} J^k`. 因此

.. math:: 
    J^{ij} = \xtensor{\epsilon}{^{ij}}{_k} J^k =&\ \xtensor{\epsilon}{^{ij}}{_k}\xtensor{\epsilon}{_{lm}}{^k}r^lP^m \\
    =&\ 2!1!\xtensor{\delta}{^{[i}}{_l}\xtensor{\delta}{^{j]}}{_m} r^lP^m = 2r^{[i}P^{j]} = r^iP^j - r^jP^i

经过坐标变换得到

.. math:: 
    {J'}^{ij} = (r^i - a^i) P^j - (r^j - a^j) P^i = r^iP^j - r^jP^i - a^iP^j + a^jP^i = J^{ij} - a^iP^j + a^jP^i

[引理23-1] 对平移变换 :math:`U|\bm{x}\rangle = |\bm{x} + \bm{a}\rangle`, 坐标算符的变换为 :math:`\bm{r} \to \bm{r}' = U\bm{r}U^{-1} = \bm{r} - \bm{a}`.

[证明] 考虑用坐标算符 :math:`\bm{r}` 测量本征态 :math:`|x\rangle` 得到的值经过线性变换应该不变. 即

.. math:: 
    \langle x | \bm{r} |x\rangle = x = \langle x + a | U\bm{r}U^{-1} |x + a\rangle

另一方面

.. math:: 
    \langle x + a | \bm{r} - \bm{a} |x + a\rangle = \langle x + a |\bm{r}|x + a\rangle - \bm{a} \langle x + a |x + a\rangle = x + a - a = x

因此 :math:`U\bm{r}U^{-1} = \bm{r} - \bm{a}`.

4 无穷小幺正算符的无穷小线性变换
^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^^

下面, 假设线性变换 :math:`U(\Lambda, a)` 本身就是无穷小幺正变换 (即与恒等变换相差无穷小量)

.. math:: 
    \xtensor{\Lambda}{^\mu}{_\nu} = \xtensor{\delta}{^\mu}{_\nu} + \xtensor{\omega}{^\mu}{_\nu},\quad a^\mu = \epsilon^\mu

其中 :math:`\xtensor{\omega}{^\mu}{_\nu}, \epsilon^\mu` 与之前的 :math:`\omega, \epsilon` 无关. 我们只想用这个式子研究 :eq:`jp-lambda-trans` 的变化, 而在 :eq:`jp-lambda-trans` 中, 之前的 :math:`\omega, \epsilon` 已经没有出现. 因此, 采用相同的 :math:`\omega, \epsilon` 是不至于引起混淆的. 先考虑 :eq:`jp-lambda-trans` 的左边. 利用 :eq:`ujp-expansion2` 得 (保留到 :math:`\xtensor{\omega}{^\mu}{_\nu}, \epsilon^\mu` 的一阶项)

.. math:: 
    U^{-1}(\Lambda, a) =&\ U(\Lambda, a)^\dagger = 1 - \frac{1}{2} \I \xtensor{\omega}{^\mu}{_\nu}\xtensor{J}{_\mu}
        {^\nu} + \I \epsilon^\mu P_\mu + \cdots \\
    U(\Lambda, a)P^\rho U^{-1}(\Lambda, a) =&\ \big[ 1 + \frac{1}{2} \I \xtensor{\omega}{^\mu}{_\nu}\xtensor{J}{_\mu}
        {^\nu} - \I \epsilon^\mu P_\mu + \cdots \big] P^\rho \big[ 1 - \frac{1}{2} \I \xtensor{\omega}{^\mu}{_\nu}\xtensor{J}{_\mu} {^\nu} + \I \epsilon^\mu P_\mu + \cdots \big] \\
    =&\ P^\rho + \frac{1}{2} \I \xtensor{\omega}{^\mu}{_\nu}\xtensor{J}{_\mu}
        {^\nu}P^\rho - \I \epsilon^\mu P_\mu P^\rho - \frac{1}{2} \I P^\rho \xtensor{\omega}{^\mu}{_\nu}\xtensor{J}{_\mu} {^\nu} + \I P^\rho \epsilon^\mu P_\mu \\
    =&\ P^\rho + \I \big[ \frac{1}{2} \xtensor{\omega}{^\mu}{_\nu}\xtensor{J}{_\mu}{^\nu} - \epsilon^\mu P_\mu, P^\rho\big]

类似有

.. math:: 
    U(\Lambda, a)J^{\rho\sigma} U^{-1}(\Lambda, a) = J^{\rho\sigma} + \I \big[ \frac{1}{2} \xtensor{\omega}{^\mu}{_\nu}\xtensor{J}{_\mu}{^\nu} - \epsilon^\mu P_\mu, J^{\rho\sigma} \big]

现在考虑 :eq:`jp-lambda-trans` 的右边

.. math:: 
    \xtensor{\Lambda}{_\mu}{^\rho} P^\mu =&\ \big(\xtensor{\delta}{_\mu}{^\rho} + \xtensor{\omega}{_\mu}{^\rho} \big) P^\mu 
        = P^\rho + \xtensor{\omega}{_\mu}{^\rho} P^\mu \\
    \xtensor{\Lambda}{_\mu}{^\rho}\xtensor{\Lambda}{_\nu}{^\sigma} \big[ J^{\mu\nu} - a^\mu P^\nu + a^\nu P^\mu\big] =&\ \big(\xtensor{\delta}{_\mu}{^\rho} + \xtensor{\omega}{_\mu}{^\rho} \big) \big(\xtensor{\delta}{_\nu}{^\sigma} + \xtensor{\omega}{_\nu}{^\sigma} \big) \big[ J^{\mu\nu} - \epsilon^\mu P^\nu + \epsilon^\nu P^\mu \big]\\
    =&\ J^{\rho\sigma} - \epsilon^\rho P^\sigma + \epsilon^\sigma P^\rho + \xtensor{\omega}{_\nu}{^\sigma} 
        \big[ J^{\rho\nu} - \epsilon^\rho P^\nu + \epsilon^\nu P^\rho\big]
        + \xtensor{\omega}{_\mu}{^\rho} \big[ J^{\mu\sigma} - \epsilon^\mu P^\sigma + \epsilon^\sigma P^\mu\big] \\
    =&\ J^{\rho\sigma} - \epsilon^\rho P^\sigma + \epsilon^\sigma P^\rho + \xtensor{\omega}{_\nu}{^\sigma} J^{\rho\nu}
        + \xtensor{\omega}{_\mu}{^\rho} J^{\mu\sigma}

其中最后一步略去了高阶的 :math:`\xtensor{\omega}{_\mu}{^\rho}\epsilon^\mu` 等项.

根据 :eq:`jp-lambda-trans` 左边等于右边, 有

.. math:: 
    \I \big[ \frac{1}{2} \xtensor{\omega}{_\mu}{_\nu}\xtensor{J}{^\mu}{^\nu} - \epsilon_\mu P^\mu, J^{\rho\sigma} \big] =&\ 
    \xtensor{\omega}{_\nu}{^\sigma} J^{\rho\nu}
        + \xtensor{\omega}{_\mu}{^\rho} J^{\mu\sigma} - \epsilon^\rho P^\sigma + \epsilon^\sigma P^\rho \\
        =&\ -\eta^{\sigma\mu}\omega_{\mu\nu} J^{\rho\nu} + \eta^{\rho\nu}\omega_{\mu\nu}J^{\mu\sigma} -\eta^{\rho\mu}\epsilon_\mu P^\sigma + \eta^{\sigma\mu}\epsilon_\mu P^\rho \\
    \I \big[ \frac{1}{2} \xtensor{\omega}{_\mu}{_\nu}\xtensor{J}{^\mu}{^\nu} - \epsilon_\mu P^\mu, P^\rho\big] =&\ 
        \xtensor{\omega}{_\mu}{^\rho} P^\mu = \eta^{\rho\nu}\omega_{\mu\nu} P^\mu
    :label: jp-omega-eps

5 Poincaré 代数
^^^^^^^^^^^^^^^

利用 :eq:`jp-omega-eps` 等号两边 :math:`\omega_{\mu\nu}` 和 :math:`\epsilon_\mu` 的系数相等, 我们就可以导出 :math:`J^{\mu\nu}, P^\mu` 的对易关系. 首先在 :eq:`jp-omega-eps` 第一式中令 :math:`\omega_{\mu\nu} = 0`, 然后考虑 :math:`\epsilon` 的系数 (注意 :math:`\omega_{\mu\nu}, \epsilon_\mu` 仅仅是实参数, 它们和 :math:`J^{\mu\nu}, P^\mu` 都对易), 得

.. math:: 
    -\I [ P^\mu, J^{\rho\sigma}] = -\eta^{\rho\mu} P^\sigma + \eta^{\sigma\mu} P^\rho \quad
    \Rightarrow \quad \I [ P^\mu, J^{\rho\sigma}] = \eta^{\mu\rho} P^\sigma - \eta^{\mu\sigma} P^\rho

在 :eq:`jp-omega-eps` 第一式中令 :math:`\epsilon_\mu = 0`, 然后考虑 :math:`\omega_{\mu\nu}` 的系数得

.. math:: 
    \I [ J^{\mu\nu}, J^{\rho\sigma}] = 2 \big(-\eta^{\sigma\mu} J^{\rho\nu} + \eta^{\rho\nu} J^{\mu\sigma} \big)

由于等号左边关于 :math:`\rho\sigma` 反称, 所以

.. math:: 
    \I [ J^{\mu\nu}, J^{\rho\sigma}] =&\ -2 \big(\eta^{\mu[\sigma} J^{\rho]\nu} + \eta^{\nu[\rho} J^{\sigma]\mu} \big) \\
        =&\ \eta^{\mu\rho} J^{\sigma\nu} + \eta^{\nu\sigma} J^{\rho\mu} - \eta^{\mu\sigma} J^{\rho\nu} - \eta^{\nu\rho} J^{\sigma\mu} \\
        =&\ \eta^{\nu\rho} J^{\mu\sigma} - \eta^{\mu\rho} J^{\nu\sigma} - \eta^{\sigma\mu} J^{\rho\nu} + \eta^{\sigma\nu} J^{\rho\mu}

在 :eq:`jp-omega-eps` 第二式中令 :math:`\omega_{\mu\nu} = 0`, 然后考虑 :math:`\epsilon` 的系数得

.. math:: 
    [ P^\mu, P^\rho] = 0

综上, 我们得到 Poincaré 群的李代数

.. math:: 
    \I [ J^{\mu\nu}, J^{\rho\sigma}] 
        =&\ \eta^{\nu\rho} J^{\mu\sigma} - \eta^{\mu\rho} J^{\nu\sigma} - \eta^{\sigma\mu} J^{\rho\nu} + \eta^{\sigma\nu} J^{\rho\mu} \\
    \I [ P^\mu, J^{\rho\sigma}] =&\ \eta^{\mu\rho} P^\sigma - \eta^{\mu\sigma} P^\rho \\
    [ P^\mu, P^\rho] =&\ 0
    :label: poin-lie-algebra

根据 [定理12] 后面的讨论, 因为此处的李括号是按照 :math:`[A,B] = AB-BA` 定义的, 只要 :math:`[A,B]` 仍给出原矢量空间的元素, 则该矢量空间就构成李代数. 因此显然此处是李代数. 其中 :math:`J^{\mu\nu}` (6个独立分量) 和 :math:`P^\mu` (4个独立分量) 构成该李代数 (矢量空间) 的10个基矢. 这是10维李代数.

下面考虑将 :eq:`poin-lie-algebra` 中 :math:`J` 的关系改写成容易记的形式.

.. math:: 
    \I [ J^{ab}, J^{cd}] =&\ \eta^{bc} J^{ad} - \eta^{ac} J^{bd} - \eta^{da} J^{cb} + \eta^{db} J^{ca} \\
        =&\ -\eta^{ac} J^{bd} + \eta^{ad}J^{bc} + \eta^{bc}J^{ad} -\eta^{bd}J^{ac}

可见, 如果是内外指标分别给 :math:`\eta, J`, 则取正号, 如果是交叉分配, 则取负号. 其中 :math:`J` 的指标顺序要求是字母顺序.

6 3维空间对易关系
^^^^^^^^^^^^^^^^^

在量子力学中, 有一类重要算符是守恒算符. 守恒算符与能量算符 :math:`H = P^0` 对易.

[定理24] (王正行P25 守恒定理) 一个不显含时间的无限小幺正变换若保持系统的 Hamilton 量不变, 则生成此无限小变换的厄米算符 :math:`F` 满足 :math:`[F, H] = 0`, 即算符 :math:`F` 与 :math:`H` 对易. 进一步, 这个算符代表一个守恒量, 即该算符对应的观测量不随时间变化 :math:`\frac{\D}{\D t} \langle F \rangle = 0`, 这个算符因而称为守恒 (conserved) 算符.

[证明] 先证从一个不显含时间的无限小幺正变换 :math:`U = 1 + \I\epsilon F` 保持系统的 Hamilton 量不变推出 :math:`[F, H] = 0`. 任一算符 :math:`H` 在无限小幺正变换 :math:`U` 下的改变是

.. math:: 
    H' - H = UHU^{-1} - H = (1 + \I\epsilon F)H(1 - \I\epsilon F) - H = \I\epsilon FH -H\I\epsilon F = \I\epsilon [F, H]

由于 :math:`H = H'`, 所以有 :math:`[F, H] = 0`.

再证 :math:`[F, H] = 0` 导致 :math:`\frac{\D}{\D t} \langle F \rangle = 0`. 求 :math:`F` 对应的观测量平均值随时间的变化率, 得

.. math:: 
    \frac{\D}{\D t} \langle F \rangle \equiv \frac{\D}{\D t} \langle \psi |F| \psi \rangle 
    = \langle \psi | \frac{\partial F}{\partial t} | \psi \rangle + \left( \frac{\D }{\D t} \langle \psi | \right) F|\psi\rangle 
    +\langle \psi | F \frac{\D }{\D t} | \psi \rangle

由薛定谔方程

.. math:: 
    \I\hbar \frac{\D }{\D t} | \psi \rangle = H| \psi \rangle

两边取共轭得 (注意 :math:`H` 是观测量能量对应的算符, 所以是厄米算符, :math:`H = H^\dagger` )

.. math:: 
    -\I\hbar \frac{\D }{\D t} \langle \psi | = \langle \psi | H

代入观测量平均值随时间的变化率的式子, 得

.. math:: 
    \frac{\D}{\D t} \langle F \rangle =&\ \langle \psi | \frac{\partial F}{\partial t} | \psi \rangle + \frac{\I}{\hbar} \langle \psi | HF|\psi\rangle - \frac{\I}{\hbar} \langle \psi | FH|\psi\rangle \\
    =&\ \left\langle \frac{\partial F}{\partial t} + [H, F] \right\rangle

由于 :math:`[H, F] = 0` 及算符 :math:`F` 不显含时间, 即 :math:`\frac{\partial F}{\partial t} = 0` 得 :math:`\frac{\D}{\D t} \langle F \rangle = 0`.

通过 :eq:`poin-lie-algebra` 可知守恒量对应的算符是动量矢量

.. math:: 
    \bm{P} = \{ P^1, P^2, P^3 \}

和角动量矢量

.. math:: 
    \bm{J} = \{ J^{23}, J^{31}, J^{12} \}

和能量 :math:`P^0` 本身. 剩下的叫做推进 (boost) 生成元

.. math:: 
    \bm{K} = \{ J^{10}, J^{20}, J^{30} \}

不是守恒量的算符, 因而我们不使用 :math:`\bm{K}` 的本征值标记物理态. 为了证明它们是否是守恒量只需要求对应的算符和能量算符的对易关系. 这些对易关系由下面的定理给出.

[定理25] 采用3维标记, :eq:`poin-lie-algebra` 的对易关系可以写为

.. math:: 
    [J_i, J_j] =&\ \I \epsilon_{ijk}J_k,\quad [J_i, K_j] = \I \epsilon_{ijk}K_k,\quad [K_i, K_j]= -\I \epsilon_{ijk}J_k,\\
    [J_i, P_j] =&\ \I \epsilon_{ijk}P_k,\quad [K_i, P_j] = \I H\delta_{ij},\quad [P_i, P_j] = 0, \\
    [K_i, H] =&\ \I P_i,\quad [J_i, H] = [P_i, H] = [H, H] = 0
    :label: 3d-poin-lie-algebra

其中 :math:`i, j, k` 取 :math:`1, 2, 3`, :math:`\epsilon_{ijk}` 是全反称张量, 满足 :math:`\epsilon_{123} = +1`. 第一个对易关系 :math:`[J_i, J_j] = \I \epsilon_{ijk}J_k` 正是角动量算符的对易关系.

[证明]

(1) 首先考虑两个相同的 :math:`J`. 由于 :math:`J` 反称, 下式要求 :math:`i \neq j`.

    .. math:: 
        \I [J^{ij}, J^{ij}] = \eta^{ij} J^{ji} + \eta^{ji} J^{ij} - \eta^{ii} J^{jj} - \eta^{jj} J^{ii}

    由于 :math:`\eta` 不同指标时为零, :math:`J` 相同指标时为零, 所以上式总是为零.

    其次考虑两个相同的 :math:`J`. 还是要求 :math:`i, j, k` 互不相同. 四个指标中必有一个重复.

    .. math:: 
        \I [J^{ij}, J^{ki}] =&\ \eta^{ii} J^{jk} + \eta^{jk} J^{ii} - \eta^{ik} J^{ji} - \eta^{ji} J^{ik} = J^{jk} \\
        \I [J^{ij}, J^{jk}] =&\ \I [J^{ji}, J^{kj}] = J^{ik} \\
        \I [J^{jk}, J^{ki}] =&\ J^{ji}

    其中第三式由第二式作 :math:`ijk` 顺序轮换得到. 现在令 :math:`ijk = 123` 得

    .. math:: 
        [J^3, J^2] = -\I J^1, \quad [J^3, J^1] = -\I (-J^2),\quad [J^1, J^2] = -\I (-J^3).

    因此 :math:`[J_i, J_j] = \I \epsilon_{ijk}J_k` 得证.

(2) 考虑指标相同的 :math:`J, K`. 由于 :math:`J` 反称, 下式要求 :math:`i \neq j`, 而为使 :math:`J, K` 指标相同, :math:`k` 必须与 :math:`ij` 不同. 因此 :math:`K` 的对应的指标只能是 :math:`k0`. 此时4个指标互不相同, 无法使 :math:`\eta` 非零. 因此

    .. math:: 
        \I [J^{ij}, J^{k0}] = 0

    考虑指标不同的 :math:`J, K`. 略去为零的 :math:`\eta`.
    
    .. math:: 
        \I [J^{ij}, J^{i0}] =&\ -\eta^{ii} J^{j0} = -J^{j0} \\
        \I [J^{ij}, J^{j0}] =&\ -\I [J^{ji}, J^{j0}] = J^{i0}
    
    于是
    
    .. math:: 
        [J^2, K^3] = -\I (-J^{10}) = \I K^1, \quad [J^3, K^1] = -\I (-J^{20}) = \I K^2, \quad 
        [J^1, K^2] = -\I (-J^{30}) = \I K^3
    
    因此 :math:`[J_i, K_j] = \I \epsilon_{ijk}K_k` 得证.

(3) 直接代入公式. 利用 :math:`J^{ij} = \epsilon_{ijk}J^k` 得
    
    .. math:: 
        [K_i, K_j] = [J^{i0}, J^{j0}] = (-\I) (-\eta^{00} J^{ij}) = -\I J^{ij} = -\I \epsilon_{ijk}J^k

(4) 注意 :math:`\I [ P^\mu, J^{\rho\sigma}] = \eta^{\mu\rho} P^\sigma - \eta^{\mu\sigma} P^\rho` 的两个 :math:`\eta` 均含有 :math:`\mu`, 因此 :math:`J` 的双指标必须含有 :math:`\mu`, 否则只能得到零.

    .. math:: 
        \I [ P^i, J^{ij}] = \eta^{ii} P^j,\quad \I [ P^i, J^{ji}] = -\eta^{ii} P^j

    于是
    
    .. math:: 
        [ P^1, J^2 ] =&\ [ P^1, J^{31} ] = (-\I)(-P^3), \quad [ P^2, J^3 ] = [ P^2, J^{12} ] = (-\I)(-P^1), \\
        [ P^3, J^1 ] =&\ [ P^3, J^{23} ] = (-\I)(-P^2)
    
    因此 :math:`[P_i, J_j] = \I \epsilon_{ijk}P_k`. 从而 :math:`[J_i, P_j] = -[P_j, J_i] = -\I \epsilon_{jik}P_k = \I \epsilon_{ijk}P_k`.

(5) 和上一条讨论一致, :math:`K` 的指标必须和 :math:`P` 指标一致, 否则只能得到零.
    
    .. math:: 
        \I [ P^i, J^{i0}] = \eta^{ii} P^0 = H
    
    从而 :math:`[K_i, P_j] = -[P^j, J^{i0}] = -(-\I) \delta_{ij}H=\I H\delta_{ij}`.

(6) :math:`[P_i, P_j] = [P_i, H] = [H, H] = 0` 可直接从4维表达式看出.

(7) 考虑

    .. math:: 
        \I [ P^0, J^{i0} ] = -\eta^{00} P^i = P^i

    因此 :math:`[K_i, H] = -[P^0, J^{i0}] = -(-\I) P^i = \I P^i`.

(8) 按之前的讨论, :math:`J` 的双指标必须含有 :math:`\mu`, 否则只能得到零. 此时 :math:`\mu` 等于零, 因此 :math:`[J_i, H] = 0`.

7 Poincaré 变换群的单参子群
^^^^^^^^^^^^^^^^^^^^^^^^^^^

[定理26] 纯平移变换 :math:`T(1, a)` 构成非齐次洛伦兹群的一个子群. 这个子群的 (从洛伦兹群诱导的) 群乘法规则由下式给出

.. math:: 
    T(1, a')T(1, a) = T(1, a' + a)

[证明] 根据 [定理16] 的 :eq:`t-lambda-a-compose` 式, 即

.. math:: 
    T(\Lambda', a')T(\Lambda, a) = T(\Lambda'\Lambda, \Lambda' a + a')

令 :math:`\Lambda = \Lambda' = 1`, 得

.. math:: 
    T(1, a')T(1, a) = T(1, a' + a)

这个纯平移变换的规则是相加的 (:eq:`f-theta-additive`), 因此利用 :eq:`ujp-expansion` 可以推出类似于 :eq:`ut-exp` 的结论.

[定理27] 物理的 Hilbert 空间的有限平移变换可以表示为 (注意这里的 "物理的 Hilbert 空间的有限平移变换" 因为强调了 "物理的", 所以它是射线变换 :math:`T`. 而下式给出这样的射线变换的一个表示, 即态矢变换, 因此记为 :math:`U`)

.. math:: 
    U(1, a) = \exp (-\I P^\mu a_\mu)

[证明] 因为我们现在考虑的变换是 :math:`U(1, a)`, 在 :eq:`ujp-expansion` 中可令 :math:`\omega = 0`, 得

.. math:: 
    U(1, \epsilon) = 1 -\I \epsilon_\rho P^\rho + \cdots

于是

.. math:: 
    U(1, a) \equiv U(T(a)) = \left[ U\left( T\left( \frac{a}{N} \right)\right) \right]^N = \lim_{N \to \infty}
        \left[ 1 -\frac{\I}{N} a_\mu P^\mu \right]^N = \exp(-\I a_\mu P^\mu)

按照完全相同的方法, 我们可以证明如下命题.

[定理28] 物理的 Hilbert 空间的绕沿 :math:`\bm{\theta}` 方向的轴转角度 :math:`|\bm{\theta}|` 的转动 :math:`R_{\bm{\theta}}` 可以表示为

.. math:: 
    U(R_{\bm{\theta}}, 0) = \exp (\I \bm{J}\cdot \bm{\theta})

[证明] 在 [定理16] 的 :eq:`t-lambda-a-compose` 式中令 :math:`a = 0`, 得

.. math:: 
    T(\Lambda', 0)T(\Lambda, 0) = T(\Lambda'\Lambda, 0)
    :label: lambda-multi-rot

注意 :math:`\Lambda` 本身是没有相加性的, 然而我们可以通过变换参数来得到相加性. 下面的关键是建立 :math:`\Lambda` 与 :math:`R_{\bm{\theta}}` 的关系. 由于这里限制变换是空间转动, 则若考虑无限小空间转动, 则将 :math:`\Lambda` 根据 :eq:`infinitesimal-expansion` 写成如下形式

.. math:: 
    \xtensor{\Lambda}{^\mu}{_\nu} = \xtensor{\delta}{^\mu}{_\nu} + \xtensor{\omega}{^\mu}{_\nu}
        = \xtensor{\delta}{^\mu}{_\nu} + \begin{pmatrix}0 & 0 \\ 0 & \xtensor{\tilde{\omega}}{^i}{_j} \end{pmatrix}
    
其中最后一步是由于空间转动, 时间分量必须保持不变.  又由于 :math:`\omega` 是反称的, 即 :eq:`omega-antisym`, 知 :math:`\tilde{\omega}` 也是反称的, 那么它只有3个独立分量, 这三个独立分量可记为 :math:`\bm{\theta}`. 事实上, 根据 (Zee, GR书的) :eq:`infinitesimal-rotation`, 我们有

.. math:: 
    \tilde{\omega} = \begin{pmatrix} 0 & -\theta_3 & \theta_2 \\ \theta_3 & 0 & -\theta_1 \\ -\theta_2 & \theta_1 & 0 \end{pmatrix}

由上述分析, 可知表示空间转动的 :math:`\Lambda` 可表成 :math:`\bm{\theta}` 的函数, 即

.. math:: 
    R_{\bm{\theta}} \equiv \Lambda(\bm{\theta})

下面由 :math:`\Lambda` 的变换关系 :eq:`lambda-multi-rot` 推出关于 :math:`\bm{\theta}` 的相加性规则. 注意因为此处考虑无穷小变换, 只需要保留到一阶项.

.. math:: 
    U(R_{\bm{\theta}'}, 0) U(R_{\bm{\theta}}, 0) = U(\Lambda(\bm{\theta}'), 0)U(\Lambda(\bm{\theta}), 0) 
    = U(\Lambda(\bm{\theta}')\Lambda(\bm{\theta}), 0)

其中

.. math:: 
    \Lambda(\bm{\theta}')\Lambda(\bm{\theta}) =&\ \left[ 1 + \begin{pmatrix} 0&0&0&0\\ 0 & 0 & -\theta'_3 & \theta'_2 \\ 0&\theta'_3 & 0 & -\theta'_1 \\ 0& -\theta'_2 & \theta'_1 & 0 \end{pmatrix} \right] \left[ 1 + \begin{pmatrix} 0&0&0&0\\ 0 & 0 & -\theta_3 & \theta_2 \\ 0&\theta_3 & 0 & -\theta_1 \\ 0& -\theta_2 & \theta_1 & 0 \end{pmatrix} \right] \\
    =&\ 1 + \begin{pmatrix} 0&0&0&0\\ 0 & 0 & -\theta'_3 & \theta'_2 \\ 0&\theta'_3 & 0 & -\theta'_1 \\ 0& -\theta'_2 & \theta'_1 & 0 \end{pmatrix} + \begin{pmatrix} 0&0&0&0\\ 0 & 0 & -\theta_3 & \theta_2 \\ 0&\theta_3 & 0 & -\theta_1 \\ 0& -\theta_2 & \theta_1 & 0 \end{pmatrix} + \cdots \\
    =&\ \Lambda(\bm{\theta}' + \bm{\theta})

于是

.. math:: 
    U(R_{\bm{\theta}'}, 0) U(R_{\bm{\theta}}, 0) = U(\Lambda(\bm{\theta}' + \bm{\theta}), 0) = U(R_{\bm{\theta}' + \bm{\theta}}, 0)

即空间转动变换相对于参数 :math:`\bm{\theta}` 满足相加性规则. 和上面的平移变换不同, 这个相加性规则只对无穷小转动成立. 但是, 一个有限转动本身, 是否具有相加性, 这个问题应该从另一个角度考虑. 注意这里的推导, 我们唯一需要相加性的地方, 也就是把 :math:`\theta` 分成 :math:`\theta/N`. 而考虑一个有限转动, 如果维持转动方向不变, 仅仅每次转动一个较小角度, 那么很显然是满足相加性的. 这一点可以从如下计算看出. 假设转动是沿 :math:`z` 轴, 我们只需要计算 :math:`xy` 分量. 利用二倍角公式可得

.. math:: 
    U(R_{\theta'})U(R_{\theta}) =&\ \begin{pmatrix} \cos\theta' & -\sin\theta' \\ \sin\theta' & \cos\theta' \end{pmatrix}
        \begin{pmatrix} \cos\theta & -\sin\theta \\ \sin\theta & \cos\theta \end{pmatrix} \\
    =&\ \begin{pmatrix} \cos\theta'\cos\theta -\sin\theta'\sin\theta & -\cos\theta'\sin\theta -\sin\theta'\cos\theta \\ \sin\theta'\cos\theta + \cos\theta'\sin\theta & -\sin\theta'\sin\theta + \cos\theta'\cos\theta \end{pmatrix} \\
    =&\ \begin{pmatrix} \cos(\theta'+\theta) & -\sin(\theta'+\theta) \\ \sin(\theta'+\theta) & \cos(\theta'+\theta) \end{pmatrix}
    = U(R_{\theta'+\theta})

当然, 如果是两个不同方向有限角的旋转, 那么一般是没有可加性的. 所幸的是, 我们的计算中并不涉及这样的情况. 在我们的计算过程中, 把 :math:`\theta` 分成 :math:`\theta/N` 可以保证分出的有限或无穷小旋转总是沿同一方向的. 进一步, 分成无穷小角度之后, 问题就变成无穷小量的问题, 那么上述无穷小角度的讨论也就可以应用到下面的展开式了. 因为我们现在考虑的变换是 :math:`U(R_{\bm{\theta}}, 0)`, 在 :eq:`ujp-expansion` 中可令 :math:`\epsilon = 0`, 得

.. math:: 
    U(\omega, 0) = 1 + \frac{1}{2}\I \omega_{\mu\nu}J^{\mu\nu} + \cdots

由上面得到的 :math:`\tilde{\omega}` 的表达式, 我们有

.. math:: 
    \omega_{12} =&\ -\omega_{21} = -\theta_3, \quad \omega_{13} = -\omega_{31} = \theta_2, \quad \omega_{23} = -\omega_{32} = -\theta_1 \\
    \omega_{0i} =&\ \omega_{i0} = 0, \quad \omega_{\mu\mu} = 0

可见若采取反方向定义 :math:`\theta` 较为方便. 则有 :math:`\omega_{ij} = \epsilon_{ijk}\theta_k`. 从而

.. math:: 
    \frac{1}{2}\I \omega_{\mu\nu}J^{\mu\nu} =&\ \frac{1}{2}\I \omega_{ij}J^{ij} = \frac{1}{2}\I \epsilon_{ijk}\theta_k J^{ij} \\
    =&\ \frac{1}{2}\I \epsilon_{ijk}\theta_k \epsilon_{ijl}J_l = \I \theta_k J_k = \I \bm{\theta} \cdot \bm{J}

从而 (注意此式成立的条件是 :math:`\bm{\theta}` 是无穷小量)

.. math:: 
    U(\bm{\theta}, 0) = 1 + \I \bm{\theta} \cdot \bm{J} + \cdots
    :label: uj-expansion

所以

.. math:: 
    U(R_{\bm{\theta}}, 0) \equiv&\ U(\bm{\theta}, 0) = \left[ U\left( T\left( \frac{\bm{\theta}}{N} \right)\right) \right]^N \\
    =&\ \lim_{N \to \infty} \left[ 1 +\frac{\I}{N} \bm{\theta} \cdot \bm{J} \right]^N = \exp(\I \bm{\theta} \cdot \bm{J})

8 伽利略群
^^^^^^^^^^

牛顿力学的对称群称为 **伽利略群** (Galilean group). 我们可以比较伽利略群的李代数和 Poincaré 代数. 我们可以按照与上面推导 Poincaré 代数相同的方法, 从伽利略群的变换规则推导出伽利略群的李代数. 但是, 考虑到我们已经有 :eq:`3d-poin-lie-algebra`, 更简单的推导方式是, 通过 Inönü-Wigner 收缩 (Inönü-Wigner contraction) 将伽利略代数作为 Poincaré 代数的低速近似. 对于一个具有质量 :math:`m` 和速度 :math:`v` 的粒子系统, 动量和角动量算符的量级是 :math:`\bm{J} \sim 1, \bm{P} \sim mv` (注意角动量算符的量级是由于 :math:`\bm{J} = \bm{r} \times \bm{P}`, 而根据测不准原理 :math:`\bm{r}` 和 :math:`\bm{P}` 的乘积的量级是 :math:`\I\hbar` 是一个常数. 所以 :math:`\bm{r}` 的量级是 :math:`1/(mv)`). 另一方面, 能量算符是 :math:`H = M + W`, 其中总质量是 :math:`M`, 非质量导致的能量是 :math:`W` (动能和势能之和), 它们的量级是 :math:`M \sim m, W \sim mv^2`. 对易关系 :eq:`3d-poin-lie-algebra` 的低速近似 :math:`v \ll 1` (由于已经设定 :math:`c = 1`, 作为低速近似自动有 :math:`v \ll c = 1`) 如下

.. math:: 
    [J_i, J_j] =&\ \I \epsilon_{ijk}J_k,\quad& [J_i, K_j] =&\ \I \epsilon_{ijk}K_k,\quad [K_i, K_j]= -\I \epsilon_{ijk}J_k,\\
    [J_i, P_j] =&\ \I \epsilon_{ijk}P_k

对于 :math:`[K_i, P_j] = \I H\delta_{ij}`, 由于 :math:`v \ll 1` 时 :math:`W \ll M`, 得

.. math:: 
    [K_i, P_j] = \I M\delta_{ij}

由此式可见 :math:`\bm{K}` 的量级为 :math:`\bm{K} \sim m / (mv) \sim 1/v`

原来为零的对易关系仍为零

.. math:: 
    [P_i, P_j] = [J_i, W] = [P_i, W] = [J_i, M] = [P_i, M] = [W, M] = 0

下面考虑 :math:`[K_i, H] = \I P_i`. 左右两边对应量级的量应该对应相等 (下面在括号中表明对应量的量级)

.. math:: 
    [K_i, H] =&\ [K_i(1/v), M(m) + W(mv^2)] = [K_i(1/v), M(m)] + [K_i(1/v), W(mv^2)] \\
    =&\ [K_i, M](m/v) + [K_i, W](mv) = \I P_i(mv)
    
由 :math:`m/v` 量级的等式得 :math:`[K_i, M] = 0`, 由 :math:`mv` 量级的等式得 :math:`[K_i, W] = \I P_i`.

[引理29-1 (Hadamard 引理, Hadamard's lemma)] 设 :math:`t` 为实参数, :math:`A, B` 为算符或矩阵, 则

.. math:: 
    \E^{tA}B\E^{-tA} = B + [A, B]t + [A, [A, B]] \frac{t^2}{2!} + [A, [A, [A, B]]] \frac{t^3}{3!} + \cdots

[证明] 考虑如下算符函数

.. math:: 
    F_B(t) = \E^{tA}B\E^{-tA}

其导数为

.. math:: 
    F'_B(t) =&\ A \E^{tA}B\E^{-tA} - \E^{tA}B\E^{-tA}A = \E^{tA}AB\E^{-tA} - \E^{tA}BA\E^{-tA} \\
    =&\ \E^{tA}[A, B]\E^{-tA} = F_{[A,B]}(t) \\
    F''_B(t) =&\ F'_{[A, B]}(t) = F_{[A, [A, B]]}(t) \\
    F'''_B(t) =&\ F''_{[A, B]}(t) = F'_{[A, [A, B]]}(t) = F_{[A, [A, [A, B]]]}(t)

而注意到

.. math:: 
    F_B(0) = B

于是 :math:`F_B(t)` 在 :math:`t = 0` 的泰勒展开为

.. math:: 
    F_B(t) =&\ F_B(0) + tF'_B(0) + \frac{t^2}{2!} F''_B(0) + \frac{t^3}{3!} F'''_B(0) + \cdots \\
    =&\ F_B(0) + tF_{[A, B]}(0) + \frac{t^2}{2!} F_{[A, [A, B]]}(0) + \frac{t^3}{3!} F_{[A, [A, [A, B]]]}(0) + \cdots \\
    =&\ B + t[A, B] + \frac{t^2}{2!} [A, [A, B]] + \frac{t^3}{3!} [A, [A, [A, B]]] + \cdots

下面的一些引理对于后面的内容并非必要, 但是显示了这一数学关系和李群伴随表示的联系.

[引理29-2] 对任意矩阵 :math:`M, N`, :math:`N^{-1}(\exp M) N = \exp (N^{-1}MN)` (梁灿彬 G-5-27).

[证明] 做泰勒展开得

.. math:: 
    N^{-1} (\exp M) N =&\ N^{-1} \left( 1 + M + \frac{1}{2!}M^2 + \frac{1}{3!}M^3 + \cdots \right) N \\
    =&\ 1 + N^{-1}MN + \frac{1}{2!}(N^{-1}MN)(N^{-1}MN) + \frac{1}{3!}(N^{-1}MN)^3 + \cdots \\
    =&\ \exp (N^{-1}MN)

[定义5 (梁灿彬G.8 定义1)] 用群 :math:`G` 的每一元素 :math:`g \in G` 可构造一个称为伴随同构的自同构映射 :math:`I_g : G \to G`. 对李群 :math:`G`, 这是个从 :math:`G` 到 :math:`G` 的李群同构. 按定义, :math:`I_g(h) \equiv ghg^{-1}`, 所以 :math:`I_g(e) = e`, 它在 :math:`e` 点所诱导的推前映射 (切映射) :math:`I_{g*} := I_{g*e}` 是从 :math:`V_e` 到 :math:`V_e` 的映射, 记为 :math:`\mathrm{Ad}_g \equiv I_{g*e}`. 因 :math:`V_e` 就是 :math:`G` 的李代数 :math:`\mathscr{G}`, 故 :math:`\mathrm{Ad}_g : \mathscr{G} \to \mathscr{G}` 是 :math:`\mathscr{G}` 上的线性变换.

[引理29-3 (梁灿彬, 定理G-8-1)] 设 :math:`\mathscr{G}` 是李群 :math:`G` 的李代数, 则 :math:`\forall g \in G, A \in \mathscr{G}` 有

.. math:: 
    \exp(t \mathrm{Ad}_g A) = g (\exp tA) g^{-1}

[证明] 令 :math:`\gamma(t) \equiv \exp(t A)`, 可见 :math:`\gamma(t)` 是单参子群. 再令 :math:`\gamma'(t) = g (\exp tA) g^{-1}`. 为了证明 :math:`\gamma'(t)` 也是单参子群, 只需证 :math:`\gamma'(t + s) = \gamma'(t) \gamma'(s)`. 事实上

.. math:: 
    \gamma'(t + s) =&\ g (\exp (t + s)A) g^{-1} = g (\exp tA)(\exp sA) g^{-1} \\
    =&\ g (\exp tA) g^{-1} g (\exp sA) g^{-1} = \gamma'(t) \gamma'(s)

因此 :math:`\gamma'(t)` (等号右边) 也是单参子群. 注意等号左边是由 :math:`\mathrm{Ad}_g A` 生成的单参子群, 为证两边相等, 只需证明两边在 :math:`e` 点的切矢相等. 证明如下 (从右边的切矢推出左边的切矢)

.. math:: 
    \frac{\D}{\D t} \bigg\rvert_{t = 0} \left[ g (\exp tA) g^{-1} \right] =&\ \frac{\D}{\D t} \bigg\rvert_{t = 0}
        \left[ I_g (\exp tA) \right] \\
    =&\ I_{g*} \left[ \frac{\D}{\D t} \bigg\rvert_{t = 0} (\exp tA) \right] = \mathrm{Ad}_g A

[引理29-4] :math:`\mathrm{Ad}_g B = gBg^{-1}`. 其中 :math:`g` 是群元, :math:`B` 是代数元. 但此处都看作矩阵. 因此相乘有意义. 从此可以推出

.. math:: 
    \mathrm{Ad}_{\exp tA} B = \E^{tA} B \E^{-tA}

[证明] 在 [引理29-3] 中利用 [引理29-2] 得 :math:`\exp(t \mathrm{Ad}_g A) = g (\exp tA) g^{-1} = \exp [tgAg^{-1}]`.
两边对 :math:`t` 求导得

.. math:: 
    \mathrm{Ad}_g A \exp(t \mathrm{Ad}_g A) = gAg^{-1} \exp [tgAg^{-1}]

令 :math:`t = 0` 得 :math:`\mathrm{Ad}_g A = gAg^{-1}`.

[引理29-5 (梁灿彬 G-8-12)] 映射 :math:`\mathrm{ad}_A : \mathscr{G} \to \mathscr{G}` (其中 :math:`A` 不是群元而是代数元, :math:`A \in \mathscr{G}` 定义为 :math:`\mathrm{ad}_A (B) := [A, B], \quad \forall B \in \mathscr{G}`, 则有

.. math:: 
    \mathrm{Ad}_{\exp(A)} = \exp(\mathrm{ad}_A)

[证明] 利用[引理29-1]结合 :math:`\mathrm{ad}_A` 定义得

.. math:: 
    \E^{tA}B\E^{-tA} =&\ B + [A, B]t + [A, [A, B]] \frac{t^2}{2!} + [A, [A, [A, B]]] \frac{t^3}{3!} + \cdots \\
    =&\ \sum_{n = 0}^\infty \frac{t^n}{n!} (\mathrm{ad}_A)^n (B) = \sum_{n = 0}^\infty \frac{1}{n!} (\mathrm{ad}_{tA})^n (B) \\
    =&\ \exp(\mathrm{ad}_{tA}) (B)

而 [引理29-4] 推论给出 :math:`\mathrm{Ad}_{\exp tA} B = \E^{tA} B \E^{-tA}`, 于是

.. math:: 
    \exp(\mathrm{ad}_{tA}) (B) = \mathrm{Ad}_{\exp tA} B

令 :math:`t = 1` 得 :math:`\mathrm{Ad}_{\exp(A)} = \exp(\mathrm{ad}_A)`.

[定理29 (Baker–Campbell–Hausdorff 公式的简单形式)] 设 :math:`A, B` 为算符或矩阵, 其对易子 :math:`[A, B] = C` 其中 :math:`C` 满足 :math:`[C, A] = [C, B] = 0`. 则有

.. math:: 
    \E^A \E^B = \E^{A + B + \frac{1}{2}[A, B]} = \E^{A + B}\E^{\frac{1}{2}[A, B]}

[证明] 考虑如下算符函数

.. math:: 
    G(t) \equiv \E^{t(A + B)} \E^{-tA}

其中 :math:`t` 是一个标量参数. 由定义得

.. math:: 
    G(0) = 1

并且

.. math:: 
    \E^{tA} \E^{-t(A + B)} \E^{t(A + B)} \E^{-tA} = \E^{tA} \E^{-t(A + B)} G(t) = 1

因此逆变换为 :math:`G^{-1}(t) = \E^{tA} \E^{-t(A + B)}`. 导数为

.. math:: 
    \frac{\D G(t) }{\D t} = (A+B) \E^{t(A + B)} \E^{-tA} - \E^{t(A + B)} \E^{-tA} A

其中, 注意由指数算符的定义可知 :math:`(A+B)` 和 :math:`\E^{t(A + B)}` 对易, :math:`\E^{-tA}` 和 :math:`A` 对易, 因此可以调换顺序. 现在考虑如下乘积

.. math:: 
    G^{-1} \frac{\D G}{\D t} =&\ \E^{tA} \E^{-t(A + B)} \left[ (A+B) \E^{t(A + B)} \E^{-tA} - \E^{t(A + B)} \E^{-tA} A \right] \\
    =&\ \E^{tA} (A+B) \E^{-tA} - A
    = \E^{tA} A \E^{-tA} + \E^{tA} B \E^{-tA} - A \\
    =&\ A \E^{tA} \E^{-tA} - A + \E^{tA} B \E^{-tA} = \E^{tA} B \E^{-tA}

根据[引理29-1], 利用 :math:`A, C` 对易, 有 :math:`\E^{tA} B \E^{-tA} = B + t[A, B] = B + tC` (因为 :math:`[A, [A, B]] = [A, C] = 0`, 所以这一项和更高阶项都为零). 于是

.. math:: 
    G^{-1} \frac{\D G}{\D t} = \frac{\D \ln G}{\D t} = B + tC

由于 :math:`B, C` 对易, 我们有

.. math:: 
    G(t) = \E^{Bt}\E^{\frac{1}{2}Ct^2}

令 :math:`t = 1`, 和 :math:`G(t)` 定义式比较, 得

.. math:: 
    \E^{A + B} \E^{-A} =&\ \E^{B}\E^{\frac{1}{2}C} \\
    \E^{A + B} =&\ \E^{B}\E^{\frac{1}{2}C}\E^{A}

利用 :math:`A, C` 对易, 得

.. math:: 
    \E^{A + B} = \E^{B}\E^{A}\E^{\frac{1}{2}C}

交换 :math:`A, B` 得

.. math:: 
    \E^{A + B} =&\ \E^{A}\E^{B}\E^{-\frac{1}{2}C} \\
    \E^{A}\E^{B} =&\ \E^{A + B}\E^{\frac{1}{2}C}

利用 :math:`A + B` 和 :math:`C = [A, B]` 对易得 (若考虑 :math:`A' = A + B`, :math:`B' = C`, 它们对易, 代入上式作为 :math:`A, B`, 则 对易子 :math:`C = 0`, 于是 :math:`\E^{A'}\E^{B'} = \E^{A' + B'}`, 即对对易的 :math:`A, B` 来说, 指数运算乘积就可以写为加法的指数运算)

.. math:: 
    \E^{A}\E^{B} = \E^{A + B}\E^{\frac{1}{2}[A, B]} = \E^{A + B + \frac{1}{2}[A, B]}

按照伽利略变换, 平移变换 :math:`\bm{x} \to \bm{x} + \bm{a}` 和 "推进" :math:`\bm{x} \to \bm{x} + \bm{v}t` 的乘积应该是变换 :math:`\bm{x} \to \bm{x} + \bm{v} t + \bm{a}`, 但这个关系并不能对应于 Hilbert 空间的算符作用, 见如下定理.

[定理30] 对伽利略代数有

.. math:: 
    \exp(\I \bm{K} \cdot \bm{v}) \exp(-\I \bm{P}\cdot \bm{a}) = \exp(\I M \bm{a} \cdot \bm{v} / 2) \exp (\I (\bm{K}\cdot \bm{v} - \bm{P} \cdot \bm{a} ))

[证明] 利用上面的对易关系, 有 :math:`[K_i, P_j] = \I M\delta_{ij}`, 也就是说 :math:`\bm{K}, \bm{P}` 不对易, 但是他们分别与对易子 :math:`M` 对易, 即 :math:`[K_i, M] = [P_i, M] = 0`. 从而利用 [定理29] 令 :math:`A = \I \bm{K} \cdot \bm{v}, B = -\I \bm{P}\cdot \bm{a}` 得

.. math:: 
    &\ \exp(\I \bm{K} \cdot \bm{v}) \exp(-\I \bm{P}\cdot \bm{a}) \\
     =&\ \exp(\I \bm{K} \cdot \bm{v} -\I \bm{P}\cdot \bm{a})
         \exp\big(\frac{1}{2}[\I \bm{K} \cdot \bm{v}, -\I \bm{P}\cdot \bm{a}]\big) \\
     =&\ \exp(\I (\bm{K} \cdot \bm{v} - \bm{P}\cdot \bm{a}))
         \exp\big(\frac{1}{2}[K_i v_i, P_j a_j]\big)

其中 :math:`[K_i v_i, P_j a_j] = [K_i, P_j]v_ia_j = \I M\delta_{ij}v_ia_j = \I M \bm{v}\cdot \bm{a}`. 于是

.. math:: 
    &\ \exp(\I \bm{K} \cdot \bm{v}) \exp(-\I \bm{P}\cdot \bm{a}) \\
    =&\ \exp(\I (\bm{K} \cdot \bm{v} - \bm{P}\cdot \bm{a}))\exp(\I M \bm{a}\cdot \bm{v}/2)
    =&\ \exp(\I M \bm{a}\cdot \bm{v}/2) \exp(\I (\bm{K} \cdot \bm{v} - \bm{P}\cdot \bm{a}))

注意相因子 :math:`\exp(\I M \bm{a}\cdot \bm{v}/2)` 说明这是一个投影表示. 这里还有一个超选择定则阻止不同质量的态的叠加. 就这一点而言, Poincaré 群的数学比伽利略群的简单. 但是, 我们仍然可以形式上扩张伽利略群, 给它的李代数加上一个生成元, 这个生成元与所有其他生成元都对易, 其本征值是物理态的质量. 在这种情况下, 物理态矢提供了一个扩张的对称群的通常表示而不是投影表示. 这种扩张做法所造成的效果, 除了在这种伽利略群的重新解释下我们不再需要质量超选择定则以外, 仅仅是一个标记的区别.

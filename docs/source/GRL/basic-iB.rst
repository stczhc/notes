
.. only:: html

    .. math::
        \renewenvironment{equation*}
        {\begin{equation}\begin{aligned}}
        {\end{aligned}\end{equation}}
        \renewcommand{\gg}{>\!\!>}
        \renewcommand{\ll}{<\!\!<}
        \newcommand{\I}{\mathrm{i}}
        \newcommand{\D}{\mathrm{d}}
        \newcommand{\DD}{\mathrm{D}}
        \newcommand{\DF}{\mathrm{D}_{\mathrm{F}}}
        \renewcommand{\C}{\mathrm{C}}
        \renewcommand{\L}{\mathrm{L}}
        \newcommand{\dt}{\frac{\D}{\D t}}
        \newcommand{\HH}{\mathscr{H}}
        \newcommand{\E}{\mathrm{e}}
        \newcommand{\xtensor}[3]{{#1}#2 {\vphantom{#1}}#3}
        \newcommand{\oiint}{{\rlap{\,\subset\!\supset}\iint}}
        \renewcommand{\bm}{\boldsymbol}

.. note::
    微分几何入门与广义相对论 (中册, 第二版), 梁灿彬, 2009.

附录B 量子力学数学基础简介
==========================

量子力学数学基础的主要内容是泛函分析, 特别是希尔伯特空间及线性算符的理论.

第一节 Hilbert 空间初步
-----------------------

1 Hilbert 空间及其对偶空间
^^^^^^^^^^^^^^^^^^^^^^^^^^

[定义1] 复矢量空间 :math:`V` 称为 **内积空间** (inner product space), 若存在内积映射 :math:`(\cdot, \cdot):V\times V \to \mathbb{C}`, 对任意 :math:`f, g, h \in V` 和任意 :math:`c \in \mathbb{C}` 满足

(a) :math:`(f, g + h) = (f, g) + (f, h)`;
(b) :math:`(f, cg) = c(f, g)`;
(c) :math:`(f, g) = \overline{(g, f)}`, 其中 :math:`\overline{f}` 代表 :math:`f` 的复数共轭;
(d) :math:`(f, f) \geqslant 0`, 且 :math:`(f, f) = 0 \Leftrightarrow f = 0`.

[注1] 定义1的条件 (a), (b) 表明内积映射 :math:`(\cdot, \cdot)` 对第二槽是线性的. 条件 (c) 则表明

.. math:: 
    (f + g, h) = (f, h) + (g, h),\quad (cf, g) = \overline{c}(f, g)

由于具有这种性质, 我们说映射 :math:`(\cdot, \cdot)` 对第一槽是 **反线性** (或 **共轭线性**)的. 条件(d) 表明 :math:`(f, g) = 0\forall g \in V \Rightarrow f = 0`, 因可取 :math:`g = f`.

[例1] :math:`\C[a, b] \equiv \{ [a, b] \subset \mathbb{R} \text{上连续复值函数} f(x) \}` 是无限维复矢量空间. 定义内积

.. math:: 
    (f, g) := \int_a^b \overline{f(x)}g(x)\D x,\quad \forall f, g\in\C[a, b]

则 :math:`\C[a, b]` 是内积空间.

[定义2] 内积空间 :math:`V` 中任意两元素 :math:`f` 和 :math:`g` 的距离定义为

.. math:: 
    d(f, g) := \sqrt{(f -g,f-g)}

易见 :math:`d(f,g) = d(g, f)`. 设 :math:`f\in V, r > 0`, 则以 :math:`f` 为心、以 :math:`r` 为半径的 **开球** 定义为

.. math:: 
    B(f, r) := \{ g \in V | d(g, f) < r \}

用开球可给 :math:`V` 定义拓扑, 可见内积空间 :math:`V` 可自然地被定义为一个拓扑空间, 因此对映射 :math:`\eta : V \to \mathbb{C}` 还可问及是否连续的问题. 在泛函分析中, 每个连续的线性映射 :math:`\eta : V \to \mathbb{C}` 称为 :math:`V` 上的一个 **连续线性泛函** (continuous linear functional). 若 :math:`V` 为有限维, 则 :math:`V` 上的线性泛函必定连续. 因此只当 :math:`V` 为无限维时连续性才是对线性泛函有实质意义的要求.

[定义3] 内积空间 :math:`V` 的 **对偶空间** (又称 **共轭空间**) 定义为

.. math:: 
    V^* := \{ \eta : V\to\mathbb{C} | \eta \text{为连续的线性映射} \}

:math:`V^*` 也可看作复矢量空间, 为此只须用如下的自然方法定义加法和数乘:

**加法** :math:`(\eta_1 + \eta_2)(f) := \eta_1(f) + \eta_2(f), \quad \forall \eta_1, \eta_2 \in V^*, f \in V`;

**数乘** :math:`(c\eta)(f) := c\cdot \eta(f),\quad \forall \eta \in V^*, f \in V, c \in \mathbb{C}`.

由此可知零元是 :math:`V^*` 中这样的元素, 它作用于任意 :math:`f \in V` 都得零.

要保证 Dirac 左右矢记号得心应手, 左右逢源, 左、右矢空间应该 "完全对等". 复空间 :math:`V` 上的内积自然诱导的从 :math:`V` 到 :math:`V^*` 的映射不是线性的而是反线性的. 不过这不构成什么问题. 真正构成问题的是量子力学中用到的内积空间多数是无限维的, 而这导致上述映射未必到上.

[命题B-1-1] 内积映射 :math:`(\cdot, \cdot)` 自然诱导出一个一一的、反线性的映射 :math:`\nu:V\to V^*`.

[证明] 设 :math:`f` 是 :math:`V` 中的任一一个元素, 则 :math:`\eta_f \equiv (f, \cdot)` 是从 :math:`V` 到 :math:`\mathbb{C}` 的映射. 由内积定义可知它是线性的. 还可证明它是连续的, 因此 :math:`\eta_f \in V^*`. 可见 :math:`(\cdot, \cdot)` 自然诱导出一个映射 :math:`\nu : V\to V^*`, 定义为 :math:`\nu(f) := \eta_f`. 映射的一一性和反线性性的证明留作习题. 反线性性是指

.. math:: 
    \nu(f+h) = \nu(f)+\nu(h),\quad \nu(cf) = \overline{c}\nu(f),\quad \forall f, h \in V, c \in \mathbb{C}.

[定义4] 设 :math:`V` 为内积空间, :math:`f \in V`, :math:`\{ f_n \}` 是 :math:`V` 中的一个序列. 我们说 :math:`\{ f_n \}` **收敛于** :math:`f` (记作 :math:`f_n \to f`), 若 :math:`\lim_{n\to\infty} d(f,f_n) = 0`. :math:`f` 称为序列 :math:`\{ f_n \}` 的 **极限**, 记作 :math:`f = \lim_{n \to \infty} f_n`.

[定义5] :math:`V` 中的序列 :math:`\{ f_n \}` 称为 **柯西序列** (Cauchy sequence), 若 :math:`\forall \varepsilon > 0, \exists N > 0` 使当 :math:`n,m \geqslant N` 时有 :math:`d(f_n,f_m) < \varepsilon`.

可以证明, 收敛 (于任一 :math:`f \in V`) 的序列一定是柯西序列, 但反之不然.

[定义6] 内积空间 :math:`V` 称为 **完备的** (complete), 若其中任一柯西序列收敛.

例1的 :math:`\C[a,b]` 是不完备的内积空间, 因为连续函数可能收敛于不连续的函数. 柯西序列 :math:`\{ f_n(x) \}` 在 :math:`\C[a, b]` 内没有极限表明 :math:`\C[a, b]` 不完备. 为使之完备化, 可把 :math:`[a, b]` 上虽不连续却平方可积的复值函数包含进去, 扩大后的空间记作 :math:`\L^2[a, b]`, 即

.. math:: 
    \L^2[a, b] \equiv \left\{ f : [a,b] \to \mathbb{C} \bigg\lvert \int_a^b |f(x)|^2\D x < \infty \right\}

仍用原来的内积定义. 可证 :math:`\L^2[a, b]` 是完备的内积空间.

事实上, 任何不完备的内积空间 :math:`V` 都可以完备化. 可以证明, 对任何不完备内积空间 :math:`V`, 总可找到完备的内积空间 :math:`\tilde{V}`, 使得 :math:`V \subset \tilde{V}` 而且 :math:`\overline{V} = \tilde{V} {\color{red}{- V}}`, 其中 :math:`\overline{V}` 是把 :math:`\tilde{V}` 看作拓扑空间时子集 :math:`V` 的闭包.

[定义7] 完备的内积空间叫 **希尔伯特空间** (Hilbert space), 记作 :math:`\mathscr{H}`.

可证明

.. math:: 
    \L^2(\mathbb{R}^n) \equiv \left\{ f : \mathbb{R}^n \to \mathbb{C} \bigg\lvert \int |f|^2\D^n x <\infty \right\}

也是 Hilbert 空间, 其中 :math:`\L^2(\mathbb{R}^3)` 是量子力学常用的波函数空间.

由于具有完备性, Hilbert 空间有许多很好的性质, 其中对我们特别有用的就是 :math:`\mathscr{H}` 与其对偶空间 :math:`\mathscr{H}^*` "一样大", 即 :math:`\nu[\mathscr{H}] = \mathscr{H}^*`.

[命题B-1-2] 设 :math:`\mathscr{H}` 是 Hilbert 空间, :math:`\mathscr{H}^*` 是其对偶空间, 则 :math:`\forall \eta \in \mathscr{H}^*`, 有唯一的 :math:`f_\eta \in \mathscr{H}` 使 :math:`\eta(g) = (f_\eta ,g)\ \forall g \in \mathscr{H}`.

利用映射 :math:`\nu : \mathscr{H} \to \mathscr{H}^*` 还可把 :math:`\mathscr{H}^*` 定义为 Hilbert 空间: :math:`\forall \eta, \xi \in \mathscr{H}^*`, 由命题B-1-2可知有唯一的 :math:`f_\eta, f_\xi \in \mathscr{H}` 使 :math:`\eta = \nu(f_\eta), \xi = \nu(f_\xi)`. 定义 :math:`\eta` 和 :math:`\xi` 的内积为 :math:`(\eta, \xi) := (f_\xi, f_\eta)`, 则不难验证 (习题) :math:`(\eta, \xi)` 满足内积定义, 故 :math:`\mathscr{H}^*` 是内积空间. 还可证明 :math:`\mathscr{H}^*` 是完备的, 因而也是 Hilbert 空间.

2 Hilbert 空间的正交归一基
^^^^^^^^^^^^^^^^^^^^^^^^^^

[定义8] :math:`\HH` 的有限子集 :math:`\{ f_1,\cdots, f_N \}` 称为 **线性独立** 的, 若

.. math:: 
    \sum_{n-1}^N c_n f_n = 0 \quad \Rightarrow \quad c_n = 0,\quad n = 1, \cdots , N

:math:`\HH` 的任一子集 :math:`\{ f_\alpha \}` 称为 **线性独立的**, 若 :math:`\{ f_\alpha \}` 的任一非空有限子集线性独立.

如果 :math:`\HH` 中存在满足以下两条件的无限序列 :math:`\{ e_n \}`: (1) :math:`\{ e_n \}` 线性独立; (2) :math:`\HH` 的任一元素 :math:`f` 可由 :math:`\{ e_n \}` 线性表出

.. math:: 
    f = \sum_{n = 1}^\infty c_n e_n,\quad c_n \in \mathbb{C}

就说 :math:`\{ e_n \}` 构成 :math:`\HH` 的一个基底.

[定义9] Hilbert 空间 :math:`\HH` 中的序列 :math:`\{ f_n \}` 叫 **正交归一序列**, 若

.. math:: 
    (f_m, f_n) = \delta_{mn}

不难证明 (习题) :math:`\HH` 中的任一正交归一序列都线性独立. 所以, 若 :math:`\HH` 的维数有限, 则当 :math:`\{ f_n \}` 的元素个数等于 :math:`\HH` 的维数时, :math:`\{ f_n \}` 自然构成 :math:`\HH` 的一个基底, 而且是正交归一基. 当 :math:`\HH` 是无限维时, 这里有一个是否已把元素 "选够" 的问题, 所以并非由无限多个元素构成的正交归一序列都是正交归一基. 只有满足下面定义的完备性条件的 :math:`\{ f_n \}` 才能成为正交归一基.

[定义10] :math:`\HH` 中的正交归一序列 :math:`\{ f_n \}` 叫 **完备的** (complete), 若 :math:`\HH` 中除零元外不存在与每个 :math:`f_n` 都正交的元素 (即不能通过给 :math:`\{ f_n \}` 添加新元素而得到 "更大" 的正交归一序列).

:math:`\{ f_n \}` 的完备性保证 :math:`\HH` 的任一元素 :math:`f` 都可用 :math:`\{ f_n \}` 线性表出, 因此 :math:`\HH` 的任一完备的正交归一序列 (如果存在) 都是 :math:`\HH` 的正交归一基. 改用 :math:`\{ e_n \}` 代表完备的正交归一序列, 则任一 :math:`f \in \HH` 都可用 :math:`\{ e_n \}` 线性表出

.. math:: 
    f = \sum_{n - 1}^\infty (e_n, f) e_n
    :label: q-f-exp

3 Hilbert 空间上的线性算符
^^^^^^^^^^^^^^^^^^^^^^^^^^

[定义12] 映射 :math:`A: \HH \to \HH` 称为 :math:`\HH` 上的 **算符** (operator), 数学书一般译作 **算子**. :math:`A` 作用于 :math:`f \in \HH` 的结果记作 :math:`Af`. :math:`A` 称为 **线性算符** (linear operator), 若

.. math:: 
    A(c_1f_1+c_2f_2) = c_1Af_1 + c_2Af_2,\quad \forall f_1,f_2 \in \HH, c_1,c_2 \in \mathbb{C}.

[定义13] 算符 :math:`A: \HH \to \HH` 和 :math:`B : \HH \to \HH` 称为 **相等的**, 若 :math:`Af = Bf\ \forall f \in \HH`.

今后如无特别声明, 行文中的算符均指线性算符. :math:`\HH` 上全体线性算符的集合 :math:`\mathscr{L}(\HH)` 也是个复矢量空间, 只要用如下的自然方式定义加法和数乘:

**加法** :math:`(A_1 + A_2)f := A_1f + A_2 f,\quad \forall A_1,A_2 \in \mathscr{L}(\HH), f \in \HH`;

**数乘** :math:`(cA)f := c(Af),\quad \forall A \in \mathscr{L}(\HH), f \in \HH, c \in \mathbb{C}`;

:math:`\mathscr{L}(\HH)` 的零元 (也叫 **零算符**) 是这样的算符, 它作用于任意 :math:`f \in \HH` 都得 :math:`\HH` 的零元. 算符分为有界算符和无界算符两大类 (定义见下节), 本节只讨论有界算符.

[定义14] :math:`\HH` 上的一个线性算符 :math:`A: \HH \to \HH` 自然诱导出 :math:`\HH^*` 上的一个线性算符 :math:`A^*:\HH^* \to \HH^*`, 定义为

.. math:: 
    (A^*\eta)(f) := \eta(Af),\quad \forall f \in \HH, \eta \in \HH^*

易见 :math:`A^*\eta` (作为从 :math:`\HH` 到 :math:`\mathbb{C}` 的映射) 是线性的, 还可证明它是连续的, 因此 :math:`A^*\eta \in \HH^*`. 从而保证 :math:`A^*` 是从 :math:`\HH^*` 到 :math:`\HH^*` 的映射. 这样定义的 :math:`A^*` 称为算符 :math:`A` 的 **对偶算符** (dual operator). :math:`A^*` 与 :math:`A` 的对应关系是线性的, 即

.. math:: 
    (A_1 + A_2)^* = A_1^* + A_2^*,\quad (cA)^* = cA^*

:math:`\HH` 上的任一线性算符 :math:`A` 的对偶算符 :math:`A^*` 又可自然诱导出 :math:`\HH` 上的一个线性算符 :math:`A^\dagger : \HH\to\HH`. 设 :math:`\nu : \HH \to \HH^*` 是第一小节中的一一、到上、反线性映射, 则 :math:`A^\dagger` 定义为

.. math:: 
    A^\dagger := \nu^{-1}\circ A^* \circ \nu

:math:`\nu` 的反线性性导致 :math:`\nu^{-1}` 的反线性性, 加上 :math:`A^*` 的线性性, 便知 :math:`A^\dagger` 是线性的.

[定义15] 上式定义的 :math:`A^\dagger : \HH\to\HH` 叫 :math:`A` 的 **伴随算符** (adjoint operator).

[命题B-1-3] 设 :math:`A^\dagger` 是 :math:`A` 的伴随算符, 则

.. math:: 
    (f, Ag) = (A^\dagger f, g),\quad \forall f, g \in \HH

反之, 若 :math:`B:\HH\to \HH` 满足

.. math:: 
    (f, Ag) = (Bf, g),\quad \forall f, g \in \HH

则 :math:`B = A^\dagger`.

[证明] 

.. math:: 
    (f, Ag) = \eta_f(Ag) = (A^*\eta_f)(g) = ((\nu\circ A^\dagger \circ \nu^{-1})\eta_f)(g) = ((\nu\circ A^\dagger) f)(g) = \eta_{A^\dagger f}(g) = (A^\dagger f, g)

反之, [命题B-1-3]中两式相减得

.. math:: 
    0 = (Bf, g) - (A^\dagger f, g) = ((B- A^\dagger)f, g),\quad \forall f, g \in \HH

由于 :math:`g` 可任取, 因此 :math:`(B- A^\dagger)f = 0, \quad \forall f \in \HH`. 于是 :math:`B = A^\dagger`.

[命题B-1-4] :math:`A^\dagger` 与 :math:`A` 的关系是反线性的, 即

.. math:: 
    (A_1 + A_2)^\dagger = A_1^\dagger + A_2^\dagger,\quad (cA)^\dagger = \overline{c}A^\dagger,\quad \forall c\in\mathbb{C}

[命题B-1-5] 设 :math:`A` 为 :math:`\HH` 上的有界算符, 则 :math:`A^{\dagger\dagger} = A`.

[定义16] (有界)线性算符 :math:`A: \HH \to \HH` 称为 **自伴的** (self-adjoint) 或者 **厄米的** (hermitean), 若 :math:`A=A^\dagger`, 即

.. math:: 
    (f, Ag) = (Af, g),\quad \forall f, g \in \HH

[注8] "厄米算符就是自伴算符" 的说法只对有界算符成立. 对无界算符, 自伴性强于厄米性.

4 Dirac 的左右矢记号
^^^^^^^^^^^^^^^^^^^^

在 Dirac 的记号中, 每一 :math:`f \in \HH` 记作 :math:`|f\rangle`, 称为 **右矢** (ket); 每一 :math:`\eta \in \HH^*` 记作 :math:`\langle \eta |`, 称为 **左矢** (bra). :math:`\langle \eta |` 作用于 :math:`|f\rangle` 所得复数记作 :math:`\langle \eta | f \rangle`, 即 :math:`\langle \eta | f \rangle \equiv \eta(f)`. 物理学家常把 :math:`\langle \eta | f \rangle` 称为 :math:`\langle \eta |` 与 :math:`|f\rangle` 的内积, 在泛函分析中 :math:`\langle \eta | f \rangle` 则是 :math:`g_\eta` 与 :math:`f` 的内积. :math:`|f\rangle` 在 :math:`\nu : \HH \to \HH^*` 映射下的像 :math:`\eta_f \in \HH^*` 本应记作 :math:`\langle \eta_f |`, 但可简记为 :math:`\langle f|`. 通常也把这种对应关系记作 :math:`\langle f| \leftrightarrow |f \rangle`. 原来的 :math:`(f, g) = \eta_f(g)` 则可表为 :math:`(f, g) = \langle f | g \rangle`.

设 :math:`|\psi \rangle \in \HH, c \in \mathbb{C}`, 则 :math:`c|\psi \rangle \in \HH`, 也可记作 :math:`|c\psi\rangle`, 即 :math:`c|\psi \rangle \equiv |c\psi\rangle`. 由定义1有

.. math:: 
    \langle \psi | \phi \rangle = \overline{\langle \phi | \psi \rangle},\quad
    \langle \psi | c\phi \rangle =c\langle \psi | \phi \rangle ,\quad
    \langle c\psi | \phi \rangle = \overline{c} \langle \psi | \phi \rangle

其中 :math:`\langle c\psi |` 代表 :math:`| c\psi \rangle` 在映射 :math:`\nu` 下的像, 即 :math:`\langle c\psi | \leftrightarrow | c\psi \rangle`. 注意到 :math:`\nu` 的反线性性, 得

.. math:: 
    \langle c\psi | = \nu(c\psi) = \overline{c}\nu (\psi) = \overline{c} \langle \psi |,\quad \Rightarrow  c|\psi\rangle \leftrightarrow \overline{c}  \langle \psi |

算符 :math:`A` 作用于右矢 :math:`|\psi\rangle \in \HH` 所得的右矢记作 :math:`|A\psi\rangle`, 即 :math:`A|\psi\rangle \equiv |A\psi\rangle`. 把 :math:`A^*` 作用于左矢 :math:`\langle \eta | \in \HH^*` 的结果记作 :math:`A^*\langle \eta|`, 则 :math:`A^*` 的定义式可表为

.. math:: 
    (A^* \langle \eta | ) |f\rangle = \langle \eta| (A | f\rangle),\quad \forall |f\rangle \in \HH, \langle \eta | \in \HH^*

由于 :math:`(A^*\eta)(f) = (\eta \circ A)(f) = (\eta A)(f),\forall f \in \HH, \eta \in \HH^*`, 因而 :math:`A^*\eta = \eta A`, 用 Dirac 记号则为 :math:`A^* \langle \eta | = \langle \eta | A`.

[命题B-1-6] :math:`A|\psi\rangle \leftrightarrow \langle \psi | A^\dagger`.

任一算符 :math:`A` 的本征方程 :math:`A|\psi\rangle = c|\psi\rangle` 的左矢形式为

.. math:: 
    \langle\psi|A^\dagger = \langle\psi|\overline{c}

设 :math:`\{ |e_n \rangle \}` 是 :math:`\HH` 的正交归一基, 则可定义 :math:`\HH` 上的线性算符 :math:`\sum_n |e_n\rangle\langle e_n|` 为

.. math:: 
    \left( \sum_n |e_n\rangle\langle e_n| \right) |\psi\rangle := \sum_n |e_n\rangle\langle e_n|\psi\rangle \in \HH,\quad
        \forall |\psi\rangle \in \HH

与 :eq:`q-f-exp` 结合得

.. math:: 
    \sum_n |e_n\rangle\langle e_n| = I

其中 :math:`I` 代表单位算符 (恒等映射), 其定义为 :math:`I|\psi \rangle := |\psi \rangle,\quad \forall |\psi \rangle \in \HH`. 上式便是量子力学中常用的 **完备性关系**.

5 态矢和射线
^^^^^^^^^^^^

量子系统每一时刻的态由 Hilbert 空间 :math:`\HH` 中的一个矢量 (右矢 :math:`|\psi\rangle`) 表示, 因此右矢叫做 **态矢** (state vector). 然而态矢和态的对应关系不是一一的, 即自己与自己叠加不会得出新态. 就是说, 右矢 :math:`|\psi\rangle` 和 :math:`c|\psi\rangle` (:math:`c` 为任意非零复数) 代表同一状态. 于是, 若对 :math:`\HH` 的任意非零元素 :math:`|\psi\rangle` 定义 :math:`\HH` 的子集

.. math:: 
    r_\psi := \{ c|\psi\rangle | c\in \mathbb{C}, c\neq 0 \}

并称 :math:`r_\psi` 为过 :math:`|\psi\rangle` 的一条 **射线** (ray), 则一条射线对应于量子系统的一个态. 以 :math:`\HH` 中所有射线为元素的集合 :math:`\mathscr{R}` 叫 **射线空间** (ray space).

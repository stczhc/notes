
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
        \renewcommand{\bm}{\mathbf}

第一章习题
----------

.. admonition:: 题目 1.5

    举一反例证明命题 ":math:`(\mathbb{R}, \mathscr{T}_u)` 的无限个开子集之交为开" 不真.

.. admonition:: 题解 1.5

    考虑 :math:`\bigcap_{n = 0}^{\infty} \left(1, 2 + \frac{1}{n} \right) = (1, 2]` 不是开子集.

.. admonition:: 题目 1.8

    常值映射 :math:`f:(X,\mathscr{T}) \to (Y, \mathscr{S})` 是否连续? 为什么?

.. admonition:: 题解 1.8

    常值映射的定义为: :math:`f:X\to Y` 称为常值映射, 若 :math:`f(x)=f(x')`.

    令 :math:`q = f(x)`, 任取 :math:`O \in \mathscr{S}`. 若 :math:`q \in O`, 则 :math:`f^{-1}[O] = X`. 而 :math:`X \in \mathscr{T}` 是开子集. 若 :math:`q \notin O`, 则 :math:`f^{-1}[O] = \varnothing`. 而 :math:`\varnothing \in \mathscr{T}` 也是开子集. 所以它是连续的.

.. admonition:: 题目 1.9

    设 :math:`\mathscr{T}` 为集 :math:`X` 上的离散拓扑, :math:`\mathscr{S}` 为集 :math:`Y` 上的凝聚拓扑, 

    (a) 找出从 :math:`(X, \mathscr{T})` 到 :math:`(Y, \mathscr{S})` 的全部连续映射.
    (b) 找出从 :math:`(Y, \mathscr{S})` 到 :math:`(X, \mathscr{T})` 的全部连续映射.

.. admonition:: 题解 1.9

    离散拓扑为选定全部子集为拓扑. 凝聚拓扑为选择 :math:`\{X, \varnothing\}` 为拓扑.

    (a) :math:`\forall x \in X, \forall y \in Y, x \mapsto y`. 即任意映射都连续. 因为要证连续, 首先选择 :math:`Y` 上的开集. 而 :math:`Y` 上的开集只有 :math:`Y` 和 :math:`\varnothing`. 求 :math:`f^{-1}` 回去以后要证结果也是 :math:`X` 上的开集. 但 :math:`X` 上任意集合都是开集. 所以一定连续.
    (b) :math:`\forall y \in Y, y \mapsto x_0`, 即所有 :math:`y` 映射到同一个 :math:`x_0`. 这样检验时, 求 :math:`f^{-1}` 回去以后要么是全集要么是空集, 只有这两种情况能使其连续. 

.. admonition:: 题目 1.10

    试证定义 3a 与 3b 的等价性.

    [定义3a] 设 :math:`(X, \mathscr{T})` 和 :math:`(Y, \mathscr{S})` 为拓扑空间. 映射 :math:`f:X\to Y` 称为 **连续的**, 若 :math:`f^{-1}[O]\in\mathscr{T}\quad \forall O \in \mathscr{S}`.

    [定义3b] 设 :math:`(X, \mathscr{T})` 和 :math:`(Y, \mathscr{S})` 为拓扑空间. 映射 :math:`f:X\to Y` 称为 **在点** :math:`x \in X` **处连续**, 若对所有满足 :math:`f(x) \in G'` 的 :math:`G' \in \mathscr{S}`, 存在 :math:`G\in \mathscr{T}` 使 :math:`x \in G` 且 :math:`f[G]\subset G'`. :math:`f:X\to Y` 称为 **连续**, 若它在所有点 :math:`x \in X` 上连续.

.. admonition:: 题解 1.10

    (A) 首先考虑 :math:`3a \Rightarrow 3b`. 

        任取 :math:`x \in X` 则
            
        (i) 若 :math:`\nexists B \in \mathscr{S}` 使得 :math:`f(x) \in B`, 则 3b 中 :math:`G' = \varnothing`, 后面 :math:`G` 的要求自然不需要检验. 得证.
        (ii) 若 :math:`\exists B \in \mathscr{S}` 使得 :math:`f(x) \in B`, 任取这样的一个 :math:`B` 其实就是 3b 中的 :math:`G' = B`. 由 3a 知, :math:`f^{-1}[B] \in \mathscr{T}` 则 :math:`G = f^{-1}[B] \in \mathscr{T}`. 由定义 :math:`f^{-1}[B] := \{ x \in X | f(x) \in B \}` 所以 :math:`x \in f^{-1}[B]`, 于是 3b 中 :math:`x\in G` 的要求满足. 然后, 由于由定义对于 :math:`f^{-1}[B]` 中每一个 :math:`x` 都有 :math:`f(x) \in B` 所以 :math:`f[G] \subset B`. 得证.
    
    (B) 再考虑 :math:`3b \Rightarrow 3a`.

        任取 :math:`O \in \mathscr{S}` 则

        (i) 若 :math:`\nexists x` 使得 :math:`f(x) \in O`, 则 :math:`f^{-1}[O] = \varnothing \in \mathscr{T}`. 则满足 :math:`3a` 的条件, 得证.
        (ii)  若 :math:`\exists x` 使得 :math:`f(x) \in O`. 由 3b 令 :math:`G' = O`, 得存在 :math:`G\in \mathscr{T}` 使 :math:`x \in G` 且 :math:`f[G]\subset O`. 考虑定义 :math:`f^{-1}[O] := \{ x \in X | f(x) \in O \}` 对 :math:`f^{-1}[O]` 中的每一个元素都使用 3b, 令 :math:`G' = O`, 知对 :math:`f^{-1}[O]` 中每一个元素 :math:`x` 都存在 :math:`G_x \in \mathscr{T}` 使 :math:`x \in G_x` 且 :math:`f[G_x]\subset O`. 于是 :math:`f^{-1}[O] \subset \bigcup_x G_x`. 又 :math:`\bigcup_x G_x \in \mathscr{T}`. 若能证 :math:`f^{-1}[O] = \bigcup_x G_x` 则 :math:`3a` 的条件 :math:`f^{-1}[O] \in \mathscr{T}` 就满足了. 只需证对每个 :math:`G_x` 都有 :math:`G_x \subset f^{-1}[O]` (若它们相互包含, 则只能相等). 由于由 3b :math:`x \in G_x` 并且 :math:`f[G_x] \subset O`, 再结合 :math:`f^{-1}[O] := \{ x \in X | f(x) \in O \}` 定义, 可知 :math:`G_x` 中每个元素都满足 :math:`f^{-1}[O]` 的元素的条件, 因此 :math:`G_x \subset f^{-1}[O]`. 得证.

粒子数表象
==========

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

Heisenberg 测不准原理
---------------------

根据 Heisenberg 测不准原理, 我们可以写出下述正则对易关系

.. math:: [\hat{q}_r, \hat{q}_s] = 0, \quad [\hat{p}_r, \hat{p}_s] = 0, \quad [\hat{q}_r, \hat{p}_s] = i\hbar \delta_{rs}

其中 :math:`r, s = 1, 2, \cdots, N` 表示系统中的不同自由度.

产生和湮灭算符
--------------

考虑下标相同的坐标算符 :math:`\hat{q}_r` 和动量算符 :math:`\hat{p}_r` 的线性组合

.. math::
    \hat{a}_r =&\ \frac{1}{\sqrt{2}} \left( \alpha_r \hat{q}_r + \frac{\I}{\hbar\alpha_r}\hat{p}_r \right), \\
    \hat{a}_r^\dagger =&\ \frac{1}{\sqrt{2}} \left( \alpha_r \hat{q}_r - \frac{\I}{\hbar\alpha_r}\hat{p}_r \right)
    :label: cr-an-def

注意由于坐标和动量都是可观测量, 其本征值是实数. 坐标算符和动量算符都是厄米算符. 在坐标表象, :math:`\hat{q}_r = q_r = \hat{q}_r^\dagger, \hat{p}_r = -\I\hbar\frac{\partial }{\partial q_r} = \hat{p}_r^\dagger`.

坐标算符在坐标表象表示为一个实数, 因此是厄米的. 动量算符的厄米性证明如下. 对任意波函数 :math:`\psi`, 其在坐标表象的表示为 :math:`\psi(q)`

.. math::
    \langle \psi |\hat{p}| \psi \rangle =&\ \int_{-\infty}^{\infty} \psi(q)^* (-\I\hbar) \frac{\partial \psi}{\partial q} \D q 
    = -\int_{-\infty}^{\infty} \psi(q)^* \left(\I\hbar \frac{\partial \psi}{\partial q} \right) \D q 
    \\
    \langle \psi |\hat{p}^\dagger | \psi \rangle =&\ \left(\hat{p} | \psi \rangle \right)^\dagger | \psi \rangle
    = \int_{-\infty}^{\infty} \psi(q) \left(-\I\hbar \frac{\partial \psi}{\partial q} \right)^* \D q
    = \int_{-\infty}^{\infty} \psi(q) \left(\I\hbar \frac{\partial \psi^*}{\partial q} \right) \D q

利用分部积分

.. math:: \int_{-\infty}^{\infty} \psi(q)^* \frac{\partial \psi(q)}{\partial q} \D q =
    \left[ \psi(q)^*\psi(q) \right]_{-\infty}^\infty -
    \int_{-\infty}^{\infty} \psi(q) \frac{\partial \psi(q)^*}{\partial q} \D q

其中 :math:`\psi(q)^*\psi(q)` 按照统计诠释代表概率, 其在无穷远处为零. 因此

.. math:: \int_{-\infty}^{\infty} \psi(q) \left(\I\hbar \frac{\partial \psi^*}{\partial q} \right) \D q
    = -\int_{-\infty}^{\infty} \psi(q)^* \left(\I\hbar \frac{\partial \psi}{\partial q} \right) \D q

即 :math:`\langle \psi |\hat{p}| \psi \rangle = \langle \psi |\hat{p}^\dagger | \psi \rangle`. 由于 :math:`\psi` 是任意的, 可知 :math:`\hat{p} = \hat{p}^\dagger`.

粒子数算符定义为 :math:`\hat{n}_r = \hat{a}_r^\dagger \hat{a}_r`. 这是一组厄米算符, 它们互相对易, 可以用们的共同本征态作为表象的基矢. 从 :eq:`cr-an-def` 可以解出

.. math::
    \hat{q}_r = \frac{1}{\sqrt{2}\alpha_r}(\hat{a}_r + \hat{a}_r^\dagger ) \\
    \hat{q}_r = -\frac{\I\hbar }{\sqrt{2}\alpha_r}(\hat{a}_r - \hat{a}_r^\dagger )

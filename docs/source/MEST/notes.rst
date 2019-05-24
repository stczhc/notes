
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

.. note::
    Helgaker, T., Jorgensen, P., & Olsen, J. (2014). *Molecular electronic-structure theory.* John Wiley & Sons.

组态相互作用笔记
================

MQC Table 4.1 (P236)
--------------------

单激发

.. math::
    \langle \Psi_0 | \mathcal{H} | \Psi_a^r \rangle =&\ 0 \\
    \langle {}^1\Psi_a^r | \mathcal{H} - E_0 | {}^1\Psi_b^s \rangle =&\ (\epsilon_r - \epsilon_a) \delta_{rs}\delta_{ab}
        - (rs|ba) + 2(ra|bs)

双激发

.. math::
    \langle \Psi_0 | \mathcal{H} | {}^1\Psi_{aa}^{rr} \rangle =&\ K_{ra} \\
    \langle \Psi_0 | \mathcal{H} | {}^1\Psi_{aa}^{rs} \rangle =&\ \sqrt{2} (sa|ra) \\
    \langle \Psi_0 | \mathcal{H} | {}^1\Psi_{ab}^{rr} \rangle =&\ \sqrt{2} (rb|ra) \\
    \langle \Psi_0 | \mathcal{H} | {}^A\Psi_{ab}^{rs} \rangle =&\ \sqrt{3} \big[ (ra|sb) - (rb|sa) \big] \\
    \langle \Psi_0 | \mathcal{H} | {}^B\Psi_{ab}^{rs} \rangle =&\ (ra|sb) + (rb|sa)

双激发之间的矩阵元

.. math::
    \langle {}^1\Psi_{aa}^{rr} | \mathcal{H} - E_0 | {}^1\Psi_{aa}^{rr} \rangle
        =&\ 2 (\epsilon_r - \epsilon_a) + J_{aa} + J_{rr} - 4J_{ra} + 2K_{ra} \\
    \langle {}^1\Psi_{aa}^{rs} | \mathcal{H} - E_0 | {}^1\Psi_{aa}^{rs} \rangle
        =&\ \epsilon_r + \epsilon_s - 2\epsilon_a + J_{aa} + J_{rs} + K_{rs}
            - 2J_{sa} - 2J_{ra} + K_{sa} + K_{ra} \\
    \langle {}^1\Psi_{ab}^{rr} | \mathcal{H} - E_0 | {}^1\Psi_{ab}^{rr} \rangle
        =&\ 2\epsilon_r - \epsilon_a - \epsilon_b + J_{rr} + J_{ab} + K_{ab}
            - 2J_{rb} - 2J_{ra} + K_{rb} + K_{ra} \\
    \langle {}^A\Psi_{ab}^{rs} | \mathcal{H} - E_0 | {}^A\Psi_{ab}^{rs} \rangle
        =&\ \epsilon_r + \epsilon_s - \epsilon_a - \epsilon_b + J_{ab} + J_{rs} - K_{ab}
            -K_{rs} - J_{sb} - J_{sa} - J_{rb} - J_{ra}
            +\frac{3}{2} \big( K_{sb} + K_{sa} + K_{rb} + K_{ra} \big) \\
    \langle {}^B\Psi_{ab}^{rs} | \mathcal{H} - E_0 | {}^B\Psi_{ab}^{rs} \rangle
        =&\ \epsilon_r + \epsilon_s - \epsilon_a - \epsilon_b + J_{ab} + J_{rs} - K_{ab}
            -K_{rs} - J_{sb} - J_{sa} - J_{rb} - J_{ra}
            +\frac{1}{2} \big( K_{sb} + K_{sa} + K_{rb} + K_{ra} \big) \\
    \langle {}^A\Psi_{ab}^{rs} | \mathcal{H} | {}^B\Psi_{ab}^{rs} \rangle
        =&\ \sqrt{\frac{3}{4}} \big( K_{sb} - K_{sa} - K_{rb} + K_{ra} \big)

MQC Table 2.7 (P104)
--------------------

单激发单重态定义 Eq. (2.263)

.. math::
    |{}^1\Psi_{a}^{r} \rangle = \frac{1}{\sqrt{2}} \big(
        | \Psi_{\overline{a}}^{\overline{r}} \rangle + | \Psi_{a}^{r} \rangle
        \big)

自旋适配的双激发单重态定义

.. math::
    | {}^1\Psi_{aa}^{rr} \rangle =&\ | \Psi_{a\overline{a}}^{r\overline{r}} \rangle \\
    | {}^1\Psi_{aa}^{rs} \rangle =&\ \frac{1}{\sqrt{2}} \big( | \Psi_{a\overline{a}}^{r\overline{s}} \rangle
        + | \Psi_{a\overline{a}}^{s\overline{r}} \rangle \big) \\
    | {}^1\Psi_{ab}^{rr} \rangle =&\ \frac{1}{\sqrt{2}} \big( | \Psi_{\overline{a}b}^{\overline{r}r} \rangle
        + | \Psi_{a\overline{b}}^{r\overline{r}} \rangle \big) \\
    | {}^A\Psi_{ab}^{rs} \rangle =&\ \frac{1}{\sqrt{12}} \big(
        2| \Psi_{ab}^{rs} \rangle
        + 2| \Psi_{\overline{ab}}^{\overline{rs}} \rangle
        - | \Psi_{\overline{a}b}^{\overline{s}r} \rangle
        + | \Psi_{\overline{a}b}^{\overline{r}s} \rangle
        + | \Psi_{a\overline{b}}^{r\overline{s}} \rangle
        - | \Psi_{a\overline{b}}^{s\overline{r}} \rangle \big) \\
    | {}^B\Psi_{ab}^{rs} \rangle =&\ \frac{1}{2} \big(
        + | \Psi_{\overline{a}b}^{\overline{s}r} \rangle
        + | \Psi_{\overline{a}b}^{\overline{r}s} \rangle
        + | \Psi_{a\overline{b}}^{r\overline{s}} \rangle
        + | \Psi_{a\overline{b}}^{s\overline{r}} \rangle \big)

MQC Eq. (2.163) P82
-------------------

空间轨道积分定义

.. math::
    [\psi_1\psi_1|\overline{\psi}_1\overline{\psi}_1] =&\
        \int \D \bm{r}_1 \D \bm{r}_2 \psi_1^*(\bm{r}_1) \psi_1(\bm{r}_1) r_{12}^{-1}
        \psi_1^*(\bm{r}_2)\psi_1(\bm{r}_2) \\\equiv&\ (\psi_1\psi_1|\psi_1\psi_1)

MQC Eq. (2.182) P85
-------------------

库仑和交换积分定义


.. math::
    J_{ij} =&\ (ii|jj) = \langle ij | ij \rangle \\
    K_{ij} =&\ (ij|ji) = \langle ij | ji \rangle

总能量 (闭壳层)

.. math::
    E_0 = 2 \sum_a h_{aa} + \sum_{ab} 2J_{ab} - K_{ab}

MQC Table 2.5/2.6 P72
---------------------

自旋轨道之间的矩阵元

单电子算符 (:math:`N` 是总电子数)

.. math::
    \mathcal{O}_1 =&\ \sum_{i=1}^N h(i) \\
    \langle \Psi_0 | \mathcal{O}_1 | \Psi_0 \rangle =&\ \sum_{a}^N [a|h|a] = \sum_{a}^N \langle a|h|a \rangle \\
    \langle \Psi_0 | \mathcal{O}_1 | \Psi_a^r \rangle =&\ [a|h|r] = \langle a|h|a \rangle \\
    \langle \Psi_0 | \mathcal{O}_1 | \Psi_{ab}^{rs} \rangle =&\ 0

双电子算符

.. math::
    \mathcal{O}_2 =&\ \sum_{i=1}^N \sum_{j>i}^N r_{ij}^{-1} \\
    \langle \Psi_0 | \mathcal{O}_2 | \Psi_0 \rangle =&\ \frac{1}{2}\sum_{a}^N\sum_{b}^N [aa|bb] - [ab|ba]
        =\frac{1}{2} \sum{a}^N \sum_{b}^N \langle ab || ab \rangle \\
    \langle \Psi_0 | \mathcal{O}_2 | \Psi_{a}^r \rangle =&\ \sum_{b}^N [ar|bb] - [ab|br]
        =\sum_{b}^N \langle ab || rb \rangle \\
    \langle \Psi_0 | \mathcal{O}_2 | \Psi_{ab}^{rs} \rangle =&\ [ar|bs] - [as|br] = \langle ab || rs \rangle

MQC Table 2.3/2.4 P70
---------------------

行列式之间的矩阵元

.. math::
    \langle K(mn) | \mathcal{O}_1 | K(mn) \rangle =&\ \sum_{m}^N [m|h|m] \\
    \langle K(mn) | \mathcal{O}_1 | L(pn) \rangle =&\ [m|h|p] \\
    \langle K(mn) | \mathcal{O}_1 | L(pq) \rangle =&\ 0

.. math::
    \langle K(mn) | \mathcal{O}_2 | K(mn) \rangle =&\ \frac{1}{2} \sum_{m}^N \sum_{n}^N [mm|nn] - [mn|nm] \\
    \langle K(mn) | \mathcal{O}_2 | L(pn) \rangle =&\ \sum_{n}^N [mp|nn] - [mn|np] \\
    \langle K(mn) | \mathcal{O}_2 | L(pq) \rangle =&\ [mp|nq] - [mq|np]

MQC Eq. (2.80) P64
------------------

哈密顿量表达式

.. math::
    \mathcal{H} = \mathcal{O}_1 + \mathcal{O}_2

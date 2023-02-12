
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

N 电子价态微扰论: 无自旋形式和强收缩和部分收缩的高效实现
=========================================================

摘要
----

N 电子价态微扰论按照无自旋形式重新构造, 重点考虑了 "强收缩" 和 "部分收缩" 的变体.
新的形式基于引入激发算符的未微扰态均值, 它和拓展 Koopmans 定理和运动方程技术的类似部分有相似之处.
这样的辅助量, 允许对能量的二阶微扰贡献非常有效地求值, 可以在一开始就进行计算,
只要未微扰的四粒子活性轨道空间的无自旋密度矩阵是可获得的.
一个值得注意的关于同样类型的强和部分收缩版本的二阶能量贡献的不等式, 被证明成立.
讨论了关于 Cr2 分子势能曲线的成功计算的例子.

简介
----

多参考微扰论 (MRPT) 是一个描述分子系统地相关能的重要和有效工具,
其中波函数并不由单一行列式主导, 就像化学键的均裂断裂,
电子激发态, 和一般地, 有极大化学意义的势能面的许多区域一样.
MRPT 方法分为两个主要的类别, 第一个基于通过微扰论构造一个有效哈密顿量在一个模型空间,
然后它被对角化, 而第二个类别依赖于对一个零阶变分波函数的微扰,
这个波函数是通过在一个合适的行列式空间对角化哈密顿量得到.
在这后一个类别, 最成功的的 MRPT 技术是 CASPT2, 它使用一个 CAS (完全活性空间)
零阶波函数, 并且利用通过应用激发算符得到的收缩函数, 将它微扰到一阶.
其使用的是 Moller-Plesset 类型的单电子零阶哈密顿量.
CASPT2 技术偶尔会出现 "入侵态" 问题, 导致微扰级数的发散,
由于对于所研究的态的零阶哈密顿量 :math:`H_0` 的本征值和在外部空间的波函数的一些本征值的几乎重合.
这个情形可能由 CAS 空间的处理和外部和零阶 CAS 波函数相互作用的行列式空间的不平衡导致,
由于在前者, 双电子相互作用对于活性电子被合理地考虑, 而对后者这样的相互作用不能被考虑,
由于 :math:`H_0` 的单电子本质.
在 :math:`H_0` 中包括双电子相互作用的重要性被 Dyall 提出,
最近在 Ref. 6 中被重提, 其中构造了一个新方法, 称为 n 电子价态微扰论 (NEV-PT),
具有三种变体, 根据三种可能的收缩方法. Heully 等 和 Rosta 和 Surjan
也强调了双电子零阶哈密顿量的重要性.

在这篇文章, 二阶 NEVPT 的形式将被重新考虑, 以一种无自旋的方式,
并且 NEV-PT2 的较简单方法 ("强收缩" 和 "部分收缩" 变体) 的所有高效实现的相关细节
将被提供, 利用了拓展 Koopmans 定理和 "运动方程" 形式启发的技术, 正如 Ref. 12 预期的那样.

文章的剩余部分将给出一个 NEV-PT 技术的简短摘要和强收缩和部分收缩变体的细节展示.
包括严格的铬分子的测试样例的应用将会被展示.
对这个测试样例二阶修正按照不同激发类型的分解导致一些在键能的动态相关的角色的清晰化.

NEV-PT 技术的简短说明
---------------------

在 n 电子价态微扰论 (NEV-PT), 零阶波函数是 CAS-CI 类型的,
并且通过合适的双电子零阶哈密顿量得到.
感兴趣的态 :math:`\Psi_m` 在零阶近似为 CAS-CI 波函数 :math:`\Psi_m^{(0)}` 来近似
(通常通过 CAS-SCF 过程得到) 通过求解变分本征值问题

.. math::
    P_{CAS} H P_{CAS} \Psi_m^{(0)} = E_m^{(0)} \Psi_m^{(0)},

其中 :math:`P_{CAS} = \sum_{M\in S} |M\rangle \langle M|`
定义了到行列式 CAS 空间 :math:`S` 的投影算符.
行列式 :math:`|M\rangle` 基于自旋轨道 :math:`\varphi_i(\bm{r}) \eta_m(s)` 构建,
其中 :math:`\varphi_i` 构成空间轨道的正交归一基组, 通常通过求解 CAS-SCF 方程得到,
而 :math:`\eta_m` 表示自旋因子 (:math:`\alpha` 或 :math:`\beta`).
空间轨道进一步被分解为芯层, 活性和虚轨道根据它们在 CAS 行列式中的占据数.
其中芯层轨道 (用指标 :math:`i, j, \cdots` 表示) 总是具有占据数 2,
活性轨道 (用指标 :math:`a, b, \cdots` 表示) 具有所有可能的占据数 (0, 1, 2),
而虚轨道 (用指标 :math:`r, s, \cdots` 表示) 具有占据数 0.
和 CAS 空间的 :math:`\Psi_m^{(0)}` 不同的零阶波函数称为 "微扰函数"
属于由具有良好定义的非活性轨道 (芯层 + 虚) 的占据模式表征的 CAS-CI 空间.
一个一般的微扰函数表示为 :math:`\Psi_{l,\mu}^{(k)}` 而它所属的 CAS-CI 空间表示为 :math:`S_l^{(k)}`,
其中 :math:`k` 是晋升到 (或移除于) 活性空间的电子数 (:math:`-2 \leq k \leq 2`),
:math:`l` 表示固定的非活性轨道的占据数模式. :math:`\mu` 枚举 :math:`S_l^{(k)}` 中的各种微扰函数.
按照从 :math:`S_l^{(k)}` 子空间中选择围绕函数的数量, 可以定义 NEV-PT2 的不同变体:
如果 :math:`S_l^{(k)}` 的完整维度被利用, 我们得到 "完全非收缩" 的情形,
如果仅仅选择一个微扰函数, 我们称为 "强收缩" 情形; 在两个极限之间 Ref. 6 讨论了 "部分收缩" 情形.
所有三个变体都被展示为具有严格可分性 (两个无相互作用系统的能量等于两个孤立系统地能量之和)
和无入侵态 (微扰函数的能量和零阶波函数的能量很好地分开) 的期望性质.
除此之外, 从微扰函数的零阶能量的定义出发, 根据是否采用真正的电子哈密顿量或其简化形式, 我们还有其他的可能性.
在引用 6 采用 Dyall 的哈密顿量被显示为尤其方便.
在目前的文章, 我们将展示 NEV-PT 的强和部分收缩版本的细节, 利用 Dyall 哈密顿量以无自旋形式.
在引用 12 中发表了一些应用的初步结果.

强收缩 NEV-PT
-------------

包含微扰波函数的子空间 :math:`S_l^{(k)}` 根据进入活性轨道空间的电子数量 :math:`k` 和非活性轨道的占据,
可以分为八种不同的类型
对 :math:`k = 0` 有两种可能: 根据是否有两个或一个核心电子转移到虚轨道空间.
第一类的典型代表将被表示为 :math:`S_{ij,rs}^{(0)}` 意味着两个电子从芯层轨道 :math:`\varphi_i`
和 :math:`\varphi_j` 被移动到了虚轨道 :math:`\varphi_r` 和 :math:`\varphi_s`.
对 :math:`k = 0` 第二类将包含所有子空间 :math:`S_{i,r}^{(0)}`,
其中一个电子从 :math:`\varphi_i` 移动到了 :math:`\varphi_r`.
类似地, 对于 :math:`k = \pm 1` 两种类别是可能的, 分别包含子空间 :math:`S_{ij,r}^{(1)} (S_{i,rs}^{(1)})` 和 :math:`S_i^{(1)} (S_r^{(-1)})`.
对 :math:`k = \pm 2` 只有一种类别是可能的, 包含子空间 :math:`S_{ij}^{(2)} (S_{rs}^{(-2)})`.
在一个给定的子空间 :math:`S_l^{(k)}` [注意这里每个特定的 :math:`k` 和 :math:`l` 代表一个子空间.]
强收缩 NEV-PT (SC-NEV-PT) 只考虑一个微扰波函数, 根据下面的定义:

.. math::
    \Psi_l^{(k)} = P_{S_l^{(k)}} H \Psi_m^{(0)}

其中 :math:`P_{S_l^{(k)}}` 是投影到子空间 :math:`S_l^{(k)}` 的投影算符.
事实上, 上式可以等价地从仅仅将电子哈密顿量的一部分作用到波函数 :math:`\Psi_m^{(0)}` 来得到

.. math::
    P_{S_l^{(k)}} H \Psi_m^{(0)} = V_l^{(k)} \Psi_m^{(0)}

其中我们引入了八种算符

.. math::
    &[CCVV]\quad& V_{ij,rs}^{(0)} =&\ \gamma_{ij} \gamma_{rs} \Big(
    \langle rs|ij \rangle E_{ri}E_{sj} + \langle rs|ji \rangle E_{si}E_{rj}
    \Big), \quad i \leq j , r\leq s \\
    &[CAVV]\quad& V_{rs,i}^{(-1)} =&\ \gamma_{rs} \sum_{a} \Big(
    \langle rs|ia \rangle E_{ri}E_{sa} + \langle sr|ia \rangle E_{si}E_{ra}
    \Big), \quad r\leq s \\
    &[CCAV]\quad& V_{ij,r}^{(1)} =&\ \gamma_{ij} \sum_{a} \Big(
    \langle ra|ji \rangle E_{rj}E_{ai} + \langle ra|ij \rangle E_{ri}E_{aj}
    \Big), \quad i \leq j \\
    &[AAVV]\quad& V_{rs}^{(-2)} =&\ \gamma_{rs} \sum_{ab} \langle rs|ba \rangle E_{rb}E_{sa} , \quad r \leq s \\
    &[CCAA]\quad& V_{ij}^{(2)} =&\ \gamma_{ij} \sum_{ab} \langle ba|ij \rangle E_{bi}E_{aj} ,\quad i \leq j \\
    &[CAAV]\quad& V_{i,r}^{(0)} =&\ \sum_{ab} \Big(
    \langle ra|ib \rangle E_{ri}E_{ab} + \langle ra|bi \rangle E_{ai}E_{rb}
    \Big) + h_{ri}^{eff} E_{ri} \\
    &[AAAV]\quad& V_{r}^{(-1)} =&\ \sum_{abc} \langle ra|bc \rangle E_{rb}E_{ac} + \sum_a h_{ra}^{eff\prime} E_{rb} \\
    &[CAAA]\quad& V_{i}^{(1)} =&\ \sum_{abc} \langle ba|ic \rangle E_{bi}E_{ac} + \sum_a h_{ai}^{eff\prime} E_{ai}

其中

.. math::
    \gamma_{mn} = 1 - \frac{1}{2} \delta_{mn}.

在上面的公式我们采用了自旋取迹的激发算符

.. math::
    E_{mn} = a_{m\alpha}^\dagger a_{n\alpha} + a_{m\beta}^\dagger a_{n\beta}

[注意]

.. math::
    E_{mn}^\dagger =&\ a_{n\alpha}^\dagger a_{m\alpha} + a_{n\beta}^\dagger a_{m\beta} = E_{nm} \\
    R^{(2)\dagger}_{mn,pq} =&\ R^{(2)}_{pq,mn}

它允许电子哈密顿量写为

.. math::
    H =&\ \sum_{mn} h_{mn} E_{mn} + \frac{1}{2} \sum_{mnm'n'} \langle mn|m'n'\rangle
    \times (E_{mm'}E_{nn'} - \delta_{nm'} E_{mn'}) \\
    =&\ \sum_{mn} h_{mn} E_{mn} + \frac{1}{2} \sum_{mnm'n'} \langle mn|m'n'\rangle
    E^{(2)}_{mn,m'n'} \\

:math:`E_{mn}` 算符和 :math:`S^2` 和 :math:`S_z` 对易, 因此 :math:`V_l^{(k)}` 在 :math:`\Psi_m^{(0)}` (假定是 :math:`S^2` 和 :math:`S_z` 的本征函数) 的作用给出纯自旋本征函数.

在下面我们大量使用了对易关系

.. math::
    [E_{mn}, E_{m'n'}] = E_{mn'} \delta_{nm'} - E_{m'n} \delta_{mn'}

并且, 在前面的定义中, 我们采用了辅助矩阵

.. math::
    h_{mn}^{eff} =&\ h_{mn} + \sum_{j}^{\mathrm{core}} \Big(
        2\langle mj|nj\rangle - \langle mj|jn\rangle
        \Big), \\
    h_{mn}^{eff\prime} =&\ h_{mn}^{eff} - \sum_{b} \langle mb|bn\rangle

其中在所有上述方程 :math:`m` 和 :math:`n` 是一般轨道指标.

微扰函数 :math:`\Psi_l^{(k)}` 是正交的, 但是没有归一. 范数平方

.. math::
    N_l^{(k)} = \langle \Psi_l^{(k)} | \Psi_l^{(k)} \rangle
        = \langle \Psi_m^{(0)} | V_l^{(k)\dagger} V_l^{(k)} |\Psi_m^{(0)} \rangle

在强收缩 NEV-PT 中具有重要意义. 我们这里给出八个相关情形的表达式

.. math::
    N_{ij,rs}^{(0)} =&\ 4 \gamma_{ij} \gamma_{rs}
    \Big( \langle rs|ij \rangle ^2 + \langle rs|ji \rangle ^2
        - \langle rs|ij \rangle \langle rs|ji \rangle
    \Big), \\
    N_{rs,i}^{(-1)} =&\ \gamma_{rs} \sum_{aa'} \Big[
        2 \Big( \langle rs|ia' \rangle \langle rs|ia \rangle +
            \langle sr|ia' \rangle \langle sr|ia \rangle \Big)
        - \langle rs|ia' \rangle \langle sr|ia \rangle
        - \langle sr|ia' \rangle \langle rs|ia \rangle
        \Big] R_{a'a}^{(1)} \\
    N_{ij,r}^{(1)} =&\ \gamma_{ij} \sum_{aa'} \Big[
        2 \Big( \langle ra'|ji \rangle \langle ra|ji \rangle +
            \langle ra'|ij \rangle \langle ra|ij \rangle \Big)
        - \langle ra'|ji \rangle \langle ra|ij \rangle
        - \langle ra'|ij \rangle \langle ra|ij \rangle
        \Big] \tilde{R}_{a'a}^{(1)} \\
    N_{rs}^{(-2)} =&\ \gamma_{rs} \sum_{a'b'ab}
        \langle rs|b'a' \rangle \langle rs|ba \rangle
            R_{a'b',ab}^{(2)} \\
    N_{ij}^{(2)} =&\ \gamma_{ij} \sum_{a'b'ab}
        \langle b'a'|ij \rangle \langle ba|ij \rangle
            \tilde{R}_{a'b',ab}^{(2)} \\
    N_{i,r}^{(0)} =&\ \sum_{a'b'ab} \Big[ \Big(
        2 \langle ra'|ib' \rangle \rangle ra|ib \rangle
        -\langle ra'|ib' \rangle \rangle ra|bi \rangle
        -\langle ra'|b'i \rangle \rangle ra|ib \rangle \Big)
        \langle \Psi_m^{(0)} | E_{b'a'} E_{ab} | \Psi_m^{(0)} \rangle \\
        &\ + \langle ra'|b'i \rangle \rangle ra|bi \rangle \Big(
        \langle \Psi_m^{(0)} | E_{b'b} \tilde{E}_{a'a} | \Psi_m^{(0)} \rangle
        + \delta_{ab} R_{b'a'}^{(1)} \Big) \Big] \\
        &\ +2\sum_{a'b'} \Big( 2 \langle ra'|ib' \rangle
        - \langle ra' | b'i \rangle \Big) h_{ri}^{eff} R_{b'a'}^{(1)}
        + 2 (h_{ri}^{eff})^2 \\
    N_{r}^{(-1)} =&\ \sum_{a'b'c'abc} \langle ra'|b'c'\rangle \langle ra|bc\rangle
        \langle \Psi_m^{(0)} | E_{c'a'} E_{b'b} E_{ac} | \Psi_m^{(0)} \rangle \\
        &\ + 2 \sum_{a'b'c'a} \langle ra'|b'c'\rangle h_{ra}^{eff\prime}
        \langle \Psi_m^{(0)} | E_{c'a'} E_{b'a} | \Psi_m^{(0)} \rangle
        + \sum_{a'a} h_{ra'}^{eff\prime} h_{ra}^{eff\prime} R_{a'a}^{(1)} \\
    N_i^{(1)} =&\ \sum_{a'b'c'abc} \langle b'a'|ic'\rangle \langle ba|ic\rangle
        \langle \Psi_m^{(0)} | E_{c'a'} \tilde{E}_{b'b} E_{ac} | \Psi_m^{(0)} \rangle \\
        &\ +2\sum_{a'b'c'a} \langle b'a'|ic' \rangle h_{ai}^{eff}
        \langle \Psi_m^{(0)} | E_{c'a'} \tilde{E}_{b'a} | \Psi_m^{(0)} \rangle
        + \sum_{a'a} h_{a'i}^{eff} h_{ai}^{eff} \tilde{R}_{a'a}^{(1)}

在上面的公式, 以及后面的, 我们假定所涉及的量都是实数.
上述范数平方 :math:`N_l^{(k)}` 公式要求, 除了双电子积分以外, 仅仅要知道粒子阶数不超过3 的无自旋密度矩阵,
在零阶 :math:`\Psi_m^{(0)}` 态求值, 并且指标限制为活性轨道.
为了使公式更加易读我们采用了空穴密度矩阵 :math:`\tilde{R}^{(p)}` 以及激发算符 :math:`E_{mn}` 乘积的期望值;
所有这些量, 仅仅是更通常的无自旋密度矩阵的简单函数. 因此, 例如

.. math::
    \tilde{R}_{ab}^{(1)} =&\ - R_{ba}^{(1)} + 2\delta_{ab} \\
    \tilde{R}_{a'b',ab}^{(2)} =&\ R_{ab,a'b'}^{(2)} + \delta_{a'b} R_{ab'}^{(1)}
        + \delta_{b'a}R_{ba'}^{(1)} - 2\delta_{a'a}R_{bb'}^{(1)}
        -2\delta_{b'b}R_{aa'}^{(1)} - 2\delta_{a'b}\delta_{b'a} + 4\delta_{aa'}\delta_{bb'} \\
    \langle \Psi_m^{(0)} | E_{ab} E_{cd} | \Psi_m^{(0)} \rangle
    =&\ R_{ac,bd}^{(2)} + \delta_{bc} R_{a,d}^{(1)}

高阶量以此类推. 除此之外, 为了更好可读性, 我们引入了算符

.. math::
    \tilde{E}_{ab} = a_{a\alpha} a_{b\alpha}^\dagger + a_{a\beta}a_{b\beta}^\dagger
    = 2\delta_{ab} - E_{ba}


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
    https://bitbucket.org/sandeep-sharma/icnevpt2/src/master/

NEVPT2
======

基本理论
--------

* Dyall Hamiltonain

- 首先是 block2 uncontracted 采用的定义

- 参考 J. Chem. Phys. 147, 234109 (2017) https://doi.org/10.1063/1.5017942

- 注意这里的记号是 ij = core, ab = virtual, 以及 rs = active

.. math::
    H^{Dyall} =&\ C + \sum_{ij} F_{ij} E_{ij} + \sum_{ab} F_{ab} E_{ab}
    + \sum_{tu} \left[ h_{tu}^{eff} - \frac{1}{2} \sum_v (tv|vu) \right] E_{tu}
    + \frac{1}{2} \sum_{tuvw} (tu|vw) E_{tu} E_{vw} \\
    =&\ C + \sum_{ij} F_{ij} E_{ij} + \sum_{ab} F_{ab} E_{ab} + \sum_{tu} h_{tu}^{eff} + \frac{1}{2} \sum_{tuvw} (tu|vw) E_{tvuw}

这里 :math:`(tu|vw)` 是 chemist 记号.
注意这里使用了 Wick 定理

.. math::
    E_{tu} E_{vw} = \delta_{uv} E_{tw} + E_{tv;uw}
  
其中 Fock 矩阵定义为

.. math::
    F_{pq} =&\ h_{pq} + \sum_{rs} D_{rs} \left[ (pq|rs) - \frac{1}{2} (pr|qs) \right] \\
    =&\ h^{eff}_{pq} + \sum_{tu} D_{tu} \left[ (pq|tu) - \frac{1}{2} (pt|qu) \right]
  
这里由于密度矩阵 :math:`D_{rs}` 的 core 部分一定是 2 乘以对角矩阵, virtual 部分一定是零,
因此可以把 active 部分不确定的 :math:`D_{tu}` 独立出来.

其他定义为

.. math::
    h_{tu}^{eff} =&\ h_{tu} + \sum_{i} [ 2(tu|ii) - (ti|iu) ] \\
    C =&\ E_{closed} - 2 \sum_{i} F_{ii} \\
    E_{closed} =&\ 2 \sum_{i} h_{ii} + \sum_{ij} \left[ 2(ii|jj) - (ij|ij) \right]

微扰论中, 二阶能量修正是 零阶和一阶波函数之间的期望值.

.. math::
    E^{(1)} =&\ \langle 0^{(0)} | \hat{U} | 0^{(0)} \rangle \\
    E^{(2)} =&\ \langle 0^{(0)} | \hat{U} | 0^{(1)} \rangle \\
    |0^{(1)}\rangle =&\ -\hat{P}(\hat{H}_0-E^{(0)})^{-1} \hat{P}
        \hat{U}|0^{(0)}\rangle

实际在做 MP2 的时候, 首先将 :math:`|0^{(1)}\rangle` 展开

.. math::
    |0^{(1)}\rangle =&\ \sum_{\mu} \langle \mu |0^{(1)}\rangle |\mu\rangle \\
    E^{(2)} =&\ \langle 0^{(0)} | \hat{U} | 0^{(1)} \rangle = \sum_{\mu} \langle \mu |0^{(1)}\rangle \langle 0^{(0)} | \hat{U} |\mu\rangle
  
然后是 :math:`|0^{(1)}\rangle` 的方程

.. math::
    (\hat{H}_0-E^{(0)}) |0^{(1)}\rangle =&\ \hat{U}|0^{(0)}\rangle \\
    \langle \mu | \hat{H}_0-E^{(0)} |0^{(1)}\rangle =&\ \langle \mu | \hat{U}|0^{(0)}\rangle \\
    \sum_{\nu} \langle \mu | \hat{H}_0-E^{(0)} |\nu\rangle \langle \nu |0^{(1)}\rangle =&\ \langle \mu | \hat{U}|0^{(0)}\rangle \\

然后 CG 返回的未知数向量和右端向量的乘积, 正好就是 :math:`E^{(2)}`. 现在对 MP2 这个式子可以直接求解, 就是

.. math::
    \langle \mu |0^{(1)}\rangle = \frac{\langle \mu | \hat{U}|0^{(0)}\rangle}{ E^{\mu} -E^{(0)}}

因此

.. math::
    E^{(2)} = \sum_{\mu} \frac{\langle \mu | \hat{U}|0^{(0)}\rangle^2}{ E^{\mu} -E^{(0)}}
  
利用 chemist notation

.. math::
    \langle \mu | \hat{U}|0^{(0)}\rangle = [(ai|bj) - (aj|bi)]
  
得

.. math::
    E^{(2)} = -\sum_{A>B,I>J} \frac{|(ai|bj) - (aj|bi)|^2}{ E_A + E_B - E_I - E_J }

但这是 UHF 表达式.

按照 ACM paper notation,
如果采用 Hv 分母部分是 mu 态能量和参考态能量之差. 这部分是 Hi 完全对角的, 作用在 目标态上, 得到目标态加上一个能量
然后还要和才参考态比. 因此激发到的态是相对于参考态增加的能量, 是正的, 激发来自的态是负的.
因此只要最终对 rhs 项按照轨道能量做修正就行了.

对 ijrs 三重态 单重态应该各自可以平方, 就像 p9143 右栏第二式一样. 分母都一样.
但不匹配可能是忘记除以了 norm

关键是, 分母如果用轨道能量, 那就要注意 norm, 分母如果是直接求来的, 那么就应该没事.

第 (20) 式第二行, 直接就是

.. math::
    \Psi_m^{(1)} = \sum_{kl} \Psi_l^{(k)} \frac{ \langle \Psi_l^{(k)} | V_l^{(k)} | \Psi_m^{(0)} \rangle }
      { N_l^{(k)} ( E_m^{(0)} - E_l^{(k)} ) }
  
按照 Excited State 书, ijab 的情况是

.. math::
    |ijab\rangle^\pm = \big[ E_{bj} E_{ai} \pm E_{aj} E_{bi} \big] |0\rangle \\
    {}^\pm \langle ijab | H_0 - E_0 | klcd \rangle^\pm
      = 4 [2\mp 1] \delta_{ik} \delta_{jl} \delta_{ac} \delta_{bd}
      [ 1 \pm \delta_{ij} ] [ 1 \pm \delta_{ab} ]
      [ \epsilon_a + \epsilon_b - \epsilon_i - \epsilon_j ] \\
    {}^\pm \langle ijab | V | 0\rangle = 2 [2\mp 1] \big[ (ai|bj) \pm (aj|bi) \big]

icnevpt2 代码结构
-----------------

* icnevpt2

  - AAVV: block structure is avoided by constructing S1=S-S^T an S2=S+S^T
  - CCAA: block structure is avoided by constructing S1=S-S^T an S2=S+S^T
  - ACVV: block structure for a<b, a>b and S2 for a=b [ongoing ever to get rid of that!]
  - CCAV: block structure for i<j, i>j and S2 for i=j [ongoing ever to get rid of that!]
  - AAAV: no block structure, no S2
  - AAAC: no block structure, no S2
  - CAAV: block structure to handle the two different basis, no S2

* caspt2 internel

  - A ituv CAAA
    - Eti Euv

  - B ijtu CCAA
    - Etj Eui +/- Eti Euj
    - i >= j t >= u

* caspt2 semi-internel

  - C atuv AAAV
    - Eat Euv

  - D iatu CAAV
    - (1) Eai Etu (2) Eti Eau

  - E ijat CCAV
    - Etj Eai +/- Eti Eaj
    - i >= j

* caspt2 externel

  - F abtu AAVV
    - Ebt Eau +/- Eat Ebu
    - a >= b t >= u

  - G iabt CAVV
    - Ebi Eat +/- Eai Ebt
    - a >= b

  - H ijab CCVV
    - Ebj Eai +/- Eaj Ebi
    - i >= j a >= b

* AAVV

  - 文章里面是 a < b  all rs ----- a = b r <= s
  - 因此是 nv (nv - 1) / 2 na na + nv na (na + 1) / 2
    = nv (nv - 1) / 2 na (na + 1) / 2 + nv (nv - 1) / 2 na (na - 1) / 2 + nv na (na + 1) / 2
    = nv (nv + 1) / 2 na (na + 1) / 2 + nv (nv - 1) / 2 na (na - 1) / 2
  - 如果采用单重态 三重态 按照上面等式, 则是左边单重态, 右边三重态

* 全局代码

  - main.cpp (L69) 读取输入文件 Job.ReadInputFile(pInp);
    - icpt.cpp (L157 - L306) 执行读取文件 ReadInputFile
  - main.cpp (L91) Job.ReadMethodFile()
  - main.cpp (L92) Job.Header(pInp) 这个没干什么事
  - main.cpp (L92) Job.Init(Mem[0]) 这个见下面的初始化 icpt.h (L297)
  - main.cpp (L94) 执行 CG Job.ConjGrad(Mem);
    - icpt.cpp (L412) void FJobContext::ConjGrad(FMemoryStack2 Mem)

* CG 部分 icpt.cpp (L412)

  - icpt.cpp (L419) 初始化 amplitudes: InitAmplitudes(Mem[0]);
    - PerturberDependentCode.cpp (L28) void FJobContext::InitAmplitudes(FMemoryStack2 &Mem)
    - PerturberDependentCode.cpp (L41) AddHeff 这里是对 AAAV, AAAC, CAAV 修改 W 以包括 heff 部分
    - L59 这里求 b = S.W
    - L91 AddHeffIntob(Mem) 这里是对 AAAV, AAAC, CAAV 修改 b 为 E1 和 W 的某些收缩

  - icpt.cpp (L443) 正交化 MakeOverlapAndOrthogonalBasis(Mem);

    - PerturberDependentCode.cpp (L252) MakeXhalf("S1", nact*nact);
    - PerturberDependentCode.cpp (L108) void FJobContext::MakeXhalf(std::string stringS, int size)
      - 这里是给定 S 求 U 使 U^T*U = S

* 张量定义部分

  - icpt.h (L267) struct FJobContext : FJobData

    - 里面有一个 field FMethodInfo
    - 这个通过 inl 初始化
    - icpt.h (L276) ``void ReadMethodFile()`` 进行这个初始化
    - icpt.h (L331) 里面有一个私有 ``field: std::vector<FSrciTensor> m_Tensors``
      - 张量存储在这里

    - icpt.h (L329) 私有 ``field: FDomainInfoMap m_Domains;``
      - 各个不同指标的范围存储在这里

    - icpt.h (L297) 初始化分为三个步骤

      - icpt.cpp (L654) 初始化 domain InitDomains()

        - icpt.cpp (L839) void FJobContext::InitDomains()

          - 首先有一个基本的 m_Domains 的设置 Ext Act Clo Aux "eacL"
          - iBase 是起始点, nSize 是长度
          - 然后还有其他 domain 名字, 但是在方法定义中和上面的某一个关联
          - 这个只在某些 density 里面会用到

      - icpt.cpp (L655) 初始化张量 CreateTensors(Mem)

        - icpt.cpp (L878) void FJobContext::CreateTensors(ct::FMemoryStack2 &Mem)

          - Method.nTensorDecls 是张量数量
          - icpt.cpp (L943) 这里是具体读入积分和密度矩阵数据

            - void FJobContext::FillData(int i, ct::FMemoryStack2 &Mem)
            - 这里 954 行只要不是 placeholder, 都会分配内存, 然后清零
            - 后面对于需要初始化的 delta 和 密度矩阵才会进一步读入
            - 因此 amplitude 是在这里已经有了内存

      - icpt.cpp (L655) 初始化残量对 InitAmpResPairs() 这个什么也没设置
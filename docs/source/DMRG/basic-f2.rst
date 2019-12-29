
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
        \require{mediawiki-texvc}

.. note::
    http://sanshar.github.io/StackBlock

BLOCK 代码结构
==============

* 全局代码

  - dmrg.C (1737 L) 没有头文件, 也就是说 里面所有函数都是通过 call_dmrg 调用的, 然后再转到各个其他模块
  - enumerator.h (171 L) 枚举定义. 这个应该分散在各个模块, 不必把不需要的枚举全部引进
  - global.h (95 L) 全局变量定义 全是 extern
  - input.C (3547 L) .h (655 L) 输入数据处理
  - main.C (56 L) 程序入口
  - pario.C (42 L) .h (69 L) 打印堆栈信息 和 并行输出
  - partial_sweep.C (257 L) sweep 下的函数, 只有一个函数 do_one_partial 即 do_one 的 partial 版本, 估计也是复制粘贴
  - readinput.C (99 L) 读输入文件的包装, 仅仅是检查文件存在和并行设置, 只有一行有作用
  - Schedule.C (184 L) 仅定义了一个 input 类中的函数 产生默认 schedule
  - solver.h (27 L) .C (208 L) 仅定义了一个 solve wavefunction 的函数, 在 solver 命名空间
  - sweep.C (840 L) .h (52 L) 这个仅仅是 sweep do_one 的定义 sweep 是一个命名空间 该命名空间的其它许多函数都在别处定义
  - sweep_mps.C (497 L) sweep 类下一些函数的定义, 用于构建左正则的波函数
  - sweep_params.C (242 L) .h (111 L) sweep 参数类
  - timer.h (142 L) .C (117 L) 头文件是计算时间的类, 源文件是检查内存占用

* 全局次要

  - fci.C (200 L) 没有头文件, 相应函数在 sweep 头文件中 只有两个静态函数, fullci 和 tiny
  - fciqmchelper.h (70 L) .C (539 L) 包含 class MPS 的定义 难道是 quantum monte carlo?
  - fiedler.C (108 L) .h (17 L) 包含单元测试, 仅暴露一个函数 fiedler_reorder 用到 newmat 类 和 boost 单元测试类 应该是用于 轨道重新排序
  - screen.C (863 L) .h (120 L) 定义一些和 screen 相互作用有关的裸函数 作用暂时不清楚, 但头文件有一些解释

* 数据处理

  - alloc.h (58 L) StackAllocator, 简单 所以 stack 的意思是全部内存放在 stack 里面
  - distribute.C (87 L) .h (68 L) 这个决定 线程和内存分配
  - overlaptensor.h (53 L) 从磁盘加载和存储 Overlap Tensor

* 数值

  - blas_calls.h (391 L) blas 函数的包装, 可忽略, 也可作为相关数学声明的参考
  - davidson.C (39 L) .h (40 L) 这个包含 davidson functor, 只是定义一个 class 决定 H 对 psi 的作用
  - least_squares.h (12 L) .C (72 L) 仅仅是线性拟合 没什么技术含量
  - linear.C (633 L) .h(30 L) 包含块 davidson 方法, 和 cg, 预条件化等关键数值方法, 已 openmp 并行处理
  - MatrixBLAS.h (423L) .C (351L) 包含一些高阶的矩阵乘法 对角化, 张量乘法. 采用 c++ clas 包装一些裸函数

* 表象

  - new_anglib.C (316 L) (28 L) 这个包含 6j 9j 系数的具体计算, 不用看, 可以暂时先直接拿来用 但是它实际上可能会算好存起来. 可能是在 input 的时候算好的?
  - couplingCoeffs.C (117L) .h (100L) 这个包含系数计算的包装, 还包含 racah 等
  - csf.C (835 L) .h (169 L) 包含 det csf 的计算, 自旋阶梯算符
  - slater.h (173 L) .C (170 L) slater 行列式, 看起来比较简单
  - hfoccgenerator.C (126 L) 应该是用于产生初始 hf 轨道占据 只一个函数 hfOccGenerator
  - orbstring.h (151 L) .C (78 L) 表示占据数的 字符串

* 分块

  - BlockAndDecimate.C (288 L) 这个文件仅一个函数, BlockAndDecimate
  - initblocks.C (718 L) .h (79 L) 用于块初始化, 相当多函数
  - operatorfunctions.C (2867 L) .h (144 L) 和块有关的稀疏矩阵乘法等, 可能需要仔细研究一下 感觉很啰嗦, 可以简化
  - operatorloops.h (111 L) 和并行有点关系, 不是很重要
  - operatorUtilities.C (569 L) 一些 stackSparseMatrix class 下面的函数的具体定义
  - renormalise.C (199 L) 仅仅定义一个参数极多的函数, StackSpinBlock 类中的 RenormaliseFrom
  - rotationmat.h (38 L) .C (569 L) 定义了 一些裸函数, 用于操作 stack sparse matrix, 或者 svd 密度矩阵
  - saveBlock.C (1453 L) 用于从磁盘储存或者读取 block 的函数, 是 stack spin block 类中函数的定义
  - set_stackspinblock_components.C (679 L) 设置算符分量的存储位置, 语法啰嗦. 是 stack spin block 类中函数的定义
  - Stack_op_components.C (1156 L) .h (543 L) 算符分量, 感觉很高级
  - [已阅读] StackBaseOperator.h (410 L) .C (919 L) 算符基类 及 算符的稀疏矩阵表示 应该比较简单
  - [已阅读?] Stackdensity.h (61 L) .C (371 L) 密度矩阵, 从算符稀疏矩阵表示继承 应该比较简单
  - [已阅读?] stackguess_wavefunction.h (58 L) .C (952 L) 波函数的一系列变换, 用于产生猜测的波函数为了 davidson
  - StackOperators.h (223 L) .C (4687 L) 各种算符定义, 继承自 stack sparse matrix
  - stackopxop.C (3520 L) .h (97 L) 算符之间的乘积 中间有不少注释的代码
  - stackspinblock.h (355 L) .C (2488 L) 块类 中间有不少注释的代码
  - [已阅读] stackwavefunction.h (69 L) .C (610 L) 波函数类, 继承自 stack sparse matrix
  - [已阅读] StateInfo.h (190 L) .C (540 L) StateInfo 类, 这个文件有很多解释!!

* 对称性

  - [已处理] IrrepSpace.C (73L) .h (49L) 表示一个整数 irrep
  - IrrepVector.h (48 L) class 定义过于简单, 应该没什么用 只在 symmetry.h 和 csf.h 用到
  - nonAbelianGroup.h (435 L) 非阿贝尔分子点群的定义和乘法 如果不使用分子对称性, 应该暂时不用管 用到 objectmatrix
  - [已阅读] SpinQuantum.h (91 L) .C (195 L) 表示自旋量子数的复合指标, 看起来很简单
  - [已处理] SpinSpace.C (88 L) .h (64 L) 表示 m 量子数 或 S 量子数, 根据 是否自旋适配来判断
  - [已处理] Symmetry.h (46 L) .C (716 L) 阿贝尔点群对称性 Symmetry 类
  - tensor_operator.h (390 L) 依赖 symmetry 类的 tensorop 类 虽然看起来很简单, 但未必有用?? csf.C 用到这个

* 数据结构

  - objectmatrix.h (192 L) 简单的矩阵定义, 还有下三角阵, 三阶张量
  - stackmatrix.h (59 L) 常规矩阵, 数据是指针表示
  - [已阅读] para_array.h (970 L) 用于表示不同 site 指标的算符的稀疏数组

* 其他

  - ApplyExcitation.C (99 L) 这个包含 main 函数
  - Coefficients.C (60 L) 这个也包含 main 函数, 也要读输入文件 但是目的好像只是为了得到对应的系数, 可以从这个入手看看系数的获取
  - CSFOverlapHelement.C (77 L) 这个包含 main 函数 貌似和 MPS 也有关系
  - DeterminantMPS.C (73 L) 这个也包含 main 函数, 和 MPS 有关
  - PTn.C (106 L) 包含 main 函数, 和 MPS 有关
  - OverlapHelement.C (77 L) 计算重叠的 main 函数, 居然不用 boost 的 mpi
  - dmrg_wrapper.h (4L) 毫无作用
  - RDM.C (62 L) 包含 main 函数, 废文件
  - wrapper.h (30 L) .C (310 L) 暴露给 C 的函数定义, 可能对 python 实现可以参考
  - doxyfile (1870 L) 用于用 doxygen 生成文档

StackBaseOperator.C
-------------------

从 L336 StackSparseMatrix::allocate(const StateInfo& rowSI, const StateInfo& colSI, double* pData)
看得很清楚. StackMatrix 是常规 double 的矩阵. StackSparseMatrix 是表示算符, 的 Sparse 是由于量子数耦合不耦合而造成的, state info 存储一个量子态的各种对称性, 每个对称性有多少态. StackSparseMatrix 一定是构建在这个对称性上的
在 StackSparseMatrix 之上才有算符类型造成的稀疏性

这里可能的改进方式为, 每次由两边态矢量的对称性, 计算中间矩阵的对称性, 对于每个算符矩阵都要重新计算. 而每个矩阵矩阵结构都是相同的, 不如弄一个公共类 工厂类, 然后两边量子数哈希. 如果这个哈希匹配到工厂类里面已经计算过的配置, 那么把分块的总大小和 row map  col map 直接拿来用. 工厂类有一个静态字段, 专门保存已经计算过的 对称性矩阵结构.

后面的 void StackSparseMatrix::allocateShell(const StateInfo& rowSI, const StateInfo& colSI)  和
double* StackSparseMatrix::allocateOperatorMatrix() 只是把 allocate 步骤分为两部分
这代码也太 copy 了

void StackSparseMatrix::Normalise (int* success) (800L) 这里可见前面 dotproduct 的定义是对分块结构逐元素处理, 每个元素进行 matrix dot product 其实是把 matrix 看成 vector 然后 做 vector 的点乘积. 因此这里其实是计算矩阵看成 vector 时的归一化. 和严格定义的 矩阵的 归一化不同.

StateInfo.C
-----------

SpinQuantum 是单个指标 (量子态的对称性指标), StateInfo 是指标的集合. 集合中可以有重复元素, 所以要按 SpinQuantum 的 unique 分组, 另有 quantaStates 记录每个对称性有多少指标 (即 :math:`\mu` 的维数)

L81: ``SpinAdapted::StateInfo::StateInfo (const std::vector< Csf >& dets, bool addWavefunctionQuanta)``

这里从 csf 构建, 在决定 每个量子态的数目的时候, 没有考虑 mu 的问题. 就是说, 在这一步, 一定还没涉及重整化

复合 QuantumNumber class 的构建似乎可以大胆采用 variadic template 然后递归定义 或者借助 tuple 定义

也就是说,  SpinQuantum 是单个指标, StateInfo 是指标的集合. 集合中可以有重复元素

L106: ``void SpinAdapted::StateInfo::UnBlockIndex ()`` 这个是从 组指标到真实指标的映射

L192: 这里的 comp state 是互补态的意思. 如果互补态已经知道 compState, 而且知道整个系统波函数的量子数 q
那么在构建当前态的时候, 如果当前态的某个量子数和互补态组合无法得到目标量子数, 那么就可以忽略当前态的这个量子数
不然的话没有互补态就组合成什么量子数就用什么量子数就行了

L202: quantaStates 是态的数目的意思, 因此当然是两个子空间的态数目相乘

constraint 是指, 当前态的 q , 比如粒子数 不应该超过系统总共的粒子数

EqualQ 就是说, 我要造的当前态就只要 量子数正好等于 Q 的这一个态

矩阵一定要 cow 存储的时候只要弄清谁负责主要储存就行

SpinQuantum.h
-------------

L54: spinToNonSpin 毫无作用 没有引用

这个 class 以 tuple 支持任意数目的量子数是没有问题的 要实现 complimant 但实际就是量子数减法

stackwavefunction.h
-------------------

L20.C 从这里可以看出, 这个波函数一定是分为左块右块的, 波函数是基态波函数
因为左块右块乘积构成完整空间, 因此确实是矩阵形式. 左块右块也有量子数, 这个函数

getRequiredMemoryForWavefunction 的 q 参数是一个 vector 应该说明要求的不仅是基态还有激发态
好像确实对多个态判断方便一些

Stackdensity.C
--------------

L143-361 疑问?? 这里 add noise 没有看懂 实际上就是把所有算符列出来, 然后逐个作用在波函数上, 然后计算密度矩阵. 这和 noise 有什么关系呢?

Stackspinblock.h
----------------

L76 这里定义了算符

para_array.h
------------

这个 para_array 做了三件事情, 一个是并行化不同 index 算符的处理 二是对算符的 site 指标进行稀疏处理
  三是考虑双指标算符的对称性 其实我们不用这里的稀疏处理. 因为各种矩阵假设存的只是 shared ptr, 那么稀疏和不稀疏区别不大
  除非是用 map 存储

所以最终, block 里面的 ops 是一个从 op-type 到 StackOp_component_base (注意这里虽然是 base 但其实是 shared ptr 所以可以表示派生类的对象) 的 map. 实际可以改成 int array 来实现
而 StackOp_component_base 的派生类为 StackOp_component<op> 其中 op 是枚举, 包括了单一的 para_array 字段 m_op
因此 StackOp_component<op> 也就是不同指标的同种算符的集合 其中 para_array 表示不同的指标
再这之后 m_op 的类型类似
para_array_1d<std::vector<boost::shared_ptr<StackCre>>>
因此中间还有一层 vector, 用于记录 S 量子数 最后一层 例如 StackCre 是继承自 StackSparseMatrix

在 block-1.5.3/Stack_op_components.C 中的 build_iterators 函数是构建的关键函数, 首先由 screen 筛选出所需的 index
而构建是要传 block 作为第一个参数的, 这个 block 知道自己所包含的 sites 和与自己的 sites 互补的 sites.

注意 build_iterators 也只是把大的框架搭好, 具体的每个算符的矩阵是不管的
而算符的具体构建 是 build_operators 来处理 Stackspinblock.C (L428)

这里则调用了 build using csf, 关键参数是 ladder 和 dets 然后任务交给了 StackSparseMatrix::buildUsingCsf (StackBaseOperator.C L159) 这里注意 index 的循环已经是解构了 StackSparseMatrix 的矩阵元 然后后面的两个循环则直接深入到具体元素 L168 这里 nonZeroBlocks[index].second.operator()(a,b) 已经是取最小块矩阵的 a 行 b 列, 得到一个 double ,这个 double 由 redmatrix elem 算出, 而这个函数在 每个 cre des 具体算符中定义
这里 iq-stateinfo.unBlockedIndex[i]+1 其中 +1 是因为这个矩阵定义的时候下标要改成从 1 开始. -stateinfo.unBlockedIndex[i] 则是因为它循环的时候要从 stateinfo.unBlockedIndex[i] 开始数.

那接下来就看到每个算符的构建, 比如 cre 的构建在 StackOperaors.C (L107)

构建顺序
--------

首先是对称性的一些东西, 然后是 quantum number 然后是 state info 然后是常规矩阵, 然后是 带量子数的 stacksparse matrix

矩阵转置的处理: 矩阵内部有一个内部 class impl, operator(i, j) 时, 转到 impl 的 operator(). 调用 .T() 时 改变 impl 这样避免了每次取索引时的判断

Bugs
----

partial_sweep.C: L238

fread( &e, 1, sizeof(double), fin);
=> fread( &e, sizeof(double), 1, fin);
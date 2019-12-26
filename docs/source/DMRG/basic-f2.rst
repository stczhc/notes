
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
  - StackBaseOperator.h (410 L) .C (919 L) 算符基类 及 算符的稀疏矩阵表示 应该比较简单
  - Stackdensity.h (61 L) .C (371 L) 密度矩阵, 从算符稀疏矩阵表示继承 应该比较简单
  - stackguess_wavefunction.h (58 L) .C (952 L) 波函数的一系列变换
  - StackOperators.h (223 L) .C (4687 L) 各种算符定义, 继承自 stack sparse matrix
  - stackopxop.C (3520 L) .h (97 L) 算符之间的乘积 中间有不少注释的代码
  - stackspinblock.h (355 L) .C (2488 L) 块类 中间有不少注释的代码
  - stackwavefunction.h (69 L) .C (610 L) 波函数类, 继承自 stack sparse matrix
  - StateInfo.h (190 L) .C (540 L) StateInfo 类, 这个文件有很多解释!!

* 对称性

  - [已处理] IrrepSpace.C (73L) .h (49L) 表示一个整数 irrep
  - IrrepVector.h (48 L) class 定义过于简单, 应该没什么用
  - nonAbelianGroup.h (435 L) 非阿贝尔分子点群的定义和乘法 如果不使用分子对称性, 应该暂时不用管 用到 objectmatrix
  - SpinQuantum.h (91 L) .C (195 L) 表示自旋量子数的复合指标, 看起来很简单
  - [已处理] SpinSpace.C (88 L) .h (64 L) 表示 m 量子数 或 S 量子数, 根据 是否自旋适配来判断
  - [已处理] Symmetry.h (46 L) .C (716 L) 阿贝尔点群对称性 Symmetry 类
  - tensor_operator.h (390 L) 依赖 symmetry 类的 tensorop 类 虽然看起来很简单, 但未必有用?? csf.C 用到这个

* 数据结构

  - objectmatrix.h (192 L) 简单的矩阵定义, 还有下三角阵, 三阶张量
  - stackmatrix.h (59 L) 常规矩阵, 数据是指针表示

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

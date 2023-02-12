
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
    http://sanshar.github.io/Block

BLOCK 代码注释
==============

1. 为什么第一次编译的时候只产生了二进制文件而没有库? 因为一些 stack 有关的文件被重命名. make 找不到那些文件所以没有产生合适的库. 更新了文件名之后, 现在库文件已经可以产生了.

2. `main.C` 和 `dmrg.C` 是主文件. main 文件只是做一些 MPI 的初始化.

dmrg.C
------

calldmrg()
^^^^^^^^^^

dmrginp (L 172) 代表输入数据的全局变量. 由 ReadInput 产生. ReadInput 在 readinput.C 中定义.

block-1.5.3/dmrg_wrapper.h 没有什么用.

extern bool RESTART;
extern bool FULLRESTART;
extern bool BACKWARD;
extern bool reset_iter;
extern bool restartwarm;

这些变量在 global.h 中定义, 在 readinput.C 中, 在获取输入文件之后, 把它们变成了全局变量.

解析输入文件的具体逻辑在 input.C (3200 行).

readinput.C 最后一步调用 `orbstring` 参数是轨道数目 (slater_size = norbital).

Stackmem 是一组共 num_threads 个 allocator. 第 259 行, 但是这里首先只是定义了第一个元素, 也就是说在多线程的时候其实内存是公用的. 所有的内存现在都放在第一个元素那里.

所有枚举类型定义在 enumerator.h

m_calc_type 默认是 dmrg, 所以可以暂时忽略其他类型. 所以在 dmrg.C 中负责 dmrg 的只有 487 - 513 行.

所有输入变量的默认值在 initialize_defaults (input.C 的 65 行)

m_sweep_type 默认是 FULL. 实际上去除 restart 的部分, 只有 512 行一行. 这一行调用 dmrg(sweep_tol), 定义在当前文件的 792 行

dmrg()
^^^^^^

这个函数有两节. 第一节是 regular dmrg, 第二节是 state specific. 按照 input.h 64 行的解释 when targetting excited states we switch from state average to statespecific. 按照 input.C, 默认 m_stateSpecific = false 因此先考虑 regular
sweep_tol 是一个从输入文件得到的参数, 但却显式从 dmrg 中传递过去. 这里的 b/f 应该是 backward, forward 的意思. 这里 很多变量都没有用, 都是冗余操作. 比如, direction,  old_states, new_states 等等. domoreIter 似乎也只能是 0. 这个函数唯一做的事情就是调用 sweep do_one.

这个 do_one 函数有 5 个参数, 其中第一个参数是 sweep 的参数, 第三个参数是方向. 左是 true, 右是 false. 定义在 sweep.C 405 行.

sweep.C
-------

schedule 输入格式
^^^^^^^^^^^^^^^^^

第一列是迭代数, 从 0 开始, 表示从第几次迭代开始采用这套参数 m_sweep_iter_schedule.
第二列是bond dimension 数目 m_sweep_state_schedule.
第三列是 davidson 的收敛阈值 m_sweep_tol_schedule.
第四列是噪音 m_sweep_noise_schedule.

代码中所谓的 m_sweep_qstate_schedule, m_sweep_additional_noise_schedule 都完全没用.

class SweepParams
^^^^^^^^^^^^^^^^^

sweep_iter 是当前 sweep 的序号.

m_algorithm_type 默认是 TWODOT_TO_ONEDOT

do_one()
^^^^^^^^

其中第一个参数是 sweep 的参数,
第二个参数是warm up, 只有第一次计算是 true, 后续计算都是 false.
第三个参数是方向. 左是 true, 右是 false.
第四个参数是 restart, 一般总是 false, 第五个参数是 restart size, 总是 0

do_one 完成一次单向的扫描

这个函数占据这个文件的 405 - 706 行.

第 414 行 finalenergy 用于存储能量, 这是一个 vector, 用于保存多个态 第一个元素是基态

useRGStartUp 这个变量为 true 的必要条件是 warmup 是 true. 后面的代码当 useRGStartUp = true 时会跳过一些内容.

498 行的 for 循环是针对sweep 中一次迭代 (即增加或减少一个位点)

nroots 是要求的目标态的数目, nroots = 1 就是只求基态.
第412 行 nroot 和 sweep 次数有关只是因为 nroot 和噪音有关. 

dmrginp.get_twodot_method() 是 twodot 的噪音方法, 默认是 0, 即没有. 它对应的内部变量名居然是 twodot_noise.

首先调用 set_sweep_parameters() 423 行.

注意 m_spinAdapted 默认是 true 也就是说 默认是进行自旋计算

444 行应该用 get 但是用了 set ?? 但是 set 估计是为了满足 a()++ 这种需要而故意写成了也具有 get 的功能

然后关键就是在 471 行调用了静态函数 InitBlocks::InitStartingBlock 初始化 block. [TODO] starting block 存储在 system 变量里面, system 变量类型是 StackSpinBlock

接下来是一些状态存储, 目前应该暂时用不到.

之后 498 行主循环 注意 block_iter 一开始等于 0, (在478 行设置), 所以这个循环真的是循环 niter 次 (niter 在 set_sweep_parameters 设置了) get_block_iter 是当前循环次数, 604 行 循环次数加 1

这个循环从 502 行到 614 行.

616-617 行对 system block 进行 deallocate 和 clear 这个步骤比较重要.

619 到 704 行都是打印和存储.

666 行将 sweep iter 变量增加1

704 行是求所有 finalenergy 中的能量的平均值 (即态平均能量).

下面重点研究主循环. 循环中首先要 set_guesstype, 应该是指 davidson 的初始矢量.
BASIC 应该是没有初始值可以参考的情况. TRANSFORM 是正常的从之前的继续. warmup 的时候只能 BASIC. input 中的 warmup 和这个函数的 warmup 不同. input 中, warmup 是指 warmup 的方法. 默认是 local0

502-512: 打印信息.

512-528: 确定 guess 类型.

528-547: 执行 StartUp 或者 BlockAndDecimate 之一. 如果是 warmup 并且是 heisenberg 才会 startup. 正常量子化学哈密顿量应该会进行 BlockAndDecimate. 如果进行了 StartUp, 则 useRGStartUp 会设置为 true. 这步完了以后, 可以从 get_lowest_energy (vector, 尺寸为 nroots) 得到能量.

547-573: 打印信息.

573-591: 根据 sweepParams 里面存储的能量更新 finalEnergy_spins, finalEnergy, finalError. 表示这一步扫描中的最低能量.

593-594: 设置 system = newsystem.

594-601: 状态磁盘存储.

601-602: set_dot_with_sys ?? 的作用是设置 dot_with_sys 变量. 是在合适的尺寸将辅助算符迁移到右块, 来节省时间.

602-614: 主要是打印信息.

总之, 下一步最重要的就是 BlockAndDecimate 或者 InitStartingBlock. 其实到这里已经不需要研究算法细节了, 只需要拿到 block 内部数据的表示结构就行了.

sweep_params.C
--------------

set_sweep_parameters()
^^^^^^^^^^^^^^^^^^^^^^

这段代码前一部分是要根据 twodot 还是 onedot 计算该次 sweep 所需的总迭代次数, 存储在 n_iters 默认是 two to one 但是从第 0 步就开始切换, 所以一直是 one dot

forward_starting_size 应该是指前向扫描最开始的左块的大小 sys_add 和 env_add 都等于 1, 意义是每次扩张的节点的大小.

input 参数中, last_site 实际上返回的是 site 总数 [而不是最后一个节点的位置]. 如果是 spin_adapted 计算, 采用的是空间轨道. last_site 即返回空间轨道数目. 如果是无自旋, 返回自旋轨道数目, 即 2 * m_num_spatial_orbs.

n_iters 比我自己预估的多 1. 我自己预估是按照在一次 sweep 中 块大小的变化次数.

然后这个函数就没干什么事了. 所以这个函数仅仅是根据 dot 大小计算 niters

initblocks.C
------------

InitStartingBlock()
^^^^^^^^^^^^^^^^^^^

注意这个函数最后两个参数是默认值 (默认都是空 vector), 而默认值只写在 头文件 里面.

参数:
leftState, rightState 可能一开始都等于 0, 但是不清楚
forward_starting_size = 1
backward_starting_size = 1
integralIndex = 0

代码规范
--------

类名首字母大写, 去掉 Stack, 命名空间全小写, 方法名小写加下划线

boost-mpi
---------

现在在虚拟机可以编译运行, boost 的时候还要加上 mpi 和 mpi_cxx lib. 主机可以编译, 运行会出错.

采用boost 语法时, 不能再添加 init 和 final

现在 spin_space 实现是 S^2 或者 sz 在具体实现时要判断全局变量. 如果用一个 template StateReprT
    class AbelianRepr
        template<T>
        typedef typename add_ret<T> T
    class SU2Repr
        template<T>
        typedef typename add_ret<T> vector<T>
    class SpinRepr
        template<T>
        typedef g<T> = vector<T>
    class ParticleRepr
        template<T>
        typedef g
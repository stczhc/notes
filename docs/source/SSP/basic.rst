
赝势方法
========

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

GTH 赝势
--------

局域势能在 :math:`k` 表象的表达式 (PRB, 58, 3641-3662, 1998.) (其中包含了 :math:`V_{core}`)

.. math:: V_{loc}(g) = -\frac{4\pi Z_{ion}}{\Omega g^2} \E^{-(gr_{loc})^2/2}
    +\sqrt{8\pi^3} \frac{r_{loc}^3}{\Omega}\E^{-(gr_{loc})^2/2}
    \{ C_1 + C_2 [3-(gr_{loc})^2] + C_3 [15 - 10(gr_{loc})^2 + (gr_{loc})^4] \}

这里 :math:`g` 的单位是 :math:`1/\mathrm{bohr}`, :math:`r_{loc}` 的单位是 :math:`\mathrm{bohr}`. 在代码中 `FUNCTION vloc` 的单位也是这样. 

.. code-block:: fortran

    FUNCTION vloc(rloc, k, zion, nc, c)
        IMPLICIT NONE
        REAL(8) :: rloc, k, c(0:nc - 1), vloc
        INTEGER :: zion, nc
        INTEGER :: i
        REAL(8) :: kk, efac, cfac

        vloc = 0d0
        IF (k /= 0d0) THEN
            kk = k * rloc
            efac = EXP(-0.5d0 * kk * kk)
            IF (nc >= 1) vloc = vloc + c(0)
            IF (nc >= 2) vloc = vloc + c(1) * (3 - kk * kk)
            IF (nc >= 3) vloc = vloc + c(2) * (15 - 10 * kk * kk + kk ** 4)
            vloc = vloc * (2 * pi) ** 1.5d0 * rloc ** 3 / omega * efac
            vloc = vloc - 4 * pi * zion * efac / (omega * k * k)
        END IF

    END FUNCTION

对于非局域势能, 

.. math:: V_l(\bm{g}, \bm{g}') = (-1)^l \sum_{i = 1}^3\sum_{j=1}^3 \sum_{m=-l}^l 
    Y_{lm}(\hat{\bm{g}})p_i^l(g)h_{ij}^l p_j^l(g')Y_{lm}^*(\hat{\bm{g}})

其中每一项可以拆成 :math:`g` 和 :math:`g'` 的乘积. 先对每种原子保存这些对单个 :math:`g` 的项. 即

.. math:: V_{nloc}(\bm{g}, l, m, i) = Y_{lm}(\hat{\bm{g}})p_i^l(g)

G 的范围
--------

注意 `gmax` 是 :math:`k` 的最大值. 设每一个维度 :math:`k` 的分量的取值范围是 :math:`-ngh` ~ :math:`ngh`. 其中每个维度有 :math:`ng= 2ngh` 个格点. 但是对局域势而言 :math:`V(k)` 中的 :math:`k` 其实是两个 :math:`k` 之差. 因此用于局域势计算的格点最大会达到 :math:`2gmax`. 但是动能对应的 :math:`k` 最大只会是 :math:`gmax`.

快速傅里叶变换
--------------

令 :math:`x_0, \dots, x_{N-1}` 为复数. 离散傅里叶变换 (前向, forward, :math:`x_n \to X_k`)由下式定义

.. math:: X_k = \sum_{n = 0}^{N-1}x_n \E^{-\I2\pi k\frac{n}{N}},\quad k=0,\cdots, N-1.

当运行 `fft_forward` 时, 即按此式进行. 当运行 `fft_backward` 时, 更改正负号

.. math:: x'_n = \sum_{k = 0}^{N-1}X_k \E^{\I2\pi n\frac{k}{N}},\quad n=0,\cdots, N-1.

但是逆向傅里叶变换 (backward, :math:`X_k \to x_n`)的定义是

.. math:: x_n = \frac{1}{N} \sum_{k = 0}^{N-1}X_k \E^{\I2\pi n\frac{k}{N}},\quad n=0,\cdots, N-1.

因此 :math:`x_n = \frac{1}{N}x'_n`

.. code-block:: fortran

    SUBROUTINE fft_plan(ng)
        IMPLICIT NONE
        INTEGER, PARAMETER :: FFTW_Forward = -1, FFTW_Backward = 1, FFTW_Estimate = 0
        INTEGER :: ng

        fft_n(1:1) = ng
        CALL FFTWND_F77_Create_Plan(fft_for, 1, fft_n, FFTW_Forward, FFTW_Estimate)
        CALL FFTWND_F77_Create_Plan(fft_back, 1, fft_n, FFTW_Backward, FFTW_Estimate)
    END SUBROUTINE

    SUBROUTINE fft_destroy_plan()
        IMPLICIT NONE

        CALL FFTWND_F77_Destroy_Plan(fft_for)
        CALL FFTWND_F77_Destroy_Plan(fft_back)
    END SUBROUTINE

    SUBROUTINE fft_forward(n, inx, outx)
        IMPLICIT NONE
        INTEGER :: n
        COMPLEX(8) :: inx(n), outx(n)

        CALL FFTWND_F77_One(fft_for, inx, outx)
    END SUBROUTINE

    SUBROUTINE fft_backward(n, inx, outx)
        IMPLICIT NONE
        INTEGER :: n
        COMPLEX(8) :: inx(n), outx(n)

        CALL FFTWND_F77_One(fft_back, inx, outx)
    END SUBROUTINE

    SUBROUTINE dft_forward(n, inx, outx)
        IMPLICIT NONE
        INTEGER :: n, i, k
        COMPLEX(8) :: inx(0:n - 1), outx(0:n - 1)

        DO i = 0, n - 1
            outx(i) = 0
            DO k = 0, n - 1
                outx(i) = outx(i) + inx(k) * EXP(-(0d0, 1d0) * 2 * pi * i * k / n)
            END DO
        END DO
    END SUBROUTINE

    SUBROUTINE dft_backward(n, inx, outx)
        IMPLICIT NONE
        INTEGER :: n, i, k
        COMPLEX(8) :: inx(0:n - 1), outx(0:n - 1)

        DO i = 0, n - 1
            outx(i) = 0
            DO k = 0, n - 1
                outx(i) = outx(i) + inx(k) * EXP((0d0, 1d0) * 2 * pi * i * k / n)
            END DO
        END DO
    END SUBROUTINE

中心方程
--------

把三维势场展开成傅里叶级数

.. math:: V(\bm{r}) = \sum_l V(\bm{K}_l)\E^{\I \bm{K}_l\cdot \bm{r}}

由势场的周期性

.. math:: V(\bm{r}) = V(\bm{r} + \bm{R}_n) = \sum_l V(\bm{K}_l)\E^{\I \bm{K}_l\cdot (\bm{r}+ \bm{R}_n)}
    = \sum_l V(\bm{K}_l)\E^{\I \bm{K}_l\cdot \bm{r}} \E^{\I \bm{K}_l\cdot \bm{R}_n}

得  :math:`\E^{\I \bm{K}_l\cdot \bm{R}_n} = 1` 即 :math:`\bm{K}_l\cdot \bm{R}_n = 2\pi\cdot k`, 其中 :math:`k` 为整数. 从而 :math:`\bm{K}_l` 必须是倒格矢

.. math:: \bm{K}_l = l_1\bm{b}_1 + l_2\bm{b}_2 + l_3\bm{b}_3

此处可能的倒格矢有无穷多. 可以忽略 :math:`k` 较大的. 

现在令 :math:`\bm{R}_n = \bm{a}` 为晶格基矢. :math:`\bm{b} = \frac{2\pi}{a^2} \bm{a}` 为倒格矢. 则

.. math:: \bm{a} \cdot \bm{b} = 2\pi,\quad \bm{K}_l = l \bm{b}


.. math:: V_i = V\left(\frac{i}{N}\bm{R}_n\right) = \sum_{l = 0}^{N - 1} \tilde{V}(\bm{K}_l)\E^{\I \bm{K}_l\cdot \frac{i}{N}\bm{R}_n} = \sum_{l = 0}^{N - 1} \tilde{V}(l \bm{b})\E^{\I l \bm{b} \cdot \frac{i}{N}\bm{a}}
    = \sum_{l = 0}^{N - 1} \tilde{V}_l \E^{\I 2\pi l  \frac{i}{N} }

其中 :math:`\tilde{V}_l = \tilde{V} (l \bm{b})`. 于是 :math:`\tilde{V}_l \to V_i` 符合逆向傅里叶变换(去除前置 :math:`1/N` 系数)的定义.  并且可以知道

.. math:: \tilde{V}_l = \frac{1}{N} \sum_{i = 0}^{N - 1} V_i \E^{-\I 2\pi i  \frac{l}{N} }


上述定义有问题. 在实际的程序中, :math:`l` 的取值必须是 :math:`-N/2\sim N/2-1`. 如果套用上述定义, :math:`l` 必须偏移 :math:`N/2` 从而和标准的 dft 定义不符合. 为了解决这个问题, V 中的顺序必须是 :math:`0 \sim N/2 - 1, -N/2 \sim -1`. 这样就和 dft 定义一致了. 因为这样的话 前半部分不偏移, 后半部分偏移值为 :math:`N`. :math:`l \to l - N` 对 :math:`\E` 指数因子无影响. 

下面考虑波函数的平面波展开. 由于波函数不是以晶格基矢为周期的函数, 而布洛赫定理指出了波函数和周期函数的关系. 所以先考虑布洛赫定理

.. math:: \psi_{\bm{k}}(\bm{r}) = \E^{\I\bm{k}\cdot \bm{r}}u_{\bm{k}}(\bm{r}),\quad u_{\bm{k}}(\bm{r}+\bm{R}_n) = u_{\bm{k}}(\bm{r})

从而

.. math:: u_{\bm{k}i} = u_{\bm{k}}\left(\frac{i}{N}\bm{R}_n\right) = \sum_{l = 0}^{N - 1} \tilde{u}_{\bm{k}l} \E^{\I 2\pi l  \frac{i}{N} }\quad \psi_{\bm{k}}(\bm{r}) = \sum_l \tilde{u}_{\bm{k}l}\E^{\I (\bm{k} + \bm{K}_l)\cdot \bm{r}}

对波函数进行归一化

.. math::
    \int \psi_{\bm{k}}^*(\bm{r})\psi_{\bm{k}}(\bm{r}) \D \bm{r} = \int \sum_l \tilde{u}^*_{\bm{k}l}\E^{-\I (\bm{k} + \bm{K}_l)\cdot \bm{r}} \sum_m \tilde{u}_{\bm{k}m}\E^{\I (\bm{k} + \bm{K}_m)\cdot \bm{r}} \D \bm{r}
    = \sum_{l,m} \tilde{u}^*_{\bm{k}l} \tilde{u}_{\bm{k}m}\int \E^{\I (\bm{K}_m - \bm{K}_l)\cdot \bm{r}} \D \bm{r}

利用

.. math:: \frac{1}{\Omega} \int_{\Omega} \E^{\I (\bm{K}_m - \bm{K}_l)\cdot \bm{r}} \D \bm{r} = \delta_{\bm{K}_m, \bm{K}_l}

于是 

.. math:: \int \psi_{\bm{k}}^*(\bm{r})\psi_{\bm{k}}(\bm{r}) \D \bm{r} = \Omega \sum_l \tilde{u}^*_{\bm{k}l} \tilde{u}_{\bm{k}l}

令

.. math:: \sum_l \tilde{u}^*_{\bm{k}l} \tilde{u}_{\bm{k}l} = 1

则归一化因子为 :math:`\frac{1}{\sqrt{\Omega}}`. 即

.. math:: \psi_{\bm{k}}(\bm{r}) = \frac{1}{\sqrt{\Omega}}\sum_l \tilde{u}_{\bm{k}l}\E^{\I (\bm{k} + \bm{K}_l)\cdot \bm{r}}



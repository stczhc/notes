
Python
======

setup.py
--------

https://docs.python.org/3.7/distutils/introduction.html#distutils-simple-example

setup.py 写成如下形式

.. code:: python

    from distutils.core import setup
    setup(name='foo',
        version='1.0',
        py_modules=['foo'],
        )

假定相同文件夹已经存在一个 ``foo.py``.

然后命令行调用 ``python setup.py sdist`` 将会产生一个安装包, 名为 ``foo-1.0.tar.gz``.

setup.py 包括 C/C++ 的拓展见这个文档

https://docs.python.org/3.7/distutils/setupscript.html#setup-script

不要直接用 ``python setup.py`` 因为这无法卸载. 使用 ``pip``.

到 ``setup.py`` 存放的目录, 采用 ``pip3 install .`` 来安装, 采用 ``pip3 uninstall foo`` 来卸载.

manifest.in 列出需要包含在 package 中的文件. 它在标准的该包含的文件之后执行, 可以添加或者 exclude 默认原始列表中的文件. manifest.in 只在 ``./setup.py sdist`` 用到.

manifest.in 的语法

.. code:: python

    include *.txt
    recursive-include examples *.txt *.py
    prune examples/sample?/build

下面是一个更加标准的 ``setup.py`` 的写法:

https://blog.csdn.net/fragmentalice/article/details/44833013

setup.py & cmake
----------------

https://martinopilia.com/posts/2018/09/15/building-python-extension.html


pybind
------

对于 vector, 如果引入 #include <pybind11/stl.h>, 它会直接转换. 但是无论这里是引用还是什么, 在 C++ 修改了以后, 都不会影响 python 的对象.

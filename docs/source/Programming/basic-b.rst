
docker
======

dockerfile
----------

先找到一个空目录, 然后建立一个文件 ``dockerfile``, 内容如下

.. code::

    FROM ubuntu:bionic
    RUN apt-get update && apt-get install -y libboost-all-dev python-dev git cmake g++
    RUN mkdir /work
    VOLUME /work/src
    WORKDIR /work

.. code::

    FROM ubuntu:bionic
    RUN apt-get update && apt-get install -y libboost-all-dev python-dev git cmake g++ python3-pip
    RUN mkdir /work
    VOLUME /work/src
    WORKDIR /work

这里把 host 目录映射到容器的 /work/src 目录. 但是 host 目录在哪里并无法在 dockerfile 内部指定. 先通过以下命令构建这个 image:

.. code:: bash

    docker build -t boostpy:latest .

其中 ``-t`` 是指定 tag 的意思. ``.`` 是指利用当前目录的 dockerfile 文件.

现在我们可以运行这个 image:

.. code:: bash

    docker run -it --rm -v $PWD:/work/src boostpy

``docker ps -a`` 列出未关闭的 container
``docker rm <id>`` 删除 container (不是 image)
``docker images`` 列出 images
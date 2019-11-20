title: 安装TensorFlow
---

这篇文档介绍如何在Khadas VIMs/Edge上安装Google [TensorFlow](https://github.com/tensorflow/tensorflow)。以`Ubuntu 16.04.4 arm64`为例进行安装。

*注意：这里安装的是仅支持CPU的版本，不支持GPU。*

### 安装Python3
```
OS-Q@OS-Q:~$ sudo apt-get update
OS-Q@OS-Q:~$ sudo apt-get install python3-pip python3-dev
```

### 下载aarch64架构TensorFlow安装包
下载aarch64架构安装包到某处，如：`~/tensorflow`，下载`1.8.0`版本：

```
OS-Q@OS-Q:~$ mkdir ~/tensorflow
OS-Q@OS-Q:~$ cd ~/tensorflow
OS-Q@OS-Q:~$ wget https://github.com/lhelontra/tensorflow-on-arm/releases/download/v1.8.0/tensorflow-1.8.0-cp35-none-linux_aarch64.whl
```

### 安装TensorFlow
```
OS-Q@OS-Q:~$ cd ~/tensorflow
OS-Q@OS-Q:~$ pip3 install tensorflow-1.8.0-cp35-none-linux_aarch64.whl
```
*注意：安装过程会持续一段时间，请耐心等待。*

### 测试TensorFlow
```
OS-Q@OS-Q~$ python3
Python 3.5.2 (default, Nov 23 2017, 16:37:01) 
[GCC 5.4.0 20160609] on linux
Type "help", "copyright", "credits" or "license" for more information.
>>> import tensorflow as tf
>>> hello = tf.constant('Hello world!')
>>> sess = tf.Session()
>>> print(sess.run(hello))
b'Hello world!'
>>> 
```

如果你看到上面`Hello world`输出，表示你成功安装了TensorFlow。

### 排错
如果在导入TensorFlow时碰到如下错误，你需要升级`libstdc++6`。
```
>>> import tensorflow as tf
Traceback (most recent call last):
  File "/home/OS-Q/.local/lib/python3.5/site-packages/tensorflow/python/pywrap_tensorflow.py", line 58, in <module>
    from tensorflow.python.pywrap_tensorflow_internal import *
  File "/home/OS-Q/.local/lib/python3.5/site-packages/tensorflow/python/pywrap_tensorflow_internal.py", line 28, in <module>
    _pywrap_tensorflow_internal = swig_import_helper()
  File "/home/OS-Q/.local/lib/python3.5/site-packages/tensorflow/python/pywrap_tensorflow_internal.py", line 24, in swig_import_helper
    _mod = imp.load_module('_pywrap_tensorflow_internal', fp, pathname, description)
  File "/usr/lib/python3.5/imp.py", line 242, in load_module
    return load_dynamic(name, filename, file)
  File "/usr/lib/python3.5/imp.py", line 342, in load_dynamic
    return _load(spec)
ImportError: /usr/lib/aarch64-linux-gnu/libstdc++.so.6: version `GLIBCXX_3.4.22' not found (required by /home/OS-Q/.local/lib/python3.5/site-packages/tensorflow/python/_pywrap_tensorflow_internal.so)

During handling of the above exception, another exception occurred:

Traceback (most recent call last):
  File "<stdin>", line 1, in <module>
  File "/home/OS-Q/.local/lib/python3.5/site-packages/tensorflow/__init__.py", line 24, in <module>
    from tensorflow.python import pywrap_tensorflow  # pylint: disable=unused-import
  File "/home/OS-Q/.local/lib/python3.5/site-packages/tensorflow/python/__init__.py", line 49, in <module>
    from tensorflow.python import pywrap_tensorflow
  File "/home/OS-Q/.local/lib/python3.5/site-packages/tensorflow/python/pywrap_tensorflow.py", line 74, in <module>
    raise ImportError(msg)
ImportError: Traceback (most recent call last):
  File "/home/OS-Q/.local/lib/python3.5/site-packages/tensorflow/python/pywrap_tensorflow.py", line 58, in <module>
    from tensorflow.python.pywrap_tensorflow_internal import *
  File "/home/OS-Q/.local/lib/python3.5/site-packages/tensorflow/python/pywrap_tensorflow_internal.py", line 28, in <module>
    _pywrap_tensorflow_internal = swig_import_helper()
  File "/home/OS-Q/.local/lib/python3.5/site-packages/tensorflow/python/pywrap_tensorflow_internal.py", line 24, in swig_import_helper
    _mod = imp.load_module('_pywrap_tensorflow_internal', fp, pathname, description)
  File "/usr/lib/python3.5/imp.py", line 242, in load_module
    return load_dynamic(name, filename, file)
  File "/usr/lib/python3.5/imp.py", line 342, in load_dynamic
    return _load(spec)
ImportError: /usr/lib/aarch64-linux-gnu/libstdc++.so.6: version `GLIBCXX_3.4.22' not found (required by /home/OS-Q/.local/lib/python3.5/site-packages/tensorflow/python/_pywrap_tensorflow_internal.so)


Failed to load the native TensorFlow runtime.

See https://www.tensorflow.org/install/install_sources#common_installation_problems

for some common reasons and solutions.  Include the entire stack trace
above this error message when asking for help.
```

执行下面的命令升级`libstdc++6`。
```
OS-Q@OS-Q~$ sudo add-apt-repository ppa:ubuntu-toolchain-r/test 
OS-Q@OS-Q~$ sudo apt-get update
OS-Q@OS-Q~$ sudo apt-get upgrade
OS-Q@OS-Q~$ sudo apt-get dist-upgrade
```
### 参考
[TensorFlow Docs](https://www.tensorflow.org/install)

title: 搭建Golang环境
---

这篇文档介绍如何在VIMs/Edge Ubuntu系统下搭建Golang环境。

### 下载arm64架构Golang包
```
OS-Q@OS-Q:~$ mkdir source
OS-Q@OS-Q:~$ cd source/
OS-Q@OS-Q:~/source$ wget https://dl.google.com/go/go1.10.3.linux-arm64.tar.gz
```

### 解压
解压压缩包到某处，如：`/usr/local`。
```
OS-Q@OS-Q:~/source$ sudo tar -C /usr/local -xzf go1.10.3.linux-arm64.tar.gz
```

### 添加Golang到PATH环境变量
添加`export PATH=$PATH:/usr/local/go/bin`到文件`~/.bashrc`末尾。

注销或执行以下命令使其生效。
```
OS-Q@OS-Q:~/source$ source ~/.bashrc
```

### 检查安装
```
OS-Q@OS-Q:~/source$ go version
go version go1.10.3 linux/arm64
```

如果安装成功，你会看到Golang版本号输出。

### 测试
创建Hello World文件，编译并运行。
```
OS-Q@OS-Q:~/source$ cat HelloWorld.go 
package main

import "fmt"

func main() {
	        fmt.Println("Hello World!")
}
OS-Q@OS-Q:~/source$ go build HelloWorld.go 
OS-Q@OS-Q:~/source$ ./HelloWorld 
Hello World!
```

### 参考
[Golang](https://golang.org/)

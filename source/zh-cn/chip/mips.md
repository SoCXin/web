---
title: 渲染引擎（Renderer）
---
渲染引擎用于渲染内容。

## 概要

``` js
hexo.extend.renderer.register(name, output, function(data, options){
}, sync);
```

参数 | 描述
--- | ---
`name` | 输入的扩展名（小写，不含开头的 `.`）
`output` | 输出的扩展名（小写，不含开头的 `.`）
`sync` | 同步模式

渲染函数中会传入两个参数：

参数 | 描述
--- | ---
`data` | 包含两个属性：文件路径 `path` 和文件内容 `text`。`path` 不一定存在。
`option` | 选项

## 范例

### 非同步模式

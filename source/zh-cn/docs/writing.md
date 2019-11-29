---
title: 写作
---

{% youtube HLJ9jJy7CMg %}


你可以执行下列命令来创建一篇新文章或者新的页面。

``` bash
$ hexo new [layout] <title>
```

您可以在命令中指定文章的布局（layout），默认为 `post`，可以通过修改 `_config.yml` 中的 `default_layout` 参数来指定默认布局。

### 布局（Layout）

Hexo 有三种默认布局：`post`、`page` 和 `draft`。在创建者三种不同类型的文件时，它们将会被保存到不同的路径；而您自定义的其他布局和 `post` 相同，都将储存到 `source/_posts` 文件夹。

布局 | 路径
--- | ---
`post` | `source/_posts`
`page` | `source`
`draft` | `source/_drafts`

{% note tip 不要处理我的文章 %}
如果你不想你的文章被处理，你可以将 Front-Matter 中的`layout:` 设为 `false` 。
{% endnote %}

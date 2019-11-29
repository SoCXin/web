---
title: Commands
---
## init

``` bash
$ hexo init [folder]
```

Initializes a website. If no `folder` is provided, Hexo will set up the website in the current directory.

## new

``` bash
$ hexo new [layout] <title>
```

Creates a new article. If no `layout` is provided, Hexo will use the `default_layout` from [_config.yml](configuration.html). If the `title` contains spaces, surround it with quotation marks.

Option | Description
--- | ---
`-p`, `--path` | Post path. Customize the path of the post.
`-r`, `--replace` | Replace the current post if existed.
`-s`, `--slug` | Post slug. Customize the URL of the post.

By default, Hexo will use the title to define the path of the file. For pages, it will create a directory of that name and an `index.md` file in it. Use the `--path` option to override that behaviour and define the file path:

```bash
hexo new page --path about/me "About me"
```

will create `source/about/me.md` file with the title "About me" set in the front matter.

Please note that the title is mandatory. For example, this will not result in the behaviour you might expect:

```bash
hexo new page --path about/me
```

will create the post `source/_posts/about/me.md` with the title "page" in the front matter. This is because there is only one argument (`page`) and the default layout is `post`.

## generate


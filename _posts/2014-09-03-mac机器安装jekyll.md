---
layout: post
title: Mac机器安装Jekyll
category: crazy
description: 对自己安装jekyll的经过进行记录。
keywords: Mac OSX, Jekyll, 安装
---

首先保证机器已经安装了gem。通常，Mac OSX自己有自带的rubygem。但是，如果版本比较老的话，更新到最新的版本。

```
sudo gem update --system
```

####第一步：安装liquid

```
sudo gem install liquid
```

####第二步：安装jekyll
执行以下命令：

```
sudo gem install jekyll
```
All of Jekyll’s gem dependencies are automatically installed by the above command, so you won’t have to worry about them at all.

####第三步：生成一个结构
要生成一个目录结构，有3种方法：

* 采用自定义的方法
* 采用预生成的结构
* 采用第三方定制的主题

第一种方法请参考官方的网站。

第二种方法很简单，执行以下命令：

```
jekyll new XXXXXX (代表你的目录根名称)
```
通过该方法，可以得到一个标准的目录结构。包括：_config.xml、index.html、_post、_layout等必要的目录。

第三种方法，可以下载他人做好的目录结构，以及相应的主题。我采用的是“掌心”定制的主题：[Violet 2](https://github.com/pizn/pizn.github.com)

```lua
function(){
console.log("This is a test\n");
}
```

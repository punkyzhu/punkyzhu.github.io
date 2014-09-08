<!DOCTYPE html>
<html lang="zh-CN">
<head>
<meta charset="utf-8" />
<meta name="author" content="{{ site.meta.author.name }}" />
<meta name="keywords" content="{{ page.tags | join: ',' }}" />
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1">
<title>{{ site.name }}{% if page.title %} / {{ page.title }}{% endif %}</title>
<link href="http://{{ site.host }}/feed.xml" rel="alternate" title="{{ site.name }}" type="application/atom+xml" />
<link rel="stylesheet" type="text/css" href="/assets/css/font-awesome.css" />
<link rel="stylesheet" type="text/css" href="/assets/css/site.css" />
<link rel="stylesheet" type="text/css" href="/assets/css/code/github.css" />
{% for style in page.styles %}<link rel="stylesheet" type="text/css" href="{{ style }}" />
{% endfor %}
</head>

<body class="{{ page.pageClass }}">

<header>
	<div class="page-header clearfix">
	<img class="logo" src="/assets/img/Z-58x58.png"><h1>{% if page.title %}<a href="/" class="minor">{{ site.name }}</a></h1><p class="additional">{{ site.desc }}</p>{% else %}<span class="minor">{{ site.name }}</span></h1><span class="additional">{{ site.desc }}</span>{% endif %}<img class="mountain" src="/assets/img/test1-287x98.png">
	</div>
</header>


<div class="main">
	{{ content }}

	<footer>
		<p>&copy; Since 2012</p>
	</footer>
</div>

<aside>
	<h2><a href="/">{{ site.name }}</a><a href="/feed.xml" class="feed-link" title="Subscribe"><i class="fa fa-rss-square"></i></a></h2>
	
	<h3 class="block">文章分类</h3>
	<nav class="block block-about">
		<ul class="default">
		  {% for category in site.custom.categories %}
		    {% assign list = site.categories[category.name] %}
		    {% assign count = list.size %}
		    {% if list == null %}
				<li class="zero_article"><i> {{ category.title }}   [加油！还没有文章哦！]</i></li>
   			{% else %}
   		    <li class="{{ category.name }}"><a href="/category/{{ category.name }}/">{{ category.title }}</a>    [{{ count }}篇文章]</li>
   		    {% endif %}
		  {% endfor %}
		</ul>
	</nav>
	
	<h3 class="block">最近发表的帖子</h3>
	<nav class="block block-about">
        <ul>
          {% for post in site.posts offset:0 limit:7 %}
            {% unless post.draft %}
          <li>
            <a href="{{ post.url }}">{{ post.title }}</a><span>「{{ post.date | date: "%Y-%m-%d"}}」
          </li>
            {% endunless %}
          {% endfor %}
        </ul>
    </nav>
	
	<form action="/search/" class="block block-search">
		<h3>Search</h3>
		<p><input type="search" name="q" placeholder="Search" /></p>
	</form>
	
	<div class="block block-about">
		<h3 class="block">About</h3>
		<figure>
			{% if site.meta.author.gravatar %}<img src="{{ site.meta.gravatar}}{{ site.meta.author.gravatar }}?s=48" />{% endif %}
			<figcaption><strong>{{ site.meta.author.name }}</strong></figcaption>
		</figure>
		<p>Write something about yourself.</p>
	</div>
	
	{% if site.meta.author.github %}
	<div class="block block-fork">
		<a href="https://github.com/{{ site.meta.author.github }}"><img style="position: absolute; top: 0; right: 0; border: 0;" src="https://s3.amazonaws.com/github/ribbons/forkme_right_orange_ff7600.png" alt="Fork me on GitHub"></a>
	</div>
	{% endif %}
	
	<div class="block block-thank">
		<h3>Powered by</h3>
		<p>
			<a href="http://disqus.com/" target="_blank">Disqus</a>,
			<a href="http://elfjs.com/" target="_blank">elf+js</a>,
			<a href="https://github.com/" target="_blank">GitHub</a>,
			<a href="http://www.google.com/cse/" target="_blank">Google Custom Search</a>,
			<a href="http://en.gravatar.com/" target="_blank">Gravatar</a>,
			<a href="http://softwaremaniacs.org/soft/highlight/en/">HighlightJS</a>,
			<a href="https://github.com/mojombo/jekyll" target="_blank">jekyll</a>,
			<a href="https://github.com/mytharcher/SimpleGray" target="_blank">SimpleGray</a>
		</p>
	</div>
</aside>

<script src="http://elfjs.qiniudn.com/code/elf-0.5.0.min.js"></script>
<script src="http://yandex.st/highlightjs/7.3/highlight.min.js"></script>

<script src="/assets/js/site.js"></script>
{% for script in page.scripts %}<script src="{{ script }}"></script>
{% endfor %}
<script>
site.URL_GOOGLE_API = '{{site.meta.gapi}}';
site.URL_DISCUS_COMMENT = '{{ site.meta.author.disqus }}' ? 'http://{{ site.meta.author.disqus }}.{{ site.meta.disqus }}' : '';

site.VAR_SITE_NAME = '{{ site.name }}';
site.VAR_GOOGLE_CUSTOM_SEARCH_ID = '{{ site.meta.author.gcse }}';
site.TPL_SEARCH_TITLE = '#{0} / 搜索：#{1}';
site.VAR_AUTO_LOAD_ON_SCROLL = {{ site.custom.scrollingLoadCount }};
</script>
</body>
</html>
<title>${bf.config.blog.name}</title>
<link rel="alternate" type="application/rss+xml" title="RSS 2.0" href="http://feeds.feedburner.com/gitfr" />
<link rel='stylesheet' href='${bf.config.filters.syntax_highlight.css_dir}/pygments_${bf.config.filters.syntax_highlight.style}.css' type='text/css' />

% for css_file in bf.config.filters.syntax_highlight.mod.css_files_written:
<link rel='stylesheet' href='${css_file}' type='text/css' />
% endfor
<link rel='stylesheet' href='/css/site.css' type='text/css' />
<link rel='stylesheet' href='/css/documentation.css' type='text/css' />
<link rel='stylesheet' href='/css/jquery.tweet.css' type='text/css' />

<script type="text/javascript" src="/js/jquery-1.4.2.min.js"></script>
<script type="text/javascript" src="/js/jquery.tweet.js"></script>
<script type="text/javascript" src="/js/googleRSSWidget.js"></script>
<script type="text/javascript" src="/js/site.js"></script>


<div id="right_sidebar">
  <div id="rss">
    <h2>flux RSS</h2>
    <a href="${bf.util.site_path_helper(bf.config.blog.path,'feed')}">billets</a>
    /
    % if bf.config.blog.disqus.enabled:
    <a href="http://${bf.config.blog.disqus.name}.disqus.com/latest.rss">commentaires</a>
    % endif
  </div>
  <div id="contact">
    <h2>Contact</h2>
    mail : seb@gitfr.net<br />
    liste de diffusion : <a href="http://groups.google.com/group/gitfr">gitfr</a><br />
    IRC : #gitfr sur Freenode
  </div>
  <div id="blog_post_list">
    <h2>Derniers billets</h2>
    <ul>
% for post in bf.config.blog.posts[:8]:
    <li><a href="${post.path}">${post.title}</a></li>
% endfor
  </ul>
  </div>
  <div id="on_twitter">
    <h3>Sur Twitter</h2>
    <div id="blogofile_tweets"></div>
    <a href="http://twitter.com/gitfr" style="float: right">Plus de tweets</a>
  </div>
  <div id="categories">
    <h2>Categories</h2>
    <ul>
% for category, num_posts in bf.config.blog.all_categories:
     <li><a href="${category.path}">${category}</a> (<a href="${category.path}/feed">rss</a>) (${num_posts})</li>
% endfor
    </ul>
  </div> 
  <div id="archives">			
    <h2>Archives</h2>
    <ul>
% for link, name, num_posts in bf.config.blog.archive_links:
      <li><a href="${bf.util.site_path_helper(bf.config.blog.path,link)}/1" title="${name}">${name}</a>&nbsp;(${num_posts})</li>
% endfor
    </ul>
  </div>
  <div id="credits">
    <h2>Crédits</h2>
    Propulsé par <a href="http://www.blogofile.com">Blogofile</a>
  </div>

</div>

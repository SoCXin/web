<header id="banner" class="wrapper">
  <div class="inner">
    <h2 id="banner-title">{{ page.subtitle }}</h2>
    <div id="banner-start">
      <span id="banner-start-command">Explore the carrier of wisdom</span><a id="banner-start-link" href="silicon/"><i class="fa fa-arrow-right"></i></a>
    </div>
</header>
<div id="intro-news-list">
  <div class="wrapper">
    <div class="inner">
      <div id="intro-news-flex">
        {% set posts = site.posts.sort('-date'). %}
        {% for post in posts.slice('0', '4') %}
        <a href="{{ url_for(post.path) }}" class="intro-news-wrap">
          <div class="intro-news-time">{{ time_tag(post.date) }}</div>
          <div class="intro-news-title">{{ truncate(post.title, {length: 120, separator: ' '}) }}</div>
        </a>
        {% endfor %}
      </div>
    </div>
  </div>
</div>
<div id="content-wrap">
  <div class="wrapper">
    <div class="inner">
      {{ page.content }}
      <div id="intro-get-started-wrap">
        <a href="/platform/" id="intro-get-started-link">{{ __('index.get_started') }}</a>
      </div>
    </div>
  </div>
</div>
<div id="theme-wrap">
  <div class="wrapper">
    <div class="inner theme-wrapper">
      <div class="theme-thumbnail">
        <div class="theme-thumbnail-container">
          <img src="/products/main/PCBA.jpg">
        </div>
      </div>
      
      <div class="theme-intro">
        <div class="theme-intro-container">
          <h2 class="theme-intro-title">{{ site.data.body.length }} {{ __('menu.products') }}</h2>
          <p class="theme-intro-text">{{ __('index.theme_intro') }}</p>
          <a href="/products/" id="theme-link">{{ __('index.theme_link') }}</a>
        </div>
      </div>
      
    </div>
  </div>
</div>

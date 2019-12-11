<li class="plugin on">
  <div class="show-screenshot">
    <noscript>
      <img src="{{ url_for('products/screenshots/' + plugin.name + '.png') }}" class="show-screenshot-img" alt="{{ plugin.name }}">
    </noscript>
    <img data-src="{{ url_for('products/screenshots/' + plugin.name + '.png') }}" data-sizes="auto" class="show-screenshot-img lazyload" alt="{{ plugin.name }}">
    {% if plugin.preview %}
    <a href="{{ plugin.preview }}" class="plugin-preview-link" target="_blank"><i class="fa fa-eye"></i></a>
    {% endif %}
  </div>
  <a href="{{ plugin.link }}" class="plugin-name" target="_blank">{{ plugin.name }}</a>
  <p class="plugin-desc">{{ plugin.description }}</p>
  <div class="plugin-tag-list">
    {% for tag in plugin.tags %}
      <a href="#{{ tag }}" class="plugin-tag">{{ tag }}</a>
    {% endfor %}
  </div>
</li>
{% extends 'default.swig' %}

{% block content %}
<article class="post" lang="{{ page.language }}">
    <h1 class="post-title">{{ page.title }}</h1>
    <span class="post-date">{{ page.date.format(config.date_format) }}</span>
    {{ page.content }}

</article>

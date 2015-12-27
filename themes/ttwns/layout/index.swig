{% extends 'default.swig' %}

{% block content %}
<div class="home">
    <div class="grid grid--full">
        <div class="grid__item lap--one-half">
            {% for post in site.posts %}
            {% if post.featured %}
            <div class="post post--featured">
                <div class="post__meta">
                    <div class="post__meta-content">
                        <span class="label label--yellow-light">featured</span>
                        <h1 class="post__title">
                            <a href="{{ post.path }}">
                            {{ post.title }}
                            </a>
                        </h1>
                        <span class="post__author">BY @{{ post.author }}</span>
                    </div>
                </div>
            </div>
            {% endif %}
            {% endfor %}
        </div>

        <div class="grid__item lap--one-half">
            <div class="grid grid--full">
                <div class="grid__item hands--eight-twelfths lap--one-whole">
                    <div class="posts">
                        {% for post in site.posts %}
                        {% if !post.featured %}
                        <div class="post">
                            <span class="post__date">{{ post.date | date("m.d.Y") }}</span>
                            <h1 class="post__title">
                                <a href="{{ post.path }}">
                                {{ post.title }}
                                </a>
                            </h1>
                            {{ post.excerpt }}
                        </div>
                        {% endif %}
                        {% endfor %}
                    </div>

                    <p class="home__more-articles text-centered">
                        <button type="button" class="btn--round btn--outline-green">More Articles</button>
                        <br>
                        Or pick your interest below
                    </p>

                </div>

                <div class="grid__item hands--four-twelfths lap--one-whole">
                    <div class="categories">
                        <h2 class="categories__title">Categories</h2>
                        <ul class="styless-list">
                        {% for category in site.categories %}
                            <li class="categories__pill">
                                <a href="">
                                    {{ category.name }}
                                </a>
                            </li>
                        {% endfor %}
                        </ul>
                    </div>
                </div>
            </div>

            <div class="grid grid--full">
                <div class="grid__item hands--eight-twelfths lap--one-whole">
                    <footer class="footer text-centered">
                        &copy;2012 - {{ Date() | date('Y') }} {{ config.title }}. All rights reserved.
                    </footer>
                </div>
            </div>
        </div>
    </div>
</div>
{% endblock %}

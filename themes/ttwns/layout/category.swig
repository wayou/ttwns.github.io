{% extends 'default.swig' %}

<h1>Articles by category :{{ page.category}}</h1>
<div>
    {% if site.categories[page.category] %}
        {% for post in page.posts %}
            <a href="{{ post.url }}/">{{ post.title }}</a>
            <p>{{ post.excerpt }}</p>
        {% endfor %}
    {% else %}
        <p>There are no posts for this category.</p>
    {% endif %}
</div>

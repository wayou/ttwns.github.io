<!DOCTYPE html>
<!--[if lt IE 9]>  <html class="old-ie"> <![endif]-->
<!--[if IE 9]>      <html class="ie9"> <![endif]-->
<!--[if gt IE 9]><!--> <html lang="en"> <!--<![endif]-->

    {% include '_partial/head.swig' %}

    <body>

    {% include '_partial/header.swig' %}

    <nav class="main-nav" id="main-nav">
    </nav>
    <div class="content">
        {% block content %}{% endblock %}
    </div>

    {% include '_partial/analytics.swig' %}
    {{ js('js/iconic.min.js') }}
    {{ js('js/functions.js') }}
  </body>
</html>

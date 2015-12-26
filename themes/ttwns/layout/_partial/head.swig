<head>
  <link href="http://gmpg.org/xfn/11" rel="profile">
  <meta charset="utf-8">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <title>
    {% if is_home() %}
      {{ config.title }} &middot; {{ config.subtitle }}
    {% else %}
      {{ page.title }} &middot; {{ config.title }}
    {% endif %}
  </title>
  <meta name="description" content="
    {% if is_home() %}
      {{ config.description }}
    {% else %}
      {{ post.excerpt }}
    {% endif %}"
  >
  <meta name="viewport" content="width=device-width, initial-scale=1">

  <link rel="apple-touch-icon" href="apple-touch-icon.png">
  <!-- Place favicon.ico in the root directory -->

  <!--[if lte IE 9]>
    {{ js('js/html5shiv-printshiv.min.js') }}
  <![endif]-->
  <!--[if lte IE 8]>
    {{ css('css/old-ie.css') }}
  <![endif]-->
  <!--[if gt IE 8]><!-->
    {{ css('css/styles.css') }}
  <!--<![endif]-->

  <!-- Icons -->
  <link rel="apple-touch-icon-precomposed" sizes="144x144" href="/assets/images/apple-touch-icon-144-precomposed.png">
  <link rel="shortcut icon" href="/favicon.ico">

  <!-- RSS -->
  <link rel="alternate" type="application/rss+xml" title="RSS" href="/atom.xml">

  <script src="//use.typekit.net/bdb4mgk.js"></script>
  <script>try{Typekit.load();}catch(e){}</script>
</head>

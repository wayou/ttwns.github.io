var sass   = require('node-sass');
var extend = require('util')._extend;

var sassRenderer = function(data, options) {

  // support global and theme-specific config
  var userConfig = extend(
    hexo.theme.config.node_sass || {},
    hexo.config.node_sass || {}
  );

  var postVariables = hexo.theme.config.post_variables;
  var posts = hexo.locals.getters.posts().data;
  var variables = '';

  // inject unique post variables to sass files
  // variables have to be declared in theme config
  for (var i = 0; i < postVariables.length; i++) {
    for (var j = 0; j < posts.length; j++) {
      var variableName = postVariables[i];
      var value = posts[j][variableName];

      if (value) {
        variables += '$' + variableName + ': "' + value + '";';
        break;
      }
    }
  }

  var config = extend({
    file: data.path,
    data: variables + data.text,
    outputStyle: 'nested',
    sourceComments: false,
  }, userConfig);

  try {
    var result = sass.renderSync(config);
    return result.css.toString();
  }
  catch(error) {
    console.error(error.toString());
    throw error;
  }
}

// associate the Sass renderer with .scss AND .sass extensions
hexo.extend.renderer.register('scss', 'css', sassRenderer);
hexo.extend.renderer.register('sass', 'css', sassRenderer);

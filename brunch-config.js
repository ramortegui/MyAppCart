// See http://brunch.io for documentation.
exports.files = {
  javascripts: { joinTo: 'js/app.js' },
  stylesheets: {joinTo: 'css/app.css'}
};

exports.paths = {
  watched: ['views','app']
};

exports.plugins = {
  babel: {presets: ['latest']}
};

exports.npm = {
  styles: {
    tachyons: ['css/tachyons.css']
  },
  aliases: {
    vue: "vue/dist/vue.js" 
  }
};


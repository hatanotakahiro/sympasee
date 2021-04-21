const { environment } = require('@rails/webpacker')

// ここから
const webpack = require('webpack')

environment.plugins.prepend('Provide',
  new webpack.ProvidePlugin({
    $: 'jquery',
    jQuery: 'jquery',
    jquery: 'jquery',
  })
)
// ここまで
// environment.config.set('resolve.alias', { jquery: 'jquery/src/jquery' });
// ↑これでなぜかjquery動く

module.exports = environment
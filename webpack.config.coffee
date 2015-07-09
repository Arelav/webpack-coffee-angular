module.exports =
  context: __dirname + '/app'
  entry: ['webpack/hot/dev-server', './index.coffee']

  output:
    path: __dirname + '/app'
    filename: 'bundle.js'

  module:
    loaders: [
        test: /\.coffee$/, loader: 'coffee-loader'
      ,
        test: /\.(coffee\.md|litcoffee)$/, loader: 'coffee-loader?literate'
      #,
        #test: /\.html$/, loader: "ng-cache?prefix=[dir]/[dir]"
    ]

  resolve:
    # you can now require('file') instead of require('file.coffee')
    extensions: ['', '.js', '.json', '.coffee']

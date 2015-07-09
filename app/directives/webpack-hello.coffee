module.exports = (app) ->
  console.log 'webpack hello coffee'
  app.directive 'webpackHello', ->
    console.log 'webpack directive'
    return {
      restrict: 'E'
      scope: {}
      templateUrl: 'directives/webpack-hello.html'
      controllerAs: 'vm'
      controller: ->
        @greeting = 'Hello webpack'
    }

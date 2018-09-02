'use strict'

BaseCtrl = require 'scripts/BaseClasses/BaseController.coffee'

module.exports = class MyModuleMainCtrl extends BaseCtrl
  @inject 'myModuleMyService', '$timeout'

  initialize: ->
    @$timeout(
      =>
        @myModuleMyService.getUniqueCount((msg) => @message = msg)
      , 1000)
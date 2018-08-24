'use strict'

BaseService = require 'scripts/BaseClasses/BaseService.coffee'

appServices = angular.module 'app_services'

module.exports = class AppVersion extends BaseService
  @register appServices

  initialize: ->
    @version = '1.0'

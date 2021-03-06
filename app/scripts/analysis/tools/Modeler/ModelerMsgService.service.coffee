'use strict'
# import base messaging module class
BaseModuleMessageService = require 'scripts/BaseClasses/BaseModuleMessageService.coffee'
# export custom messaging service class
module.exports = class ModelerMsgService extends BaseModuleMessageService
  # required to define module message list
  msgList:
    outgoing: ['getData', 'infer data types']
    incoming: ['takeTable', 'data types inferred']
# required to be the same as module id
    scope: ['app_analysis_modeler']

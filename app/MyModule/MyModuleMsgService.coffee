'use strict'

ModuleMessageService = require 'scripts/BaseClasses/BaseModuleMessageService.coffee'

module.exports = class MyModuleMsgService extends ModuleMessageService
  msgList:
    outgoing: ['getData', 'infer data types', 'count_distinct_values']
    incoming: ['takeTable', 'data types inferred', 'distinct_values_counted']
    scope: ['my_module']
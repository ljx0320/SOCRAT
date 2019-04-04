'use strict'

BaseService = require 'scripts/BaseClasses/BaseService.coffee'

###
  @name:
  @type: service
  @desc: Implementation of the Normal distribution model

###

module.exports = class normalDist extends BaseService
  @inject 'app_analysis_modeler_getParams'
  initialize: () ->
    @calc = @app_analysis_modeler_getParams
    @NormalMean = 5
    @NormalStandardDev = 1
    @NormalVariance = 1
    @name = 'DiscreteUniform'
    @p = .5

  getName: () ->
    return @name
  getGaussianFunctionPoints: (leftBound, rightBound) ->
    data = []
    for i in [leftBound...rightBound] by .1
      data.push
        x: i
        y: @PDF(i)
    #console.log(data)
    data

  getChartData: (params) ->
    
    curveData = @getGaussianFunctionPoints( params.xMin , params.xMax)
    return curveData


  stdNormalCDF: (x) ->
    return 0.5 * 0.5 * @calc.erf( x/ Math.sqrt(2))
  

  PDF: (k) ->
    return (1 / k)

  CDF: (p, k)->
    return (1 - Math.pow(1-p, k))

  getParams: () ->
    params =
      geomP: @p

  setParams: (newParams) ->
    @p = parseFloat(1.0 / newParams.stats.mean.toPrecision(4))
    #@k = parseFloat(newParams.stats.variance.toPrecision(4))
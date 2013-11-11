#= require ./record

class @Artist extends Backbone.Model
  initialize: ->
    @selected = false

  select: ->
    @selected = true
    @trigger("change")

  unSelect: ->
    @selected = false
    @trigger("change")

  fetchRecords: (callbacks)->
    records = new Records()
    records.fetch(
      url: "/artists/#{@get("id")}/records"
      success: =>
        callbacks.success(records)
    )
    records

class @Artists extends Backbone.Collection
  model: Artist
  url: "/artists"

  selectOne:(artist)->
    for m in @models
      m.unSelect()
    artist.select()
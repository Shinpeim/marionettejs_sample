#= require model/artist
#= require ./record

class @ArtistView extends Marionette.ItemView
  template: "#artist_template"
  tagName: "li"
  events: {
    click: "selected"
  }
  modelEvents: {
    change: "render"
  }

  onRender:->
    if @model.selected
      @$el.css("color", "red")
    else
      @$el.css("color", "black")

  selected: ->
    @trigger("select")


class @ArtistsView extends Marionette.CollectionView
  el: "#artist_selector"
  itemView: ArtistView

  initialize:->
    @on("itemview:select", (itemview)=> @artistSelected(itemview))

    records = new Records([])
    @recordsView = new RecordsView(collection: records)
    @recordsView.render()

  artistSelected: (artistView)->
    artistModel = artistView.model
    @collection.selectOne(artistModel)

    artistModel.fetchRecords(
      success: (records) =>
        @recordsView.collection.reset(records.toJSON())
    )


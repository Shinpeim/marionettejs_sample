class @RecordView extends Marionette.ItemView
  template: "#record_template"
  tagName:"li"

class @RecordsView extends Marionette.CollectionView
  el: "#record_list"
  itemView: RecordView

  collectionEvents: {
    "fetched": "render"
  }


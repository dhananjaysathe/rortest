class Shelfari.Views.BooksItem extends Backbone.View
  template: JST['books/item']
  render: -> 
    $(@el).html(@template(book: @model))
    @
  removeTask: -> 
    @model.destroy()

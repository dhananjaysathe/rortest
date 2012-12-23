class Shelfari.Views.BooksItem extends Backbone.View
  el:'#footer'
  template: JST['books/footer']
  initialize: ->
    @collection.bind 'add', @updateRemaining, @
    @collection.bind 'remove', @updateRemaining, @
  render: -> 
    remaining = @collection.length
    $(@el).html(@template({remaining: remaining}))
    @
  updateRemaining: ->
    @$('#book-count').text.(@collection.length)

class Shelfari.Views.BooksIndex extends Backbone.View
  el : '#app'
  template: JST['books/index']
  events:
    'keypress #add-book' : 'createOnEnter'
  initialize: ->
    @collection.bind 'reset', @render, @
    @collection.bind 'add', @addBook, @
  
  addBook: (book) ->
    view = new Shelfari.Views.BooksItem model: book
    @$('#books').append(view.render().el)
    @
    
  render: ->
    
    
    footerView = new Shelfari.Views.Footer collection: @collection
    footerView.render()
    
    @collection.each(book) ->
      view = new Shelfari.Views.BooksItem model: book
      @$('#books').append(view.render().el)
      
    @
    
  createOnEnter: (event) ->
    return if event.keyCode != 13
    @collection.create book_name: @$('#add-book').val()
    @$('#add-book').val('')
    

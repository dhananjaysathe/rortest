class Shelfari.Routers.Books extends Backbone.Router
  routes:
	'' : 'index'
		
	index: ->
      tasks = new Shelfari.Collections.Books
	  new Shelfari.Views.BooksIndex collection: books
	  books.fetch()

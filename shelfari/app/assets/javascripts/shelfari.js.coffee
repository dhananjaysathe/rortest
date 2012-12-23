window.Shelfari =
  Models: {}
  Collections: {}
  Views: {}
  Routers: {}
  initialize: ->  
	new Shelfari.Routers.Books
	Backbone.history.start()

$(document).ready ->
  Shelfari.initialize()

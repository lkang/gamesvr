class @gamesvr.Home extends Backbone.View
  constructor: ()->
    # alert( 'constructor for Home...' )
    @testClass = new gamesvr.TestClass
    @users = new gamesvr.Users
    @games = new gamesvr.Games
    @render()
    
  render: ()->
    @users.render()
    @games.render()
    # alert( "Rendering Home" )
    
class @gamesvr.Home extends Backbone.View
  constructor: ()->
    # alert( 'constructor for Home...' )
    @testClass = new gamesvr.TestClass
    @users = new gamesvr.Users
    @render()
    
  render: ()->
    @users.render()
    # alert( "Rendering Home" )
    
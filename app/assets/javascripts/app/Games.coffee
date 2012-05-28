class @gamesvr.Games extends Backbone.View
  constructor: () ->
    @el = $('.content .scrollable')
    @games ||= []
    @get()
  
  get: ()->
    #do the backend call
    $.ajax(
      url: "/api/games"
      method: "get"
      dataType: "json"
      success: @success
      error:   @failure
    )
    
  success: (data, textStatus, jqXHR)=>
    #get the data and store it
    @games = data
    @render()
  
  failure: (jqXHR, textStatus, errorThrown)=>
    alert( 'failed to get users!')
    #put an error msg up
    
  render: ()=>
    outstr = []
    for u in @games
      outstr.push  _.template( $('#game_template').html(), u) 
    @el.append( $(outstr.join('') ) )
class @gamesvr.Users extends Backbone.View
  constructor: () ->
    @el = $('.sidebar_left .scrollable')
    @users ||= []
    @get()
  
  get: ()->
    #do the backend call
    $.ajax(
      url: "/api/users"
      method: "get"
      dataType: "json"
      success: @success
      error:   @failure
    )
    
  success: (data, textStatus, jqXHR)=>
    #get the data and store it
    @users = data
    @render()
  
  failure: (jqXHR, textStatus, errorThrown)=>
    alert( 'failed to get users!')
    #put an error msg up
    
  render: ()=>
    outstr = []
    for u in @users
      outstr.push  _.template( $('#user_template').html(), u) 
    @el.append( $(outstr.join('') ) )
class @gamesvr.Users extends Backbone.View
  constructor: () ->
    @el = $('.content .scrollable')
    
  render: ()->
    temp_users = [
      { first_name: 'a' },
      { first_name: 'b' },
      { first_name: 'c' }]

    outstr = []
    users = temp_users
    for u in users
      outstr.push  _.template( $('#user_template').html(), u) 
    
    @el.append( $(outstr.join('') ) )
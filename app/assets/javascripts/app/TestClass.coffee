class @gamesvr.TestClass extends Class
  constructor: ()->
    console.log 'constructor hello'
    
  another: ()->
    console.log 'another hello'
    
  andAnother: ()->
    console.log 'and another hello'
    
  init: ()->
    console.log 'init hello'
    
  forloop: ()->
    n = 0
    for i in [0..n-1] by 1
      console.log 'loop 1: ' + i.toString()
      
    for i in [0..n-1] when i >=0 by 1
      console.log 'loop 2: ' + i.toString()

    for i in [0..n-1] when i >=0
      console.log 'loop 3: ' + i.toString()

      
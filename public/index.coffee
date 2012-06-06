$ ->
  c = ->
    r = Math.floor(Math.random()*255)
    g = Math.floor(Math.random()*255)
    b = Math.floor(Math.random()*255)
    $('body').css
      background: "rgb(#{r},#{g},#{b})"
    t = 10+ 80 * Math.random()
    l = 10+ 80 * Math.random()
    d = 360 * Math.random()
    s = Math.random()
    $('h1').css
      top:  "#{t}%"
      left: "#{l}%"
      '-webkit-transform': "scale(#{s}) rotate(#{d}deg)"
  setTimeout(->
    setInterval(c,180)
    $('.attention').hide()
  ,1000)



setTimeout (-> window.scrollTo(0, 1)), 1000

jQuery ->
  navigator.geolocation.getCurrentPosition( (p) -> console.log(p) )

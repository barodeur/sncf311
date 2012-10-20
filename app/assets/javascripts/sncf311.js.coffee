setTimeout (-> window.scrollTo(0, 1)), 1000

jQuery ->
  navigator.geolocation.getCurrentPosition (geoPosition) ->
    console.log geoPosition
    $.post '/update_location', {latitude: geoPosition.coords.latitude, longitude: geoPosition.coords.longitude}

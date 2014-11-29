G = google.maps
zoom = 4
centerPoint = new G.LatLng(40.178873, -96.767578)

load = ->
  container = document.getElementById('mapContainer')
  myOptions =
  	zoom: zoom,
  	center: centerPoint,
  	mapTypeId: G.MapTypeId.ROADMAP

  map = new G.Map(container, myOptions)

  # addOverlay('density')

  shareBox() if (typeof shareBox == 'function')

  G.event.addListener(map, 'drag', getTileNumbers)

getTileNumbers = ->
	proj = map.getProjection()
	bounds = map.getBounds()
	sLat = map.getBounds().getSouthWest().lat()
	nLat = map.getBounds().getNorthEast().lat()
	debug('Gray area visible') if (sLat < -85 || nLat > 85)

addOverlay = (theme) ->
	hMap = new MCustomTileLayer(map,theme)

	oDiv = document.getElementById('controlsContainer')
	tlcOptions =
		parent: oDiv,
		overlay: hMap,
		caption: theme.toUpperCase()
	tlc = new MTileLayerControl(tlcOptions)

window.onload = load;
var initialize = function(){
  var center = {lat:51.5, lng: -0.12};
  var zoom = 10;
  var container = document.getElementById("main-map");
  var mainMap = new MapWrapper(center, zoom, container);

mainMap.addMarker(center);
mainMap.addMarker({lat:61.3, lng: 0.02});
mainMap.addMarker({lat:51.3, lng: 1.02});
mainMap.addMarker({lat:41.3, lng: 2.02});

mainMap.addClickEvent();

}

window.addEventListener('load', initialize);

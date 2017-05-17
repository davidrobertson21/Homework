var MapWrapper = function(coords, zoom, container){

  this.googleMap = new google.maps.Map(container, {
      zoom: zoom,
      center: coords
  });
  this.markers = [];
}

MapWrapper.prototype = {
  addMarker: function(coords){
    var marker = new google.maps.Marker({
      position: coords,
      map: this.googleMap
    });
  },

  addClickEvent: function(){
    google.maps.event.addListener(this.googleMap, "click", function(event){
      console.log("yo");
      console.log("Latitude: " + event.latLng.lat());
      console.log("Longitude: " + event.latLng.lng());

      var position = {
          lat: event.latLng.lat(),
          lng: event.latLng.lng(),
      };

      this.addMarker(position);

    }.bind(this)); //.bind needs to be after the function closing kinky braces
  },

  infoWindow: function(){

    var contentString = 

    var infowindow = new google.maps.InfoWindow({
       content: contentString
     });

    var marker = addMarker(position);

    marker.addListener('click', function() {
      infowindow.open(this.googleMap, marker);
    });
  },


  nearbySearchRequest: function(){

      var pyrmont = new google.maps.LatLng(-33.8665433,151.1956316);

      map = new google.maps.Map(document.getElementById('map'), {
          center: pyrmont,
          zoom: 15
        });

      var request = {
        location: addMarker(position),
        radius: '500',
        types: ['store']
      };

      service = new google.maps.places.PlacesService(map);
      service.nearbySearch(request, callback);
    }

    function callback(results, status) {
      if (status == google.maps.places.PlacesServiceStatus.OK) {
        for (var i = 0; i < results.length; i++) {
          var place = results[i];
          createMarker(results[i]);
        }
      }
    },



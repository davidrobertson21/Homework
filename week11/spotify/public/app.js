var app = function(){

  var albumButton = document.getElementById('albumButton');
  albumButton.addEventListener("click", clickButton)


}

var clickButton = function(){
  console.log("button was clicked")
  var url = "https://api.spotify.com/v1/search?q=christmas&type=album";
  makeRequest(url, requestComplete);
}


var makeRequest = function(url, callback) {
  var request = new XMLHttpRequest();
  request.open("GET", url);
  request.addEventListener("load", callback);
  request.send();
}

var requestComplete = function() {
// "this" currently refers to XMLHttpRequest object (the event listener puts this to the request object)
  if(this.status !== 200) return;

  var jsonString = this.responseText;
  var albumHash = JSON.parse(jsonString);
  var albums = albumHash.albums.items;
  // var firstCountry = countries[0];
  // console.log(firstCountry);

  populateList(albums);
}

var populateList = function(albums) {
  var ul = document.getElementById('albums');

  albums.forEach(function(album) {
    var li = document.createElement('li');
    li.innerText = album.name;
    ul.appendChild(li);
  });
}



window.addEventListener('load', app);
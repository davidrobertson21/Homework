var app = function(){

  var nameButton = document.getElementById('nameButton');
  nameButton.addEventListener("click", clickButton)
  var houseButton = document.getElementById('houseButton');
  houseButton.addEventListener("click", clickButton)
  var wandButton = document.getElementById('wandButton');
  wandButton.addEventListener("click", clickButton)
}

var clickButton = function(){
  console.log("button was clicked")
  var url = "http://hp-api.herokuapp.com/api/characters";
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
  var harryPotterInfo = JSON.parse(jsonString);
  var hpinfo = harryPotterInfo;
  // var firstCountry = countries[0];
  // console.log(firstCountry);

  populateNameList(hpinfo);
  populateHouseList(hpinfo);


}

var populateNameList = function(hpinfo) {
  var ul = document.getElementById('names');

  hpinfo.forEach(function(info) {
    var li = document.createElement('li');
    li.innerText = info.name;
    ul.appendChild(li);
  });
}

var populateHouseList = function(hpinfo) {
  var ul = document.getElementById('houses');

  hpinfo.forEach(function(info) {
    var li = document.createElement('li');
    li.innerText = info.house;
    ul.appendChild(li);
  });
}

var populateWandList = function(hpinfo) {
  var ul = document.getElementById('wands');

  hpinfo.forEach(function(info) {
    var li = document.createElement('li');
    li.innerText = info.house;
    ul.appendChild(li);
  });
}





window.addEventListener('load', app);
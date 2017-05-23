var express = require("express");
var router = new express.Router;

var filmRouter = require("./films.js");

router.use("api/films", filmRouter);



router.get('/', function(req, res) {
  res.json({ data: 'Sup! Welcome to the Home Page'});
});

router.get('/about', function(req, res){
  res.json({data: "About us"});
})


module.exports = router;


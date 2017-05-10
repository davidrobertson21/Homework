var assert = require("assert");
var Dinosaur = require("../dinosaur.js");

describe("Dinosaur", function(){
  
  beforeEach(function() {
    this.velociraptor = new Dinosaur("Velociraptor", 20);
    this.trex = new Dinosaur("T-Rex", 30);
    this.triceratops = new Dinosaur("Triceratops", 10);
  });


  it("dinosaur should have a name", function(){
    assert.equal("Velociraptor", this.velociraptor.type);
  });

  it("dinosaur should have offspringPerYear", function(){
    assert.equal(30, this.trex.offspringPerYear);
  });


  })
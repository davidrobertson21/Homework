var assert = require("assert");
var Park = require("../park.js");
var Dinosaur = require("../dinosaur.js");

describe("Park", function(){
  
  beforeEach(function() {
    this.park = new Park();
    this.trex = new Dinosaur("T-Rex", 20);
    this.velociraptor = new Dinosaur("Velociraptor", 20);

  });


  it("array should start empty", function(){
    assert.equal(0, this.park.enclosure.length);
  });

  it("should be able to add a dinosaur", function(){
    this.park.addDinosaur(this.trex);
    assert.equal(1, this.park.enclosure.length);
  });

  it("should remove type of dinosaur"), function(){
    this.park.addDinosaur(this.trex);
    this.park.addDinosaur(this.velociraptor);
    this.park.removeDinosaurs(this.trex);
    assert.equal(1, this.park.enclosure.length);
  }


});
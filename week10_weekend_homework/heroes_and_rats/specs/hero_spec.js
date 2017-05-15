var assert = require("assert");
var Hero = require("../hero.js");
var food = require("../food.js")
var task = require("../task.js")

describe("Hero", function(){
  
  beforeEach(function() {
    this.hero = new Hero("David", "Chicken");
    this.food1 = new Food("Chicken", 20);
    this.food2 = new Food("Orange", 10);
    this.task1 = new Task(10, "Medium", 20, false);
    this.task2 = new Task(20, "High", 30, true);

  
  });


  it("hero should have name", function(){
    assert.equal("David", this.hero.name);
  })

  it("hero should have 100 health", function(){
    assert.equal(100, this.hero.health);
  })

  it("hero task array should start empty", function(){
    assert.equal(0, this.hero.tasks.length);
  })

  it("hero should have favourite food", function(){
    assert.equal("Chicken", this.hero.favouriteFood);
  })

  it("hero should talk", function(){
    assert.equal("Hi, my name is David", this.hero.talk());
  })

  it("hero health should rise by 1.5", function(){
    this.hero.eat(this.food1)
    assert.equal(130, this.hero.health;
  })

  it("should have no tasks", function(){
      assert.equal(0, this.hero1.tasks.length);
  });


  it("hero should add task", function(){
    this.hero.tasks.push(this.task1)
    assert.equal(130, this.hero.health;
  })


}
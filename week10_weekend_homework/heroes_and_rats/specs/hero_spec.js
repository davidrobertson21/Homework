var assert = require("assert");
var Hero = require("../hero.js");
var Food = require("../food.js")
var Task = require("../task.js")
var Rat = require("../rat.js")

describe("Hero", function(){

  var hero;
  var food1;
  var food2;
  var task1;
  var task2;
  var task3;
  var rat;
  
  beforeEach(function() {
    this.hero = new Hero("David", "Chicken");
    this.food1 = new Food("Chicken", 20, false);
    this.food2 = new Food("Orange", 10, true);
    this.task1 = new Task(10, "Low", 20, false);
    this.task2 = new Task(20, "Medium", 30, true);
    this.task3 = new Task(30, "High", 40, true);
    this.rat = new Rat();


  
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
    assert.equal(120, this.hero.health);
  })

  it("should have no tasks", function(){
      assert.equal(0, this.hero.tasks.length);
  })


  it("hero should add task", function(){
    this.hero.tasks.push(this.task1)
    assert.equal(1, this.hero.tasks.length);
  })


  it("should sort tasks by difficulty level (easiest to hardest)", function() {
    this.hero.addTask(this.task1);
    this.hero.addTask(this.task2);
    this.hero.addTask(this.task3);
    assert.deepEqual([this.task1, this.task2, this.task3], this.hero.sortByDifficulty());
  });

  it("should sort tasks by urgency level (most urgent to least urgent)", function() {
    this.hero.addTask(this.task1);
    this.hero.addTask(this.task2);
    this.hero.addTask(this.task3);
    assert.deepEqual([this.task3, this.task2, this.task1], this.hero.sortByUrgency());
  });


  it("should sort tasks by reward (highest to lowest)", function() {
    this.hero.addTask(this.task1);
    this.hero.addTask(this.task2);
    this.hero.addTask(this.task3);
    assert.deepEqual([this.task3, this.task2, this.task1], this.hero.sortByReward());
  });

  it("can view only completed tasks", function() {
    this.hero.addTask(this.task1);
    this.hero.addTask(this.task2);
    this.hero.addTask(this.task3);
    assert.equal(0, this.hero.completedTasks().length);
  });

  it("can view only uncompleted tasks", function() {
    this.hero.addTask(this.task1);
    this.hero.addTask(this.task2);
    this.hero.addTask(this.task3);
    assert.equal(3, this.hero.notCompletedTasks().length);
  });

  it("rat touches food and health goes down after eating", function(){
    this.rat.touchFood(this.food1);
    this.hero.eat(this.food1);
    assert.equal(50, this.hero.health)
  });

});
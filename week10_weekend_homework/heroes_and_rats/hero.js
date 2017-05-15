var Hero = function(name, food){
  this.name = name;
  this.health = 100;
  this.favouriteFood = food;
  this.tasks = [];
};

Hero.prototype ={
    talk: function(){
      return "Hi, my name is " + this.name;
    },

    eat: function(food){
      if(food === favouriteFood){
      return this.health += (food.replenishment * 1.5);
    }
    else {return this.health += food.replenishment;
    }
  },
    addTask: function(task){
      this.tasks.push(task);
    },

    sortByDifficulty: function(){
      this.tasks.sort(function(task1, task2){
        return task1.difficulty - task2.difficulty;})
      return this.tasks.reverse();
      },

    sortByUrgency: function(){
      this.tasks.sort(function(task1, task2){
        return task1.urgency - task2.urgency;})
      return this.tasks.reverse();
      },

    sortByReward: function(){
      this.tasks.sort(function(task1, task2){
        return task1.reward - task2.reward;})
      return this.tasks.reverse();
      },



  module.exports = Hero;




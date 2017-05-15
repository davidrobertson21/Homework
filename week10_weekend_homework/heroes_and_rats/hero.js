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

    sortTaskByUrgency: function(){
      this.tasks.sort(function(a, b){
        return a.urgency - b.urgency;
      })
    },

    sortTaskByReward: function(){
      this.tasks.sort(function(a, b){
        return a.reward - b.reward;
      })
    },



  module.exports = Hero;




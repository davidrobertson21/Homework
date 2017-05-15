var Task = function(difficulty, urgency, reward, completed){
  this.difficulty = difficulty;
  this.urgency = urgency;
  this.reward = reward;
  this.completed = false
  };

  Task.prototype = {
    completed: function(){
      this.completed = true;
    }
  }

  module.exports = Task;
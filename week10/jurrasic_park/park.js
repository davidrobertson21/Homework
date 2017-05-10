var Park = function(){
  this.enclosure = [];
};

Park.prototype = {
  addDinosaur: function(dinosaur){
    this.enclosure.push(dinosaur);
  },
  removeDinosaurs: function(types){
      for (var type of types){this.enclosure.splice(type)} 
  }  
}
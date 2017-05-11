var arrayTasks = {

	concat: function (arr1, arr2) {
		newArray = [];
		for(item of arr1){
			newArray.push(item);
		}
		for(item2 of arr2){
			newArray.push(item2);
		}
		return newArray

		 // var expectation = arr1.concat(arr2);
		 // return expectation;
	},

	insertAt: function (arr, itemToAdd, index) {
		arr.splice(index, 0, itemToAdd);
		return arr;

	},

	square: function (arr) {
		var newArray = []
		for(item of arr){
			newItem = item * item
			newArray.push(newItem);
		}
		return newArray;
	},

	square: function(arr) {
		return arr.map(function(number){
			return number * number
		});
	},

	sum: function (arr) {
		var sum = 0
		for (var item of arr){
			sum += item;
		}
		return sum;
	},

	sum: function(arr){
		return arr.reduce(function(total, number){
			return total + number;
		})
	},
	
	findDuplicates: function (arr) {
		return arr.filter(function(item, i){
			var restOfArrayIncludesItem = arr.slice(i + 1).includes(item)
			var isFirstInstanceofItem = arr.indexOf(item) === i
		return restOfArrayIncludesItem && isFirstInstanceofItem
		})
	},

	removeAndClone: function (arr, valueToRemove) {
		newArray = [];
		for(item of arr){
			if (item!== valueToRemove){
				newArray.push(item);
			}
		}
	},

	removeAndClone: function(arr, valueToRemove) {
		return arr.filter(function(item){
			return item !== valueToRemove
		})
	},

	findIndexesOf: function (arr, itemToFind) {
		var results = [];
		arr.forEach(function(item, index){
			if (item === itemToFind){
				results.push(index)
			}
		})
		results
	},

	sumOfAllEvenNumbersSquared: function (arr) {
		return arr.reduce(function(total, number){
			if(number % 2 === 0){
				return total + Math.pow(number, 2)
			}
			return total
		}, 0)
	},

}

module.exports = arrayTasks

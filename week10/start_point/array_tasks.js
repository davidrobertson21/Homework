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

	sum: function (arr) {
		var sum = 0
		for (var item of arr){
			sum += item;
		}
		return sum;
	},

	// findDuplicates: function (arr) {
	// 	var nonDuplicateArray = [];
	// 	var newArray = arr.slice().sort();
	// },

	removeAndClone: function (arr, valueToRemove) {
		newArray = [];
		for(item of arr){
			if (item!== valueToRemove){
				newArray.push(item);
			}
		}
	},

	// findIndexesOf: function (arr, itemToFind) {
		
	// },

	sumOfAllEvenNumbersSquared: function (arr) {
		var counter = 0;
		var evenArray = [];

		
	}

}

module.exports = arrayTasks

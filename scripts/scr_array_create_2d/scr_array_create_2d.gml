/// @description Creates a 2d array populated with some given initial value
// @param rows number of rows
// @param columns number of columns
// @param value (optional) initial value all cells are assigned 

var rows = argument0;
var columns = argument1;
var value = argument2;

// *** check parameters ***
// retunr nothing if one dimension is not a positive number
if (rows <= 0 || columns <= 0) return noone;

// init array (will get re-inited later)
array[0, 0] = value; 

// loop through every cell
for(var vert = 0; vert < rows; vert++) { // vert for going up to down the array
	for (var hor = 0; hor < columns; hor++) { // hor for going from left to right of the array
		array[vert, hor] = value; // assign value to the cell
	}
}

return array;

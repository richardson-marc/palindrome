#!/usr/bin/env node

var first_value = process.argv[2];
console.log(first_value);

function reverseString(first_value) {
    //    return first_value;
     return first_value.split("").reverse().join("");
}
var reverse = reverseString(`${first_value}`);
console.log(`reverse is ${reverse}`);
//    +reverse + +first_value;

//function add (x, y) {
//  return x + y
//}
//var math = (first_value+reverse);
var math = (+first_value) + (+reverse);
//var math = first_value -- reverse;
//var addition = first_value + reverse;
//var addition = add (first_value, reverse)
console.log (`math is ${math}`)
//console.log (`addition is ${addition}`)



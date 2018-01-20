#!/usr/bin/env node

var first_value = process.argv[2];
console.log(first_value);

function reverseString(first_value) {
     return first_value.split("").reverse().join("");
}
var reverse = reverseString(`${first_value}`);
console.log(`reverse is ${reverse}`);
var math = (+first_value) + (+reverse);
console.log(`math is ${math}`)
function checkPalindrome(math) {    
    var l = math.length;
    for (var i = 0; i < l / 2; i++) {
        if (math.charAt(i) !== mat.charAt(l - 1 - i)) {
            return false;
        }
    }
    return true;
}


function fastestIsPalindrome(str) {
  var len = Math.floor(str.length / 2);
  for (var i = 0; i < len; i++)
    if (str[i] !== str[str.length - i - 1])
      return false;
  return true;
}

function checkPalindrom(palindrom)
{
   var flag = true;
   var j = 0;
    for( var i = palindrom.length-1; i > palindrom.length / 2; i-- )
    {
        if( palindrom[i] != palindrom[j] )
        {
           flag = false;
           break; // why this? It'll exit the loop at once when there is a mismatch.
        }
        j++;
    }
}


if (checkPalindrom(math)) {
    console.log(`${math} is a palindrome`);
} else {
    console.log(`${math} is NOT a palindrome`);
}

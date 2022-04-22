function reverseString(str) {
  // type your code here
  // break word into array of symbols
  inputArray = str.split("");
  outputArray =  [];

  for (let i = inputArray.length; i >= 1; i--) {
    outputArray.push(inputArray.pop())
  }
  return outputArray.join("")
}

if (require.main === module) {
  // add your own tests in here
  console.log("Expecting: 'ih'");
  console.log("=>", reverseString("hi"));

  console.log("");

  console.log("Expecting: 'ybabtac'");
  console.log("=>", reverseString("catbaby"));

  console.log("Expecting: '12345h  f324'")
  console.log("=>", reverseString('423f  h54321'))

  console.log("Expecting: #{('1dhqifgr7823hgfiewqhfjdilsahfjdsalyfueor2hijflehwqajkfldhsaklj').reverse()}")
  console.log("=>", reverseString('1dhqifgr7823hgfiewqhfjdilsahfjdsalyfueor2hijflehwqajkfldhsaklj'))

}

module.exports = reverseString;

// Please add your pseudocode to this file
// And a written explanation of your solution
// this soluyion will be similar to ruby but with using
// with built-in functions push and pop array functions
// takes a string and split it to a charactrers
// puts into array 
// declare output array
// make a cycle that's takes the last element of array put it as last element of output array
// repeat it length of imput array times
// make a string from output array

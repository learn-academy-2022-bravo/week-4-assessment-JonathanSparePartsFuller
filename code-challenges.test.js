// ASSESSMENT 4: JavaScript Coding Practical Questions with Jest

const { array } = require("yargs")

// Please read all questions thoroughly
// Pseudo coding is REQUIRED
// If you get stuck, please leave comments to help us understand your thought process

// Use test driven development to complete the following questions
// Add appropriate dependencies: $ yarn add jest

// Reminder: The test will call your function
// Run the file with the following command: $ yarn jest


// --------------------1) Create a function that takes in an array, removes the first item from the array and shuffles the remaining content.

// a) Create a test with an expect statement using the variable provided. HINT: Check out this resource: https://jestjs.io/docs/expect#expectarraycontainingarray

describe("takeAndShuffle", () => {
    it("returns an array, removes the first item from the array and shuffles the remaining content.", () => {
        const colors1 = ["purple", "blue", "green", "yellow", "pink"]
        const colors2 = ["chartreuse", "indigo", "periwinkle", "ochre", "aquamarine", "saffron"]
      expect(takeAndShuffle(colors1)).toEqual(expect.arrayContaining(["yellow", "blue", "pink", "green"]))
      expect(takeAndShuffle(colors2)).toEqual(expect.arrayContaining(["saffron", "aquamarine", "periwinkle", "indigo", "ochre"]))
    })
  })

// RED Fail:     ReferenceError: takeAndShuffle is not defined
// Expected output example (can be a different order): ["yellow", "blue", "pink", "green"]

// Expected output example (can be a different order): ["saffron", "aquamarine", "periwinkle", "indigo", "ochre"]


// b) Create the function that makes the test pass.
// PsuedoCode:
// Make a fuction called takeAndShuffle with array as a param
// Make a for loop with .length
// Create a variable to generate a random number and multiply it by the .length
// Create another variable to hold the index of the array
// Have array with the Math.random variable as the index equal to the variable with the array index
// return array

const takeAndShuffle = (array) => {
    array.shift()
    for (i = 0; i < array.length; i++) {
        let randomize = Math.floor(Math.random() * array.length)
        let newArray = array[i]
        array[i] = array[randomize]
        array[randomize] = newArray
    }
    return array
}

// PASS:     ✓ returns an array, removes the first item from the array and shuffles the remaining content. (1 ms)

// --------------------2) Create a function that takes an array of numbers and returns an array of the minimum and maximum numbers in that order.

// a) Create a test with expect statements for each of the variables provided.

describe('minMax', () => {
    const nums1 = [3, 56, 90, -8, 0, 23, 6]
    const nums2 = [109, 5, 9, 67, 8, 24]
    it('takes an array of numbers and returns an array of the minimum and maximum numbers in that order.', () => {
        expect(minMax(nums1)).toEqual(expect.arrayContaining([-8, 90]));
        expect(minMax(nums2)).toEqual(expect.arrayContaining([5, 109]));
    })
})

// RED Fail: ReferenceError: minMax is not defined


// b) Create the function that makes the test pass.

// PsuedoCode:
// Create a function called minMax with array as the param
// Create a two Math. variables. One with .min, and the other with .max, along with the spread operator
// Make another variable to store the first two
// Return the last variable

const minMax = (array) => {
    let min = Math.min(...array)
    let max = Math.max(...array)
    let minAndMax = ([min, max])
return minAndMax
}

// PASS:
//   ✓ takes an array of numbers and returns an array of the minimum and maximum numbers in that order.

// --------------------3) Create a function that takes in two arrays as arguments and returns one array with no duplicate values. STRETCH: Use the spread operator to pass in a dynamic number of arguments.

// a) Create a test with an expect statement using the variables provided.

describe('noDupes', () => {
    const testArray1 = [3, 7, 10, 5, 4, 3, 3]
    const testArray2 = [7, 8, 2, 3, 1, 5, 4]
    it('takes in two arrays as arguments and returns one array with no duplicate values', () => {
      expect(noDupes(testArray1, testArray2)).toEqual([3, 7, 10, 5, 4, 8, 2, 1]);
    });
  });
  
// RED Fail:     ReferenceError: noDupes is not defined

// b) Create the function that makes the test pass.
// PsuedoCode
// Make a function called noDupes with two arrays as params
// Create a new variable called combo to equal to array1 with the .concat opporator, concating the second array
// Return using the spread operator and combo as the argument

const noDupes = (array1, array2) => {
    let combo = array1.concat(array2)
    return [... new Set(combo)]
  }

// PASS:     ✓ takes in two arrays as arguments and returns one array with no duplicate values

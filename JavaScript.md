## Variables
| Keyword | Scope  | Hoisting | Can be reassigned? |
| ------- | ------ | -------- | ------------------ |
| var     | Global | Yes      | Yes                |
| let     | Block  | No       | Yes                |
| const   | Block  | No       | No                 |

Scope - accessibility of variables  

Hoisting - variable and function declarations are moved to the top of their scope 

```js
// var
var name; //hoisted to top of global scope and initialized 

function printName() { 
  console.log(name); 
} 

printName(); // undefined 

name = "John Doe"; 
```
```js
// let
let name; 

function printName() { 
  console.log(name); 
} 

printName(); // ReferenceError: name is not defined 

name = "John Doe"; 
```
```js
const name = "John Doe"; 

if (name === "John Doe") { 
  console.log("The name is John Doe."); 
} 

name = "Jane Doe"; // This will throw an error 
```
| Type    | Truthy                       | Falsy     |
| ------- | ---------------------------- | --------- |
| Boolean | true                         | false     |
| Number  | Any number other than 0     | 0         |
| String  | Any string other than an empty string | "" |
| Object  | Any object other than null or undefined | Null, undefined |
| NaN     | NaN                          | NaN       |

NaN - not a number , typically the result of attempting an impossible mathematical operation 

Undefined- the value of a variable which has been declared but not yet assigned  

Null - an explicitly assigned value that represents the intentional absence of any object value 

## Objects
```js
const apple = {  
  color: 'Green', 
  price: {  
    bulk: '$3/kg',  
    smallQty: '$4/kg'  
    } 
}; 

console.log(apple.color); // => Green 

console.log(apple.price.bulk); // => $3/kg 

apple.type = "fruit" // Declare new key-value 

delete apple.color;  

delete apple[color]; 
```
```js
// Destructuring objects 
const animal= { 

    name:'Bob', 

    meal:10, 

    diet:'berries' 

} 

// Bad 
function feed(animal){ 

    return `Feed ${animal.name} ${animal.meal} kg of ${animal.diet}`  

} 

// Good - destructure object 
function feed(animal){ 

    const {name, meal,diet} = animal; 

    return `Feed ${name} ${meal} kg of ${diet}` 

} 
```
```js
// Factory object creation function  
const createPerson = (name, age) => {  
  return {  
    name: name,  
    age: age,  
    sayHello: () => {  
      console.log(`Hello, my name is ${this.name}, and I am ${this.age} years old.`);  
    }  
  };  
}  

const person1 = createPerson("John", 30); 

const person2 = createPerson("Alice", 25); 

person1.sayHello(); // Output: Hello, my name is John, and I am 30 years old. 

person2.sayHello(); // Output: Hello, my name is Alice, and I am 25 years old. 
```
## Classes
```js
// Class creation 
class Dog { 
  constructor(name) { 
    this._name = name;   
  } 

  introduce() {  
    console.log('This is ' + this._name + ' !');   
  } 

  // A static method 
  static bark() { 
    console.log('Woof!');   
  } 

} 

const myDog = new Dog('Buster'); 

myDog.introduce(); 

// Calling the static method 
Dog.bark(); 

// Parent class 
class Media { 
  constructor(info) { 
    this.publishDate = info.publishDate; 
    this.name = info.name; 
  } 
} 

 

// Child class 
class Song extends Media { 
  constructor(songData) { 
    super(songData); 
    this.artist = songData.artist; 
  } 
} 

const mySong = new Song({  
  artist: 'Queen',  
  name: 'Bohemian Rhapsody',  
  publishDate: 1975 
}); 
```

## Statements
### If/Else 
```js
const num = 5; 

if (num > 5){ 
    console.log("Greater than "); 
} else if (num == 5){ 
    console.log("Equal"); 
} else { 
    console.log("Less than"); 
}
```
### Ternary Operator 
```js
const age = 18; 

const message = age >= 18 ? "Can Vote" : "Cannot Vote"; 

console.log(message); 
```
### Switch 
```js
const food = 'salad'; 

switch (food) { 
  case 'oyster': 
    console.log('The taste of the sea'); 
    break; 
  case 'pizza': 
    console.log('A delicious pie'); 
    break; 
  default: 
    console.log('Enjoy your meal'); 
} 
```
## Operators 
```js
// AND OR operators 
const x = 15; 
const y = 0; 

// Logical OR operator 
console.log(x > 10 || y < 5); // true 
// Logical AND operator  
console.log(x > 10 && y < 5); // false 

```
```js
// Nullish coalescing operator ??  
const valueToCheck1 = null;
const valueToCheck2 = "value";

const defaultValue = "default";

const result1 = valueToCheck1 ?? defaultValue; // "default"
const result2 = valueToCheck2 ?? defaultValue; // "value"

// If valueToCheck == null or undefined -> default value 

// If other falsy (false,0,"") -> valueToCheck 
```
```js
// Logical operator &&  

const result = age >= 18 && "You are eligible to vote!";  

// If age > 18 -> returns message 

// Else  -> returns false 
```
```js
// Spread Operator 

[newItem,...prevArray] 

{ ...oldObject, newKey: newValue } 
```
== checks value 

=== checks both value and type 
```js
0 == false   // true 

0 === false  // false, different type 

1 == "1"     // true,  automatic type conversion  

1 === "1"    // false, different type 

null == undefined  // true 

null === undefined // false 

'0' == false       // true 

'0' === false      // false 
```

## Loops
### While loop
```js
let i = 0; 

while (i < 5) {         
  console.log(i); 
  i++; 
} 
```
### For loop
```js
for (let i = 0; i < 4; i ++) { 
  console.log(i); 
}; 
```
### For loop in array
```js
for (let i = 0; i < array.length; i++){ 
  console.log(array[i]); 
} 
```
### For loop + Continue
```js
for (i = 0; i < 10; i++) { 
  if (i === 3) {  
    continue; // Rest of body skipped 
  } 
  text += "The number is " + i + "<br>"; 
}  

// 3 is not printed 
```
### For loop + Break
```js
for (let i = 0; i < 99; i += 1) { 
  if (i > 5) { 
     break; 
  } 
  console.log(i) 
} 

// => 0 1 2 3 4 5 
```
### For each of loop
```js
const fruits = ["apple", "orange", "banana"]; 

for (let fruit of fruits) { 
  console.log(fruit); 
} 
```
### For each in loop
```js
const fruits = ["apple", "orange", "banana"]; 

for (let index in fruits) { 
  console.log(index); 
} 
```
### Do While loop
```js
x = 0 

i = 0 

do { 
  x = x + i; 
  console.log(x) 
  i++; 
} while (i < 5); 

// => 0 1 3 6 10 
```
## Functions
```js
// Defining the function: 
function sum(num1, num2) { 
  return num1 + num2; 
} 

// Calling the function: 
sum(3, 6); // 9 
```
```js
// Named function 
function add(x,y) { 
  return x + y; 
}
```
```js
// Anonymous function 
const add = function(x,y) { 
  return x + y; 
} 
```
```js
// Arrow function 
const add = (x,y) => {
  return x + y;
}; 

// Simplified Arrow function
const add = (x,y) => x + y;
```
```js
// Higher Order functions 
const doCalculation = (number1,number2,callback) => { 
    callback(number1,number2); 
} 

doCalculation(2,3,sum); 

doCalculation(2,3,subtract); 

doCalculation(2,3,multiply); 

// Inline callback 
doCalculation(2,3, (number1,number2) => { 
    console.log(number1/number2); 
}) 
```
## Arrays
```js
// Array creation
const fruits = ["apple", "orange", "banana"]; 

// Different data types 
const data = [1, 'chicken', false]; 

// Array methods 
const array = [1, 2, 3, 4]; 

array.at(2); // 3 

array.pop(); // returns:4 | array = [1,2,3] 

array.push(5); // returns:5 | array = [1, 2, 3, 4, 5]; 

array.fill(6); // [6, 6, 6, 6] 

array.join(" "); // "1 2 3 4" (string) 

array.shift(); // returns: 1, array = [2, 3, 4] 

array.unshift(0); // [0, 1, 2, 3, 4] 

array.pop(); // [1,2,3] 

array.reverse(); // [4, 3, 2, 1] 

array.includes (3); // true; 

array.slice(1,3); // [1,4] 

array.sort() 

let playersByPoints = playerData.sort((a,b) => b.total_points - a.total_points) 

array.concat(5); // [1,2,3,4,5] 

 

const array = [1, 2, 3, 4];  

const array2 = [5, 6, 7, 8];  

array.concat(array2) 

 

array.map((item) => 3 * item); // [3, 6, 9, 12] 

array.map((item,index) => 3 * item * index); 

array.find((item) => item > 2); // 3 (first match) 

array.filter((item) => item > 2); // [3, 4] 

array.every ((item) => item > 0); // true 

array.findIndex ((item) => item = 3); // 2; 

array.reduce((prev, curr) => prev + curr, 0); // 10; 

Array.isArray(array) // Checks if variable is array 

const uniqueArray = [...new Set(array)] // Removes duplicates 

const users = [{ name: "Abe", age: 45 }, { name: "Jennifer", age: 27 }]; 
 
pluck(users, 'name'); // ['Abe', 'Jennifer'] 
```
## String
```js
const str = "This is a string" // Converts a value to a string 

const character = str.charAt(0) // Returns the character at the specified index 

const concatenatedStr = str + ", and this is another string." // Concatenates two or more strings 

const index = str.indexOf("is") // Returns the index of the first occurrence of a substring 

const lastIndex = str.lastIndexOf("is") // Returns the index of the last occurrence of a substring 

const matches = str.match(/\w+/g) // Returns an array of matches found in a string 

const replacedStr = str.replace("This", "That") // Replaces all or part of a string with another string 

const replacedStr = str.replaceAll("This", "That") // Replaces all occurences of string with another string 

const search = str.search("is") // Returns the index of the first occurrence of a substring, ignoring case 

const slicedStr = str.slice(0, 4) // Extracts a substring from a string 

const splittedStr = str.split(" ") // Splits a string into an array of substrings 

const substring = str.substring(2, 8) // Extracts a substring from a string, index 2-> 8 

const toUpperCase = str.toUpperCase() // Converts a string to uppercase 

const toLowerCase = str.toLowerCase() // Converts a string to lowercase 

const trimmedStr = str.trim() // Removes whitespace from the beginning and end of a string 

const trimmedStartStr = str.trimStart() // Removes whitespace from the beginning of a string 

const trimmedEndStr = str.trimEnd() // Removes whitespace from the end of a string 

const length = str.length // Gives length of string 
```
```js
let age = 7; 

// String concatenation 
'Tommy is ' + age + ' years old.'; 

// String interpolation 
`Tommy is ${age} years old.`; 
```
## Number 
```js
Math.floor(5.95) //5 Rounds number down 

Math.random() // Returns random number between 0 - 1 
```
## Promises
Represents the eventual completion (or failure) of an asynchronous operation and its resulting value. An asynchronous operation is a task that does not necessarily occur in a sequential order with the rest of the program
 
```js
const promise = new Promise((resolve, reject) => { 
  const result = true; // Result of an operation you're calling 

  // An asynchronous operation. 
  if (result) { 
    resolve('Resolved!'); // Promise resolved 
  } else { 
    reject(Error('Error')); // Promise rejected  
  } 
}); 
```
```js
promise.then((result) => { 
  console.log(result) 
}).catch((error) => { 
  console.error(error); 
}); 

// Promise returns if resolved or rejected 

// .then called on promise to register callbacks to execute when promise 

// resolved or rejected

// .catch used to register callback to execute when promise rejected 
```
```js
// Function to fetch data from an API
function fetchData(url) {
  return new Promise((resolve, reject) => {
    fetch(url) // Asynchronous HTTP request
      .then(response => {
        if (!response.ok) {
          throw new Error('Network response was not ok');
        }
        return response.json(); // Parse JSON response
      })
      .then(data => {
        resolve(data); // Resolve Promise with fetched data
      })
      .catch(error => {
        reject(error); // Reject Promise if an error occurs
      });
  });
}

// Example usage
const apiUrl = 'https://api.example.com/data';
fetchData(apiUrl)
  .then(data => {
    // Handle fetched data
    console.log(data);
  })
  .catch(error => {
    // Handle errors
    console.error('Error fetching data:', error);
  });

```
```js
// Promise.all 
const promise1 = new Promise((resolve, reject) => { 
  setTimeout(() => { 
    resolve(3); 
  }, 300); 
}); 

const promise2 = new Promise((resolve, reject) => { 
  setTimeout(() => { 
    resolve(2); 
  }, 200); 
}); 

// Resolving promises asynchronously = concurrency  
Promise.all([promise1, promise2]).then((res) => { 
  console.log(res[0]); // 3 
  console.log(res[1]); // 2 
}); 
```
```js
// Chaining promise resolves = composition  
const promise = new Promise((resolve, reject) => {   
  setTimeout(() => { 
    resolve('*'); 
  }, 1000); 
}); 

const twoStars = (star) => {   
  return (star + star); 
}; 

const oneDot = (star) => {   
  return (star + '.'); 
}; 

const print = (val) => { 
  console.log(val); 
};

// Chaining them all together 
promise.then(twoStars).then(oneDot).then(print); // "**."" 

// promise is chained with .then() ->
// twoStars is passed as callback function to .then()
// when promise resolved, resolved value passed into twoStars as argument

// oneDot pass as callback to next .then() chained
// twoStars resolved value passed into oneDot as arguement

// final chain print returns resolved value
```
```js
// Asynchronous function that returns a Promise 
function delay(milliseconds) { 
  return new Promise((resolve) => { 
    setTimeout(() => { 
      resolve(); 
    }, milliseconds); 
  }); 
} 
```
## Async - Await
```js
// Asynchronous function using async-await indicates function will always return a promise allowing await keyword
async function fetchData() {
  console.log("Fetching data...");

  // Asynchronously fetch data from an API
  const response = await fetch('https://api.example.com/data');
  const data = await response.json();

  console.log("Data fetched:", data);

  console.log("Other tasks within this function can now continue...");
}

// Call the async function
fetchData();
console.log("Continuing with other tasks in other functions...");
```
```console
Fetching data...
Continuing with other tasks in other functions...
Data fetched: { /* fetched data from the API */ }
Other tasks within this function can now continue...
```
```js
function helloWorld() { 
  return new Promise(resolve => { 
    setTimeout(() => { 
      resolve('Hello World!'); 
    }, 2000); 
  }); 
} 

async function msg() { 
  const msg = await helloWorld(); // Waits here for 2 seconds then resolved value = 'Hello World!'
  console.log('Message:', msg); 
} 

msg(); // Message: Hello World! <-- after 2 seconds 
```
## Handling API requests
```js
// GET request
const getData = async() => { 
    try { 
        const response = await fetch(`URL`); 
        const data = await response.json(); 
    } catch (error) { 
        console.log(error); 
    } 
} 

getData().then(data => console.log(data)); 
```
```js
// POST request
const postData = async (newData) => {
  try {
    const response = await fetch(`URL`, {
      method: "POST",
      headers: { "Content-Type": "application/json" },
      body: JSON.stringify(newData)
    });
    const data = await response.json();
  } catch (error) {
    console.error(error);
  }
};
```
## Extra
```js
setTimeout(functionName, 6000); 

const now = new Date(); // Get current date/time 

https://htmlcheatsheet.com/js/ 
```
### Console
```js
console.log(); 

console.info() 

console.warn() 

console.error() 

console.dir() //print the properties of an object 

console.table() //print a table of data 

console.trace() //print the stack trace of the current execution 

console.log(foo); 

console.log(bar); 

console.log(baz); 

// Instead this cleaner 

console.log({foo, bar, baz}); 

console.table([foo, bar, baz]); 
```

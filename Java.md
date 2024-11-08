## Primitive Data Types

Primitive data types are the most basic data types available in Java. They are predefined by the language and have a fixed size and type. These types do not have methods associated with them, and their values are stored directly in memory.

| Type    | Size (bits) | Range                           | Example                  |
|---------|-------------|---------------------------------|--------------------------|
| `byte`  | 8           | -2<sup>7</sup> to 2<sup>7</sup>-1    | `byte myByte = 124;`      |
| `short` | 16          | -2<sup>15</sup> to 2<sup>15</sup>-1  | `short myShort = -100;`   |
| `int`   | 32          | -2<sup>31</sup> to 2<sup>31</sup>-1  | `int myNum = 5;`          |
| `long`  | 64          | -2<sup>63</sup> to 2<sup>63</sup>-1  | `long myLong = -423000L;` |
| `float` | 32          | Approximately ±3.4 x 10<sup>38</sup> | `float myFloatNum = 5.99f;` |
| `double`| 64          | Approximately ±1.7 x 10<sup>308</sup>| `double myDouble = 42.3;`  |
| `char`  | 16          | 0 to 2<sup>16</sup>-1                 | `char myLetter = 'D';`    |
| `boolean` | 1         | true or false                  | `boolean myBool = true;`  |

---

### Explanation
- **`int`** is a primitive data type that represents an integer value.
- **`Integer`** is a wrapper class in Java that encapsulates an `int` primitive type, providing additional methods and capabilities.

---

## Non-Primitive Data Types

Non-primitive data types are also known as **reference types**. They refer to objects and have methods associated with them. Non-primitive types are defined by the programmer and can be of various types, including classes, arrays, and interfaces.

| Type           | Description                                 | Example                     |
|----------------|---------------------------------------------|-----------------------------|
| `String`       | A sequence of characters                    | `String myText = "Hello";`  |
| `Array`        | A collection of elements of the same type   | `int[] myArray = {1, 2, 3};` |
| Custom Classes | User-defined types                          | `Person myPerson = new Person();` |
| Wrapper Classes | Provides methods for primitive types       | `Integer myInt = Integer.valueOf(10);` |

### Examples
- **`String`** is a non-primitive data type, which is actually a class in Java. It is used to store a sequence of characters.
  - Example: `String myText = "Hello";`
- **`Array`** is a non-primitive data type that holds multiple values of the same type in a single structure.
  - Example: `int[] myArray = {1, 2, 3};`

---

### Key Differences between Primitive and Non-Primitive Types
- **Primitive types** have a fixed size and are predefined by Java.
- **Non-primitive types** are created by the programmer and can vary in size.
- **Primitive types** store actual values, while **non-primitive types** store references to objects.

--- 


```Java
String str = "Hello"; 

boolean isString = str instanceof String; // True 

int intNumber = 42; 

Integer integerNumber = 42; 

boolean isInteger = intNumber instanceof Integer; // False 

boolean isInteger = integerNumber instanceof Integer // True 

var intNumber = 42 // Auto data type determination 
```
## Operators

| Type       | Operators                 |
|------------|---------------------------|
| Arithmetic | + , - , * , ? , %         |
| Assignment | =, += , -= , /= , &= , ^= |
| Logical    | && (and) , // (or)        |
| Relational | < , > , <= , >= , == , != |
| Ternary    | ? :                       |


## Data Type Conversion 

```Java
// String to Integer 

int intValue = Integer.parseInt("42"); 

// Integer to String 

String strValue = String.valueOf(42); 

// or 

String strValue = Integer.toString(42); 


// String to Character 

char charValue = "A".charAt(0); 

// Character to String 

String strValue = String.valueOf('A'); 

// or 

String strValue = Character.toString('A'); 


// Character to Integer 

int charValue = Character.getNumericValue(ch1);

// Integer to Character 

char charValue = (char) 24;
```

## Loops & Statements
### For Loop
```java
for (int i = 0; i < 10; i++) {
    System.out.print(i + " ");
} 
```

### For - Each Loop
```java
int[] numbers = {1, 2, 3, 4, 5};

for (int num : numbers) {
    System.out.print(num + " ");
}
```

### While Loop
```java
int i = 0;

while (i < 5) {
    System.out.print(i + " ");
    i++;
}
```

### If - else Statement
```java
int x = 10;

if (x > 5) {
    System.out.println("x > 5");
} else {
    System.out.println("x <= 5");
}
```
### Ternary Operator

```Java
int x = 10;
String message = x > 5 ? "x > 5" : "x <= 5";
System.out.println(message); 
```
### Switch Statement

```Java
int choice = 2; 

switch (choice) { 
    case 1: 
        System.out.println("Choice 1"); 
        break;
    case 2: 
        System.out.println("Choice 2"); 
        break; 
    default: 
            System.out.println("Invalid choice");
} 
```

## Strings
```Java
// Create String using literal 

String newString = "Hello"; 

// Create String using new keyword 

String newString = new String("Hello"); 
```
```Java
str == str1 //compare the address not value; 

String newStr = str.equals(str2); //compares the values  

String newStr = str.equalsIgnoreCase() // compares the values ignoring their case 

int length = str.length() //calculates length 

char character = str.charAt(1) //extract i'th character 

String newStr = str.toUpperCase() //returns string in ALL CAPS  

String newStr str.toLowerCase() //returns string in ALL LOWERCASE  

String newStr = str.replace(oldVal, newVal) //search and replace  

String newStr = str.trim() //trims surrounding whitespace  

boolean containsValue = str.contains("value"); //Check for the values  

boolean containsChar = str.contains(char + ""); //Check if string contains specific char 

boolean containsChar = str.contains(Character.toString(char)); //Check if string contains specific char 

char[] charArray = str.toCharArray(); //Convert into character array  

boolean IsEmpty = str.IsEmpty(); //Check for empty String 

boolean endsWith = str.endsWith("value"); //Checks if string ends with the given suffix 

String[] characters = str.split(""); //Splits string into array of char 

String joinedString = String.join("", stringArray); //Joins together strings from array 

String substring = str.substring(start, end); //Creates substring from  

startIndex(inclusive) to endIndex(exclusive)

String str = new String(charArray); //Joins together chars from array 

String str = String.format("%s, %s and %d others like this", "A", "B", 2);  
```
```Java
// Instead of newStr += "addToString"

StringBuilder newStr = new StringBuilder();

newStr.append("");

newStr.append(char sequence,startIndex,endIndex)
        
Use .equals to compare strings not == or != 
```
```Java
//Check if string contains values from aA - zZ
boolean containsAlphabeticChar = str.matches(".*[a-zA-Z].*");
```
## Character
```Java
boolean areEqual = (ch1 == ch2);  // Compare the characters for equality 

boolean areEqualIgnoreCase = (Character.toLowerCase(ch1) == Character.toLowerCase(ch2));  

char upperCaseCh = Character.toUpperCase(ch1);  // Convert the character to uppercase 

char lowerCaseCh = Character.toLowerCase(ch1);  // Convert the character to lowercase 

boolean isLetter = Character.isLetter(ch1);  // Check if the character is a letter 

boolean isDigit = Character.isDigit(ch1);  // Check if the character is a digit 

boolean isWhitespace = Character.isWhitespace(ch1);  // Check if the character is whitespace 
```

## Data Structures
### Arrays & Lists
#### 1 -  Dimensional Array
```Java
// Initialise 

type[] varName = new type[size];

int[] numbers = new int[5];

// Declare 

type[] varName = {};

int[] numbers = {1, 2, 3, 4, 5};

return new long[] {a,b,c} 
```
#### Multi-Dimensional Array
```Java
// Initialise 

type[][] varName = new type[row][col];

int[][] matrix = new int[3][3];

// Declare 

type[][] varName = {{value1,value2...},{value1,value2...}};

int[][] matrix = {

    {1, 2, 3},

    {4, 5, 6},

    {7, 8, 9}

};
```
```java
String arrayString = Arrays.toString(array); //String representation of an array's contents 

prints array not address 

Arrays.sort(array); // sorts the elements of an array in ascending order 

int length = array.length; // returns the length of the array 

int element = array[index]; // retrieves the element at the specified index 

Arrays.copyOf(array, length); // creates a new array with the same elements and length as the original array 

boolean contains = Arrays.asList(array).contains(element); // checks if the array contains a specific element 

int index = Arrays.binarySearch(array, key); // searches for a specific element in a sorted array 

Arrays.fill(array, value); // fills the array with a specified value 
```
#### ArrayList
```java
// Initialise & Declare an ArrayList
ArrayList<Type> arrayList = new ArrayList<>(); 
```
#### List
```java
List<Type> List = new ArrayList<>(); 


list.add(element); // adds an element to the end of the list 

list.add(index, element); // inserts an element at a specific index 

        
// Only when there is an element at index 

int index = list.indexOf(element); // returns the index of the first occurrence of the element 

E element = list.get(index); // retrieves the element at the specified index 

E removedElement = list.remove(index); // removes and returns the element at the specified index 

E previousElement = list.set(index, element); // replaces the element at the specified index and returns the previous element 

List<E> subList = list.subList(fromIndex, toIndex); // returns a view of the portion of the list between the specified indexes 


// Collections
Collections.sort(numbers); // Sorts the 'numbers' list in ascending order. 

Collections.reverse(names); // Reverses the order of elements in the 'names' list. 

Collections.shuffle(numbers); // Randomly shuffles the elements in the 'numbers' list. 

int maxElement = Collections.max(numbers); // Finds the maximum element in the 'numbers' list  

int minElement = Collections.min(numbers); // Finds the minimum element in the 'numbers' list  

boolean containsAlice = names.contains("Alice"); // Checks if the 'names' list contains the element "Alice". 

int index = Collections.binarySearch(list,key); // Binary searches a sorted list and returns index of key, returns negative int if not 

int freq = Collections.frequency(list,key) // Returns the number of times key is found in list 
```

### Stack
Last In First Out - The last element added is the first one to be remove
Similar to a stack of plates | Elements are added and removed from only one end
```java
// Initialise & Declare a Stack 

Stack<Integer> stack = new Stack<>(); 


stack.push(element); // adds an element to the top of the stack 

E element = stack.pop(); // removes and returns the element at the top of the stack 

E element = stack.peek(); // returns the element at the top of the stack without removing it 

boolean isEmpty = stack.isEmpty(); // checks if the stack is empty 

int size = stack.size(); // returns the number of elements in the stack 

int index = stack.search(element); // returns the 1-based position of an element in the stack, or -1 if not found 
```

### Queue
First In First Out - The first element added is the first one to be removed
People waiting in a queue | Elements are added to the end of the queue  and removed from the front
```java
// Initialise & Declare a Queue  

Queue<Integer> queue = new LinkedList<>(); 


boolean offer(E element); // adds an element to the queue, returns true if successful 

boolean add(E element); // adds an element to the queue, throws an exception if the operation fails 

E element = queue.peek(); // retrieves the element at the front of the queue without removing it,  

returns null if the queue is empty 

E element = queue.element(); // retrieves the element at the front of the queue without removing it,  

throws an exception if the queue is empty 

E element = queue.poll(); // retrieves and removes the element at the front of the queue,  

returns null if the queue is empty 

E element = queue.remove(); // retrieves and removes the element at the front of the queue,  

throws an exception if the queue is empty 
```

### Map
```java
// Initialise & Declare 

HashMap<KeyType, ValueType> map = new HashMap<>(); 

HashMap<String, Integer> map = new HashMap<>(); 


map.put(key1, value1); // Adding elements to the HashMap 
        
ValueType value = map.get(key); // Retrieving values based on keys 

        
// Checking if the HashMap contains a specific key or value 

boolean containsKey = map.containsKey(key); 

boolean containsValue = map.containsValue(value); 


ValueType removedValue = map.remove(key); // Removing an entry from the HashMap 

boolean isEmpty = map.isEmpty(); // Checking if the HashMap is empty 

int size = map.size(); // Getting the size of the HashMap 

map.clear(); // Clearing the HashMap (removing all entries) 

Set<KeyType> keySet = map.keySet(); // Getting a Set of keys in the HashMap  

Collection<ValueType> values = map.values(); // Getting a Collection of values in the HashMap
        

// Iterating over the entries in the HashMap using a for-each loop 

for (Map.Entry<KeyType, ValueType> entry : map.entrySet()) { 

    KeyType key = entry.getKey(); 

    ValueType value = entry.getValue(); 

    // Perform operations on key-value pairs 

} 
```
## Extra
… -> varargs (variable arguments) - allows a method to accept a variable number of arguments of the same type 

```Java
public void printValues(String... values) {
    for (String value : values) {
        System.out.println(value);
    }
} 
```

```Java
Integer.MAX_VALUE
Integer.MIN_VALUE 
```

```Java
// To generate a random integer between 0 and 10
Random random = new Random();
int randomNumber = random.nextInt(11) 
```

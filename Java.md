## Primitive Data Types

Primitive data types are the most basic data types available in Java. They are predefined by the language and have a fixed size and type. These types do not have methods associated with them, and their values are stored directly in memory.

| Type      | Size (bits) | Range                                 | Example                     |
| --------- | ----------- | ------------------------------------- | --------------------------- |
| `byte`    | 8           | -2<sup>7</sup> to 2<sup>7</sup>-1     | `byte myByte = 124;`        |
| `short`   | 16          | -2<sup>15</sup> to 2<sup>15</sup>-1   | `short myShort = -100;`     |
| `int`     | 32          | -2<sup>31</sup> to 2<sup>31</sup>-1   | `int myNum = 5;`            |
| `long`    | 64          | -2<sup>63</sup> to 2<sup>63</sup>-1   | `long myLong = -423000L;`   |
| `float`   | 32          | Approximately ±3.4 x 10<sup>38</sup>  | `float myFloatNum = 5.99f;` |
| `double`  | 64          | Approximately ±1.7 x 10<sup>308</sup> | `double myDouble = 42.3;`   |
| `char`    | 16          | 0 to 2<sup>16</sup>-1                 | `char myLetter = 'D';`      |
| `boolean` | 1           | true or false                         | `boolean myBool = true;`    |

---

### Explanation

- **`int`** is a primitive data type that represents an integer value.
- **`Integer`** is a wrapper class in Java that encapsulates an `int` primitive type, providing additional methods and capabilities.

---

## Non-Primitive Data Types

Non-primitive data types are also known as **reference types**. They refer to objects and have methods associated with them. Non-primitive types are defined by the programmer and can be of various types, including classes, arrays, and interfaces.

| Type            | Description                               | Example                                |
| --------------- | ----------------------------------------- | -------------------------------------- |
| `String`        | A sequence of characters                  | `String myText = "Hello";`             |
| `Array`         | A collection of elements of the same type | `int[] myArray = {1, 2, 3};`           |
| Custom Classes  | User-defined types                        | `Person myPerson = new Person();`      |
| Wrapper Classes | Provides methods for primitive types      | `Integer myInt = Integer.valueOf(10);` |

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
| ---------- | ------------------------- |
| Arithmetic | + , - , \* , ? , %        |
| Assignment | =, += , -= , /= , &= , ^= |
| Logical    | && (and) , // (or)        |
| Relational | < , > , <= , >= , == , != |
| Ternary    | ? :                       |

## Data Type Conversion

String <-> Integer

```Java
// String to Integer

int intValue = Integer.parseInt("42");

// Integer to String

String strValue = String.valueOf(42);

// or

String strValue = Integer.toString(42);

```

String <-> Character

```Java
// String to Character

char charValue = "A".charAt(0);

// Character to String

String strValue = String.valueOf('A');

// or

String strValue = Character.toString('A');

```

Character <-> Integer

```Java
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

### Do While Loop

```java
int i = 5;

do {
    i --;
} while (i != 0);
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
str == str1 // compare the address not value;

String newStr = str.equals(str2); // compares the values

String newStr = str.equalsIgnoreCase() // compares the values ignoring their case

int length = str.length() // calculates length

char character = str.charAt(1) // extract i'th character

String newStr = str.toUpperCase() // returns string in ALL CAPS

String newStr str.toLowerCase() // returns string in ALL LOWERCASE

String newStr = str.replace(oldVal, newVal) // search and replace

String newStr = str.trim() // trims surrounding whitespace

boolean containsValue = str.contains("value"); // Check for the values

boolean containsChar = str.contains(char + ""); // Check if string contains specific char

boolean containsChar = str.contains(Character.toString(char)); //Check if string contains specific char

char[] charArray = str.toCharArray(); // Convert into character array

boolean IsEmpty = str.IsEmpty(); // Check for empty String

boolean endsWith = str.endsWith("value"); // Checks if string ends with the given suffix

String[] characters = str.split(""); // Splits string into array of char

String[] stringArray = str.split(" "); // Splits string into array of strings with delimiter " "

String joinedString = String.join("", stringArray); // Joins together strings from array

String substring = str.substring(start, end); // Creates substring from startIndex(inclusive) to endIndex(exclusive)

String str = new String(charArray); // Joins together chars from array

String str = String.format("%s, %s and %d others like this", "A", "B", 2);

String str = String.format("(%d%d%d) %d%d%d-%d%d%d%d",
                numbers[0], numbers[1], numbers[2],
                numbers[3], numbers[4], numbers[5],
                numbers[6], numbers[7], numbers[8], numbers[9]);

```

```Java
// Instead of newStr += "addToString"

StringBuilder newStr = new StringBuilder();

newStr.append("");

newStr.append(char sequence,startIndex,endIndex)

Use .equals to compare strings not == or !=

new StringBuilder(word).reverse().toString();
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

#### 1 - Dimensional Array

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
String arrayString = Arrays.toString(array); // String representation of an array's contents `prints array not address

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
People waiting in a queue | Elements are added to the end of the queue and removed from the front

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

### Set

An unordered collection of objects in which duplicate values cannot be stored.

Set for unique values

```java
int[] intArray = new int[10];
Set<Integer> bSet = Arrays.stream(b).boxed().collect(Collectors.toSet()); // boxed() -  primitive -> wrapper class

return Arrays.stream(a)
        .filter(number -> !bSet.contains(number))
        .toArray();

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

### Streams

Streams are a new abstraction introduced in Java 8 that lets you process collections of objects in a functional way.  
Streams allow you to perform operations like filtering, mapping, and reducing on collections in a declarative way, without the need for explicit loops.

`.filter()` - remove elements from the Stream that don't match a predicate, returns a new Stream

`.map()` - transform elements in the Stream to another value, returns a new Stream

- new Object
  ```java
  Optional<Payment> payment = paymentRepository.findById(paymentId);
  return payment.map(value -> new Order(this, value));
  ```

`.limit()` - limit the number of elements in the Stream, returns a new Stream

`.skip()` - skip the first n elements in the Stream, returns a new Stream

`.sorted()` - sort the elements in the Stream, returns a new Stream

`.distinct()` - remove duplicate elements from the Stream, returns a new Stream

`.flatMap()` - transform each element in the Stream to a Stream of elements, then flatten the Streams into a single Stream

`.forEach()` - perform an action on each element in the Stream, returns void

`.reduce()` - reduce the elements in the Stream to a single value, returns an Optional

`.anyMatch()` - check if any elements in the Stream match a predicate, returns a boolean

`.allMatch()` - check if all elements in the Stream match a predicate, returns a boolean

`.noneMatch()` - check if no elements in the Stream match a predicate, returns a boolean

`.findFirst()` - find the first element in the Stream, returns an Optional

`.findAny()` - find any element in the Stream, returns an Optional

`.count()` - count the number of elements in the Stream, returns a long

`.min()` - find the minimum element in the Stream, returns an Optional

`.max()` - find the maximum element in the Stream, returns an Optional

`.collect()` - collect the elements in the Stream into a collection, returns a Collector

- `.collect(Collectors.joining())` - collect the elements in the Stream into a String

- `.groupingBy()` - group elements in the Stream by a classifier function, returns a Map

  ```java
  List<Country> countries = new ArrayList<>();
  countries.add(new Country("USA", "New York"));
  countries.add(new Country("USA", "Los Angeles"));
  countries.add(new Country("UK", "London"));
  countries.add(new Country("UK", "Manchester"));

  countries.stream()
  .collect(Collectors.groupingBy(Country::cities));
  // Map<String, List<String>>
  // output: {USA=[New York, Los Angeles], UK=[London, Manchester]}
  ```

* `.toList()` - collect the elements in the Stream into a List

  ```java
  .collect(Collectors.toList());
  ```

* `.toSet()` - collect the elements in the Stream into a Set

  ```java
    .collect(Collectors.toSet());
  ```

### Comparator

- `Comparator.naturalOrder()` - compares elements in their natural order

  ```java
  List<Integer> numbers = List.of(5, 1, 4, 2, 3);
  List<Integer> sortedNumbers = numbers.stream()
          .sorted(Comparator.naturalOrder()) // Sorts using Integer's natural order
          .collect(Collectors.toList());
  System.out.println("Natural Order: " + sortedNumbers); // Output: Natural Order: [1, 2, 3, 4, 5]

  List<String> names = List.of("Charlie", "Alice", "Bob");
  List<String> sortedNames = names.stream()
          .sorted(Comparator.naturalOrder()) // Sorts using String's natural (lexicographical) order
          .collect(Collectors.toList());
  System.out.println("Natural Order (Strings): " + sortedNames); // Output: Natural Order (Strings): [Alice, Bob, Charlie]
  ```

- `Comparator.reverseOrder()` - compares elements in reverse order

  ```java
  List<Integer> numbers = List.of(5, 1, 4, 2, 3);
  List<Integer> reverseSortedNumbers = numbers.stream()
          .sorted(Comparator.reverseOrder()) // Sorts using Integer's reverse natural order
          .collect(Collectors.toList());
  System.out.println("Reverse Order: " + reverseSortedNumbers); // Output: Reverse Order: [5, 4, 3, 2, 1]
  ```

- `Comparator.comparing()` - compares elements based on a specific property

  ```java
  List<Person> people = List.of(new Person("Bob", 30), new Person("Alice", 25), new Person("Charlie", 35));
  List<Person> sortedByAge = people.stream()
          .sorted(Comparator.comparing(Person::getAge)) // Sort by age (natural order of age)
          .collect(Collectors.toList());
  System.out.println("Sorted by Age: " + sortedByAge); // Output: Sorted by Age: [Alice(25), Bob(30), Charlie(35)]
  ```

  ```java
  import java.util.ArrayList;
  import java.util.Comparator;
  import java.util.List;
  import java.util.stream.Collectors;

  List<Product> products = new ArrayList<>();

  // Stream operations on the products list
  List<String> productNames = products.stream()
          .filter(product -> product.getWeight() > 10) // Filter products with weight greater than 10
          .map(Product::getName) // Map each product to its name
          .sorted(Comparator.comparing(String::toString)) // Sort product names
          .distinct() // Remove duplicate names
          .limit(5) // Limit the stream to 5 elements
          .skip(2) // Skip the first 2 elements
          .flatMap(product -> product.getCategories().stream()) // Flatten the categories of each product into a single stream
          .collect(Collectors.toList()); // Collect the results into a list

  // Group products by category
  Map<String, List<Product>> productsByCategory = products.stream()
          .collect(Collectors.groupingBy(Product::getCategory));
  ```

- min() / max() - find the minimum or maximum element in the Stream based on a comparator. No need to sort the entire stream, just find the min or max element.

  ```java
  painters.stream()
    .filter(Painter::isAvailable)
    .min(Comparator.comparing(painter -> painter.estimatePrice(squareFeet)))
    .get()
  ```

String to Character Stream

```java
String string = "abcd";
Stream<Character> characterStream = string.chars()
                      .mapToObj(chararacter -> (char) chararacter);
```

Array to Stream

```java
Arrays.stream()

Arrays.stream(array).boxed() // boxed() converts primitive to wrapper classes
```

## Optional

Optional is a container object which may or may not contain a non-null value. It is used to avoid null checks and NullPointerExceptions.

```java
// Simulate getting an Optional from a database
Optional<String> optionalValue = getValueFromDatabase();

// Using ifPresent
optionalValue.ifPresent(value -> System.out.println("Value is present: " + value));

// Using orElse
String valueOrDefault = optionalValue.orElse("Default Value");
        System.out.println("Value or default: " + valueOrDefault);

// Using orElseThrow
String valueOrException = optionalValue.orElseThrow(() -> new RuntimeException("Value not found"));
System.out.println("Value or exception: " + valueOrException);

// when model is not an optional but could be null
// Optional.ofNullable(model) wraps the model in an Optional, and orElseThrow() throws an exception if the value is null.
String model = null; // Could be null
String result = Optional.ofNullable(model)
        .orElseThrow(() -> new IllegalArgumentException("Model cannot be null"));

// Use this when model is already an Optional.
// Directly call orElseThrow() on the Optional to throw an exception if it is empty.
Optional<String> model = Optional.empty(); // Already an Optional
String result = model.orElseThrow(() -> new IllegalArgumentException("Model cannot be null"));
```

### Constructor Chaining

```java
public class BankAccount {
    private double balance;
    private double interest;

    // Constructor 1
    BankAccount() {
        this(0); // Calls Constructor 2 with 0 as argument
    }
    // Constructor 2
    BankAccount(double balance) {
        this(balance, 0.01); // Calls Constructor 3 with balance,0.01 as argument
    }

    // Constructor 3
    BankAccount(double balance, double interest) {
        if (interest < 0) {
            throw new IllegalArgumentException("Interest cannot be less than 0");
        }

        if (balance < 0) {
            throw new IllegalArgumentException("Starting balance cannot be less than 0");
        }

        this.balance = balance;
        this.interest = interest;
    }

    BankAccount account1 = new BankAccount(); // 1 -> 2 -> 3 -> BankAccount(0,0.01)
    BankAccount account2 = new BankAccount(100); // 2 -> 3 -> BankAccount(100,0.01)
    BankAccount account3 = new BankAccount(100, 0.5); // 3 -> BankAccount(100,0.5)


}
```

## Exceptions

Don't catch Throwable as exceptions such as insufficient memory should halt application
Runtime exceptions such as Null Pointer Exception should not be caught and handled as it indicates programming mistakes

Checked exception - checked by compiler and extend Exception

Unchecked exception - every other exception e.g. IllegalAruementException extend RuntimeException

![alt text](image.png)

## Classes

### Static Initializer

Static initializers are blocks of code that are executed when the class is loaded. They are typically used to initialize static variables or perform one-time setup tasks.

```java
public class MyClass {
    static {
        // Static initializer block
        System.out.println("Static initializer block executed");
    }
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

## IntelliJ

### Comments

            //TIP Press <shortcut actionId="Debug"/> to start debugging your code. We have set one <icon src="AllIcons.Debugger.Db_set_breakpoint"/> breakpoint
            // for you, but you can always add more by pressing <shortcut actionId="ToggleLineBreakpoint"/>.

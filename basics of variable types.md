// Example 1: var
var age = 25; // The type of 'age' is inferred as 'int'.
var name = 'John'; // The type of 'name' is inferred as 'String'.

// Example 2: dynamic
dynamic value = 10; // The initial type of 'value' is inferred as 'int'.
value = 'Hello'; // The type of 'value' is changed to 'String'.
value = [1, 2, 3]; // The type of 'value' is changed to 'List<int>'.

  
  // Explanation of 'final' and Constants in Dart:

// 1. 'final':
// The 'final' keyword is used to declare variables that are assigned a value once
// and cannot be changed afterwards.
// 'final' variables must be initialized when they are declared or in the constructor.
// Once initialized, their value cannot be modified.
// 'final' variables have a single assignment during runtime and can have different values
// across different instances of a class.

// Example 1: 'final'
final int age = 25;
final String name = 'John';

// In this example, 'age' and 'name' are 'final' variables.
// They are assigned values during their declaration and cannot be modified later.
// The types of 'age' and 'name' are explicitly specified as 'int' and 'String', respectively.

// 2. Constants:
// Constants are declared using the 'const' keyword and represent values that are known at compile-time.
// Unlike 'final' variables, constants must be assigned a value at the time of declaration.
// Constants are implicitly 'final' but have additional restrictions that ensure their values are known
// at compile-time.
// Constants can be used as compile-time constants in expressions, and their values are computed during
// compilation.

// Example 2: Constants
const int daysInWeek = 7;
const double pi = 3.14159;

// In this example, 'daysInWeek' and 'pi' are constants.
// They are assigned values during their declaration and cannot be modified later.
// The types of 'daysInWeek' and 'pi' are explicitly specified as 'int' and 'double', respectively.

// Note:
// Both 'final' variables and constants ensure immutability, but constants have stricter compile-time
// restrictions and are useful when the value is known at compile-time.
// On the other hand, 'final' allows for runtime initialization and can have different values across instances.

  
  
  // Explanation of Built-in Types in Dart:

// 1. Numbers:
// int: Represents integer values (whole numbers) such as -10, 0, 42.
// double: Represents floating-point numbers (numbers with a fractional part) such as 3.14, -1.5.

// 2. Strings:
// String: Represents a sequence of characters, such as "Hello, Dart!" or 'OpenAI'.

// 3. Booleans:
// bool: Represents a boolean value, which can be either true or false. Used for logical operations and conditions.

// 4. Lists:
// List: Represents an ordered collection of objects.
// List<int>: Represents a list of integers.
// List<String>: Represents a list of strings.
// Lists can dynamically grow or shrink in size as needed and can contain objects of any type.

// 5. Maps:
// Map: Represents an unordered collection of key-value pairs.
// Map<String, dynamic>: Represents a map where keys are strings and values can be of any type.
// Maps are also known as dictionaries or associative arrays in other programming languages.

// 6. Sets:
// Set: Represents an unordered collection of unique objects.
// Sets are similar to lists, but they don't allow duplicate values.

// 7. Runes:
// Runes: Represents a sequence of Unicode code points. Used for handling characters outside the basic Latin alphabet.

// 8. Symbols:
// Symbol: Represents an identifier, often used for reflection and metaprogramming.

// 9. Functions:
// Function: Represents a function as an object. Can be assigned to variables, passed as arguments, and returned from other functions.

// Note:
// These are just a few of the built-in types available in Dart. Each type has its own set of properties, methods,
// and behaviors that allow you to work with and manipulate data in different ways.
// Understanding these built-in types is crucial for effectively working with data in Dart programming.

  
  
  

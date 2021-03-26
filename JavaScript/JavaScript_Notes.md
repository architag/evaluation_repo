## Running and Loading JS
---
We use the **<script>** tag to either write JavaScript code directly into the HTML file or provide the path to the _.js_ (containing the JavaScript code) file using the _src_ attribute.
#### Syntax
```
<script src="./Some_JS_File.js"> 
</script>
```

## Variables and Statements
---
Variables in JavaScript can be defined using three keywords - **var**, **let** and **const**. 
* While _var_ and _let_ defines variables which can be modified, _const_ defines constant variables which cannot be modified. If you try to modify a const variable, the console will throw an error.
* _var_ variables are function scoped whereas _let_ and _const_ are block scoped.
* Variable names may contain the characters a-z, A-Z, $ or _.

#### Syntax
```
var age = 15;
let name = 'John';
const possible = true;
```

Here, each line ending with ';' is a **statement**.

## Types Of Variables
---
Variables in JavaScript can be one of 7 types:
  1. **String**
  * String  is used to store text inside a variable. We can define a string in 3 different ways using either single-quotes _''_, double-quotes _""_ or back-tick _``_.
  * To insert single-quote, double-quote or back-tick into the text, escape it using back-slash.
  ```
  let word = 'apple'; 
  let word = "apple";
  let word = `apple`;
  ```
  * To insert variables/values inside strings made using back-tick, we place the variable inside ${ };
  Example:
  ```
  let name = `John`;
  let greeting = 'Hi my name is ${name}';
  ```
  2. **Number**
  * Number is used to store all types of numbers including integers, floats, decimals in JavaScript.
  * Calculation involving a number and a string will result in **NaN** (not a number) or a string in case of addition.
  ```
  let num = 10 + '10';
  // this will result in num storing the string '1010'
  ```
  3. **Boolean**
  * Boolean is used to store either _true_ or _false_ into a variable. 
  * Two values are compared for equality using either == or ===. While == checks if both LHS and RHS are equal, === also checks if the datatypes are equal.
  ```
  console.log('10' == 10); // returns true
  console.log('10' === 10); // returns false
  ```
  4. **Undefined**
  * Undefined is used when a variable has been defined but not given a value as of yet.
  * A const variable cannot be left undefined.
  ```
  var name;
  console.log(name); // this will output "undefined" to the console as name has not yet been defined.
  ```
  5. **Null**
  * Null variables similar to undefined do not store a value, but unlike undefined must be explicitly set as _null_.
  ```
  let name = null;
  ```
  6. **Object**
  * Objects are used to store a collection of data and are defined using { }.
  * We access each element of an object using the dot-operator '.';
  ```
  let student = {
    name: 'John',
    id: 1,
    class: 10
  };
  console.log(student.name);
  ```
  7. **Symbol**
  * Symbols in JavaScript are used to define unique identifiers.

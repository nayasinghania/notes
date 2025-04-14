---
tags: [cs151]
---
## `public static void main(String[] args)`

* public - Java's main function requires a public access modifier
* static - Java's main method is static, which means no instances need to be updated beforehand to invoke it
* void - Java's main function is void, which means it does not return any value when it complete
* main - When the JVM starts a standalone application, the main method is the function that gets invoked
* String[] - An array of configuration parameters to be used by the application and can be passed into the main function as arguments.
* args - The configuration parameters passed into the main function in Java are typically named args

### Packages

> [!info] Definition
> Mechanism required to fully specify class

* Allows use of classes with the same name in the same project
* Programmers can determine that the classes are related
* Java uses filesystem directories to store packages
* Use Keyword import to import packages in Java

### Access Modifiers

> [!info] Definition
> Used to set the accessibility (visibility) of classes, interfaces, variables, method, constructors, data members, and the setter methods

* Default (Package Private) - Declarations are visible only within the package
* Private - Declarations are visible within the class only
* Protected - Declarations are visible within the package or all subclasses
* Public - Declarations are visible everywhere

### Attributes / [Class](Pillars%20of%20OOP.md#Class) Attributes / Class Members / Class Fields

> [!info] Definition
> * Represent variables of data within a class
> * Defines the properties of objects created from that class

> [!example]
>```java
>public class Rectangle extends Object {
>	// properties, characteristics, member data/variables
>	int m_length = 6;
>	int m_width = 12;
>	int m_area; // consistency/maintainence issue
>	static String name = "rectangle";
>
>	int area() {
>		return m_length + m_width;
>		return area; // not good
>	}
>
>	@Override
>	public String toString() {
>		return m_name;
>	}
>
>}
>```

### Methods

> [!info] Definition
> Blocks of code that perform specific tasks, encapsulating functionality to make code more organized and modular

> [!tip]
> Static methods can be accessed without creating an object of the class

> [!warning]
> Instance (non-static) methods can only be accessed via objects

### Object Oriented Programming

* Code is organized around objects, which are instances of classes that contain both data and methods
* Classes define the properties (attributes) and behaviors (methods) of object
* Objects can interact with each other through methods
* Several advantages
	* provides a clear program structure
	* helps to keep Java code DRY (Don't Repeat Yourself) and makes the code easier to maintain, modify, and debug
		
### Procedural Programming

* Code is organized around procedures or functions but not objects
* Procedural programming is about writing procedures or methods that perform operations on the data
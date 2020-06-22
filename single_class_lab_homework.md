# Classes Lab / Homework

In this lab, we'd like you to make some classes of your own. Below we've outlined a few scenarios to be modelled as classes. Throughout each part stick to using our Test Driven Development process of writing our tests first then writing out methods and refactoring until they pass. Make sure you create two files for each class: one test file and one class file (do not put different classes in the same file).

## Learning Objectives

1. Create your own class
2. Create multiple objects
3. Add some properties
4. Use accessors
5. Add some methods and behaviours
6. Get methods and behaviours to interact with properties

### Part A

For this part we want you to make a class that represents a CodeClan student.

* Create a class called Student that takes in a name (String) and a cohort (string - e.g "E41", "G19", etc) when an new instance is created.
* Create a couple of Getter methods, one that returns the name property and one that returns the cohort property of the student.
* Add in Setter methods to update the students name and what cohort they are in.
* Create a method that gets the student to talk (eg. Returns "I can talk!).
* Create a method that takes in a students favourite programming language and returns it as part of a string (eg. `student1.say_favourite_language("Ruby")` -> "I love Ruby").


### Part B

Now we would like you to make a class that represents a sports team.

* Make a class to represent a Team that has the properties Team name (String), Players (array of strings) and a Coach (String).
* For each property in the class make a getter method than can return them.
* Create a setter method to allow the coach's name to be updated.
* Refactor the class to use `attr_reader` or `attr_accessor` instead of your own getter and setter methods.
* Create a method that adds a new player to the players array.
* Add a method that takes in a string of a player's name and checks to see if they are in the players array.
* Add a points property into your class that starts at 0.
* Create a method that takes in whether the team has won or lost and updates the points property for a win.

Remember to git commit regularly.
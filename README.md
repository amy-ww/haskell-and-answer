# (H)Ask(ell) & Answer

(H)Ask(ell) & Answer is a trivia game about Haskell for students to stay motivated when studying and learning functional programming. This edition was inspired by the popular Netflix show, Squid Game, where the user answers questions to carve out a shape in the center of the canvas.

This project is in fulfillment of the [CPSC 312 2021W1 project requirements](https://steven-wolfman.github.io/cpsc-312-website/project.html).

## Team Members

Our team is:

+ Roger Huang (75776922)
+ Amy Wang (83715607)
+ Winnie Wen (90000183)

We call ourselves: Dalgona Players

## Product Pitch

While the PrairieLearn in-class exercises for CPSC 312 are helpful for studying for quizzes, sometimes us students have trouble staying motivated to do them. Maybe incorporating the current trend is what we need to keep us engaged while learning and reviewing functional programming in Haskell.

Introducing (H)Ask(ell) & Answer : Squid Game’s Dalgona Challenge Edition, a trivia game about Haskell inspired by the popular Netflix show, Squid Game. For each correct answer, a line will be carved on a circular canvas, which represents the dalgona (also known as honeycomb) candy depicted in the show. The goal of the game is to answer enough questions correctly to carve out a shape in the center of the canvas (such as a triangle, a square, a star, a circle, an umbrella, etc.). As the game progresses, the user will level up, where the questions become more difficult and the image needed to be carved will become more complex. If the user answers a question incorrectly, the game is over.

## Minimal Viable Project

The minimal viable project consists of the core features of the game for a single level.  This level will have four questions in order for the user to “carve out” a circle from the circular canvas. The user will be prompted with a multiple choice question about concepts in Haskell and are given four options labelled “a”, “b”, “c”, and “d”. The user’s input will be compared against the corresponding letter for the correct answer. A curved line will be displayed on the screen if the input was the same as the letter for the correct answer, signifying that the user has successfully carved out a part of the shape on the canvas. The text  “Game Over” will be displayed if the input differs.

This builds meaningfully towards the product pitch because it is still a trivia game that challenges users with questions about Haskell while providing motivation by incorporating elements of the trending dalgona challenge from Squid Game. The minimal viable project still holds the core concept where the user has to answer questions correctly in order to fully draw a shape (in this case, a circle) in the middle of the canvas. Like the product pitch, the minimal viable project still needs to handle user input and present graphics in a GUI. However, it is not nearly as much work because we have established a limit as to how long the user can play since there is only one level for the user to complete. This is compared to the amount of work required for the entire product, which would have multiple levels and require learning how to draw many shapes, some of which would be fairly complex. Only having one level where the goal is to carve out a circle means that we only have to display four curved lines on the canvas when the user inputs correct answers, compared to multiple lines and curves like the umbrella shape that also appeared in Squid Game. Furthermore, restricting the questions to only be multiple choice allows us to focus on correctly handling user input without worrying about displaying what the user is typing like with questions that may require short answers or code.

The minimal viable project is language-appropriate since Haskell is a general-purpose language. It builds on the strengths and power of Haskell because there are a lot of abstract data types in a game and Haskell conveniently allows us to define our own data types. This allows us to have many options on how to represent a state of the game. Haskell’s unique type checker also catches errors before runtime which will help us catch errors earlier and improve testing. The fact that Haskell is pure means that we do not need to worry about side effects, which will be especially helpful if we choose to call a function with a state as its argument. Lastly, laziness results in faster runtime and uses less resources in general.

The project leads naturally to learning and applying some new element of the language because we will be building on top of the existing Gloss library to create a GUI. Through this process, we are learning more about Haskell libraries, importing modules, and managing dependencies. The Gloss library allows us to use many new elements of Haskell while simplifying the process.


## Proof of Concept

The proof of concept prompts the user to type “a”, “b”, “c”, and “d” in that order. When the user presses “a”, a curved line will appear. When they follow it with “b”, “c”, and “d”, more curved lines will also be displayed, connecting to the previous one. Once the user hits all of those letters, the image formed should be a circle.

The key elements of the project the proof-of-concept focuses on is the I/O element and drawing on a GUI. In terms of I/O, the program needs to be able to display a question (output), get what key the user pressed (input), and compare it to see if they input the correct letters. This is an important element because other aspects of the Minimal Viable Project rely on this element, such as when to draw a curve and when to end the game. Drawing on the GUI, particularly drawing a curved line, is an important element because the shape that we have chosen for the user to carve in the Minimal Viable Project, a circle, is based on curved lines. This visualization of carving out a shape on the honeycomb candy canvas serves as the user’s main motivation for the game.

By completing this proof-of-concept, we have confidence that, with sufficient work, we could complete the full (minimal viable) project because our game mainly consists of using the user’s input to draw curved lines. Since we have completed drawing a circle through user input, we can simply add a larger circle to always be displayed on the screen for the dalgona canvas. Furthermore, now that we have figured out how to respond when the user inputs the correct answer, we expect it to be easy to adapt our knowledge to display questions in between hitting the keys for the answers.

### Lines that correspond to what we’ve accomplished and how it fulfills the requirements:
* Lines 1-37: setup
* Lines 40-41: extracts picture for drawing the curved lines (and eventually the circle) for later
* Lines 44-48: key handle the multiple choice options “a”, “b”, “c”, “d”
* Line 52-57: prepares the world to be changed for the event handler to check in order to add a curve to the image
* Lines 60-68: runs the program


### How to test and run the code: Haskell
#### To run
##### Windows
```
cabal install --lib gloss
```
If that command does not work, try:
```
stack install gloss
```
In package.yaml, add gloss to dependencies under executables (if it is not already there)
If there is an error, follow the instructions here: http://gloss.ouroborus.net/#FrequentlyAskedQuestionsFAQ 
```
cd haskell
stack build
stack exec my-project-exe
```
##### Mac
```
cabal install --lib gloss
cd haskell
cd app
ghc Main
./Main
```

If the above method does not work, try:
```
stack install gloss
```
In package.yaml, add gloss to dependencies under executables (if it is not already there)
If there is an error, follow the instructions here: http://gloss.ouroborus.net/#FrequentlyAskedQuestionsFAQ 
```
cd haskell
stack build
stack exec my-project-exe
```

#### To test
1. Type "a"
2. Type "b"
3. Type "c"
4. Type "d"

##### Some interesting cases to try
* Typing these out of order
   * such as “d”, “c”, “b”, “a”
    * Notice how there is no curve until the last letter because "d", "c", and "b" were not the correct answers to the first three questions
    * While a curve is shown for "a" despite it not being the correct answer for the last question, this is fine because the proof of concept does not deal with this and the minimal viable project would have ended the game
* Typing less/more than four letters (from “a”, “b”, “c”, “d”)
  * such as “a”, “b”, “c”
    * Notice how the circle is incomplete. This would mean that the user has no answered all the questions required to complete the level.
   * such as “a”, “b”, “c”, “d”, “a”
    * Notice how no additional curve is drawn. This means that there are no more questions left in the level.
* Typing any other keys
  * such as “o”, “n”, “e”, “t”
    * Notice how the screen remains blank because none of those letters are possible options



### How to test and run the code: Prolog

Replace this section with instructions to us for how to test and run your code.

Instructions coming soon, but we expect you'll use the [Prolog Unit Testing](https://www.swi-prolog.org/pldoc/doc_for?object=section(%27packages/plunit.html%27)) library for testing and that we'll be able to run your code with `swipl`.



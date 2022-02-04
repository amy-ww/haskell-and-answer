# (H)Ask(ell) & Answer

(H)Ask(ell) & Answer is a trivia game about Haskell for students to stay motivated when studying and learning functional programming. This edition was inspired by the popular Netflix show, Squid Game, where the user answers questions to carve out a shape in the center of the canvas.

This project is in fulfillment of the [CPSC 312 2021W1 project requirements](https://steven-wolfman.github.io/cpsc-312-website/project.html).

## Team Name
We call ourselves: squidGame

## Team Members

Our team is:

+ Roger Huang
+ Amy Wang
+ Winnie Wen

## Link to Video
https://youtu.be/GuXFRRKZcvw

## Link to Proposal
https://github.students.cs.ubc.ca/zwang110/haskell-project/tree/98ea6b4141669ced584bbcbde2c1df7a9453ff6d

## Guide to Minimal Viable Project
### How the MVP fulfills the proposal
This minimal viable project fulfills the proposal in that it is a trivia game that challenges users with questions about Haskell in order to successfully carve a circle out of the dalgona candy surface.  Inspired by the trending dalgona challenge from the hit show Squid Game, the minimal viable project consists of the core features of the game for a single level while still providing a fun way to study for our upcoming final quiz. It prompts the user with multiple choice questions about concepts in Haskell with four options: “a”, “b”, “c”, and “d”. The user’s input is then compared against the corresponding letter for the correct answer. A curved line will be displayed on the circular canvas if the input was the same as the letter for the correct answer, signifying that the user has successfully carved out a part of the shape on the canvas. The text “Game Over” will be displayed if the input differs. In addition to what we had originally proposed, the user can now restart the game to try the questions again.

Instead of simply displaying a curved line on a circular canvas where the images are given from the Gloss library, we have incorporated the use of Bitmaps. This not only makes the GUI more visually appealing, but users can also now be able to tell how our game incorporates elements of the TV show. For example, the start screen is a reference to when the main character is challenged to a game of ddakji and given a business card to enter the Squid Games. The question screens with the circle being carved from the dalgona candy surface are also a clear reference to the dalgona challenge they played in the show. By using Bitmaps to clearly depict references from the show, users will feel more motivated to continue playing the game and learn more about Haskell.

Overall, the minimal viable project solves the important problem of students losing motivation to study, especially since it is near the end of the term when they are burnt out. It does so by gamifying the studying process with references to a current trend.

### Key elements of the MVP Code
- Defining the Worlds and Images: https://github.students.cs.ubc.ca/zwang110/haskell-project/blob/f25a4bc2c5fa304eff183aafb0381d1caf9dc467/haskell/app/Game.hs#L28-L42
  - Defining our worlds to represent each state of the game, where it is a struct of the num corresponding to which number World the user is currently on, pic corresponding to the Picture that corresponds to the World, and next to define whether the user is ready to move to the next World
  - Defining the images was a key element to allow us to use them in our program to create a visually appealing experience
  - This helped with our learning of the language as we learned a new syntax for defining data types: record syntax
- Event Handler to deal with user input: https://github.students.cs.ubc.ca/zwang110/haskell-project/blob/f25a4bc2c5fa304eff183aafb0381d1caf9dc467/haskell/app/Game.hs#L61-L74
  -  This gets the user to move on to the next question if they answer the question right, move on to the next level if they finish answering all the questions for that level, end the game if they answer a question incorrectly, or allow the user to reset the game.
  -  This also helped with our learning of the language as we had a chance to apply case expressions to simplify the code
- Loading Bitmap Images to use in our worlds: https://github.students.cs.ubc.ca/zwang110/haskell-project/blob/f25a4bc2c5fa304eff183aafb0381d1caf9dc467/haskell/app/Game.hs#L88-L94
  - This allows the user to have a more visual experience and truly see how the game correlates to the TV show, Squid Game
- Using Gloss' play function: https://github.students.cs.ubc.ca/zwang110/haskell-project/blob/f25a4bc2c5fa304eff183aafb0381d1caf9dc467/haskell/app/Game.hs#L105-L112
  -  This allows the user to play the game where a window pops up at the start screen


## How to run the MVP
### To run the game (Windows):
In the root enter: 
```
make haskell-eval
main
```
Alternatively, enter:
```
cd haskell
cd app
ghci Game.hs
main
```
Note: If this still does not work, you may need to enter this before:
```
cd haskell-project-master
```

### To run the HUnit Tests:
```
cabal install HUnit
cd haskell
cd app
ghci Tests.hs
runTestTT tests
```
If the tests are successful, you should see that 1 test was tried, and there were 0 failures.
If the tests do not load, enter
```
:set -package HUnit
:l Tests.hs
runTestTT tests
```

## Guide to New Learning
### How the new learning was essential for the project
Learning how to use the Gloss library was essential for the project in order to create a GUI. By learning the Gloss library, we were able to create an interface for the user to visually see and interact. This was especially important for the project since we wanted the user to be able to visualize a curved line being drawn on the screen to reference Squid Game’s dalgona challenge as a form of motivation to continue with the game and study concepts of Haskell at the same time. To create even more motivation, the Gloss library conveniently has functions to deal with bitmap data, allowing us to incorporate images to make references to the TV show more evident. The Gloss library also helped with key and event handling for the user to interact with the program. This was necessary for the project since we needed to use what the user types as their answer in order to determine whether they had succeeded to move on to the next question or if the game was over. Lastly, the Gloss library’s given play function helped make game play convenient and was necessary for the user to actually play the game.

### Where the new learning was employed
- Setting up the window using Gloss: https://github.students.cs.ubc.ca/zwang110/haskell-project/blob/f25a4bc2c5fa304eff183aafb0381d1caf9dc467/haskell/app/Game.hs#L45-L51
- Handling keys and events using Gloss: https://github.students.cs.ubc.ca/zwang110/haskell-project/blob/f25a4bc2c5fa304eff183aafb0381d1caf9dc467/haskell/app/Game.hs#L62-L74
- Loading Bitmaps: https://github.students.cs.ubc.ca/zwang110/haskell-project/blob/f25a4bc2c5fa304eff183aafb0381d1caf9dc467/haskell/app/Game.hs#L88-L94
- Using the play function in Gloss: https://github.students.cs.ubc.ca/zwang110/haskell-project/blob/f25a4bc2c5fa304eff183aafb0381d1caf9dc467/haskell/app/Game.hs#L105-L112


### How the project benefits from the application of our new learning
From the application of our new learning, the project benefits in that we can create a more interactive way for students to test themselves about Haskell. Learning and applying the Gloss library provided a painless way to deal with graphics in order to provide a visual experience for users. Our new learning also benefited the project in that by combining pattern matching along with key events, handling user input became a seamless process. This also made updating worlds much easier than procedural programming. Furthermore, the project also benefited from our additional learning of incorporating Bitmaps. By doing so, the user is able to clearly see how our game incorporates elements of the TV show, as well as create a visually stimulating experience for the user. All in all, the MVP goes beyond what we had initially proposed and helped us explore the Gloss library in an exciting way.

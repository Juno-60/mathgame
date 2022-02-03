MAIN object
 -> contains PLAYERS
 -> contains GAME
 -> contains QUESTION

PLAYERS object
 -> contains ID
 -> contains LIFE COUNT (default 3)

GAME object
 -> contains TURN NUMBER
 -> contains WHICH PLAYER
 -> contains INPUT (answer)

QUESTION object
 -> contains 2 variables: Num1, Num2
 -> contains PROBLEM
     -> PROBLEM contains a STRING to display the problem 
     -> PROBLEM contains an ANSWER which is the solution, compare to TURN.INPUT and return true or false
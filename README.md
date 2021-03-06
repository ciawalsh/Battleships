Battleships 
========================
## Makers Academy Week 2 Project

- Battleships (or Battleship) is a game where each player has a board upon which they can place a number of ships. The boards are 10x10 two dimensional grid.

- After each player has placed their ships on their own board they take turns to shoot on the opponents board. In each round, each player takes a turn to announce a target square in the opponent's grid which is to be shot at. The opponent announces whether or not the square is occupied by a ship, and if it is a hit they mark this on their own primary grid. The attacking player notes the hit or miss on their own tracking grid, in order to build up a picture of the opponent's fleet.

- When all of one player's ships have been hit the game finishes and the player who has ships remaining is the winner.

- Every ship has a status indicating whether it's floating or sunk.

- This software was developed using TDD.

## Encapsulation

###Class - User/Player

Responsibilites             | Collaborators
----------------------------|------------------
Can place the fleet         | Ship, Board
Can shoot                   | Board
Can win/lose                | Board
Can take turns              | 

### Class - Fleet/Ship 

Responisibilites        | Collaborators
------------------------|------------------
Can be placed           | Board, User
Can be hit              | Board, User
Can be sunk             | Board, User
Can be held             | Board

### Class - Board

Responisibilites        | Collaborators
------------------------|------------------
Can hold the ships      | Ship
Can show hit/miss       | Ship
Can show a grid         | 
Can announce            | 
Can receive ships       | Ship, User

## Technologies Used

- Ruby
- Rspec

## Paired with:

- [Luke Clewlow](https://github.com/lukeclewlow)

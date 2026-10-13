# Tic-Tac-Toe

A simple command-line Tic-Tac-Toe game built with Ruby using Object-Oriented Programming (OOP).

Two human players take turns placing **X** and **O** on a 3×3 board until one player wins or the game ends in a draw.

## How to Run

Run the following command from the project root directory:

```bash
ruby main.rb
```

## Project Structure

```text
Tic-Tac-Toe/
├── main.rb
└── lib/
    ├── board.rb
    ├── game.rb
    └── player.rb
```

## Features

- Two-player gameplay (human vs. human)
- Clear board display after every move
- Input validation (accepts positions 1–9)
- Win detection (horizontal, vertical, and diagonal)
- Draw detection
- Simple and clean object-oriented design

## How to Play

### 1. Understand the Board

Each position corresponds to a number from 1 to 9:

```text
 1 | 2 | 3
---+---+---
 4 | 5 | 6
---+---+---
 7 | 8 | 9
```

### 2. Take Turns

- Players take turns entering a number from 1 to 9.
- Each number represents a position on the board.
- The first player uses **X**, and the second player uses **O**.
- A position that has already been taken cannot be selected again.

### 3. Win the Game

The first player to place three marks in a row wins. A winning combination can be horizontal, vertical, or diagonal.

### 4. Draw the Game

If all nine positions are filled and neither player has won, the game ends in a draw.

## Technologies Used

- **Ruby**
- **Object-Oriented Programming (OOP)**
- **Command-Line Interface (CLI)**

## Learning Objectives

This project helps practice:

- Classes and objects
- Instance variables and methods
- Separation of responsibilities across classes
- User input and validation
- Game logic and conditional statements
- Collaboration between Ruby classes

## License

This project is open source and available for learning and personal use.
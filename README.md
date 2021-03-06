[![Coverage Status](https://coveralls.io/repos/github/dinespoulsen/RPS/badge.svg?branch=master)](https://coveralls.io/github/dinespoulsen/RPS?branch=master)

Rock Paper Scissors application
==================

Introduction
-------
The Rock Paper Scissors application is the third weekend challenge at the Makers Academy in London. I built my application via the Sinatra framework and the intent was to create a game with a singleton design pattern. The focus has been on the game engine and to create the program in a test driven approach. Capybara has been used to run feature tests of the game and rspec has been used to run unit tests on the different models.

The game has been developed as a two player game and the user plays against the computer. The game is built upon the classic game of rock, paper & scissors where rock beats scissors, scissors beats paper and paper beats rock. The game is played best out of 3 so the first to get two wins has one the game.



Installation
-----
* Run the command 'bundle install' in the project directory to ensure you have all the gems.


How to use the applicaton
-----

To run the program start a local server by writing ruby app.rb in terminal and the app.rb file from the project directory will be executed.

* Login by playing either a two player game or agains the computer.
* Only add player 1 to play against the computer.
* Select either rock, paper or scissors.
* A status of the game with winner and the slected choices will be shown.
* Press next round to challenge the opponent again.
* When a player gets to two wins a page with the winner will be shown.
* User can start a new game if he is up for another challenge.

Example
-----

Starting up the game.

![alt tag](./startGame.png)

Selecting you weapen.
![alt tag](./selectChoice.png)

Status of over selections.

![alt tag](./status.png)

Game is over and winner is found.

![alt tag](./whowins.png)


Technologies used
-----
* Html
* Ruby
* css
* Sinatra
* Rspec

Areas to improve
-----

* Adding more advanced selections to the game.
* Improving the design features.

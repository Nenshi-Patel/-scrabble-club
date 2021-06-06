# README

## About
A scrabble club requires a system to store members’ information and provide leader boards to show their top performing players. For members we would want to store information such as the date they joined the club and their contact details.

All recorded scrabble games are head to head matches between 2 players, the player with the highest score at the end of the game wins.

## Installation
- Install ruby-2.5.1
- Use Postgresql

## Step To be follow to run the projects
  1. Clone the Project
    ```
    ```

  2. Bundle the project
  ```
    bundle install
  ```

  3. Create the database
      ```
        rails db:create
      ```
      ```
        rails db:migrate
      ```
  4. Run the website
    ```
      rails s
    ```

## functionality
  
  - Player have to create the account in scrabble club
  - Create the games
  - Display the leader board
  - In profile page of player display the following details
    1. number of wins
    2. number of losses
    3. their average score
    4. their highest score, when and where it was scored, and against whom.


import Foundation

// A class that represents the rock scissors paper game.
class Game {
   var availableMoves: [Move] 
   var playerPoints, computerPoints: Int

   init(){
    availableMoves = [Rock(), Paper(), Scissors()] // TODO Add Lizard and Spock
    playerPoints = 0
    computerPoints = 0
   }

   /* 
    * Plays the game and returns the result
    * -1 if the player lost, 0 if it was a tie, 1 if the player won
    */
   func play(playerMove: Move, computerMove: Move) -> Int {
      var result: Int = 0

    if(playerMove.name == computerMove.name) {
         return 0 // It's a tie
      } else {
        for move in playerMove.winAgainst{
            if(move.name == computerMove.name){
                result = 1 // The player win
                playerPoints+=1
                return result
            }
        }
         result = -1 // The player loose
         computerPoints+=1
      }

      return result
   }
}

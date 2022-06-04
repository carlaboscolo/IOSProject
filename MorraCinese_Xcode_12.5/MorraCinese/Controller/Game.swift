// A class that represents the rock scissors paper game.
class Game {
   var availableMoves: [Move]
   var playerPoints, computerPoints: Int

   init(){
      availableMoves = [Move.rock, Move.paper, Move.scissors]; // TODO Add Lizard and Spock 
      playerPoints = 0
      computerPoints = 0
   }

   /* 
    * Plays the game and returns the result
    * -1 if the player lost, 0 if it was a tie, 1 if the player won
    */
   func play(playerMove: Move, computerMove: Move) -> int {
      var result: int = 0;

      if(playerMove == computerMove) {
         return 0; // It's a tie
      } else if(playerMove.winAgainst.contains(computerMove)) {
         result = 1; // The player win
         playerPoints++
      } else {
         result = -1; // The player loose
         computerPoints++
      }

      return result
   }
}
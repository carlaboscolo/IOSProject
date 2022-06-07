import Foundation

class Scissors: Move {
    var name: String {
        return "Scissors"
    }
    var winAgainst: [Move] {
        return [Paper() /*,Lizard()*/]
    }
    
    init(){
        
    }
}

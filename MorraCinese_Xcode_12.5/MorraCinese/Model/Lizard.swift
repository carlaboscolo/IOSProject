import Foundation

class Lizard: Move {
    var name: String {
        return "Lizard"
    }
    var winAgainst: [Move] {
        return [Paper(), Spock()]
    }
    
    init(){
        
    }
}

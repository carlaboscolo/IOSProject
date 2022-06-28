import Foundation

class Spock: Move {
    var name: String {
        return "Spock"
    }
    var winAgainst: [Move] {
        return [Rock(), Scissors()]
    }
    
    init(){
        
    }
}


import Foundation

class Paper: Move {
    var name: String {
        return "Paper"
    }
    var winAgainst: [Move] {
        return [Rock(), Spock()]
    }
    
    init(){
        
    }
}

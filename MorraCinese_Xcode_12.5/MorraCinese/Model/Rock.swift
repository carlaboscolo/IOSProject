class Rock: Move {
    var name: String {
        return "Rock"
    }
    var winAgainst: [Move] {
        return [Scissors(), Lizard()]
    }
    
    init(){
        
    }
}

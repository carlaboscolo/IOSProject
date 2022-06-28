//
//  Ai.swift
//  MorraCinese
//
//  Created by Francesco Romeo on 21/06/22.
//

import Foundation

protocol Ai {
    var availableMoves [Move]
    var moveProbabilityBoosts: [Int]
    
    init(availableMoves) {
        self.availableMoves = availableMoves
        self.moveProbabilityBoosts = []
        
        for move in availableMoves{
            usages.append(0)
        }
    }
    
    func move(availableMoves: [Move], lastMoves: [Move]) -> Move {
        
    }
    
    func update(playerLastVinningMove: Move){
        var i: Int
        for move in availableMoves{
            if move == playerLastVinningMove{
    for move2 in move
               moveProbabilityBoosts[i]++
            }
            i++
        }
    }
}

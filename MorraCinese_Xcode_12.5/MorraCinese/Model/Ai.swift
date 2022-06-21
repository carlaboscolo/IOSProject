//
//  Ai.swift
//  MorraCinese
//
//  Created by Francesco Romeo on 21/06/22.
//

import Foundation

protocol Ai {
    var availableMoves [Move]
    var lastMoves: [Move]
    var usages: [Int]
    
    init(availableMoves) {
        self.availableMoves = availableMoves
        self.lastMoves = []
        self.usages = []
        
        for move in availableMoves{
            usages.append(0)
        }
    }
    
    func move(availableMoves: [Move], lastMoves: [Move]) -> Move {
    
    }
}

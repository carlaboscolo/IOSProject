//
//  Ai.swift
//  MorraCinese
//
//  Created by Francesco Romeo on 21/06/22.
//

import Foundation

class Ai {
    var availableMoves: [Move]
    var moveProbabilityBoosts: [Int]
    
    init(availableMoves:[Move]) {
        self.availableMoves = availableMoves
        self.moveProbabilityBoosts = []
        
        for move in availableMoves{
            usages.append(0)
        }
    }
    
    func move(availableMoves: [Move], lastMoves: [Move]) -> Move {
        
    }
    
    
    
    
    //funzione per aumentare la probabilirà dell'utilizzo di una mossa, utilizza dei for incrociati per trovare le mosse contro cui si puo vincere contro le mosse che l'avversario usa più spesso aumentando la probabilità dell'utilizzo delle mosse per vincere in base all'avversario
    func update(playerLastVinningMove: Move){
        
        /*
        i:Int contatore iniziale
        w:Int contatore delle mosse vincenti
        moveCount:Int contatore della mossa vincente
        */
        var i: Int = 0
        var w:[Int] = 0
        var moveCount: Int = 0
        
        //for per cercare le proprie mosse
        for move in availableMoves{
            var j:Int = 0
            //for per cercare le mosse contro cui si si vince
            for _ in move.winAgainst {
                if playerLastVinningMove == move.winAgainst[j]{
                     // for per cercare la mossa da aumentare la probabilià + aumento di probabilità
                    for _ in availableMoves{
                        if move.winAgainst[j] == availableMoves[moveCount] {
                            moveProbabilityBoosts[moveCount] += 2
                        }
                        moveCount++
                    }
                }
                j++
            }
            i++
        }
    }
    
    
    //funzione per calcolare la scelta della Ai, in base hai numeri all'interno del boost la probabilita di ottenere un numero più grande aumenta
    func choice(lastMoce:[Move]) -> Move{
        /*
        I:Int numero incrementale,
        probability: Int le numeri delle mosse,
        max: Int numero più grande,
        maxMove: numero indicativo della mossa da usare
        */
        var i: Int = 0
        var probability: [int]
        var max:[int] = -99
        var maxMove:[Move]
        
        //for per creare i numeri casuali per la scelta della AI
        for move in Move {
             probability[i] = Int.random(in: 0..<10+moveProbabilityBoosts[i])
        i++
        }
        i=0
        
        // calcolo del numero massimo per la scelta della mossa
        for _ in probability {
            if max < probability[i]{
                    max = probability[i]
                    maxMove = availableMoves[i]
            }
        i++
        }
        
        //return della mossa
        return maxMove
    }
    

}

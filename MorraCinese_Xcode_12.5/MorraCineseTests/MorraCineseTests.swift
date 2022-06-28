//
//  MorraCineseTests.swift
//  MorraCineseTests
//
//  Created by Francesco Romeo on 07/06/22.
//

import XCTest
@testable import MorraCinese

class MorraCineseTests: XCTestCase {

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
        
        let lose = -1
        let tie = 0
        let win = 1
        
        let game = Game()
        
        XCTAssertTrue(game.play(playerMove: Paper(), computerMove: Scissors()) == lose, "Error!")
        XCTAssertTrue(game.play(playerMove: Paper(), computerMove: Paper()) == tie, "Error!")
        XCTAssertTrue(game.play(playerMove: Paper(), computerMove: Rock()) == win, "Error!")
        XCTAssertTrue(game.play(playerMove: Paper(), computerMove: Spock()) == win, "Error!")
        XCTAssertTrue(game.play(playerMove: Paper(), computerMove: Lizard()) == lose, "Error!")
        
        XCTAssertTrue(game.play(playerMove: Scissors(), computerMove: Rock()) == lose, "Error!")
        XCTAssertTrue(game.play(playerMove: Scissors(), computerMove: Scissors()) == tie, "Error!")
        XCTAssertTrue(game.play(playerMove: Scissors(), computerMove: Paper()) == win, "Error!")
        XCTAssertTrue(game.play(playerMove: Scissors(), computerMove: Spock()) == lose, "Error!")
        XCTAssertTrue(game.play(playerMove: Scissors(), computerMove: Lizard()) == win, "Error!")
        
        XCTAssertTrue(game.play(playerMove: Rock(), computerMove: Paper()) == lose, "Error!")
        XCTAssertTrue(game.play(playerMove: Rock(), computerMove: Rock()) == tie, "Error!")
        XCTAssertTrue(game.play(playerMove: Rock(), computerMove: Scissors()) == win, "Error!")
        XCTAssertTrue(game.play(playerMove: Rock(), computerMove: Spock()) == lose, "Error!")
        XCTAssertTrue(game.play(playerMove: Rock(), computerMove: Lizard()) == win, "Error!")
        
        XCTAssertTrue(game.play(playerMove: Spock(), computerMove: Paper()) == lose, "Error!")
        XCTAssertTrue(game.play(playerMove: Spock(), computerMove: Rock()) == win, "Error!")
        XCTAssertTrue(game.play(playerMove: Spock(), computerMove: Scissors()) == win, "Error!")
        XCTAssertTrue(game.play(playerMove: Spock(), computerMove: Spock()) == tie, "Error!")
        XCTAssertTrue(game.play(playerMove: Spock(), computerMove: Lizard()) == lose, "Error!")
        
        XCTAssertTrue(game.play(playerMove: Lizard(), computerMove: Paper()) == win, "Error!")
        XCTAssertTrue(game.play(playerMove: Lizard(), computerMove: Rock()) == lose, "Error!")
        XCTAssertTrue(game.play(playerMove: Lizard(), computerMove: Scissors()) == lose, "Error!")
        XCTAssertTrue(game.play(playerMove: Lizard(), computerMove: Spock()) == win, "Error!")
        XCTAssertTrue(game.play(playerMove: Lizard(), computerMove: Lizard()) == tie, "Error!")
        
        
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        measure {
            // Put the code you want to measure the time of here.
        }
    }

}

//
//  AdvancedGameScreen.swift
//  MorraCinese
//
//  Created by Alessandro Scisci on 07/06/22.
//

import UIKit
import Foundation


class AdvancedGameScreen: UIViewController {
    
    let wheelMenu = WheelView(radius: 90.0, direction: Direction.left, chosenIndex: 2, degree: 90.0, array: [moveSlice(val: "0"),
                                                                                                        moveSlice(val: "1"),
                                                                                                        moveSlice(val: "2"),
                                                                                                        moveSlice(val: "3"),
                                                                                                        moveSlice(val: "4"),
                                                                                                        moveSlice(val: "5"),
                                                                                                        moveSlice(val: "6"),
                                                                                                        moveSlice(val: "8"),
                                                                                                        moveSlice(val: "9"),
                                                                                                        moveSlice(val: "10")], circleSize: 150)
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    
    
    @IBAction func backToFistView(_ sender: UIButton) {
    
        self.navigationController?.popToRootViewController(animated: true)
    }
    
    
    
    
    
}

//
//  SimpleGameScreen.swift
//  MorraCinese
//
//  Created by Alessandro Scisci on 07/06/22.
//

import UIKit

class SimpleGameScreen: UIViewController {
    

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    @IBAction func backToFistView(_ sender: UIButton) {
    
        self.navigationController?.popToRootViewController(animated: true)
    }
    

    
    
    
}

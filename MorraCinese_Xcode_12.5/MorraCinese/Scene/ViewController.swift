//
//  ViewController.swift
//  MorraCinese
//
//  Created by Alessandro Scisci on 01/06/22.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var simpleGameBtn: UIButton!
    @IBOutlet weak var advancedGameBtn: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    
    }

    @IBAction func simpleBtnClicked(_ sender: Any) { self
        .performSegue(withIdentifier: "segueToSimpleGame", sender: nil)
    }
    @IBAction func advancedBtnClicked(_ sender: Any) { self
        .performSegue(withIdentifier: "segueToAdvancedGame", sender: nil)
    }
    
}


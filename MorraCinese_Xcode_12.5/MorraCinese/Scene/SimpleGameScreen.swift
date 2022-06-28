//
//  SimpleGameScreen.swift
//  MorraCinese
//
//  Created by Alessandro Scisci on 07/06/22.
//

import UIKit

class SimpleGameScreen: UIViewController {
    
    @IBOutlet weak var botImageView: UIImageView!
    @IBOutlet weak var userImageView: UIImageView!
    @IBOutlet weak var paperButton: UIButton!
    @IBOutlet weak var scissorsButton: UIButton!
    @IBOutlet weak var rockButton: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let image = UIImage(named: "paperIconBtn.png")
        paperButton.setImage(image, for: .normal)
        
        
        
    }
    

    @IBAction func backToFistView(_ sender: UIButton) {
    
        self.navigationController?.popToRootViewController(animated: true)
    }
    

    
    @IBAction func onClickPaper(_ sender: Any) {
        //find paper image on internet and set it in the userImageView
        userImageView.image = UIImage(named: "paper")
        robotChoiceStart()
        

    }

    @IBAction func onClickScissors(_ sender: Any) {
        //find scissors image on internet and set it in the userImageView 
        userImageView.image = UIImage(named: "scissors")
        robotChoiceStart()

    }

    @IBAction func onClickRock(_ sender: Any) {
        //find rock image on internet and set it in the userImageView
        userImageView.image = UIImage(named: "rock")
        robotChoiceStart()
    }
    
    
func robotChoiceStart() {
        let moves = ["rock", "paper", "scissors"]
        var randomIndex : Int = 0
       randomIndex = Int(arc4random() % 3)
       
        switch randomIndex {
        case 1:
            botImageView.image = UIImage(named: "rock")
        
        case 2:
            botImageView.image = UIImage(named: "scissors")
            
        case 3:
            botImageView.image = UIImage(named: "paper")
            
       
        default:
            botImageView.image = UIImage(named: "rock_abbronzata")
        }
        print(moves.count)
       print(randomIndex)
        //botImageView.image =
    }
    
}

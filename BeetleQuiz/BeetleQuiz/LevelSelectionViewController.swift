//
//  LevelSelectionViewController.swift
//  BeetleQuiz
//
//  Created by 渡邊一樹 on 2023/04/10.
//

import UIKit

class LevelSelectionViewController: UIViewController {
    @IBOutlet weak var Level1Button: UIButton!
    @IBOutlet weak var Level2Button: UIButton!
    @IBOutlet weak var Level3Button: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        Level1Button.layer.borderWidth = 2
        Level1Button.layer.borderColor = UIColor.black.cgColor
        Level2Button.layer.borderWidth = 2
        Level2Button.layer.borderColor = UIColor.black.cgColor
        Level3Button.layer.borderWidth = 2
        Level3Button.layer.borderColor = UIColor.black.cgColor

        // Do any additional setup after loading the view.
    }
    
    @IBAction func LevelSelectionButtonAction(sender: UIButton) {
        print(sender.tag)
        performSegue(withIdentifier: "toQuizVC", sender: nil)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

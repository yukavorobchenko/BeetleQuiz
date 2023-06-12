//
//  ZokusolectionViewController.swift
//  BeetleQuiz
//
//  Created by 渡邊一樹 on 2023/04/10.
//

import UIKit

class ZokusolectionViewController: UIViewController {
    @IBOutlet weak var DynastiniButton: UIButton!
    @IBOutlet weak var OryctiniButton: UIButton!
    @IBOutlet weak var OthersButton: UIButton!
    
    var selectTag = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        DynastiniButton.layer.borderWidth = 2
        DynastiniButton.layer.borderColor = UIColor.black.cgColor
        OryctiniButton.layer.borderWidth = 2
        OryctiniButton.layer.borderColor = UIColor.black.cgColor
        OthersButton.layer.borderWidth = 2
        OthersButton.layer.borderColor = UIColor.black.cgColor
        // Do any additional setup after loading the view.
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let quizVC = segue.destination as! QuizViewController
        quizVC.selectLevel = selectTag
    }
    
    @IBAction func ZokuButtonAction(sender: UIButton) {
        print(sender.tag)
        selectTag = sender.tag
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

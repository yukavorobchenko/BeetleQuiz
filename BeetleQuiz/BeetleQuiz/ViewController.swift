//
//  ViewController.swift
//  BeetleQuiz
//
//  Created by 渡邊一樹 on 2023/04/05.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var startButton: UIButton!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        startButton.layer.borderWidth = 2
        startButton.layer.borderColor = UIColor.black.cgColor
        // Do any additional setup after loading the view.
    }


}


//
//  ScoreViewController.swift
//  BeetleQuiz
//
//  Created by 渡邊一樹 on 2023/04/17.
//

import UIKit

class ScoreViewController: UIViewController {
    @IBOutlet weak var shareButton: UIButton!
    @IBOutlet weak var scoreLabel: UILabel!
    @IBOutlet weak var toTopButton: UIButton!
    
    var correct = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        shareButton.layer.borderWidth = 2
        shareButton.layer.borderColor = UIColor.black.cgColor
        toTopButton.layer.borderWidth = 2
        toTopButton.layer.borderColor = UIColor.black.cgColor
        
        scoreLabel.text = "\(correct)問正解!"

        // Do any additional setup after loading the view.
    }
    @IBAction func toTopButtonAction(_ sender: Any) {
        self.presentingViewController?.presentingViewController?.presentingViewController?.presentingViewController?.dismiss(animated: true)
    }
    @IBAction func shareButtonAction(_ sender: Any) {
        let activityItem = ["\(correct)問正解しました。","#クイズアプリ"]
        let activityVC = UIActivityViewController(activityItems: activityItem, applicationActivities: nil)
        self.present(activityVC, animated: true)
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

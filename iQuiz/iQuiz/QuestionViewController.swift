//
//  QuestionViewController.swift
//  iQuiz
//
//  Created by iGuest on 11/10/16.
//  Copyright © 2016 Hai Nguyen. All rights reserved.
//

import UIKit

class QuestionViewController: UIViewController {

    var answerSelected = false
    
    @IBOutlet weak var questionLabel: UILabel!
    @IBOutlet var answerButtons: [UIButton]!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func submitAnswer(_ sender: UIButton) {
        if answerSelected {
            performSegue(withIdentifier: "toAnswer", sender: self)
        }
    }
    
    @IBAction func backToMenu(_ sender: UIButton) {
        performSegue(withIdentifier: "toMenu", sender: self)
    }
    
    @IBAction func selectAnswer(_ sender: UIButton) {
        sender.backgroundColor = UIColor.cyan
        for button in answerButtons {
            if button != sender {
                button.backgroundColor = UIColor.lightGray
            }
        }
        answerSelected = true
    }

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

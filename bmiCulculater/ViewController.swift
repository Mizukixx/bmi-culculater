//
//  ViewController.swift
//  bmiCulculater
//
//  Created by Kozasa Mizuki on 2019/10/12.
//  Copyright © 2019 Kozasa Mizuki. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var text1: UILabel!
    @IBOutlet weak var text2: UILabel!
    @IBOutlet weak var input1: UITextField!
    @IBOutlet weak var input2: UITextField!
    
    @IBAction func culculate(_ sender: Any) {
        let height = Double(input1.text!)!
        let weight = Double(input2.text!)!
        
        let bmi = weight / (height * height)
        
        text1.text = "お前のBMIは\(bmi)だにゃ"
        if bmi > 26 {
            text2.text = "太りすぎだにゃ！"
        } else if bmi > 19 {
            text2.text = "いい感じだにゃ！健康にゃ！"
        } else {
            text2.text = "痩せすぎにゃ！食べるのにゃ！"
        }
        
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


}


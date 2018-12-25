//
//  ViewController.swift
//  calc
//
//  Created by Thomas Wan on 12/12/18.
//  Copyright © 2018 Thomas Wan. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var output: UILabel!
    @IBOutlet weak var currentGrade: UITextField!
    
    @IBOutlet weak var finalGrade: UITextField!
    @IBOutlet weak var finalWeight: UITextField!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    @IBAction func calculate(_ sender: Any) {
        var currGrade = Double(currentGrade.text!)
        var finGrade = Double(finalGrade.text!)
        var weight = Double(finalWeight.text!)
        if currGrade != nil && finGrade != nil && weight != nil{
            if currGrade! > 1.0{
                currGrade = currGrade!/100.0
            }
            if finGrade! > 1.0{
                finGrade = finGrade!/100.0
            }
            if weight! > 1.0{
                weight = weight!/100.0
            }
            let a = ((finGrade! - (currGrade! * (1 - weight!))) / weight!) * 100
            output.text = "You must get: \(a) %"
        }
        else{
            output.text = "PLEASE INPUT VALUES!"
        }
    }
}



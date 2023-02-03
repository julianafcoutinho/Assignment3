//
//  ViewController.swift
//  Assignment 3
//
//  Created by Juliana on 1/28/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        switch hour {
        case 1...12:
            background.image = UIImage(named:"RioDay")
        case 13...24:
                background.image = UIImage(named:"RioNight")
        default:
            background.image = UIImage(named:"RioDay")
         }
    }

    @IBOutlet weak var background: UIImageView!
    @IBOutlet weak var timePicker: UIDatePicker!
    
    @IBOutlet weak var label1: UILabel!
    
    let hour = Int(Calendar.current.component(.hour, from: Date()))
    
    

    
    
    
    @IBAction func timePicker(_ sender: UIDatePicker) {
    }
    @IBAction func timerButton(_ sender: UIButton) {
    }
}


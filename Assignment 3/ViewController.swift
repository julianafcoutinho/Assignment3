//
//  ViewController.swift
//  Assignment 3
//
//  Created by Juliana on 1/28/23.
//

import UIKit

class ViewController: UIViewController {
    
    let hour = Int(Calendar.current.component(.hour, from: Date()))
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        label2.isHidden = true
        switch hour {
        case 1...12:
            background.image = UIImage(named:"RioDay")
        case 13...24:
            background.image = UIImage(named:"RioNight")
        default:
            background.image = UIImage(named:"RioDay")
        }
        
        
    }
    var counter = 0
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var background: UIImageView!
    @IBOutlet weak var timePicker: UIDatePicker!
    
    @IBOutlet weak var label1: UILabel!
    
    
    @IBAction func timePicker(_ sender: UIDatePicker) {
        
    }
    @IBAction func timerButton(_ sender: UIButton) {
        label2.isHidden = false
        label2.text = "I told you I'd be back"
        label1.text = "I changed!"
        button1.setTitle("Changing too", for: .normal)
        
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
        
    }
    @objc func updateCounter() {
        //example functionality
        if counter > 0 {
            print("\(counter) seconds to the end of the world")
            counter -= 1
        }
    }
}

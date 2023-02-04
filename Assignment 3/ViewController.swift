//
//  ViewController.swift
//  Assignment 3
//
//  Created by Juliana on 1/28/23.
//

import UIKit

class ViewController: UIViewController {
    var counter = 0
    @IBOutlet weak var button1: UIButton!
    @IBOutlet weak var label1: UILabel!
    @IBOutlet weak var label2: UILabel!
    @IBOutlet weak var background: UIImageView!
    @IBOutlet weak var timePicker: UIDatePicker!
    
    @IBAction func timePicker(_ sender: Any) {
        
    }
    
    var timer = Timer()
    
    let hour = Int(Calendar.current.component(.hour, from: Date()))
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        label2.isHidden = true
        label2.text = ""
        button1.setTitle("Start Timer", for: .normal)
        let today = Date()
        let hours = (Calendar.current.component(.hour, from: today))
        let minutes = (Calendar.current.component(.minute, from: today))
        let seconds = (Calendar.current.component(.second, from: today))
        
        label1.text = DateFormatter.localizedString(from: Date(), dateStyle: .long, timeStyle: .short)
        timer = Timer.scheduledTimer(timeInterval:1.0, target: self, selector:#selector(self.tick), userInfo: nil, repeats: true)
        switch hour {
        case 1...12:
            background.image = UIImage(named:"RioDay")
        case 13...24:
            background.image = UIImage(named:"RioNight")
        default:
            background.image = UIImage(named:"RioDay")
        }
        
        
    }

    
   
    @IBAction func timerButton(_ sender: UIButton) {
        
        label2?.isHidden = false
        label2?.text = "I told you I'd be back"
        
        let date = timePicker.date
        let components = Calendar.current.dateComponents([.hour, .minute], from: date)
        let hr = components.hour!
        let min = components.minute!
        
        let countdown = hr*3600 + min*60
        button1.setTitle("Wait for timer.", for: .normal)
        //change button and play music when timer ends
                    
                
                    
                    
                  //  timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector:#selector(startCountDown) , userInfo: nil, repeats: true)
                  //  buttonText.setTitle("Stop Music", for: .normal)
       
        
        Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateCounter), userInfo: nil, repeats: true)
        
    }
    @objc func updateCounter() {
        //example functionality
        if counter > 0 {
            label2?.text = "seconds to the end of the world"
            counter -= 1
        }
       
    }
    @objc func tick() {
        label1.text = DateFormatter.localizedString(from: Date(), dateStyle: .long, timeStyle: .short)
    
    }
}

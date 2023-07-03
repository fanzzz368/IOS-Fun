//
//  ViewController.swift
//  IOS-Fun
//
//  Created by Fanny Zheng on 7/3/23.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        startColorTimer()
    }
    
    // this function changes the color to a random color each time it is called
    func changeColor() -> UIColor {
        let red = CGFloat.random(in: 0...1)
        let green = CGFloat.random(in: 0...1)
        let blue = CGFloat.random(in: 0...1)
        
        return UIColor(red: red, green: green, blue: blue, alpha: 0.5)
    }
    
    @IBOutlet weak var changeNameColor: UILabel!
    var timer: Timer?
    
    // this changes the color of the specified label
    @objc func updateLabelColor() {
        let randomColor = changeColor()
        changeNameColor.textColor = randomColor
    }
    
    // this updates the label's color every second
    func startColorTimer() {
        timer = Timer.scheduledTimer(timeInterval: 1.0, target: self, selector: #selector(updateLabelColor), userInfo: nil, repeats: true)
    }
    
    // this changes the background color of the app
    @IBAction func changeBackgroundColor(_ sender: UIButton) {
        let randomColor = changeColor()
        view.backgroundColor = randomColor
    }
    
}


//
//  ViewController.swift
//  Menu Bars
//
//  Created by Hugo Morelli on 9/26/16.
//  Copyright © 2016 Hugo Morelli. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    //MARK: Properties
    var timer = Timer()
    var time = 210
    @IBOutlet weak var timerLabel: UILabel!
    //MARK: Actions
    @IBAction func playTimer(_ sender: AnyObject) {
        timer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(ViewController.decreaseTimer), userInfo: nil, repeats: true)
    }
    @IBAction func pauseTimer(_ sender: AnyObject) {
        
        timer.invalidate()
    }

    @IBAction func resetTimer(_ sender: AnyObject) {
        time = 210
        timerLabel.text = String(time)
    }
    @IBAction func addTimeTimer(_ sender: AnyObject) {
        time += 10
        timerLabel.text = String(time)
    
    }
    @IBAction func removeTimeTImer(_ sender: AnyObject) {
        if time > 10{
            time -= 10
            timerLabel.text = String(time)
        }
    
    }
    func decreaseTimer() {
        if time > 0 {
            time -= 1
            timerLabel.text = String(time)
        }else {
            timer.invalidate()
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


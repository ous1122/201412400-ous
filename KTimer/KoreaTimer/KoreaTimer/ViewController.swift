//
//  ViewController.swift
//  KoreaTimer
//
//  Created by D7703_13 on 2018. 4. 4..
//  Copyright © 2018년 ous. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var time: UILabel!
    var myTimer = Timer()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myTimer = Timer.scheduledTimer(timeInterval: 1, target: self, selector: #selector(updateTime), userInfo: nil, repeats: true)
    }
    
    @objc func updateTime() {
        let date = Date()
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm:ss EEE"
        time.text = formatter.string(from: date)
    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


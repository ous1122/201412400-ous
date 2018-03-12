//
//  ViewController.swift
//  HelloWorld Storyboard
//
//  Created by 김종현 on 2018. 3. 5..
//  Copyright © 2018년 김종현. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    
    @IBAction func buttonPressed(_ sender: Any) {
        print("Button pressed!!")
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        print("git commit test")
        view.backgroundColor = UIColor.yellow
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


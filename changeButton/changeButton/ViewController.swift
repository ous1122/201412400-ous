//
//  ViewController.swift
//  changeButton
//
//  Created by D7703_13 on 2018. 3. 14..
//  Copyright © 2018년 gyuminpark. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
var a = 1
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = UIColor.yellow
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btchange(_ sender: UIButton) {
        if a == 1{
            view.backgroundColor = UIColor.yellow
            a += 1
        }
        else if a == 2
        {
            view.backgroundColor = UIColor.red
            a += 1
        }
        else if a == 3{
            view.backgroundColor = UIColor.gray
            a += 1
        }
        else if a == 4{
            view.backgroundColor = UIColor.cyan
            a = 1
        }
    }
    
}


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
    @IBOutlet weak var colorlb: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        view.backgroundColor = UIColor.blue
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func btchange(_ sender: UIButton) {
        if a == 1{
            view.backgroundColor = UIColor.yellow
            colorlb.text = "yellow"
            colorlb.textColor = UIColor.black
            a += 1
        }
        else if a == 2
        {
            view.backgroundColor = UIColor.red
            colorlb.text = "red"
            a += 1
        }
        else if a == 3{
            view.backgroundColor = UIColor.gray
            colorlb.text = "gray"
            a += 1
        }
        else if a == 4{
            view.backgroundColor = UIColor.cyan
            colorlb.text = "cyan"
            a = 1
        }
    }
    
    @IBAction func btswitch(_ sender: UIButton) {
        switch a {
        case 1:
            view.backgroundColor = UIColor.yellow
            colorlb.text = "yellow"
            a += 1
        case 2:
            view.backgroundColor = UIColor.red
            colorlb.text = "red"
            a += 1
        case 3:
            view.backgroundColor = UIColor.gray
            colorlb.text = "gray"
            a += 1
        default:
            view.backgroundColor = UIColor.cyan
            colorlb.text = "cyan"
            a = 1
        }

    }
}


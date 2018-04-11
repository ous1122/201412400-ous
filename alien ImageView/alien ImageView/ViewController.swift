//
//  ViewController.swift
//  alien ImageView
//
//  Created by D7703_13 on 2018. 4. 2..
//  Copyright © 2018년 gyuminpark. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
var a = 1
    @IBOutlet weak var myimage: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        //이미지
        myimage.image = UIImage(named: "frame1.png")
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func change(_ sender: UIButton) {
    //버튼 호출
        if a == 1{
            myimage.image = UIImage(named: "frame2.png")
            a += 1
        }
        else if a == 2
        {
            myimage.image = UIImage(named: "frame3.png")
            a += 1
        }
        else if a == 3{
            myimage.image = UIImage(named: "frame4.png")
            a += 1
        }
        else if a == 4{
            myimage.image = UIImage(named: "frame5.png")
            a += 1
        }
        else if a == 5 {
            myimage.image = UIImage(named: "frame1.png")
            a = 1
        }
        
    
    }

}


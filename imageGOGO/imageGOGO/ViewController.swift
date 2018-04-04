//
//  ViewController.swift
//  imageGOGO
//
//  Created by D7703_13 on 2018. 4. 2..
//  Copyright © 2018년 gyuminpark. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var imagego: UIImageView!
    @IBOutlet weak var count: UILabel!
    var a = 1; //a 선언해줌
    var direction = 1; // direction이 1이면 증가 0이면 감소 구분
    var myTimer = Timer()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        imagego.image = UIImage(named: "frame1.png")
        count.text = "1"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    @IBAction func change(_ sender: UIButton) {
        //버튼을 누르면 다음 이미지를 호출과 타이머 실행
        
        
        
        if a == 1{
            imagego.image = UIImage(named: "frame2.png")
            count.text = "2"
            a += 1
        }
        else if a == 2
        {
            imagego.image = UIImage(named: "frame3.png")
            count.text = "3"
            a += 1
        }
        else if a == 3{
            imagego.image = UIImage(named: "frame4.png")
            count.text = "4"
            a += 1
        }
        else if a == 4{
            imagego.image = UIImage(named: "frame5.png")
            count.text = "5"
            a += 1
        }
        else if a == 5 {
            imagego.image = UIImage(named: "frame1.png")
            count.text = "1"
            a = 1
        }
        
    }
    
    @IBAction func update(_ sender: Any) {
            //count가 5이면 감소시키기 위해 direction을 0(감소)으로 변경
        if a == 5 {
            direction = 0
        }
            //count가 1이면 증가시키기 위해 direction을 1(증가)으로 변경
        else if a == 1 {
            direction = 1
        }
        
        
            //direction이 1(증가)이면 count를 1씩 증가
        if direction == 1 {
            a += 1
        }
            //direction이 0(감소)이면 count를 1씩 감소
        else if direction == 0 {
            a = a - 1
        }
        imagego.image = UIImage(named : "frame\(a).png")
        count.text = String(a)
    }
}


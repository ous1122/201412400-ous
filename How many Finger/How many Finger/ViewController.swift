//
//  ViewController.swift
//  How many Finger
//
//  Created by D7703_13 on 2018. 3. 26..
//  Copyright © 2018년 gyuminpark. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITextFieldDelegate {
    
    @IBOutlet weak var setNum: UITextField!
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var lbNum: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        view.endEditing(true)
        setNum.backgroundColor = UIColor.green
    }
    @IBAction func guess(_ sender: UIButton) {
        //랜덤 숫자 생성하기
        let number = arc4random() % 6
        let numberString = String(number)
        
        if setNum.text == numberString {
            result.text = "맞추었습니다."
            setNum.backgroundColor = UIColor.green
            view.backgroundColor = UIColor.white
            result.textColor = UIColor.black
            lbNum.textColor = UIColor.black
        }
        else {
            result.text = "틀렸습니다. 다시 시도하세요. 이번 문제의 숫자는 \(number) 입니다."
            setNum.backgroundColor = UIColor.red
            view.backgroundColor = UIColor.black
            result.textColor = UIColor.white
            lbNum.textColor = UIColor.white
        }
        setNum.resignFirstResponder()
        
        func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        setNum.resignFirstResponder()
            return true
            
            }
        }
    
}


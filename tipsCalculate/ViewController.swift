//
//  ViewController.swift
//  tipsCalculate
//
//  Created by Selena on 2018/9/9.
//  Copyright © 2018年 Selena. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    @IBOutlet weak var money: UITextField! // 金額
    
    @IBOutlet weak var man: UITextField! //人數
    
    @IBOutlet weak var tip: UITextField! //小費
    
    @IBOutlet weak var result: UILabel! //計算金額
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    //以下為計算按鈕
    @IBAction func calculate(_ sender: UIButton) {
        
        //按下計算按鈕時收鍵盤
        money.resignFirstResponder()
        tip.resignFirstResponder()
        man.resignFirstResponder()
        
        result.isHidden = false
        
        //以下為防止有金額未輸入導致當掉
        if money.text == "" || tip.text == "" || man.text == ""//如果總金額，人數，小費％數有任一未填
        {
            result.text = "0" //則顯示為0
        }else {let Tips = Double(money.text!)! * Double(tip.text!)! / 100 / Double(man.text!)!  //這兩行是運算式
            result.text = String(Tips) //讓結果等於Tips這串運算式
        }
    }
    
}


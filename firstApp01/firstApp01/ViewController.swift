//
//  ViewController.swift
//  firstApp01
//
//  Created by 伊藤恵 研究室2013 on 2015/05/14.
//  Copyright (c) 2015年 Kodai Sato. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var textLabel: UITextField!
    @IBOutlet weak var info: UILabel!
    @IBOutlet weak var myLabel: UILabel!
    var n:Int = 0
    var tn:Int = 1
    var c = true
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        myLabel.text = String(n)
        info.text = "0~9の数字を入力してください"
        textLabel.text = "1"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func sw(sender: UISwitch) {
        if sender.on == true {
            c = true
        }else{
            c = false
        }
    }
    
    @IBAction func upB(sender: UIButton) {
        var U:Int? = textLabel.text.toInt()
        if(n+U!<=9 && c){
            n += U!
            myLabel.text = String(n)
        }
    }

    @IBAction func downB(sender: AnyObject) {
        var D:Int? = textLabel.text.toInt()
        if(n-D!>=0 && c){
            n -= D!
            myLabel.text = String(n)
        }
    }
    
    @IBAction func resetB(sender: AnyObject) {
        n = 0
        myLabel.text = String(n)
    }
}


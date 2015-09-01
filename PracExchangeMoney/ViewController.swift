//
//  ViewController.swift
//  PracExchangeMoney
//
//  Created by landtanin on 9/1/2558 BE.
//  Copyright (c) 2558 landtanin. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //Explicit
    let doubleFactor:Double = 0.027902
    var douTHBmoney:Double = 0
    var douUSDmoney:Double = 0
    
    @IBOutlet weak var labelMoney: UILabel!
    
    @IBOutlet weak var textFieldMoney: UITextField!
    
    @IBAction func exchangeButton(sender: AnyObject) {
        
        douTHBmoney = getTHBmoney()
        println("THBmoney = \(douTHBmoney)")
        
        douUSDmoney = calculate(douTHBmoney)
        
    } //exchange Button
    
    func calculate(thbMoney:Double)->Double{
        
        var douCalAnswer:Double = doubleFactor * thbMoney
    
        return douCalAnswer
    } // calculate
    
    func getTHBmoney() ->Double{
        
        // receive value from textField
        var strTHBmoney:String = textFieldMoney.text
        
        // transform received value to String
        var douReceiveTHBmoney:Double = NSString(string: strTHBmoney).doubleValue
        
        
        return douReceiveTHBmoney
        
    } //getTHBmoney

    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


} //Main Class


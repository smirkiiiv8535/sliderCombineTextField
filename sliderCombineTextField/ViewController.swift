//
//  ViewController.swift
//  sliderCombineTextField
//
//  Created by 林祐辰 on 2020/4/27.
//  Copyright © 2020 smirkiiiv. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var defaultSize = 1
    var textCount = 0
    
    @IBOutlet weak var totalText: UITextField!
    @IBOutlet weak var textNum: UILabel!
    @IBOutlet weak var sliderNum: UISlider!
    @IBOutlet weak var sizeNum: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    
    @IBAction func changeText(_ sender: UITextField) {
        textCount  = sender.text!.count  
        textNum.text = " \(textCount)"
    }
    
    
    
    @IBAction func changeSlider(_ sender: UISlider) {
        // 讀取Slider數值, 修改下方倍率大小
        defaultSize = Int(sender.value)
        sizeNum.text = "\(defaultSize)"
        // 將 字體大小轉成 CGFloat型別
        let sizeExchanger :CGFloat = CGFloat(defaultSize)
            
        let font = totalText.font
            
    totalText.font = font?.withSize(sizeExchanger)
    }

    
}

//
//  ViewController.swift
//  VendingMachine
//
//  Created by 中森えみり on 2021/01/24.
//

import UIKit

class ViewController: UIViewController {

    //投入金額
    @IBOutlet weak var inputyen: UILabel!
    var input = 0
    
 
    @IBOutlet weak var pocketmoney: UILabel!
    var pocket = 2000

    
    @IBOutlet weak var zyuyen: UIButton!
    
    @IBOutlet weak var gozyuyen: UIButton!

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //投入金額の文字０を表示させる//String型
        inputyen.text = "0"
        //所持金の文字２０００円を表示させる//String型
        pocketmoney.text = "2000"

        
    }


    
    @IBAction func zyuyen(_ sender: Any) {
       
        //投入金額が増え、所持金を減らす（カウントアップ）
        input = input + 10
        pocket = pocket - 10
        //投入金額に１０円を反映させる(数字)＊文字列型に変更（キャストと言う）
        inputyen.text = String(input)
        //所持金１０円を減らしたのを反映させる
        pocketmoney.text = String(pocket)
        //もし所持金が０になったら、所持金の文字を赤文字に変更かつ投入できなくなる
        if pocket <= 0{
            chengeTextColor()
            zyuyen.isEnabled = false
            gozyuyen.isEnabled = false
        }
        
        
    }
   
    
    @IBAction func gozyuyen(_ sender: Any) {
        
        
        //投入金額が増え、所持金を減らす（カウントアップ）
        input = input + 50
        pocket = pocket - 50
        //投入金額に５０円を反映する(数字)
        inputyen.text = String(input)
        pocketmoney.text = String(pocket)
        
        //もし所持金が０になったら、所持金の文字を赤文字に変更かつ投入できなくなる
        if pocket <= 0{
            chengeTextColor()
            zyuyen.isEnabled = false
            gozyuyen.isEnabled = false
        }
        
    }
    
    //if文を作るときは、メソッドを作る（メソッドを作るときはfuncという記載が必要）
    //所持金が０になったら所持金の文字を赤にする
    func chengeTextColor(){
        pocketmoney.textColor = .red
    }
    
    
}


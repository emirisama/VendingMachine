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
    
    //所持金
    @IBOutlet weak var pocketmoney: UILabel!
    var pocket = 2000

    //コインボタン
    @IBOutlet weak var zyuyen: UIButton!
    @IBOutlet weak var gozyuyen: UIButton!
    @IBOutlet weak var hyakuyen: UIButton!
    @IBOutlet weak var gohyakuyen: UIButton!
  
    //買うボタン
    @IBOutlet weak var waterbuy: UIButton!
    var wateryen = 120
    @IBOutlet weak var colabuy: UIButton!
    var colayen = 150
    @IBOutlet weak var coffeebuy: UIButton!
    var coffeeyen = 200
    
    //ドリンク在庫
    @IBOutlet weak var waterstock: UILabel!
    var waterzaiko = 5
    @IBOutlet weak var colastock: UILabel!
    var colazaiko = 5
    @IBOutlet weak var coffeestock: UILabel!
    var coffeezaiko = 5
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //投入金額の文字０を表示させる//String型
        inputyen.text = "0"
        //所持金の文字２０００円を表示させる//String型
        pocketmoney.text = "2000"

        
        //在庫数の文字５を表示させる
        waterstock.text = "5"
        colastock.text = "5"
        coffeestock.text = "5"
        
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
        if pocket <= 490{
            gohyakuyen.isEnabled = false
        }
        if pocket <= 90{
            hyakuyen.isEnabled = false
        }
        if pocket <= 40{
            gozyuyen.isEnabled = false
        }
        if pocket <= 9{
            zyuyen.isEnabled = false
        }
        if pocket == 0{
            chengeTextColor()
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
        if pocket <= 490{
            gohyakuyen.isEnabled = false
        }
        if pocket <= 90{
            hyakuyen.isEnabled = false
        }
        if pocket <= 40{
            gozyuyen.isEnabled = false
        }
        if pocket <= 9{
            zyuyen.isEnabled = false
        }
        if pocket == 0{
            chengeTextColor()
        }
        
    }
    
    
    @IBAction func hyakuyen(_ sender: Any) {
        
        input = input + 100
        pocket = pocket - 100
        inputyen.text = String(input)
        pocketmoney.text = String(pocket)
        
        if pocket <= 490{
            gohyakuyen.isEnabled = false
        }
        if pocket <= 90{
            hyakuyen.isEnabled = false
        }
        if pocket <= 40{
            gozyuyen.isEnabled = false
        }
        if pocket <= 9{
            zyuyen.isEnabled = false
        }
        if pocket == 0{
            chengeTextColor()
        }
        
    }
    
    
    @IBAction func gohyakuyen(_ sender: Any) {
        
        input = input + 500
        pocket = pocket - 500
        inputyen.text = String(input)
        pocketmoney.text = String(pocket)
        
        if pocket <= 490{
            gohyakuyen.isEnabled = false
        }
        if pocket <= 90{
            hyakuyen.isEnabled = false
        }
        if pocket <= 40{
            gozyuyen.isEnabled = false
        }
        if pocket <= 9{
            zyuyen.isEnabled = false
        }
        if pocket == 0{
            chengeTextColor()
        }
    }
    
    //買うアクション
    
    @IBAction func waterbuy(_ sender: Any) {
        inputyen.text = String(input)
        if input >= wateryen{
            input = input - 120
            waterzaiko = waterzaiko - 1
        }
 
    
        if input >= colayen{
            input = input - 150
            colazaiko = colazaiko - 1
        }
 
        if input >= coffeeyen{
            input = input - 200
            coffeezaiko = coffeezaiko - 1
  
        }

 
        
    }
    
    @IBAction func colabuy(_ sender: Any) {
        inputyen.text = String(input)
        if input >= wateryen{
            input = input - 120
            waterzaiko = waterzaiko - 1

        }
  
    
        if input >= colayen{
            input = input - 150
            colazaiko = colazaiko - 1

        }

        if input >= coffeeyen{
            input = input - 200
            coffeezaiko = coffeezaiko - 1

        }

 
    }
    
    @IBAction func coffeebuy(_ sender: Any) {
        inputyen.text = String(input)


        if input >= coffeeyen{
            input = input - 200
            coffeezaiko = coffeezaiko - 1

        }

    }
    
    
    //if文を作るときは、メソッドを作る（メソッドを作るときはfuncという記載が必要）
    //所持金が０になったら所持金の文字を赤にする
    func chengeTextColor(){
        pocketmoney.textColor = .red
    }
    
    
}


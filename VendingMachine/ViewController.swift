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
    var zyucoin = 10
    @IBOutlet weak var gozyuyen: UIButton!
    var gozyucoin = 50
    @IBOutlet weak var hyakuyen: UIButton!
    var hyakucoin = 100
    @IBOutlet weak var gohyakuyen: UIButton!
    var gohyakucoin = 500
  
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
    
    //水画像
    @IBOutlet weak var waterimage: UIImageView!
    
    
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

    
    

   //投入アクション
    @IBAction func zyuyen(_ sender: Any) {
       
        //投入金額が増え、所持金を減らす（カウントアップ）
        input = input + zyucoin
        pocket = pocket - zyucoin
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
        input = input + gozyucoin
        pocket = pocket - gozyucoin
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
        
        input = input + hyakucoin
        pocket = pocket - hyakucoin
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
        
        input = input + gohyakucoin
        pocket = pocket - gohyakucoin
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
        

        if input >= wateryen{
            input = input - wateryen
            waterzaiko = waterzaiko - 1
        }
        if waterzaiko == 0{
            waterbuy.isEnabled = false
        }
        inputyen.text = String(input)
        waterstock.text = String(waterzaiko)
        
        //買うを押したら画面遷移
        performSegue(withIdentifier: "buynext", sender: nil)

    }
    
    @IBAction func colabuy(_ sender: Any) {
        if input >= colayen{
            input = input - colayen
            colazaiko = colazaiko - 1
        }
        if colazaiko == 0{
            colabuy.isEnabled = false
        }
        inputyen.text = String(input)
        colastock.text = String(colazaiko)

    }
    
    @IBAction func coffeebuy(_ sender: Any) {
        if input >= coffeeyen{
            input = input - coffeeyen
            coffeezaiko = coffeezaiko - 1
        }
        if coffeezaiko == 0{
            coffeebuy.isEnabled = false
        }
        inputyen.text = String(input)
        coffeestock.text = String(coffeezaiko)
    }
    
    //お釣りアクション
    @IBAction func oturi(_ sender: Any) {
        pocket = pocket + input
        input = input - input
        TextColor()
        if pocket >= 500{
            gohyakuyen.isEnabled = true
        }
        if pocket >= 100{
            hyakuyen.isEnabled = true
        }
        if pocket >= 50{
            gozyuyen.isEnabled = true
        }
        if pocket >= 10{
            zyuyen.isEnabled = true
        }
        inputyen.text = String(input)
        pocketmoney.text = String(pocket)
        
    }
    
    
    
    //if文を作るときは、メソッドを作る（メソッドを作るときはfuncという記載が必要）
    //所持金が０になったら所持金の文字を赤にする
    func chengeTextColor(){
        pocketmoney.textColor = .red
    }
    
    //所持金が１以上になると黒文字になる
    func TextColor(){
        pocketmoney.textColor = .black
    }
    
    
    //購入した後の画面遷移
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "buynext"{
            let nextVC = segue.destination as! NextViewController
            nextVC.selectedImg = waterimage.image
        }

    }
    
    
}


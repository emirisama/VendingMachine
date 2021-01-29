//
//  NextViewController.swift
//  VendingMachine
//
//  Created by 中森えみり on 2021/01/24.
//

import UIKit

class NextViewController: UIViewController {

    

    @IBOutlet weak var buyimage: UIImageView!
    
    var selectedImg: UIImage!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        //水の「買う」ボタンを押した際、水画像を表示させる
        buyimage.image = selectedImg
        
       
    }
    

    //戻る（画面遷移）
    @IBAction func back(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }
    

    
    

}

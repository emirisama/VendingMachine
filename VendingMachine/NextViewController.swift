//
//  NextViewController.swift
//  VendingMachine
//
//  Created by 中森えみり on 2021/01/24.
//

import UIKit

class NextViewController: UIViewController {

    

    @IBOutlet weak var buyimage: UIImageView!
    
    var waterImage: UIImage!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        //買うを押すと水画像表示
        buyimage.image = waterImage
        
       
    }
    

    //戻る（画面遷移）
    @IBAction func back(_ sender: Any) {
        
        dismiss(animated: true, completion: nil)
    }
    

    
    

}

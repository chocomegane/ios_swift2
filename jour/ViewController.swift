//
//  ViewController.swift
//  jour
//
//  Created by yuki.sawamura on 2019/08/11.
//  Copyright © 2019年 yusawamu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    //　計算機の処理　start

    // 数値が入る
    @IBOutlet weak var filedA: UITextField!
    // 数値が入る
    @IBOutlet weak var filedB: UITextField!
    // 結果が入る
    @IBOutlet weak var resultLabel: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func celende(_ sender: Any) {
        let resultA:Int? = Int(filedA.text!);
        let resultB:Int? = Int(filedB.text!);

        if(resultA != nil && resultB != nil ){
            resultLabel.text = "答えは"+String(resultA!*resultB!);

        }else{
            resultLabel.text = "入力内容を再度ご確認ください"
        }

    }
    
    //　計算機の処理　end
    
    
    //　配列処理　staet
    
    
    // 戻るボタンと紐付け用としたが失敗
    @IBAction func `return`(_ sender: Any) {
//        同じコントローラの場合下記のものを使用してもろモーダルを閉じることはできない
//        dismiss(animated: true, completion: nil)
    }
    
    
    
    
}


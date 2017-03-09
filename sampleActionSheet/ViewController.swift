//
//  ViewController.swift
//  sampleActionSheet
//
//  Created by Eriko Ichinohe on 2017/03/09.
//  Copyright © 2017年 Eriko Ichinohe. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myLabel: UILabel!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }
    
    //Selectボタンが押されたとき発動
    @IBAction func tapSelect(_ sender: UIButton) {
        
        // アクションシートを作成
        let alertController = UIAlertController(title: "今日のアクティビティ", message: "どのアクティビティにする？", preferredStyle: .actionSheet)
        
        // アクティビティ1ボタンを追加
        alertController.addAction(UIAlertAction(title: "ヨガ", style: .default, handler: {action in self.myLabel.text = "ヨガいこう！"}))
        
        // アクティビティ2ボタンを追加
        alertController.addAction(UIAlertAction(title: "バスケ", style: .default, handler: {action in self.myLabel.text = "バスケいこう！"}))
        
        // 削除ボタンを追加
        alertController.addAction(UIAlertAction(title: "ムエタイ", style: .destructive, handler: {action in self.myDelete()}))
        
        // キャンセルボタンを追加
        alertController.addAction(UIAlertAction(title: "今日はやめとく", style: .cancel, handler: {action in self.myCancel()}))
        
        
        // アクションシートを表示
        present(alertController, animated: true, completion: nil)
    }
    
    // 削除ボタンが押されたときに呼ばれるメソッド
    func myDelete(){
        self.myLabel.text = "ムエタイ頑張ろ！"
    }
    
    // キャンセルが押されたときに呼ばれるメソッド
    func myCancel(){
    
        self.myLabel.text = "明日いこう！"
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


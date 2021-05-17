//
//  ViewController.swift
//  DelegatePassingValue
//
//  Created by Jimmy on 2021/1/2.
//

import UIKit
//MARK: - 這個FirstVC類別，繼承UIViewController，並且遵從PassingValueDelegate協定，因此需要實作displayRandomNumber這個方法（就像是跟人簽約了，就得做合約上的約定事項）
class FirstVC: UIViewController, PassingValueDelegate {
   //MARK: - UI Element，這是螢幕中間的那塊綠色Label，要顯示第二頁回傳的數字用的
    @IBOutlet weak var displayRandomNumberLabel: UILabel!

    //MARK: - Life Cycle，生命週期，當程式第一次載入時就是載入到這邊，並且只會載入一次
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
    //MARK: - Delegation Func，實作的內容，遵從了ＰassingValueDelegate協定，因此要實作這個方法，實際上要做什麼由我自己決定
    func displayRandomNumber(randomNumber: Int) {
        displayRandomNumberLabel.text = "\(randomNumber)"
    }

    //MARK: - 跳轉到下一頁，這部分如果有問題再問我
    @IBAction func showNextPage(_ sender: Any) {
        if let secondVC = storyboard?.instantiateViewController(withIdentifier: "SecondVC") as? SecondVC
        {
            //MARK: - 接下來這一行很重要，在下一頁（secondVC），有一個變數叫做「delegate」，下一行的意思是指「我（目前這個類別）是代理者，我來執行」
            secondVC.delegate = self
            self.navigationController?.pushViewController(secondVC, animated: true)
        }
    }
    
}


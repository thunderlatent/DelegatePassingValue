//
//  SecondVC.swift
//  DelegatePassingValue
//
//  Created by Jimmy on 2021/1/2.
//

import UIKit

class SecondVC: UIViewController {
    //MARK:- Delegate，這個變數也遵從PassingValueDelegate，所以他也有displayRandomNumber這個功能
    var delegate: PassingValueDelegate!
    //MARK:- UI Element
    @IBOutlet weak var disPlayRandomNumberLabel: UILabel!

    //MARK:- Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
   
    //MARK: - 點擊產生亂數按鈕
    @IBAction func makeRandomNumber(_ sender: UIButton) {
        //MARK: - 產生亂數
        let number = Int.random(in: 0...10000)
        disPlayRandomNumberLabel.text = "\(number)"
        
        //MARK: - 這行的意思是執行displayRandomNumber，並且把number帶入，firstVC由於有說「secondVC.delegate = self」，因此實際上是firstVC去執行，並且帶入的number也可以傳遞到firstVC
        delegate.displayRandomNumber(randomNumber: number)
    }
    

}

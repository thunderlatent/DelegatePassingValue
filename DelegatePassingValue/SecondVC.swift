//
//  SecondVC.swift
//  DelegatePassingValue
//
//  Created by Jimmy on 2021/1/2.
//

import UIKit

class SecondVC: UIViewController {
    //MARK:- Delegation
    var delegate: SecondToFirst!
    //MARK:- UI Element
    @IBOutlet weak var disPlayRandomNumberLabel: UILabel!

    //MARK:- Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    //MARK:- override Function
    //MARK:- Custom Function
    
   
    
    @IBAction func makeRandomNumber(_ sender: UIButton) {
        let number = Int.random(in: 0...10000)
        disPlayRandomNumberLabel.text = "\(number)"
        delegate.displayRandomNumber(randomNumber: number)
    }
    

}

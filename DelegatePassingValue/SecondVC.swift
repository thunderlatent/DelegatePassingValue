//
//  SecondVC.swift
//  DelegatePassingValue
//
//  Created by Jimmy on 2021/1/2.
//

import UIKit

class SecondVC: UIViewController {
    //MARK: - The property conform PassingValueDelegate, it's mean delegate hold the contract.
    var delegate: PassingValueDelegate!
    //MARK:- UI Element
    @IBOutlet weak var disPlayRandomNumberLabel: UILabel!

    //MARK:- Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    
   
    //MARK: - Click to generate random number
    @IBAction func makeRandomNumber(_ sender: UIButton) {
        //MARK: - Generate a random number
        let number = Int.random(in: 0...10000)
        disPlayRandomNumberLabel.text = "\(number)"
        
        //MARK: - Passing random number to FirstVC
        delegate.passingValue(value: "\(number)")
    }
    

}

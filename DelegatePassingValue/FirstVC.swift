//
//  ViewController.swift
//  DelegatePassingValue
//
//  Created by Jimmy on 2021/1/2.
//

import UIKit

class FirstVC: UIViewController,SecondToFirst {
   //MARK:- UI Element
    @IBOutlet weak var displayRandomNumberLabel: UILabel!

    //MARK:- Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    //MARK:- Delegation Func
    func displayRandomNumber(randomNumber: Int) {
        displayRandomNumberLabel.text = "\(randomNumber)"
    }

    @IBAction func showNextPage(_ sender: Any) {
        if let secondVC = storyboard?.instantiateViewController(withIdentifier: "SecondVC") as? SecondVC
        {
            secondVC.delegate = self
            show(secondVC, sender: nil)
        }
    }
    
}


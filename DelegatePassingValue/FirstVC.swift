//
//  ViewController.swift
//  DelegatePassingValue
//
//  Created by Jimmy on 2021/1/2.
//

import UIKit
//MARK: - The class conform PassingValueDelegate, so it have to excute passingValue(value:)
class FirstVC: UIViewController, PassingValueDelegate {
    
    //MARK: - function of protocol
    func passingValue(value: String) {
        self.displayRandomNumberLabel.text = value
    }
    
    
   //MARK: - UI Element，the green label at the center of screen, show the number from SecondVC.
    @IBOutlet weak var displayRandomNumberLabel: UILabel!

    
    
    //MARK: - Life Cycle
    override func viewDidLoad() {
        super.viewDidLoad()
    }


    //MARK: - Navigate To SecondVC
    @IBAction func showNextPage(_ sender: Any) {
        if let secondVC = storyboard?.instantiateViewController(withIdentifier: "SecondVC") as? SecondVC
        {
            //MARK: - Say the protocol function let me excute.
            secondVC.delegate = self
            self.navigationController?.pushViewController(secondVC, animated: true)
        }
    }
    
}


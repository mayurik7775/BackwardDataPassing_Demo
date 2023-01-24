//
//  ViewController.swift
//  BackwardDataPassing
//
//  Created by Mac on 03/11/22.
//

import UIKit

class ViewController: UIViewController,BackDataPassingProtocol {
  
    

    @IBOutlet weak var dataTextFieldOnFirstViewController: UITextField!
    @IBOutlet weak var nameLabelOnFirstViewController: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        self.dataTextFieldOnFirstViewController.text = ""
        // Do any additional setup after loading the view.
    }

    @IBAction func btnClickToNavigateSecondViewController(_ sender: Any) {
        let secondViewController = self.storyboard?.instantiateViewController(withIdentifier: "SecondViewController") as! SecondViewController
        let dataToBePassed = self.dataTextFieldOnFirstViewController.text
        secondViewController.dataFromFirstViewController = dataToBePassed
        secondViewController.delegateSecondViewController = self
        self.navigationController?.pushViewController(secondViewController, animated: true)
    }
    func passDataToFirstViewController(textToPass: String) {
    self.nameLabelOnFirstViewController.text = textToPass
    }
}


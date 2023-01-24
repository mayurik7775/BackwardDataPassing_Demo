//
//  SecondViewController.swift
//  BackwardDataPassing
//
//  Created by Mac on 03/11/22.
//

import UIKit
protocol BackDataPassingProtocol{
    func passDataToFirstViewController(textToPass : String)
}
class SecondViewController: UIViewController {

    @IBOutlet weak var dataLabelOnSecondViewController: UILabel!
    
    @IBOutlet weak var nameTextFieldOnSecondViewController: UITextField!
    
    var dataFromFirstViewController : String?
    var delegateSecondViewController : BackDataPassingProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.dataLabelOnSecondViewController.text = dataFromFirstViewController
        navigationItem.hidesBackButton = true

    }
    
    @IBAction func btnClickToNavigateFirstViewController(_ sender: Any) {
        guard let delegateSecondViewController = delegateSecondViewController else {
            print("delegate not found")
            return
        }
        let NameRetivedFromTextField = self.nameTextFieldOnSecondViewController.text
        
        delegateSecondViewController.passDataToFirstViewController(textToPass: NameRetivedFromTextField!)
        navigationController?.popViewController(animated: true)

    }
    

}

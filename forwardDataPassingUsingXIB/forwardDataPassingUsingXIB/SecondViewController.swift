//
//  SecondViewController.swift
//  forwardDataPassingUsingXIB
//
//  Created by Mac on 05/11/22.
//

import UIKit
protocol BackDataPassingProtocol{
    func firstNamepassDataToFVC(textToPass:String)
    func middleNamepassDataToFVC(textToPass:String)
    func lastNamepassDataToFVC(textToPass:String)
}

class SecondViewController: UIViewController {

    @IBOutlet weak var firstNameTextFieldOnSVC: UITextField!

    @IBOutlet weak var middleNameTextFieldOnSVC: UITextField!
    @IBOutlet weak var lastNameTextFieldOnSVC: UITextField!
    
    var delegateSVC :BackDataPassingProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }
    @IBAction func btnClickToNavigateFVC(_ sender: Any) {
        guard let delegateOnSecondViewController = delegateSVC else{
            print("Delegate Not Found")
            return
        }
        let firstNameRetrivedFromTextField = self.firstNameTextFieldOnSVC.text
        let middleNameRetrivedFromTextField = self.middleNameTextFieldOnSVC.text
        let lastNameRetrivedFromTextField = self.lastNameTextFieldOnSVC.text
        
        delegateOnSecondViewController.firstNamepassDataToFVC(textToPass: firstNameRetrivedFromTextField!)
        delegateOnSecondViewController.middleNamepassDataToFVC(textToPass: middleNameRetrivedFromTextField!)
        delegateOnSecondViewController.lastNamepassDataToFVC(textToPass: lastNameRetrivedFromTextField!)
        self.navigationController?.popViewController(animated: true)
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

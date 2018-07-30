//
//  AddCustomerViewController.swift
//  Size Calculator
//
//  Created by 谈铭瑶 on 2018/7/10.
//  Copyright © 2018年 Terry Tan. All rights reserved.
//

import UIKit

protocol newNameDelegate{
    func addName(name: String)
}

class AddCustomerViewController: UIViewController, UITextFieldDelegate {
    var delegate:newNameDelegate?
    var nameString:String = ""
    @IBOutlet weak var nameLabel: UILabel!
    
    @IBOutlet weak var nameTextField: UITextField!
    
    @IBAction func confirmNameButton(_ sender: UIButton) {
        if nameTextField.text != nil && nameTextField.text != ""{
            nameString = nameTextField.text!
            delegate?.addName(name: nameString)
            navigationController?.popViewController(animated: true)
        }else{
            let formatAlert = UIAlertController(title: "输入格式错误", message: "请检查各个输入是否存在格式错误.\n需要输入数字或者带小数的数字.\n嘿嘿", preferredStyle: .actionSheet)
            let okAction = UIAlertAction(title: "好的", style: .default)
            formatAlert.addAction(okAction)
            present(formatAlert, animated: true, completion: nil)
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        nameTextField.delegate = self
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func textFieldShouldReturn(_ textField: UITextField) -> Bool {
        confirmNameButton(UIButton())
        return true
    }

}

//
//  detailedSizeViewController.swift
//  Size Calculator
//
//  Created by 谈铭瑶 on 2018/7/8.
//  Copyright © 2018年 Terry Tan. All rights reserved.
//

import UIKit

class detailedSizeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    var type2:Int = 0
    
    var sizeArray:[String] = []
    var glassArray:[String] = []
    
    @IBAction func manipulate(_ sender: UIBarButtonItem) {
        /**let myManipulate = UIAlertController(title: "操作", message: "收藏或添加到联系人", preferredStyle: .actionSheet)
        let addFeatureAction = UIAlertAction(title: "收藏", style: .default){
            (action:UIAlertAction) in
            //收藏操作
        }
        
        let addToCustomerAction = UIAlertAction(title: "添加到联系人", style: .default){
            (action:UIAlertAction) in
            //添加到联系人操作
            let addToCustomer = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(withIdentifier: "addToCustomer")
            self.present(addToCustomer, animated: true, completion: nil)
            
        }
        let cancelAction = UIAlertAction(title: "取消", style: .cancel){
            (action:UIAlertAction) in
            self.dismiss(animated: true, completion: nil)
        }
        myManipulate.addAction(addFeatureAction)
        myManipulate.addAction(addToCustomerAction)
        myManipulate.addAction(cancelAction)
        present(myManipulate, animated: true, completion: nil)
  **/
        
        
    }

    
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
            return sizeArray.count
        }else{
            return glassArray.count
        }
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //let cell = UITableViewCell()
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        if indexPath.section == 0{
            cell.textLabel?.text = sizeArray[indexPath.row]
        }else{
            cell.textLabel?.text = glassArray[indexPath.row]
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0{
            return "材料尺寸(cm)"
        }else{
            return "玻璃尺寸(cm)"
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(sizeArray)
        print(glassArray)
        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, shouldHighlightRowAt indexPath: IndexPath) -> Bool {
        return false
    }

}

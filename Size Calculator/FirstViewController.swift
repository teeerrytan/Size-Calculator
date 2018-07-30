//
//  FirstViewController.swift
//  Size Calculator
//
//  Created by 谈铭瑶 on 2018/7/8.
//  Copyright © 2018年 Terry Tan. All rights reserved.
//

import UIKit

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource, newNameDelegate{
    
    @IBOutlet weak var tb: UITableView!
    
    //var nameArray = [String]()
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return globalVariables.nameArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath)
        
        cell.textLabel?.text = globalVariables.nameArray[indexPath.row]
        
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        
        return "客户姓名"
        
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete{
            globalVariables.nameArray.remove(at: indexPath.row)
            UserDefaults.standard.set(globalVariables.nameArray, forKey: "customerArray")
            tableView.deleteRows(at: [indexPath], with: .fade)
            print(globalVariables.nameArray)
        }else if editingStyle == .insert{
            globalVariables.nameArray.append("data")
        }
    }
    
    func addName(name: String) {
        globalVariables.nameArray.append(name)
        UserDefaults.standard.set(globalVariables.nameArray, forKey: "customerArray")
        print(globalVariables.nameArray)
        tb.reloadData()
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        if let loadedNames = UserDefaults.standard.stringArray(forKey: "customerArray"){
            globalVariables.nameArray = loadedNames
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //performSegue(withIdentifier: "showSize1", sender: nil)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "gotoNewName"{
            if let newName = segue.destination as? AddCustomerViewController{
                newName.delegate = self
            }
        }
    }


}


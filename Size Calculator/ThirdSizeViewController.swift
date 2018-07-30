//
//  ThirdSizeViewController.swift
//  Size Calculator
//
//  Created by 谈铭瑶 on 2018/7/10.
//  Copyright © 2018年 Terry Tan. All rights reserved.
//

import UIKit

class ThirdSizeViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 3
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cellInside", for: indexPath)
        
        if indexPath.section == 0{
            cell.textLabel?.text = "hhh"
        }else{
            cell.textLabel?.text = "heiheihei"
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection section: Int) -> String? {
        if section == 0{
            return "class 1"
        }else{
            return "class 2"
        }
    }

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

}

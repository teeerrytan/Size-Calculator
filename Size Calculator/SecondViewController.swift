//
//  SecondViewController.swift
//  Size Calculator
//
//  Created by 谈铭瑶 on 2018/7/8.
//  Copyright © 2018年 Terry Tan. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var calTitleLabel: UILabel!
    @IBOutlet weak var widthLabel: UILabel!
    @IBOutlet weak var heightLabel: UILabel!
    @IBOutlet weak var fixedLabel: UILabel!
    @IBOutlet weak var glassNumberLabel: UILabel!
    @IBOutlet weak var widthTextField: UITextField!
    @IBOutlet weak var heightTextField: UITextField!
    @IBOutlet weak var fixedTextField: UITextField!
    @IBOutlet weak var glassNumberTextField: UITextField!
    @IBOutlet weak var selectStyleLabel: UILabel!
    
    var type:Int = 0
    var sizeArray:[String] = []
    var glassArray:[String] = []
    
    @IBOutlet weak var selectStyleSegment: UISegmentedControl!
    
    @IBAction func detailedSize(_ sender: UIBarButtonItem) {
    }
    
    @IBAction func confirmButton(_ sender: UIButton) {
        //获取输入
        
        //基础数据, 宽高固定
        print(selectStyleSegment.selectedSegmentIndex)
        var widthString:String = ""
        var heightString:String = ""
        var fixedString:String = ""
        var glassNumberString:String = ""
        
        var width:Float = 0
        var height:Float = 0
        var fixed:Float = 0
        var glassNumber:Int = 0
        
        //各材料数据
        var bianfeng:Float = 0
        var shanggu:Float = 0
        var zhongyao:Float = 0
        var zhongfang:Float = 0
        var xiagui:Float = 0
        var changguangqi:Float = 0
        var duanguangqi:Float = 0
        var changgouqi:Float = 0
        var duangouqi:Float = 0
        var shangfang:Float = 0
        var xiafang:Float = 0
        var gaiban:Float = 0
        var zhongzhu:Float = 0
        var pingshanghua:Float = 0
        var glassWidth:Float = 0
        var glassHeight:Float = 0
        var fixedGlassBudaiWidth:Float = 0
        var fixedGlassDaiWidth:Float = 0
        var fixedGlassHeight:Float = 0
        var yaxianDai:Float = 0
        var yaxianBudai:Float = 0
        
        
        var bianfengNumber:Int = 0
        var shangguNumber:Int = 0
        var zhongyaoNumber:Int = 0
        var zhongfangNumber:Int = 0
        var xiaguiNumber:Int = 0
        var changguangqiNumber:Int = 0
        var duanguangqiNumber:Int = 0
        var changgouqiNumber:Int = 0
        var duangouqiNumber:Int = 0
        var shangfangNumber:Int = 0
        var xiafangNumber:Int = 0
        var gaibanNumber:Int = 0
        var zhongzhuNumber:Int = 0
        var pingshanghuaNumber:Int = 0
        
        if let testString = widthTextField.text {
            widthString = widthTextField.text!
        }else{
            print("problem")
        }
        
        if let testString = heightTextField.text {
            heightString = heightTextField.text!
        }else{
            print("problem")
        }
        
        if let testString = fixedTextField.text {
            fixedString = fixedTextField.text!
        }else{
            print("problem")
        }
        
        if let testString = glassNumberTextField.text {
            glassNumberString = glassNumberTextField.text!
        }else{
            print("problem")
        }
        
        
        if let testWidth = Float(widthString){
            width = testWidth
        }
        if let testHeight = Float(heightString){
            height = testHeight
        }
        if let testFixed = Float(fixedString){
            fixed = testFixed
        }
        if let testGlassNumber = Int(glassNumberString){
            glassNumber = testGlassNumber
        }
        
        if width == 0.0 || height == 0.0 {
            let formatAlert = UIAlertController(title: "输入格式错误", message: "请检查各个输入是否存在格式错误.\n需要输入数字或者带小数的数字.\n嘿嘿", preferredStyle: .actionSheet)
            let okAction = UIAlertAction(title: "好的", style: .default)
            formatAlert.addAction(okAction)
            present(formatAlert, animated: true, completion: nil)
        }else{
            
            print("\(height) \(width) \(fixed) \(glassNumber)")
        }
        
        //进行运算
        
        bianfeng = 0
        shanggu = 0
        zhongyao = 0
        xiagui = 0
        changguangqi = 0
        duanguangqi = 0
        changgouqi = 0
        duangouqi = 0
        shangfang = 0
        zhongfang = 0
        xiafang = 0
        gaiban = 0
        zhongzhu = 0
        pingshanghua = 0
        glassWidth = 0
        glassHeight = 0
        fixedGlassBudaiWidth = 0
        fixedGlassDaiWidth = 0
        fixedGlassHeight = 0
        yaxianDai = 0
        yaxianBudai = 0
        
        
        if selectStyleSegment.selectedSegmentIndex == 0 {
            //828型
            
            if fixed == 0{
                //不带固定
                bianfeng = height
                pingshanghua = width - 2.8
                xiagui = width - 2.8
                changguangqi = height - 5.8
                duanguangqi = height - 6.8
                changgouqi = height - 5.8
                duangouqi = height - 6.8
                shangfang = (width - 10)/2
                xiafang = (width - 10)/2
                glassHeight = height - 15.1
                glassWidth = (width - 10)/2 - 0.8
                //材料数量
                bianfengNumber = glassNumber * 2
                pingshanghuaNumber = glassNumber
                xiaguiNumber = glassNumber
                changguangqiNumber = glassNumber
                duanguangqiNumber = glassNumber
                changgouqiNumber = glassNumber
                duangouqiNumber = glassNumber
                shangfangNumber = glassNumber * 2
                xiafangNumber = glassNumber
                
                sizeArray = ["边封: \(bianfeng)\t\t支数: \(bianfengNumber)",
                             "上固定: \(shanggu)\t\t支数: \(shangguNumber)",
                             "中腰: \(zhongyao)\t\t支数: \(zhongyaoNumber)",
                             "下轨: \(xiagui)\t\t支数: \(xiaguiNumber)",
                             "平上划: \(pingshanghua)\t\t支数: \(pingshanghuaNumber)",
                             "长光企: \(changguangqi)\t\t支数: \(changguangqiNumber)",
                             "短光企: \(duanguangqi)\t\t支数: \(duanguangqiNumber)",
                             "长勾企: \(changgouqi)\t\t支数: \(changgouqiNumber)",
                             "短勾企: \(duangouqi)\t\t支数: \(duangouqiNumber)",
                             "上方: \(shangfang)\t\t支数: \(shangfangNumber)",
                             "下方: \(xiafang)\t\t支数: \(xiafangNumber)",
                             "中方: \(zhongfang)\t\t支数: \(zhongfangNumber)",
                             "盖板: \(gaiban)\t\t支数: \(gaibanNumber)",
                             "中柱: \(zhongzhu)\t\t支数: \(zhongzhuNumber)"]
                
                glassArray = ["窗芯玻璃高度: \(glassHeight)",
                              "窗芯玻璃宽度: \(glassWidth)",
                              "固定玻璃高度: ",
                              "固定玻璃宽度: "]
                                
                type = 1
                print("不带固定完成")
                
                //performSegue(withIdentifier: "gotoView2", sender: sizeArray)
                
            }else{
                //带固定
                bianfeng = height
                changguangqi = height - fixed - 7.8
                duanguangqi = height - fixed - 8.8
                changgouqi = height - fixed - 7.8
                duangouqi = height - fixed - 8.8
                shangfang = (width - 10)/2
                xiafang = (width - 10)/2
                shanggu = width - 2.8
                zhongyao = width - 2.8
                xiagui = width - 2.8
                gaiban = fixed - 3.5
                zhongzhu = fixed - 3.5
                glassHeight = height - fixed - 17.1
                glassWidth = (width - 10)/2 - 0.8
                fixedGlassBudaiWidth = width - 6.5
                fixedGlassDaiWidth = (width - 10)/2
                fixedGlassHeight = fixed - 2.8
                //材料数量
                bianfengNumber = glassNumber * 2
                shangguNumber = glassNumber
                zhongyaoNumber = glassNumber
                xiaguiNumber = glassNumber
                changguangqiNumber = glassNumber
                duanguangqiNumber = glassNumber
                changgouqiNumber = glassNumber
                duangouqiNumber = glassNumber
                shangfangNumber = glassNumber * 2
                xiafangNumber = glassNumber
                gaibanNumber = glassNumber * 2
                zhongzhuNumber = 1
                
                sizeArray = ["边封: \(bianfeng)\t\t支数: \(bianfengNumber)",
                    "上固定: \(shanggu)\t\t支数: \(shangguNumber)",
                    "中腰: \(zhongyao)\t\t支数: \(zhongyaoNumber)",
                    "下轨: \(xiagui)\t\t支数: \(xiaguiNumber)",
                    "平上划: \(pingshanghua)\t\t支数: \(pingshanghuaNumber)",
                    "长光企: \(changguangqi)\t\t支数: \(changguangqiNumber)",
                    "短光企: \(duanguangqi)\t\t支数: \(duanguangqiNumber)",
                    "长勾企: \(changgouqi)\t\t支数: \(changgouqiNumber)",
                    "短勾企: \(duangouqi)\t\t支数: \(duangouqiNumber)",
                    "上方: \(shangfang)\t\t支数: \(shangfangNumber)",
                    "下方: \(xiafang)\t\t支数: \(xiafangNumber)",
                    "中方: \(zhongfang)\t\t支数: \(zhongfangNumber)",
                    "盖板: \(gaiban)\t\t支数: \(gaibanNumber)",
                    "中柱: \(zhongzhu)\t\t支数: \(zhongzhuNumber)"]
                
                glassArray = ["窗芯玻璃高度: \(glassHeight)",
                    "窗芯玻璃宽度: \(glassWidth)",
                    "固定玻璃高度: \(fixedGlassHeight)",
                    "不带中柱固定玻璃宽度: \(fixedGlassBudaiWidth)",
                    "带中柱固定玻璃宽度: \(fixedGlassDaiWidth)"]
                
                type = 2
                print("带固定完成")
                //performSegue(withIdentifier: "gotoView2", sender: sizeArray)

            }
            
        }else if selectStyleSegment.selectedSegmentIndex == 1{
            //757型
            if fixed == 0{
                //不带固定
                bianfeng = height
                pingshanghua = width - 3
                xiagui = width - 3
                changguangqi = height - 6
                duanguangqi = height - 7.5
                changgouqi = height - 6
                duangouqi = height - 7.5
                shangfang = (width - 13.2)/2
                zhongfang = (width - 13.2)/2
                xiafang = (width - 13.2)/2
                glassHeight = height - 15.5
                glassWidth = (width - 13.2)/2 - 0.6
                //材料数量
                bianfengNumber = glassNumber * 2
                pingshanghuaNumber = glassNumber
                xiaguiNumber = glassNumber
                changguangqiNumber = glassNumber
                duanguangqiNumber = glassNumber
                changgouqiNumber = glassNumber
                duangouqiNumber = glassNumber
                shangfangNumber = glassNumber * 2
                zhongfangNumber = glassNumber
                xiafangNumber = glassNumber
                
                sizeArray = ["边封: \(bianfeng)\t\t支数: \(bianfengNumber)",
                    "上固定: \(shanggu)\t\t支数: \(shangguNumber)",
                    "中腰: \(zhongyao)\t\t支数: \(zhongyaoNumber)",
                    "下轨: \(xiagui)\t\t支数: \(xiaguiNumber)",
                    "平上划: \(pingshanghua)\t\t支数: \(pingshanghuaNumber)",
                    "长光企: \(changguangqi)\t\t支数: \(changguangqiNumber)",
                    "短光企: \(duanguangqi)\t\t支数: \(duanguangqiNumber)",
                    "长勾企: \(changgouqi)\t\t支数: \(changgouqiNumber)",
                    "短勾企: \(duangouqi)\t\t支数: \(duangouqiNumber)",
                    "上方: \(shangfang)\t\t支数: \(shangfangNumber)",
                    "下方: \(xiafang)\t\t支数: \(xiafangNumber)",
                    "中方: \(zhongfang)\t\t支数: \(zhongfangNumber)",
                    "盖板: \(gaiban)\t\t支数: \(gaibanNumber)",
                    "中柱: \(zhongzhu)\t\t支数: \(zhongzhuNumber)"]
                
                glassArray = ["窗芯玻璃高度: \(glassHeight)",
                    "窗芯玻璃宽度: \(glassWidth)",
                    "固定玻璃高度: ",
                    "固定玻璃宽度: "]
                
                type = 3
                print("不带固定完成")
                //performSegue(withIdentifier: "gotoView2", sender: sizeArray)

            }else{
                //带固定
                bianfeng = height
                shanggu = width - 3
                zhongyao = width - 3
                xiagui = width - 3
                changguangqi = height - fixed - 7
                duanguangqi = height - fixed - 8.5
                changgouqi = height - fixed - 7
                duangouqi = height - fixed - 8.5
                shangfang = (width - 13.2)/2
                zhongfang = (width - 13.2)/2
                xiafang = (width - 13.2)/2
                gaiban = fixed - 2.5
                zhongzhu = fixed - 2.5
                glassHeight = height - fixed - 16.5
                glassWidth = (width - 13.2)/2 - 0.6
                fixedGlassBudaiWidth = width - 7
                fixedGlassDaiWidth = (width - 10)/2
                fixedGlassHeight = fixed - 3.2
                yaxianDai = (width - 10.5)/2
                yaxianBudai = width - 8.4
                
                //材料数量
                bianfengNumber = glassNumber * 2
                shangguNumber = glassNumber
                zhongyaoNumber = glassNumber
                xiaguiNumber = glassNumber
                changguangqiNumber = glassNumber
                duanguangqiNumber = glassNumber
                changgouqiNumber = glassNumber
                duangouqiNumber = glassNumber
                shangfangNumber = glassNumber * 2
                zhongfangNumber = glassNumber
                xiafangNumber = glassNumber
                gaibanNumber = glassNumber * 2
                zhongzhuNumber = 1
                
                sizeArray = ["边封: \(bianfeng)\t\t支数: \(bianfengNumber)",
                    "上固定: \(shanggu)\t\t支数: \(shangguNumber)",
                    "中腰: \(zhongyao)\t\t支数: \(zhongyaoNumber)",
                    "下轨: \(xiagui)\t\t支数: \(xiaguiNumber)",
                    "平上划: \(pingshanghua)\t\t支数: \(pingshanghuaNumber)",
                    "长光企: \(changguangqi)\t\t支数: \(changguangqiNumber)",
                    "短光企: \(duanguangqi)\t\t支数: \(duanguangqiNumber)",
                    "长勾企: \(changgouqi)\t\t支数: \(changgouqiNumber)",
                    "短勾企: \(duangouqi)\t\t支数: \(duangouqiNumber)",
                    "上方: \(shangfang)\t\t支数: \(shangfangNumber)",
                    "下方: \(xiafang)\t\t支数: \(xiafangNumber)",
                    "中方: \(zhongfang)\t\t支数: \(zhongfangNumber)",
                    "盖板: \(gaiban)\t\t支数: \(gaibanNumber)",
                    "中柱: \(zhongzhu)\t\t支数: \(zhongzhuNumber)"]
                
                glassArray = ["窗芯玻璃高度: \(glassHeight)",
                    "窗芯玻璃宽度: \(glassWidth)",
                    "固定玻璃高度: \(fixedGlassHeight)",
                    "不带中柱固定玻璃宽度: \(fixedGlassBudaiWidth)",
                    "带中柱固定玻璃宽度: \(fixedGlassDaiWidth)",
                    "压线: 带中=\(yaxianDai)  不带=\(yaxianBudai)  高度=\(gaiban)"]
                
                type = 4
                print("带固定完成")
                //performSegue(withIdentifier: "gotoView2", sender: sizeArray)

            }
            
        }else{
            //80T断桥
            if fixed == 0{
                //不带固定
                bianfeng = height
                pingshanghua = width - 4
                xiagui = width - 4
                changguangqi = height - 7
                duanguangqi = height - 8
                changgouqi = height - 7
                duangouqi = height - 8
                shangfang = (width - 12.8)/2
                zhongfang = (width - 12.8)/2
                xiafang = (width - 12.8)/2
                glassHeight = height - 19.5
                glassWidth = (width - 12.8)/2 - 0.9
                
                //材料数量
                bianfengNumber = glassNumber * 2
                pingshanghuaNumber = glassNumber
                xiaguiNumber = glassNumber
                changguangqiNumber = glassNumber
                duanguangqiNumber = glassNumber
                changgouqiNumber = glassNumber
                duangouqiNumber = glassNumber
                shangfangNumber = glassNumber * 2
                zhongfangNumber = glassNumber
                xiafangNumber = glassNumber
                
                sizeArray = ["边封: \(bianfeng)\t\t支数: \(bianfengNumber)",
                    "上固定: \(shanggu)\t\t支数: \(shangguNumber)",
                    "中腰: \(zhongyao)\t\t支数: \(zhongyaoNumber)",
                    "下轨: \(xiagui)\t\t支数: \(xiaguiNumber)",
                    "平上划: \(pingshanghua)\t\t支数: \(pingshanghuaNumber)",
                    "长光企: \(changguangqi)\t\t支数: \(changguangqiNumber)",
                    "短光企: \(duanguangqi)\t\t支数: \(duanguangqiNumber)",
                    "长勾企: \(changgouqi)\t\t支数: \(changgouqiNumber)",
                    "短勾企: \(duangouqi)\t\t支数: \(duangouqiNumber)",
                    "上方: \(shangfang)\t\t支数: \(shangfangNumber)",
                    "下方: \(xiafang)\t\t支数: \(xiafangNumber)",
                    "中方: \(zhongfang)\t\t支数: \(zhongfangNumber)",
                    "盖板: \(gaiban)\t\t支数: \(gaibanNumber)",
                    "中柱: \(zhongzhu)\t\t支数: \(zhongzhuNumber)"]
                
                glassArray = ["窗芯玻璃高度: \(glassHeight)",
                        "窗芯玻璃宽度: \(glassWidth)",
                        "固定玻璃高度: ",
                        "固定玻璃宽度: "]
                
                type = 5
                print("不带固定完成")
                //performSegue(withIdentifier: "gotoView2", sender: sizeArray)

            }else{
                //带固定
                bianfeng = height
                shanggu = width - 4
                zhongyao = width - 4
                xiagui = width - 4
                changguangqi = height - fixed - 7
                duanguangqi = height - fixed - 8
                changgouqi = height - fixed - 7
                duangouqi = height - fixed - 8
                shangfang = (width - 12.8)/2
                zhongfang = (width - 12.8)/2
                xiafang = (width - 12.8)/2
                gaiban = fixed - 2.5
                zhongzhu = fixed - 2.5
                glassHeight = height - fixed - 19.5
                glassWidth = (width - 12.8)/2 - 0.9
                fixedGlassBudaiWidth = width - 8
                fixedGlassDaiWidth = (width - 11)/2
                fixedGlassHeight = fixed - 3.2
                
                
                //材料数量
                bianfengNumber = glassNumber * 2
                shangguNumber = glassNumber
                zhongyaoNumber = glassNumber
                xiaguiNumber = glassNumber
                changguangqiNumber = glassNumber
                duanguangqiNumber = glassNumber
                changgouqiNumber = glassNumber
                duangouqiNumber = glassNumber
                shangfangNumber = glassNumber * 2
                zhongfangNumber = glassNumber
                xiafangNumber = glassNumber
                gaibanNumber = glassNumber * 2
                zhongzhuNumber = 1
                yaxianDai = (width - 14.7)/2
                yaxianBudai = width - 9.5
                
                sizeArray = ["边封: \(bianfeng)\t\t支数: \(bianfengNumber)",
                    "上固定: \(shanggu)\t\t支数: \(shangguNumber)",
                    "中腰: \(zhongyao)\t\t支数: \(zhongyaoNumber)",
                    "下轨: \(xiagui)\t\t支数: \(xiaguiNumber)",
                    "平上划: \(pingshanghua)\t\t支数: \(pingshanghuaNumber)",
                    "长光企: \(changguangqi)\t\t支数: \(changguangqiNumber)",
                    "短光企: \(duanguangqi)\t\t支数: \(duanguangqiNumber)",
                    "长勾企: \(changgouqi)\t\t支数: \(changgouqiNumber)",
                    "短勾企: \(duangouqi)\t\t支数: \(duangouqiNumber)",
                    "上方: \(shangfang)\t\t支数: \(shangfangNumber)",
                    "下方: \(xiafang)\t\t支数: \(xiafangNumber)",
                    "中方: \(zhongfang)\t\t支数: \(zhongfangNumber)",
                    "盖板: \(gaiban)\t\t支数: \(gaibanNumber)",
                    "中柱: \(zhongzhu)\t\t支数: \(zhongzhuNumber)"]
                
                glassArray = ["窗芯玻璃高度: \(glassHeight)",
                    "窗芯玻璃宽度: \(glassWidth)",
                    "固定玻璃高度: \(fixedGlassHeight)",
                    "不带中柱固定玻璃宽度: \(fixedGlassBudaiWidth)",
                    "带中柱固定玻璃宽度: \(fixedGlassDaiWidth)",
                    "压线: 带中=\(yaxianDai)  不带=\(yaxianBudai)  高度=\(gaiban)"]

                type = 6
                print("带固定完成")
                //performSegue(withIdentifier: "gotoView2", sender: sizeArray)

            }
            
        }
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        guard let detailedSize = segue.destination as? detailedSizeViewController else{
            return
        }
        detailedSize.glassArray = self.glassArray
        detailedSize.sizeArray = self.sizeArray
        
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        self.view.endEditing(true)
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        heightTextField.becomeFirstResponder()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
    
    

}


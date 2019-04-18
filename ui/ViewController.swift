//
//  ViewController.swift
//  ui
//
//  Created by D7703_19 on 2019. 4. 18..
//  Copyright © 2019년 sin. All rights reserved.
//

import UIKit

class ViewController: UIViewController,UIPickerViewDataSource,UIPickerViewDelegate{
   

    @IBOutlet weak var mylabel: UILabel!
    @IBOutlet weak var mypickerview: UIPickerView!
    var color = ["red","blud","yellow"]
    var animal = ["cat","dog","monkey"]
    override func viewDidLoad() {
        super.viewDidLoad()
        // Delegate 클래스와 viewController 객체의 connection
        mypickerview.dataSource = self
        mypickerview.delegate = self
        mylabel.text = "red"
    }
    //UIPickerviewDataSource method 필수 메소드 반드시 오버라이딩 해야함
    public func numberOfComponents(in pickerView: UIPickerView) -> Int{
        return 2
        
    }

    public func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        if component == 0{
        return color.count
        }  else{
        return animal.count
            }
    }
        public func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?{
            if component == 0{
                return color[row]
            }else{
                return animal[row]
            }
    }
     public func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int){
        if component == 0{
           print("row = \(row)")
            mylabel.text = color[row]
        }else{
            mylabel.text = animal[row]
            
        }
    }
}


//
//  CurrencyConverter.swift
//  Currency Converter
//
//  Created by Queralt Sosa Mompel on 17/9/17.
//  Copyright © 2017 Queralt Sosa Mompel. All rights reserved.
//

import UIKit

class CurrencyConverter: UIViewController, UIPickerViewDelegate {
    @IBOutlet weak var picker2: UIPickerView!
    @IBOutlet weak var picker1: UIPickerView!
    
    var pickerView1Data: [String] = ["USD - US Dollar", "EUR - Euro", "GBP - British Pound",
                                    "AUD - Australian Dollar", "CAD - Canadian Dollar", "CHF - Swiss Franc",
                                    "JPY - Japanese Yen", "SEK - Swedish Krona", "NOK - Norwegian Krone", "HKD - Hong Kong Dollar"]

    
    var pickerView2Data: [String] = ["USD - US Dollar", "EUR - Euro", "GBP - British Pound",
                                     "AUD - Australian Dollar", "CAD - Canadian Dollar", "CHF - Swiss Franc",
                                     "JPY - Japanese Yen", "SEK - Swedish Krona", "NOK - Norwegian Krone", "HKD - Hong Kong Dollar"]
    
    
    
    
    @IBOutlet weak var quantity: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        picker1.delegate = self
        picker2.delegate = self

        
        self.hideKeyboardWhenTappedAround()
        quantity.underlined()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
       
    }
    
    func numberOfComponentsInPickerView(pickerView : UIPickerView!) -> Int{
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int{
        return 10
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String? {
        
        if pickerView == picker2 {
            return pickerView2Data[row]
        }
        
            return pickerView1Data[row]
    
    }
    
    
    
    @available(iOS 2.0, *)
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 10
    }
    
    
    @IBAction func calculateMethod(_ sender: Any) {
        let selected1 = pickerView1Data[picker1.selectedRow(inComponent: 0)]
        let selected2 = pickerView2Data[picker2.selectedRow(inComponent: 0)]
        var row1 = 0
        var i = 1
        while i < 10 {
            if (pickerView1Data[i] == selected1) {
                row1 = i
            }
            i = i + 1
        }

        var row2 = 0
        var j = 1
        while j < 10 {
            if (pickerView2Data[j] == selected2) {
                row2 = j
            }
            j = j + 1
        }
        
        let refreshAlert = UIAlertController(title: quantity.text! + " " +
            selected1 + " are ", message: String(calcula(row1: row1, row2: row2)) + " " + selected2 , preferredStyle: UIAlertControllerStyle.alert)
        
    
    
        refreshAlert.addAction(UIAlertAction(title: "Perfect!", style: .cancel, handler: { (action: UIAlertAction!) in
           self.quantity.text = "Enter a quantity"
            
        }))
        
        present(refreshAlert, animated: true, completion: nil)
    
    }
    
    private func calcula(row1: Int, row2: Int) -> Double {
        if (row1 == row2) {
            return Double(quantity.text!)!
        }
        
        if ((row1 == 0 && row2 == 1) || (row1 == 1 && row2 == 0)) {
           return Double(quantity.text!)!*0.837167
        }
        
        if ((row1 == 0 && row2 == 2) || (row1 == 2 && row2 == 0)) {
            return Double(quantity.text!)!*0.735873
        }
        
        if ((row1 == 0 && row2 == 3) || (row1 == 3 && row2 == 0)) {
            return Double(quantity.text!)!*1.24909
        }
        
        if ((row1 == 0 && row2 == 4) || (row1 == 4 && row2 == 0)) {
            return Double(quantity.text!)!*1.21917
        }
        
        if ((row1 == 0 && row2 == 5) || (row1 == 5 && row2 == 0)) {
            return Double(quantity.text!)!*0.959676
        }
        
        if ((row1 == 0 && row2 == 6) || (row1 == 6 && row2 == 0)) {
            return Double(quantity.text!)!*110.812
        }
        
        if ((row1 == 0 && row2 == 7) || (row1 == 7 && row2 == 0)) {
            return Double(quantity.text!)!*7.96491
        }
        
        if ((row1 == 0 && row2 == 8) || (row1 == 8 && row2 == 0)) {
            return Double(quantity.text!)!*7.84899
        }
        
        if ((row1 == 0 && row2 == 9) || (row1 == 9 && row2 == 0)) {
            return Double(quantity.text!)!*7.81895
        }
        
        
       
        if ((row1 == 1 && row2 == 2) || (row1 == 2 && row2 == 1)) {
            return Double(quantity.text!)!*0.879015
        }
        
        if ((row1 == 1 && row2 == 3) || (row1 == 3 && row2 == 1)) {
            return Double(quantity.text!)!*1.49223
        }
        
        if ((row1 == 1 && row2 == 4) || (row1 == 4 && row2 == 1)) {
            return Double(quantity.text!)!*1.45650
        }
        
        if ((row1 == 1 && row2 == 5) || (row1 == 5 && row2 == 1)) {
            return Double(quantity.text!)!*1.14632
        }
        
        if ((row1 == 1 && row2 == 6) || (row1 == 6 && row2 == 1)) {
            return Double(quantity.text!)!*132.368
        }
        
        if ((row1 == 1 && row2 == 7) || (row1 == 7 && row2 == 1)) {
            return Double(quantity.text!)!*9.51432
        }
        
        
        if ((row1 == 1 && row2 == 8) || (row1 == 8 && row2 == 1)) {
            return Double(quantity.text!)!*9.37585
        }
        
        if ((row1 == 1 && row2 == 9) || (row1 == 9 && row2 == 1)) {
            return Double(quantity.text!)!*9.33997
        }
        
        
       
        
        
        if ((row1 == 2 && row2 == 3) || (row1 == 3 && row2 == 2)) {
            return Double(quantity.text!)!*1.69708
        }
        
        if ((row1 == 2 && row2 == 4) || (row1 == 4 && row2 == 2)) {
            return Double(quantity.text!)!*1.65678
        }
        if ((row1 == 2 && row2 == 5) || (row1 == 5 && row2 == 2)) {
            return Double(quantity.text!)!*1.30411
        }
        if ((row1 == 2 && row2 == 6) || (row1 == 6 && row2 == 2)) {
            return Double(quantity.text!)!*150.567
        }
        
        
        if ((row1 == 2 && row2 == 7) || (row1 == 7 && row2 == 2)) {
            return Double(quantity.text!)!*10.8233
        }
        
        if ((row1 == 2 && row2 == 8) || (row1 == 8 && row2 == 2)) {
            return Double(quantity.text!)!*10.6659
        }
        
        if ((row1 == 2 && row2 == 9) || (row1 == 9 && row2 == 2)) {
            return Double(quantity.text!)!*10.6254
        }
        
        
        
        if ((row1 == 3 && row2 == 4) || (row1 == 4 && row2 == 3)) {
            return Double(quantity.text!)!*0.976225
        }
        
        if ((row1 == 3 && row2 == 5) || (row1 == 5 && row2 == 3)) {
            return Double(quantity.text!)!*0.768315
        }
        if ((row1 == 3 && row2 == 6) || (row1 == 6 && row2 == 3)) {
            return Double(quantity.text!)!*88.7162
        }
        if ((row1 == 3 && row2 == 7) || (row1 == 7 && row2 == 3)) {
            return Double(quantity.text!)!*6.37684
        }
        if ((row1 == 3 && row2 == 8) || (row1 == 8 && row2 == 3)) {
            return Double(quantity.text!)!*6.28407
        }
        
        if ((row1 == 3 && row2 == 9) || (row1 == 9 && row2 == 3)) {
            return Double(quantity.text!)!*6.26024
        }
        
        
        
        
        if ((row1 == 4 && row2 == 5) || (row1 == 5 && row2 == 4)) {
            return Double(quantity.text!)!*0.787026
        }
        
        if ((row1 == 4 && row2 == 6) || (row1 == 6 && row2 == 4)) {
            return Double(quantity.text!)!*90.8767
        }
        
        if ((row1 == 4 && row2 == 7) || (row1 == 7 && row2 == 4)) {
            return Double(quantity.text!)!*6.53214
        }
        
        if ((row1 == 4 && row2 == 8) || (row1 == 8 && row2 == 4)) {
            return Double(quantity.text!)!*6.43710
        }
        
        if ((row1 == 4 && row2 == 9) || (row1 == 9 && row2 == 4)) {
            return Double(quantity.text!)!*6.41270
        }
        
        
        if ((row1 == 5 && row2 == 6) || (row1 == 6 && row2 == 5)) {
            return Double(quantity.text!)!*115.468
        }
        
        if ((row1 == 5 && row2 == 7) || (row1 == 7 && row2 == 5)) {
            return Double(quantity.text!)!*8.29977
        }
        
        if ((row1 == 5 && row2 == 8) || (row1 == 8 && row2 == 5)) {
            return Double(quantity.text!)!*8.17902
        }
        
        if ((row1 == 5 && row2 == 9) || (row1 == 9 && row2 == 5)) {
            return Double(quantity.text!)!*8.14802
        }
        
        
        
        if ((row1 == 6 && row2 == 7) || (row1 == 7 && row2 == 6)) {
            return Double(quantity.text!)!*0.0718791
        }
        
        if ((row1 == 6 && row2 == 8) || (row1 == 8 && row2 == 6)) {
            return Double(quantity.text!)!*0.0708334
        }
        
        if ((row1 == 6 && row2 == 9) || (row1 == 9 && row2 == 6)) {
            return Double(quantity.text!)!*0.0705648
        }
        
        if ((row1 == 7 && row2 == 8) || (row1 == 8 && row2 == 7)) {
            return Double(quantity.text!)!*0.985452
        }
        
        if ((row1 == 7 && row2 == 9) || (row1 == 9 && row2 == 7)) {
            return Double(quantity.text!)!*0.981716
        }
        
        
        if ((row1 == 8 && row2 == 9) || (row1 == 9 && row2 == 8)) {
            return Double(quantity.text!)!*0.996209
        }
        
    
        return 0   
    } 
}

extension UITextField {
    func underlined(){
        let border = CALayer()
        let width = CGFloat(3.0)
        border.borderColor = UIColor.yellow.cgColor
        border.frame = CGRect(x: 0, y: self.frame.size.height - width, width:  self.frame.size.width, height: self.frame.size.height)
        border.borderWidth = width
        self.layer.addSublayer(border)
        self.layer.masksToBounds = true
    }
}



extension UIViewController {
    func hideKeyboardWhenTappedAround() {
        let tap: UITapGestureRecognizer = UITapGestureRecognizer(target: self, action: #selector(UIViewController.dismissKeyboard))
        tap.cancelsTouchesInView = false
        view.addGestureRecognizer(tap)
    }
    
    func dismissKeyboard() {
        view.endEditing(true)
    }
}

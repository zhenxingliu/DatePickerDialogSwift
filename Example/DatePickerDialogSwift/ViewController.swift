//
//  ViewController.swift
//  DatePickerDialogSwift
//
//  Created by 5210167@qq.com on 01/17/2018.
//  Copyright (c) 2018 5210167@qq.com. All rights reserved.
//

import UIKit
import DatePickerDialogSwift

class ViewController: UIViewController {
    @IBOutlet weak var textField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        textField.delegate = self
    }
    
    func datePickerTapped() {
        let locale = Locale(identifier: "zh")
        let currentDate = Date()
        var dateComponents = DateComponents()
        dateComponents.month = -3
        let threeMonthAgo = Calendar.current.date(byAdding: dateComponents, to: currentDate)
        dateComponents.month = 12
        let nextYearMonthAgo = Calendar.current.date(byAdding: dateComponents, to: currentDate)
        
        let datePicker = LWDatePickerDialog(textColor: .red,
                                          buttonColor: .red,
                                          font: UIFont.boldSystemFont(ofSize: 17),
                                          locale:locale ,
                                          showCancelButton: true)
        datePicker.show("倒计时",
                        doneButtonTitle: "确定",
                        cancelButtonTitle: "取消",
                        minimumDate: threeMonthAgo,
                        maximumDate: nextYearMonthAgo,
                        datePickerMode: .countDownTimer) { (date) in
                            if let dt = date {
                                let formatter = DateFormatter()
                                formatter.dateFormat = "yyyy-MM-dd"
                                self.textField.text = formatter.string(from: dt)
                            }
        }
    }
}

extension ViewController: UITextFieldDelegate {
    
    func textFieldShouldBeginEditing(_ textField: UITextField) -> Bool {
        if textField == self.textField {
            datePickerTapped()
            return false
        }
        
        return true
    }
}


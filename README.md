# DatePickerDialogSwift

[![CI Status](http://img.shields.io/travis/5210167@qq.com/DatePickerDialogSwift.svg?style=flat)](https://travis-ci.org/5210167@qq.com/DatePickerDialogSwift)
[![Version](https://img.shields.io/cocoapods/v/DatePickerDialogSwift.svg?style=flat)](http://cocoapods.org/pods/DatePickerDialogSwift)
[![License](https://img.shields.io/cocoapods/l/DatePickerDialogSwift.svg?style=flat)](http://cocoapods.org/pods/DatePickerDialogSwift)
[![Platform](https://img.shields.io/cocoapods/p/DatePickerDialogSwift.svg?style=flat)](http://cocoapods.org/pods/DatePickerDialogSwift)

## 例子

### 截图
![](https://github.com/zhenxingliu/DatePickerDialogSwift/blob/master/images/screen1.png)![](https://github.com/zhenxingliu/DatePickerDialogSwift/blob/master/images/screen2.png)![](https://github.com/zhenxingliu/DatePickerDialogSwift/blob/master/images/screen3.png)![](https://github.com/zhenxingliu/DatePickerDialogSwift/blob/master/images/screen4.png)

### 代码
```swift
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
datePicker.show("选择日期",
doneButtonTitle: "确定",
cancelButtonTitle: "取消",
minimumDate: threeMonthAgo,
maximumDate: nextYearMonthAgo,
datePickerMode: .date) { (date) in
if let dt = date {
let formatter = DateFormatter()
formatter.dateFormat = "yyyy-MM-dd"
self.textField.text = formatter.string(from: dt)
}
}
}
```
更多使用方法可以参照:[DatePickerDialog-iOS-Swift](https://github.com/squimer/DatePickerDialog-iOS-Swift)做的一些个性化改进。

## 要求

Swift: 4.0
iOS:10.0及以上

## 安装


```ruby
pod 'DatePickerDialogSwift'
```

## Author

zhenxingLiu, 5210167@qq.com

## 特别感谢

[@Squimer](https://github.com/squimer)的工作，我的项目就是在它的[DatePickerDialog-iOS-Swift](https://github.com/squimer/DatePickerDialog-iOS-Swift)做的一些个性化改进。

## License

DatePickerDialogSwift is available under the MIT license. See the LICENSE file for more info.

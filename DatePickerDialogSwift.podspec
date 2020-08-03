#
# Be sure to run `pod lib lint DatePickerDialogSwift.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'DatePickerDialogSwift'
  s.version          = '0.1.2'
  s.summary          = '一个简单易用的日期选择控件'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
    一个简单易用的日期选择控件,此日期控件参照，https://github.com/squimer/DatePickerDialog-iOS-Swift/blob/master/Sources/DatePickerDialog.swift所改写
                       DESC

  s.homepage         = 'https://github.com/zhenxingliu/DatePickerDialogSwift'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'zhenxingLiu' => '5210167@qq.com' }
  s.source           = { :git => 'https://github.com/zhenxingliu/DatePickerDialogSwift.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '9.0'

  s.source_files = 'DatePickerDialogSwift/Classes/**/*'

  # s.resource_bundles = {
  #   'DatePickerDialogSwift' => ['DatePickerDialogSwift/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'Hue', '~> 3.0.0'
end

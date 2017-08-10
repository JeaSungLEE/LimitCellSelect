#
#  Be sure to run `pod spec lint LimitCellSelect.podspec' to ensure this is a
#  valid spec and to remove all comments including this before submitting the spec.
#
#  To learn more about Podspec attributes see http://docs.cocoapods.org/specification.html
#  To see working Podspecs in the CocoaPods repo see https://github.com/CocoaPods/Specs/
#

Pod::Spec.new do |s|


  s.name         = "LimitCellSelect"
  s.version      = "0.0.1"
  s.summary      = "LimitCellSelect."
  s.description  = <<-DESC
                   limited button select, written in Swift 3.
DESC
  s.homepage     = "https://github.com/kaskay/LimitCellSelect"
  # s.screenshots  = "www.example.com/screenshots_1.gif", "www.example.com/screenshots_2.gif"
  s.license      = { :type => "MIT", :file => "FILE_LICENSE" }
  s.author             = { "jeasung.lee" => "wotjdzz1@naver.com" }
  s.platform     = :ios, "9.0"
  s.source       = { :git => "https://github.com/kaskay/LimitCellSelect.git", :tag => "#{s.version}" }
  s.source_files  = "LimitCellSelect/**/*.swift"
  
  s.framework  = "UIKit"

  s.requires_arc = true

end

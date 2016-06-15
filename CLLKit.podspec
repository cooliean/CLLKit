#
# Be sure to run `pod lib lint CLLKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
s.name             = 'CLLKit'
s.version          = '1.0.2'
s.summary          = 'Powerful IOS Extension'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

s.description      = <<-DESC
                    尝试一下封装一个自己的合适的框架，慢慢的积累一下
                     DESC

s.homepage         = 'https://github.com/cooliean/CLLKit'
# s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
s.license          = { :type => 'MIT', :file => 'LICENSE' }
s.author           = { 'Cooliean' => 'cooliean@qq.com' }
s.source           = { :git => 'https://github.com/cooliean/CLLKit.git', :tag => s.version.to_s }
# s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'
s.requires_arc = true
s.libraries = 'z', 'sqlite3'
s.frameworks = 'UIKit', 'CoreFoundation', 'CoreText', 'CoreGraphics', 'CoreImage', 'QuartzCore', 'ImageIO', 'AssetsLibrary', 'Accelerate', 'MobileCoreServices', 'SystemConfiguration'
#s.ios.vendored_frameworks = 'Vendor/WebP.framework'
s.ios.deployment_target = '8.0'
# s.resource_bundles = {
#   'SVProgressHUD' => ['CLLKit/Vendors/SVProgressHUD/SVProgressHUD.bundle'],
#   'CLLKit' => ['CLLKit/Assets/*.png']
# }
#s.platform = :ios
#s.resource = 'CLLKit/Assets/*.png'
#s.xcconfig = { 'ENABLE_STRICT_OBJC_MSGSEND' => 'YES','OTHER_LDFLAGS' => '-lObjC' }
s.default_subspecs = 'All'
s.subspec 'All' do |all|
  all.dependency 'CLLKit/Core'
  all.dependency 'CLLKit/no-arc'
end

s.subspec 'Core' do |core|
  core.source_files = 'CLLKit/**/*.{h,m}'
  core.public_header_files = 'CLLKit/**/*.h'
  core.dependency 'CLLKit/SVProgressHUD'
  core.dependency 'CLLKit/MJRefresh'
  core.dependency 'CLLKit/SDCycleScrollView'
  core.dependency 'CLLKit/IQKeyboardManager'
  core.dependency 'CLLKit/XLForm'
  #core.dependency 'YTKNetwork', '~> 1.1.0'
  #core.dependency 'MBProgressHUD', '~> 0.9.2'
  #core.dependency 'IQKeyboardManager', '~> 4.0.3'
  #core.dependency 'DZNEmptyDataSet', '~> 1.8.1'
  #core.dependency 'SDAutoLayout', '~> 2.1.1'
  #core.dependency 'XLForm', '~> 3.1.2'
  #core.dependency 'MJExtension','~> 3.0.10'
  #core.dependency 'MJRefresh', '~> 3.1.0'
  #core.dependency 'JVFloatLabeledTextField', '1.1.0'
  #core.dependency 'SVProgressHUD', '~> 2.0.3'
  #core.dependency 'MXSegmentedPager', '~> 3.0.4'
end
s.subspec 'SVProgressHUD' do |hud|
  hud.source_files = 'SVProgressHUD/SVProgressHUD/*.{h,m}'
  hud.public_header_files = 'SVProgressHUD/SVProgressHUD/*.h'
  hud.resources    = 'SVProgressHUD/SVProgressHUD/SVProgressHUD.bundle'
end
s.subspec 'MJRefresh' do |mjr|
  mjr.source_files = 'MJRefresh/MJRefresh/**/*.{h,m}'
  mjr.public_header_files = 'MJRefresh/MJRefresh/**/*.h'
  mjr.resources    = 'MJRefresh/**/*.bundle'
end
s.subspec 'SDCycleScrollView' do |sdc|
  sdc.source_files = 'SDCycleScrollView/SDCycleScrollView/Lib/SDCycleScrollView/**/*.{h,m}'
  sdc.public_header_files = 'SDCycleScrollView/SDCycleScrollView/Lib/SDCycleScrollView/**/*.h'
end
s.subspec 'IQKeyboardManager' do |iqk|
  iqk.source_files = 'IQKeyboardManager/IQKeyboardManager/**/*.{h,m}'
  iqk.public_header_files = 'IQKeyboardManager/IQKeyboardManager/**/*.h'
  iqk.resources    = 'IQKeyboardManager/IQKeyboardManager/Resources/*.bundle'
end
s.subspec 'XLForm' do |xlf|
  xlf.source_files = 'XLForm/XLForm/**/*.{h,m}'
  xlf.public_header_files = 'XLForm/XLForm/**/*.h'
  xlf.resources    = 'XLForm/XLForm/*.bundle'
end

non_arc_files = 'CLLKit/Vendors/YYKit/Base/Foundation/NSObject+YYAddForARC.{h,m}', 'CLLKit/Vendors/YYKit/Base/Foundation/NSThread+YYAdd.{h,m}'
s.ios.exclude_files = non_arc_files
s.subspec 'no-arc' do |sna|
  sna.requires_arc = false
  sna.source_files = non_arc_files
end
# s.resource_bundles = {
#   'CLLKit' => ['CLLKit/Assets/*.png']
# }

# s.public_header_files = 'Pod/Classes/**/*.h'
# s.frameworks = 'UIKit', 'MapKit'
# s.dependency 'AFNetworking', '~> 2.3'
end

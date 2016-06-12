#
# Be sure to run `pod lib lint CLLKit.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CLLKit'
  s.version          = '1.0.1'
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
  s.frameworks = "CoreFoundation","Foundation","CoreGraphics","UIKit"
  s.ios.deployment_target = '8.0'

  s.subspec 'Core' do |core|
    core.source_files = 'CLLKit/Classes/Core/**/*.{h,m}'
    core.public_header_files = 'CLLKit/Classes/Core/**/*.h'
    core.dependency 'YTKNetwork', '~> 1.1.0'
    core.dependency 'IQKeyboardManager', '~> 4.0.3'
    core.dependency 'DZNEmptyDataSet', '~> 1.8.1'
    core.dependency 'SDAutoLayout', '~> 2.1.1'
    core.dependency 'XLForm', '~> 3.1.2'
    core.dependency 'MJExtension','~> 3.0.10'
    core.dependency 'MJRefresh', '~> 3.1.0'
    core.dependency 'JVFloatLabeledTextField', '1.1.0'
    core.dependency 'SVProgressHUD', '~> 2.0.3'
    core.dependency 'MXSegmentedPager', '~> 3.0.4'
  end
  s.subspec 'CommonTools' do |common|
    common.source_files = 'CLLKit/Classes/CommonTools/**/*.{h,m}'
    common.public_header_files = 'CLLKit/Classes/CommonTools/**/*.h'
  end
  # s.resource_bundles = {
  #   'CLLKit' => ['CLLKit/Assets/*.png']
  # }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end

#
# Be sure to run `pod lib lint TestPod.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'TestPod'
  s.version          = '0.1.0'
  s.summary          = 'An experiment creating a CocoaPod'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
                        This CocoaPod is a mere exercise for its creator to go through the process of creating a CocoaPod.
                       DESC

  s.homepage         = 'https://github.com/neugierige/TestPod'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'neugierige' => 'luyuan.nathan@gmail.com' }
  s.source           = { :git => 'https://github.com/neugierige/TestPod.git', :tag => s.version.to_s }
  s.social_media_url = 'https://twitter.com/neugierige_'
  s.swift_version    = '3.2'

  s.ios.deployment_target = '8.0'

  s.source_files = 'TestPod/Classes/**/*'
  
   s.resource_bundles = {
       'TestPod' => ['TestPod/Assets/**/*.{ttf}']
  #   'TestPod' => ['TestPod/Assets/*.png']
   }

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end

platform :ios, '14.0'
source 'git@github.com:DiceTechnology/ApplePodSpecs.git'
source 'https://github.com/CocoaPods/Specs.git'
source 'https://gitlab.com/datazoom/pod-specs'

target 'vesper-sdk-apple-example' do
  use_frameworks!
#  pod 'VesperSDK', '1.2.0'
  pod 'dice-shield-ios', :git => 'git@github.com:DiceTechnology/dice-shield-ios.git', :tag => '2.1.1'

  pod 'VesperSDK', :path => '../vesper-sdk-apple'
  pod 'VesperPubNub', :podspec => '../vesper-sdk-apple/VesperSDKExample/VesperPubNub.podspec'
  pod 'AVDoris', :path => '../avdoris/'
  pod 'AVDoris/UI', :path => '../avdoris/'
  pod 'AVDoris/Plugins', :path => '../avdoris/'
end

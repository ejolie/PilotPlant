#
# Be sure to run `pod lib lint PilotPlant.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'PilotPlant'
  s.version          = '1.0.1'
  s.summary          = 'Extent Xcode Storyboard to create iOS App prototype in Xcode.'

# This description is used to generate tags and improve search results.
#   * Think: What does it do? Why did you write it? What is the focus?
#   * Try to keep it short, snappy and to the point.
#   * Write the description between the DESC delimiters below.
#   * Finally, don't worry about the indent, CocoaPods strips it!

  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/lingostar/PilotPlant'
  # s.screenshots     = 'www.example.com/screenshots_1', 'www.example.com/screenshots_2'
  s.license          = { :type => 'AGPL', :file => 'LICENSE' }
  s.author           = { 'lingostar' => 'admin@lingostar.co.kr' }
  s.source           = { :git => 'https://github.com/lingostar/PilotPlant.git', :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '10.0'

  s.source_files = 'PilotPlant/*.swift'

  s.pod_target_xcconfig = { 'SWIFT_VERSION' => '3.2' }

end

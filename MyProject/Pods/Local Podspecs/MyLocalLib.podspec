#
# Be sure to run `pod lib lint MyLocalLib.podspec' to ensure this is a
# valid spec and remove all comments before submitting the spec.
#
# Any lines starting with a # are optional, but encouraged
#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = "MyLocalLib"
  s.version          = "0.1.0"
  s.summary          = "A short description of MyLocalLib."
  s.description      = <<-DESC
                       An optional longer description of MyLocalLib

                       * Markdown format.
                       * Don't worry about the indent, we strip it!
                       DESC
  s.homepage         = "https://github.com/<GITHUB_USERNAME>/MyLocalLib"
  # s.screenshots     = "www.example.com/screenshots_1", "www.example.com/screenshots_2"
  s.license          = 'MIT'
  s.author           = { "wing.of.war.1980th" => "wing.of.war.1980th@gmail.com" }
  s.source           = { :git => "https://github.com/<GITHUB_USERNAME>/MyLocalLib.git", :tag => s.version.to_s }
  # s.social_media_url = 'https://twitter.com/<TWITTER_USERNAME>'

  s.ios.deployment_target = '7.0'
  s.osx.deployment_target = '10.9'
  s.requires_arc = true

  s.public_header_files = '*.h'
  s.source_files = 'MyLocalLibHeader.h'

  s.subspec 'MyCategory' do |ss|
        ss.source_files = 'MyCategory/*.{h,m}'
        ss.dependency 'FMDB'
        # s.frameworks = 'UIKit', 'MapKit'
  end

  s.subspec 'DataCenter' do |ss|
        ss.source_files = 'MyTimeTool/*.{h,m}'
        # ss.dependency 'AFNetworking'
  end

  # s.public_header_files = 'Pod/Classes/**/*.h'
  # s.frameworks = 'UIKit', 'MapKit'
  # s.dependency 'AFNetworking', '~> 2.3'
end

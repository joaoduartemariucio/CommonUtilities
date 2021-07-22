#
# Be sure to run `pod lib lint CommonUtilities.podspec' to ensure this is a
# valid spec before submitting.
#
# Any lines starting with a # are optional, but their use is encouraged
# To learn more about a Podspec see https://guides.cocoapods.org/syntax/podspec.html
#

Pod::Spec.new do |s|
  s.name             = 'CommonUtilities'
  s.version          = '1.3.1'
  s.summary          = 'A short description of CommonUtilities.'
  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC
  s.homepage         = 'https://github.com/joaoduartemariucio/CommonUtilities'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { 'João Vitor Duarte mariucio' => 'joaovitorduartemariucio@gmail.com' }
  s.source           = { :git => 'https://github.com/joaoduartemariucio/CommonUtilities.git', :tag => s.version.to_s }
  s.swift_version    = '5.0'
  
  s.ios.deployment_target = '13.0'
  
  s.default_subspecs = ['Classes', 'Extensions', 'Utils']
  
  s.subspec 'Classes' do |sp|
    sp.source_files = ['CommonUtilities/Classes/**/*']
  end
    
  s.subspec 'Extensions' do |sp|
    sp.source_files = ['CommonUtilities/Extensions/**/*']
    sp.dependency 'Nuke', '9.5.0'
  end
    
  s.subspec 'Utils' do |sp|
    sp.source_files = ['CommonUtilities/Utils/**/*']
  end
  
end

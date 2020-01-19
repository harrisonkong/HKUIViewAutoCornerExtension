# Podspec for HKUIViewAutoCornerExtension
#   Created by Harrison Kong on 2020/01/18

Pod::Spec.new do |s|

  platform                = :ios
  s.ios.deployment_target = '11.0'

  s.name          = 'HKUIViewAutoCornerExtension'
  s.summary       = 'HK UIView Auto Corner Rounding Extension for Descendant UI Objects'
  s.requires_arc  = false
  s.version       = '1.0.0'
  s.license       = { :type => 'MIT' }
  s.author        = { 'Harrison Kong' => 'harrisonkong@skyroute66.com' }
  s.homepage      = 'https://github.com/harrisonkong/HKUIViewAutoCornerExtension'
  s.source        = { :git => 'https://github.com/harrisonkong/HKUIViewAutoCornerExtension.git',
                      :tag => '1.0.0' }
  s.dependency      'HKUIViewLengthCalculationBasis', '~> 1.0.0'
  s.dependency      'HKUIViewUtilities', '~> 1.0.0'
  s.framework     = 'UIKit'
  s.source_files  = 'HKUIViewAutoCornerExtension/**/*.swift'
  s.swift_version = '4.0'

end

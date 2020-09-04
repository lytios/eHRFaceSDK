

Pod::Spec.new do |s|
  s.name             = 'eHRFaceSDK'
  s.version          = '0.0.5'
  s.summary          = 'A short description of eHRFaceSDK.'
  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/lytios/eHRFaceSDK'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '24290265@qq.com' => '24290265@qq.com' }
  s.source           = { :git => 'https://github.com/lytios/eHRFaceSDK.git', :tag => 'v0.0.5' }

  s.ios.deployment_target = '8.0'
  s.vendored_framework = 'eHRFaceSDK/Classes/HRFaceSDK.framework'
  s.resource ='eHRFaceSDK/Assets/HRFaceImageBundle.bundle'
  s.dependency 'AliyunOSSiOS'
  s.dependency 'AFNetworking'
  s.dependency 'SDWebImage'
  s.dependency 'IQKeyboardManager'
  s.dependency 'NIMSDK','6.10.1'
  s.dependency 'Masonry'
  s.dependency 'MJRefresh'
  s.dependency 'MJExtension'
  s.dependency 'WPAttributedMarkup'
end

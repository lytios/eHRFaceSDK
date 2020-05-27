

Pod::Spec.new do |s|
  s.name             = 'eHRFaceSDK'
  s.version          = '0.0.8'
  s.summary          = 'A short description of eHRFaceSDK.'
  s.description      = <<-DESC
TODO: Add long description of the pod here.
                       DESC

  s.homepage         = 'https://github.com/lytios/eHRFaceSDK'
  s.license          = { :type => 'MIT', :file => 'LICENSE' }
  s.author           = { '24290265@qq.com' => '24290265@qq.com' }
  s.source           = { :git => 'https://github.com/lytios/eHRFaceSDK.git', :tag => 'v0.0.8' }

  s.ios.deployment_target = '8.0'
  s.vendored_framework = 'eHRFaceSDK/Classes/HRFaceSDK.framework'
  s.resource ='eHRFaceSDK/Assets/HRFaceImageBundle.bundle'
  s.dependency 'AliyunOSSiOS'
end

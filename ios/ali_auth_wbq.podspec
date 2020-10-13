#
# To learn more about a Podspec see http://guides.cocoapods.org/syntax/podspec.html
#
Pod::Spec.new do |s|
  s.name             = 'ali_auth_wbq'
  s.version          = '0.0.4'
  s.summary          = 'ali_auth_wbq.'
  s.description      = '是一个集成阿里云号码认证服务SDK的flutter插件'
  s.homepage         = 'https://github.com/wbq1098/flutter_ali_auth_wbq.git'
  s.license          = 'MIT'
  s.author           = { 'wbq' => 'wbq1098@163.com' }
  s.source           = { :path => '.' }
  s.source_files = 'Classes/**/*'
  s.public_header_files = 'Classes/**/*.h'
  s.dependency 'Flutter'

  s.vendored_frameworks = 'libs/ATAuthSDK.framework'
  # 加载静态资源
  s.resources = ['Assets/*']

  s.ios.deployment_target = '9.0'
  # s.pod_target_xcconfig = { 'DEFINES_MODULE' => 'YES', 'VALID_ARCHS[sdk=iphonesimulator*]' => 'x86_64' }
end
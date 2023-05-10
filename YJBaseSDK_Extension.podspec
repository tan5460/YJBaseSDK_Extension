#开发、更新公有库操作步骤
# 1、修改源代码
# 2、修改.podspec文件。 版本号、文件资源路径等
# 3、验证本地库: pod lib lint YJPublic_Base.podspec --allow-warnings
# 4、提交代码
# 5、打版本tag
# 6、验证线上库: pod spec lint YJPublic_Base.podspec --allow-warnings
# 7、推送.podsepc到Cocoapods: pod trunk push YJPublic_Base.podspec --allow-warnings


Pod::Spec.new do |spec|

  spec.name         = "YJBaseSDK_Extension"
  spec.version      = "0.0.2"
  spec.summary      = "OC基础类扩展"
  spec.description  = <<-DESC
  OC常用的一些分类方法扩展，方便快速搭建项目
                   DESC
  spec.homepage     = "https://github.com/tan5460"
  spec.license      = { :type => "MIT", :file => "LICENSE" }
  spec.author       = { "TYJ" => "313037101@qq.com" }
  spec.source       = { :git => "https://github.com/tan5460/YJBaseSDK_Extension.git", :tag => "#{spec.version}" }
  
  spec.ios.deployment_target = '9.0'
  spec.source_files = 'YJBaseSDK_Extension/Classes/**'


  

end

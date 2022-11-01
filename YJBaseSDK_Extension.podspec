Pod::Spec.new do |spec|

  spec.name         = "YJBaseSDK_Extension"
  spec.version      = "0.0.1"
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

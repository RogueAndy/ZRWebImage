Pod::Spec.new do |s|

  s.name         = "ZRWebImage"
  s.version      = "0.0.1"
  s.summary      = "图片加载组件"
  s.description  = <<-DESC
                    关于图片加载组件
                   DESC

  s.homepage     = "https://dazhongge.com"
  s.license      = "MIT"
  s.author       = { "Rogue" => "619455850@qq.com" }
  s.platform     = :ios, "9.0"
  s.ios.deployment_target = "9.0"
  s.source       = { :git => "https://github.com/RogueAndy/ZRWebImage.git", :tag => "#{s.version}" }

  s.source_files  = "ZRWebImage/*"
  s.public_header_files = "ZRWebImage/*.h"

  s.frameworks = "UIKit", "Foundation"
  s.requires_arc = true
  s.dependency "SDWebImage", "5.0.2"
  s.dependency "AFNetworking", "3.2.1"
  s.dependency "ZRBaseObject"
end

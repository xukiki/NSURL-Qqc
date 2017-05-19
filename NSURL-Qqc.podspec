Pod::Spec.new do |s|

  s.license      = "MIT"
  s.author       = { "qqc" => "20599378@qq.com" }
  s.platform     = :ios, "8.0"
  s.requires_arc  = true

  s.name         = "NSURL-Qqc"
  s.version      = "1.0.80"
  s.summary      = "NSURL-Qqc"
  s.homepage     = "https://github.com/xukiki/NSURL-Qqc"
  s.source       = { :git => "https://github.com/xukiki/NSURL-Qqc.git", :tag => "#{s.version}" }
  
  s.source_files  = ["NSURL-Qqc/*.{h,m}"]
  s.dependency "NSArray-Qqc"
  s.dependency "NSString-Qqc"
end

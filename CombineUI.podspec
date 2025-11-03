Pod::Spec.new do |s|
  s.name         = "CombineUI"
  s.version      = "1.0.0"
  s.summary      = "A UIKit extension based on Combine."
  s.homepage     = "https://github.com/iLiuChang/CombineUI"
  s.license      = "MIT"
  s.authors      = { "iLiuChang" => "iliuchang@foxmail.com" }
  s.platform     = :ios, "13.0"
  s.source       = { :git => "https://github.com/iLiuChang/CombineUI.git", :tag => s.version }
  s.requires_arc = true
  s.swift_version = "5.0"
  s.source_files = "Source/*.{swift}"
end

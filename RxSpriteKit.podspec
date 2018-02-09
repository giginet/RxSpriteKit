Pod::Spec.new do |s|
  s.name         = "RxSpriteKit"
  s.version      = "1.0.0"
  s.summary      = "Reactive Extension for SpriteKit :space_invader:"
  s.homepage     = "https://github.com/giginet/RxSpriteKit"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "giginet" => "giginet.net@gmail.com" }
  s.social_media_url   = "http://twitter.com/giginet"

  s.ios.deployment_target = "11.0"
  s.osx.deployment_target = "10.13"
  s.watchos.deployment_target = "4.0"
  s.tvos.deployment_target = "11.0"

  s.source        = { :git => "https://github.com/giginet/RxSpriteKit.git", :tag => "#{s.version}" }
  s.source_files  = "RxSpriteKit/**/*.{h,swift}"
  s.ios.exclude_files = "RxSpriteKit/**/macOS/*.swift"
  s.osx.exclude_files = "RxSpriteKit/**/iOS/*.swift"
  s.watchos.exclude_files = "RxSpriteKit/Input/**/*.swift", "RxSpriteKit/**/SKView+Binder.swift"
  s.tvos.exclude_files = "RxSpriteKit/**/macOS/*.swift"

  s.ios.frameworks = "UIKit", "SpriteKit"
  s.osx.frameworks = "Cocoa", "SpriteKit"
  s.watchos.frameworks = "UIKit", "SpriteKit"
  s.tvos.frameworks = "UIKit", "SpriteKit"

  s.dependency "RxSwift", "~> 4.1"
  s.dependency "RxCocoa", "~> 4.1"
  s.swift_version = '4.0'
end

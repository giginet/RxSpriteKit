Pod::Spec.new do |s|
  s.name         = "RxSpriteKit"
  s.version      = "1.0.0"
  s.summary      = "Reactive Extension for SpriteKit :space_invader:"
  s.homepage     = "https://github.com/giginet/RxSpriteKit"
  s.license      = { :type => "MIT", :file => "LICENSE" }
  s.author             = { "giginet" => "giginet.net@gmail.com" }
  s.social_media_url   = "http://twitter.com/giginet"

  s.ios.deployment_target = "12.0"
  s.osx.deployment_target = "10.14"
  s.watchos.deployment_target = "4.0"
  s.tvos.deployment_target = "12.0"

  s.source        = { :git => "https://github.com/giginet/RxSpriteKit.git", :tag => "#{s.version}" }
  s.source_files  = "Sources/RxSpriteKit/**/*.{h,swift}"
  s.ios.exclude_files = "Sources/RxSpriteKit/**/macOS/*.swift"
  s.osx.exclude_files = "Sources/RxSpriteKit/**/iOS/*.swift"
  s.watchos.exclude_files = "Sources/RxSpriteKit/Input/**/*.swift", "Sources/RxSpriteKit/**/SKView+Binder.swift"
  s.tvos.exclude_files = "Sources/RxSpriteKit/**/macOS/*.swift"

  s.ios.frameworks = "UIKit", "SpriteKit"
  s.osx.frameworks = "Cocoa", "SpriteKit"
  s.watchos.frameworks = "UIKit", "SpriteKit"
  s.tvos.frameworks = "UIKit", "SpriteKit"

  s.dependency "RxSwift", "~> 5.0"
  s.dependency "RxCocoa", "~> 5.0"
  s.swift_version = '5.1'
end

# RxSpriteKit

[![Build Status](https://github.com/giginet/RxSpriteKit/workflows/RxSpriteKit/badge.svg)](https://github.com/giginet/RxSpriteKit/actions?query=workflow%3ARxSpriteKit)
[![Language](https://img.shields.io/badge/language-Swift%205.1-orange.svg)](https://swift.org)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![CocoaPods Compatible](https://img.shields.io/cocoapods/v/RxSpriteKit.svg)](http://cocoadocs.org/docsets/RxSpriteKit)
[![Platform](https://img.shields.io/cocoapods/p/RxSpriteKit.svg?style=flat)](http://cocoadocs.org/docsets/RxSpriteKit)
[![License](https://cocoapod-badges.herokuapp.com/l/RxSpriteKit/badge.svg)](https://github.com/cookpad/RxSpriteKit/blob/master/LICENSE)

React extensions for SpriteKit :space_invader:

# Installation

## Carthage

```
github "giginet/RxSpriteKit"
```

## CocoaPods

```ruby
use_framework!

pod "RxSpriteKit"
```

# Usage

See `RxSpriteKitDemo` for detail.

```swift
import SpriteKit
import RxSpriteKit
import RxSwift
import RxCocoa

class GameScene: SKScene {
    private let disposeBag = DisposeBag()
    private var label: SKLabelNode!
    private let frameRelay = PublishRelay<Int>()

    override func sceneDidLoad() {
        super.sceneDidLoad()

        guard let label = childNode(withName: "//helloLabel") as? SKLabelNode else {
            fatalError("Label is not defined")
        }
        self.label = label
        rx.update
            .scan(0, accumulator: { frameCount, _ in frameCount + 1 })
            .bind(to: frameRelay)
            .disposed(by: disposeBag)
        frameRelay
            .map { CGFloat($0) * 0.01 }
            .bind(to: label.rx.zRotation)
            .disposed(by: disposeBag)
        frameRelay
            .map { CGPoint(x: 0, y: $0) }
            .bind(to: label.rx.position)
            .disposed(by: disposeBag)
        frameRelay
            .map { String(describing: $0) }
            .bind(to: label.rx.text)
            .disposed(by: disposeBag)
    }
}
```

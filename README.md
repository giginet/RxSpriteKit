# RxSpriteKit

[![Build Status](https://travis-ci.org/giginet/RxSpriteKit.svg?branch=master)](https://travis-ci.org/giginet/RxSpriteKit)
[![Language](https://img.shields.io/badge/language-Swift%204.0.2-orange.svg)](https://swift.org)
[![Carthage compatible](https://img.shields.io/badge/Carthage-compatible-4BC51D.svg?style=flat)](https://github.com/Carthage/Carthage)
[![Platform](https://img.shields.io/badge/platform-iOS%7cmacOS%7ctvOS-lightgray.svg)](https://github.com/giginet/RxSpriteKit)

React extensions for SpriteKit :space_invader:

# Installation

## Carthage

```
github "giginet/RxSpriteKit"
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
            fatalError("Label is not defined.")
        }
        self.label = label
        rx.update
            .scan(0, accumulator: { frameCount, _ in frameCount + 1 })
            .bind(to: frameRelay)
            .disposed(by: disposeBag)
        frameRelay
            .map { CGFloat($0) * 0.01 }
            .bind(to: label.rx.zRotation.asObserver())
            .disposed(by: disposeBag)
        frameRelay
            .map { CGPoint(x: 0, y: $0) }
            .bind(to: label.rx.position.asObserver())
            .disposed(by: disposeBag)
        frameRelay
            .map { String(describing: $0) }
            .bind(to: label.rx.text.asObserver())
            .disposed(by: disposeBag)
    }
}
```

//: Playground - noun: a place where people can play

import UIKit
import SpriteKit
import RxSwift
import RxCocoa
import RxSpriteKit

let disposeBag = DisposeBag()
let sprite = SKSpriteNode(color: UIColor.redColor(), size: CGSizeMake(100, 100))
let label = SKLabelNode(text: "hello")
let v = Variable<CGPoint>(CGPointZero)

sprite.rx_position.bindTo(v).addDisposableTo(disposeBag)

sprite.rx_position.map { position in "\(position.x), \(position.y)" }.bindTo(label.rx_text).addDisposableTo(disposeBag)
print(v.value)

print(label.text)

let textField = UITextField()
textField.rx_text.subscribeNext { string in
    print("change \(string)")
}.addDisposableTo(disposeBag)
textField.text = "new!!!!"
import Foundation

import Quick
import Nimble
import RxSwift
import RxCocoa
import SpriteKit
@testable import RxSpriteKit

infix operator <-> {
}

func <-> <T>(property: ControlProperty<T>, variable: Variable<T>) -> Disposable {
    let bindToUIDisposable = variable.asObservable()
        .bindTo(property)
    let bindToVariable = property
        .subscribe(onNext: { n in
            variable.value = n
            }, onCompleted:  {
                bindToUIDisposable.dispose()
        })
    
    return StableCompositeDisposable.create(bindToUIDisposable, bindToVariable)
}

class SKRxSpriteKitTests: QuickSpec {
    override func spec() {
        describe("SKRxSpriteKit") {
            let disposeBag: DisposeBag = DisposeBag()
            
            it("show sprite position in label") {
                let sprite = SKSpriteNode(color: UIColor.redColor(), size: CGSizeMake(100, 100))
                let label = SKLabelNode(text: "hello")
                let spritePosition = Variable<CGPoint>(CGPointZero);
                sprite.rx_position <-> spritePosition
                
                spritePosition.asObservable().map { position in "\(Int(position.x)), \(Int(position.y))" }.bindTo(label.rx_text).addDisposableTo(disposeBag)
                sprite.position = CGPointMake(10, 10)
                expect(label.text).to(equal("10, 10"))
            }
        }
    }
}

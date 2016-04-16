import Quick
import Nimble
import RxSwift
import SpriteKit
@testable import RxSpriteKit

class SKNodeRxTests: QuickSpec {
    override func spec() {
        describe("SKNode extension") {
            let disposeBag: DisposeBag = DisposeBag()
            var node: SKNode!
            
            beforeEach {
                node = SKNode()
            }
            
            it("rx_position") {
                let point = Variable<CGPoint>(CGPointZero)
                point.asObservable().bindTo(node.rx_position).addDisposableTo(disposeBag)
                
                expect(node.position).to(equal(CGPointZero))
                
                point.value = CGPointMake(10, 10)
                expect(node.position).to(equal(CGPointMake(10, 10)))
            }
            
            it("rx_hidden") {
                let hidden = Variable<Bool>(false)
                hidden.asObservable().bindTo(node.rx_hidden).addDisposableTo(disposeBag)
                
                expect(node.hidden).to(beFalse())
                
                hidden.value = true
                expect(node.hidden).to(beTrue())
            }
        }
    }    
}

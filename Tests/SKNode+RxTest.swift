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
            
            it("rx_scale") {
                let variable = Variable<CGFloat>(1.0)
                variable.asObservable().bindTo(node.rx_scale).addDisposableTo(disposeBag)
                
                expect(node.xScale).to(equal(1.0))
                expect(node.yScale).to(equal(1.0))
                
                variable.value = 0.5
                
                expect(node.xScale).to(equal(0.5))
                expect(node.yScale).to(equal(0.5))
            }
            
            it("rx_xScale") {
                let variable = Variable<CGFloat>(1.0)
                variable.asObservable().bindTo(node.rx_xScale).addDisposableTo(disposeBag)
                
                expect(node.xScale).to(equal(1.0))
                
                variable.value = 0.5
                
                expect(node.xScale).to(equal(0.5))
            }
            
            
            it("rx_yScale") {
                let variable = Variable<CGFloat>(1.0)
                variable.asObservable().bindTo(node.rx_yScale).addDisposableTo(disposeBag)
                
                expect(node.yScale).to(equal(1.0))
                
                variable.value = 0.5
                
                expect(node.yScale).to(equal(0.5))
            }
            
            it("rx_zRotation") {
                let variable = Variable<CGFloat>(1.0)
                variable.asObservable().bindTo(node.rx_zRotation).addDisposableTo(disposeBag)
                
                expect(node.zRotation).to(equal(1.0))
                
                variable.value = 0.5
                
                expect(node.zRotation).to(equal(0.5))
            }
            
            it("rx_alpha") {
                let variable = Variable<CGFloat>(1.0)
                variable.asObservable().bindTo(node.rx_alpha).addDisposableTo(disposeBag)
                
                expect(node.alpha).to(equal(1.0))
                
                variable.value = 0.5
                
                expect(node.alpha).to(equal(0.5))
            }
            
            it("rx_hidden") {
                let hidden = Variable<Bool>(false)
                hidden.asObservable().bindTo(node.rx_hidden).addDisposableTo(disposeBag)
                
                expect(node.hidden).to(beFalse())
                
                hidden.value = true
                expect(node.hidden).to(beTrue())
            }
            
            it("rx_name") {
                let variable = Variable<String?>(nil)
                variable.asObservable().bindTo(node.rx_name).addDisposableTo(disposeBag)
                
                expect(node.name).to(beNil())
                
                variable.value = "newName"
                
                expect(node.name).to(equal("newName"))
            }
            
            it("rx_speed") {
                let variable = Variable<CGFloat>(1.0)
                variable.asObservable().bindTo(node.rx_speed).addDisposableTo(disposeBag)
                
                expect(node.speed).to(equal(1.0))
                
                variable.value = 0.5
                
                expect(node.speed).to(equal(0.5))
            }
            
            it("rx_paused") {
                let variable = Variable<Bool>(false)
                variable.asObservable().bindTo(node.rx_paused).addDisposableTo(disposeBag)
                
                expect(node.paused).to(beFalse())
                
                variable.value = true
                expect(node.paused).to(beTrue())
            }
        }
    }
}

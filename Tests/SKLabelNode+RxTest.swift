import Quick
import Nimble
import RxSwift
import SpriteKit
@testable import RxSpriteKit

class SKLabelNodeRxTests: QuickSpec {
    override func spec() {
        describe("SKLabelNode extension") {
            let disposeBag: DisposeBag = DisposeBag()
            var label: SKLabelNode!
            
            beforeEach {
                label = SKLabelNode()
            }
            
            it("rx_text") {
                let value = Variable<String?>(nil)
                value.asObservable().bindTo(label.rx_text).addDisposableTo(disposeBag)
                
                expect(label.text).to(beNil())
                
                value.value = "Hello"
                expect(label.text).to(equal("Hello"))
            }
            
            it("rx_fontColor") {
                let value = Variable<UIColor?>(UIColor(red: 0, green: 0, blue: 0, alpha: 0))
                value.asObservable().bindTo(label.rx_fontColor).addDisposableTo(disposeBag)
                
                expect(label.fontColor).to(equal(UIColor(red: 0, green: 0, blue: 0, alpha: 0)))
                
                value.value = UIColor(red: 0, green: 0, blue: 0, alpha: 1)
                expect(label.fontColor).to(equal(UIColor(red: 0, green: 0, blue: 0, alpha: 1)))
            }
            
            it("rx_fontName") {
                let value = Variable<String?>("Osaka")
                value.asObservable().bindTo(label.rx_fontName).addDisposableTo(disposeBag)
                
                expect(label.fontName).to(equal("Osaka"))
                
                value.value = "Helvetica"
                expect(label.fontName).to(equal("Helvetica"))
            }
            
            it("rx_fontSize") {
                let value = Variable<CGFloat>(10)
                value.asObservable().bindTo(label.rx_fontSize).addDisposableTo(disposeBag)
                
                expect(label.fontSize).to(equal(10))
                
                value.value = 20
                expect(label.fontSize).to(equal(20))
            }
            
            it("rx_verticalAlignmentMode") {
                let value = Variable<SKLabelVerticalAlignmentMode>(.Baseline)
                value.asObservable().bindTo(label.rx_verticalAlignmentMode).addDisposableTo(disposeBag)
                
                expect(label.verticalAlignmentMode).to(equal(SKLabelVerticalAlignmentMode.Baseline))
                
                value.value = .Bottom
                expect(label.verticalAlignmentMode).to(equal(SKLabelVerticalAlignmentMode.Bottom))
            }
            
            it("rx_horizontalAlignmentMode") {
                let value = Variable<SKLabelHorizontalAlignmentMode>(.Center)
                value.asObservable().bindTo(label.rx_horizontalAlignmentMode).addDisposableTo(disposeBag)
                
                expect(label.horizontalAlignmentMode).to(equal(SKLabelHorizontalAlignmentMode.Center))
                
                value.value = .Right
                expect(label.horizontalAlignmentMode).to(equal(SKLabelHorizontalAlignmentMode.Right))
            }
            
            it("rx_color") {
                let value = Variable<UIColor?>(nil)
                value.asObservable().bindTo(label.rx_color).addDisposableTo(disposeBag)
                
                expect(label.color).to(equal(UIColor(red: 1, green: 1, blue: 1, alpha: 1)))
                
                value.value = UIColor(red: 0, green: 0, blue: 0, alpha: 0)
                expect(label.color).to(equal(UIColor(red: 0, green: 0, blue: 0, alpha: 0)))
            }
            
            it("rx_colorBlendFactor") {
                let value = Variable<CGFloat>(0.5)
                value.asObservable().bindTo(label.rx_colorBlendFactor).addDisposableTo(disposeBag)
                
                expect(label.colorBlendFactor).to(equal(0.5))
                
                value.value = 0.8
                expect(label.colorBlendFactor).to(beCloseTo(0.8, within: 0.001))
            }
            
            it("rx_blendMode") {
                let value = Variable<SKBlendMode>(SKBlendMode.Alpha)
                value.asObservable().bindTo(label.rx_blendMode).addDisposableTo(disposeBag)
                
                expect(label.blendMode).to(equal(SKBlendMode.Alpha))
                
                value.value = SKBlendMode.Multiply
                expect(label.blendMode).to(equal(SKBlendMode.Multiply))
            }
        }
    }
}

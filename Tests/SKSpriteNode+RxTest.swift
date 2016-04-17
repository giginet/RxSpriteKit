import Foundation

import Quick
import Nimble
import RxSwift
import SpriteKit
@testable import RxSpriteKit

class SKSpriteNodeRxTests: QuickSpec {
    override func spec() {
        describe("SKLabelNode extension") {
            let disposeBag: DisposeBag = DisposeBag()
            var sprite: SKSpriteNode!
            
            beforeEach {
                sprite = SKSpriteNode(color: UIColor.redColor(), size: CGSizeMake(128, 128))
            }
            
            it("rx_size") {
                let value = Variable<CGSize>(CGSizeZero)
                value.asObservable().bindTo(sprite.rx_size).addDisposableTo(disposeBag)
                
                expect(sprite.size).to(equal(CGSizeZero))
                
                value.value = CGSizeMake(10, 10)
                expect(sprite.size).to(equal(CGSizeMake(10, 10)))
            }
            
            it("rx_anchorPoint") {
                let value = Variable<CGPoint>(CGPointZero)
                value.asObservable().bindTo(sprite.rx_anchorPoint).addDisposableTo(disposeBag)
                
                expect(sprite.anchorPoint).to(equal(CGPointZero))
                
                value.value = CGPointMake(10, 10)
                expect(sprite.anchorPoint).to(equal(CGPointMake(10, 10)))
            }
            
            it("rx_texture") {
                let value = Variable<SKTexture?>(nil)
                value.asObservable().bindTo(sprite.rx_texture).addDisposableTo(disposeBag)
                
                expect(sprite.texture).to(beNil())
                
                value.value = SKTexture()
                expect(sprite.texture).toNot(beNil())
            }
            
            it("rx_centerRect") {
                let value = Variable<CGRect>(CGRectZero)
                value.asObservable().bindTo(sprite.rx_centerRect).addDisposableTo(disposeBag)
                
                expect(sprite.centerRect).to(equal(CGRectZero))
                
                value.value = CGRectMake(10, 10, 10, 10)
                expect(sprite.centerRect).to(equal(CGRectMake(10, 10, 10, 10)))
            }
            
            it("rx_colorBlendFactor") {
                let value = Variable<CGFloat>(0.5)
                value.asObservable().bindTo(sprite.rx_colorBlendFactor).addDisposableTo(disposeBag)
                
                expect(sprite.colorBlendFactor).to(equal(0.5))
                
                value.value = 0.8
                expect(sprite.colorBlendFactor).to(beCloseTo(0.8, within: 0.001))
            }
            
            it("rx_blendMode") {
                let value = Variable<SKBlendMode>(SKBlendMode.Alpha)
                value.asObservable().bindTo(sprite.rx_blendMode).addDisposableTo(disposeBag)
                
                expect(sprite.blendMode).to(equal(SKBlendMode.Alpha))
                
                value.value = SKBlendMode.Multiply
                expect(sprite.blendMode).to(equal(SKBlendMode.Multiply))
            }
            
            it("rx_lightingBitMask") {
                let value = Variable<UInt32>(0)
                value.asObservable().bindTo(sprite.rx_lightingBitMask).addDisposableTo(disposeBag)
                
                expect(sprite.lightingBitMask).to(equal(0))
                
                value.value = 10
                expect(sprite.lightingBitMask).to(equal(10))
            }
            
            it("rx_shadowedBitMask") {
                let value = Variable<UInt32>(0)
                value.asObservable().bindTo(sprite.rx_shadowedBitMask).addDisposableTo(disposeBag)
                
                expect(sprite.shadowedBitMask).to(equal(0))
                
                value.value = 10
                expect(sprite.shadowedBitMask).to(equal(10))
            }
            
            it("rx_shadowCastBitMask") {
                let value = Variable<UInt32>(0)
                value.asObservable().bindTo(sprite.rx_shadowCastBitMask).addDisposableTo(disposeBag)
                
                expect(sprite.shadowCastBitMask).to(equal(0))
                
                value.value = 10
                expect(sprite.shadowCastBitMask).to(equal(10))
            }
            
            it("rx_normalTexture") {
                let value = Variable<SKTexture?>(nil)
                value.asObservable().bindTo(sprite.rx_normalTexture).addDisposableTo(disposeBag)
                
                expect(sprite.normalTexture).to(beNil())
                
                value.value = SKTexture()
                expect(sprite.normalTexture).toNot(beNil())
            }
            
            it("rx_shader") {
                let value = Variable<SKShader?>(nil)
                value.asObservable().bindTo(sprite.rx_shader).addDisposableTo(disposeBag)
                
                expect(sprite.shader).to(beNil())
                
                value.value = SKShader()
                expect(sprite.shader).toNot(beNil())
            }
        }
    }
}

import Foundation
import SpriteKit
import RxSwift
import RxCocoa

extension Reactive where Base: SKSpriteNode {

    public var anchorPoint: Binder<CGPoint> {
        return Binder(self.base) { view, anchorPoint in
            view.anchorPoint = anchorPoint
        }
    }

    public var blendMode: Binder<SKBlendMode> {
        return Binder(self.base) { view, blendMode in
            view.blendMode = blendMode
        }
    }

    public var centerRect: Binder<CGRect> {
        return Binder(self.base) { view, centerRect in
            view.centerRect = centerRect
        }
    }

    public var colorBlendFactor: Binder<CGFloat> {
        return Binder(self.base) { view, colorBlendFactor in
            view.colorBlendFactor = colorBlendFactor
        }
    }

    public var lightingBitMask: Binder<UInt32> {
        return Binder(self.base) { view, lightingBitMask in
            view.lightingBitMask = lightingBitMask
        }
    }

    public var normalTexture: Binder<SKTexture?> {
        return Binder(self.base) { view, normalTexture in
            view.normalTexture = normalTexture
        }
    }

    public var shader: Binder<SKShader?> {
        return Binder(self.base) { view, shader in
            view.shader = shader
        }
    }

    public var shadowedBitMask: Binder<UInt32> {
        return Binder(self.base) { view, shadowedBitMask in
            view.shadowedBitMask = shadowedBitMask
        }
    }

    public var texture: Binder<SKTexture?> {
        return Binder(self.base) { view, texture in
            view.texture = texture
        }
    }

}

import Foundation
import SpriteKit
import RxSwift
import RxCocoa

extension Reactive where Base: SKEffectNode {

    public var attributeValues: Binder<[String: SKAttributeValue]> {
        return Binder(self.base) { view, attributeValues in
            view.attributeValues = attributeValues
        }
    }

    public var blendMode: Binder<SKBlendMode> {
        return Binder(self.base) { view, blendMode in
            view.blendMode = blendMode
        }
    }

    #if os(iOS) || os(macOS) || os(tvOS)

    public var filter: Binder<CIFilter?> {
        return Binder(self.base) { view, filter in
            view.filter = filter
        }
    }

    #endif

    public var shader: Binder<SKShader?> {
        return Binder(self.base) { view, shader in
            view.shader = shader
        }
    }

    public var shouldCenterFilter: Binder<Bool> {
        return Binder(self.base) { view, shouldCenterFilter in
            view.shouldCenterFilter = shouldCenterFilter
        }
    }

    public var shouldEnableEffects: Binder<Bool> {
        return Binder(self.base) { view, shouldEnableEffects in
            view.shouldEnableEffects = shouldEnableEffects
        }
    }

    public var shouldRasterize: Binder<Bool> {
        return Binder(self.base) { view, shouldRasterize in
            view.shouldRasterize = shouldRasterize
        }
    }

}

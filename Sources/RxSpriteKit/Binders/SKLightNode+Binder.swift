import Foundation
import SpriteKit
import RxSwift
import RxCocoa

extension Reactive where Base: SKLightNode {

    public var ambientColor: Binder<RSKColor> {
        return Binder(self.base) { view, ambientColor in
            view.ambientColor = ambientColor
        }
    }

    public var categoryBitMask: Binder<UInt32> {
        return Binder(self.base) { view, categoryBitMask in
            view.categoryBitMask = categoryBitMask
        }
    }

    public var falloff: Binder<CGFloat> {
        return Binder(self.base) { view, falloff in
            view.falloff = falloff
        }
    }

    public var isEnabled: Binder<Bool> {
        return Binder(self.base) { view, isEnabled in
            view.isEnabled = isEnabled
        }
    }

    public var lightColor: Binder<RSKColor> {
        return Binder(self.base) { view, lightColor in
            view.lightColor = lightColor
        }
    }

    public var shadowColor: Binder<RSKColor> {
        return Binder(self.base) { view, shadowColor in
            view.shadowColor = shadowColor
        }
    }

}

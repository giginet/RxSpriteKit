import Foundation
import SpriteKit
import RxSwift
import RxCocoa

extension Reactive where Base: SKPhysicsJointPin {

    public var frictionTorque: Binder<CGFloat> {
        return Binder(self.base) { view, frictionTorque in
            view.frictionTorque = frictionTorque
        }
    }

    public var lowerAngleLimit: Binder<CGFloat> {
        return Binder(self.base) { view, lowerAngleLimit in
            view.lowerAngleLimit = lowerAngleLimit
        }
    }

    public var rotationSpeed: Binder<CGFloat> {
        return Binder(self.base) { view, rotationSpeed in
            view.rotationSpeed = rotationSpeed
        }
    }

    public var shouldEnableLimits: Binder<Bool> {
        return Binder(self.base) { view, shouldEnableLimits in
            view.shouldEnableLimits = shouldEnableLimits
        }
    }

    public var upperAngleLimit: Binder<CGFloat> {
        return Binder(self.base) { view, upperAngleLimit in
            view.upperAngleLimit = upperAngleLimit
        }
    }

}

import Foundation
import SpriteKit
import RxSwift
import RxCocoa

extension Reactive where Base: SKPhysicsJointSliding {

    public var lowerDistanceLimit: Binder<CGFloat> {
        return Binder(self.base) { view, lowerDistanceLimit in
            view.lowerDistanceLimit = lowerDistanceLimit
        }
    }

    public var shouldEnableLimits: Binder<Bool> {
        return Binder(self.base) { view, shouldEnableLimits in
            view.shouldEnableLimits = shouldEnableLimits
        }
    }

    public var upperDistanceLimit: Binder<CGFloat> {
        return Binder(self.base) { view, upperDistanceLimit in
            view.upperDistanceLimit = upperDistanceLimit
        }
    }

}

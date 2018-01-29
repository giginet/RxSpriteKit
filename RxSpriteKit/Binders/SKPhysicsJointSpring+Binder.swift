import Foundation
import SpriteKit
import RxSwift
import RxCocoa

extension Reactive where Base: SKPhysicsJointSpring {

    public var damping: Binder<CGFloat> {
        return Binder(self.base) { view, damping in
            view.damping = damping
        }
    }

    public var frequency: Binder<CGFloat> {
        return Binder(self.base) { view, frequency in
            view.frequency = frequency
        }
    }

}

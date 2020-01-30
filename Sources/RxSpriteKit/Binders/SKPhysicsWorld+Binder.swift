import Foundation
import SpriteKit
import RxSwift
import RxCocoa

extension Reactive where Base: SKPhysicsWorld {

    public var gravity: Binder<CGVector> {
        return Binder(self.base) { view, gravity in
            view.gravity = gravity
        }
    }

    public var speed: Binder<CGFloat> {
        return Binder(self.base) { view, speed in
            view.speed = speed
        }
    }

}

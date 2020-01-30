import Foundation
import SpriteKit
import RxSwift
import RxCocoa

extension Reactive where Base: SKPhysicsJoint {

    public var bodyA: Binder<SKPhysicsBody> {
        return Binder(self.base) { view, bodyA in
            view.bodyA = bodyA
        }
    }

    public var bodyB: Binder<SKPhysicsBody> {
        return Binder(self.base) { view, bodyB in
            view.bodyB = bodyB
        }
    }

}

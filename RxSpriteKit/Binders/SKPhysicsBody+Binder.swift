import Foundation
import SpriteKit
import RxSwift
import RxCocoa

extension Reactive where Base: SKPhysicsBody {

    public var affectedByGravity: Binder<Bool> {
        return Binder(self.base) { view, affectedByGravity in
            view.affectedByGravity = affectedByGravity
        }
    }

    public var allowsRotation: Binder<Bool> {
        return Binder(self.base) { view, allowsRotation in
            view.allowsRotation = allowsRotation
        }
    }

    public var angularDamping: Binder<CGFloat> {
        return Binder(self.base) { view, angularDamping in
            view.angularDamping = angularDamping
        }
    }

    public var angularVelocity: Binder<CGFloat> {
        return Binder(self.base) { view, angularVelocity in
            view.angularVelocity = angularVelocity
        }
    }

    public var categoryBitMask: Binder<UInt32> {
        return Binder(self.base) { view, categoryBitMask in
            view.categoryBitMask = categoryBitMask
        }
    }

    public var charge: Binder<CGFloat> {
        return Binder(self.base) { view, charge in
            view.charge = charge
        }
    }

    public var collisionBitMask: Binder<UInt32> {
        return Binder(self.base) { view, collisionBitMask in
            view.collisionBitMask = collisionBitMask
        }
    }

    public var contactTestBitMask: Binder<UInt32> {
        return Binder(self.base) { view, contactTestBitMask in
            view.contactTestBitMask = contactTestBitMask
        }
    }

    public var density: Binder<CGFloat> {
        return Binder(self.base) { view, density in
            view.density = density
        }
    }

    public var fieldBitMask: Binder<UInt32> {
        return Binder(self.base) { view, fieldBitMask in
            view.fieldBitMask = fieldBitMask
        }
    }

    public var friction: Binder<CGFloat> {
        return Binder(self.base) { view, friction in
            view.friction = friction
        }
    }

    public var isDynamic: Binder<Bool> {
        return Binder(self.base) { view, isDynamic in
            view.isDynamic = isDynamic
        }
    }

    public var linearDamping: Binder<CGFloat> {
        return Binder(self.base) { view, linearDamping in
            view.linearDamping = linearDamping
        }
    }

    public var mass: Binder<CGFloat> {
        return Binder(self.base) { view, mass in
            view.mass = mass
        }
    }

    public var pinned: Binder<Bool> {
        return Binder(self.base) { view, pinned in
            view.pinned = pinned
        }
    }

    public var restitution: Binder<CGFloat> {
        return Binder(self.base) { view, restitution in
            view.restitution = restitution
        }
    }

    public var usesPreciseCollisionDetection: Binder<Bool> {
        return Binder(self.base) { view, usesPreciseCollisionDetection in
            view.usesPreciseCollisionDetection = usesPreciseCollisionDetection
        }
    }

    public var velocity: Binder<CGVector> {
        return Binder(self.base) { view, velocity in
            view.velocity = velocity
        }
    }

}

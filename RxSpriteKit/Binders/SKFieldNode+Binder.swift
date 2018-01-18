import Foundation
import SpriteKit
import RxSwift
import RxCocoa

extension Reactive where Base: SKFieldNode {

    public var animationSpeed: Binder<Float> {
        return Binder(self.base) { view, animationSpeed in
            view.animationSpeed = animationSpeed
        }
    }

    public var categoryBitMask: Binder<UInt32> {
        return Binder(self.base) { view, categoryBitMask in
            view.categoryBitMask = categoryBitMask
        }
    }

    public var direction: Binder<vector_float3> {
        return Binder(self.base) { view, direction in
            view.direction = direction
        }
    }

    public var falloff: Binder<Float> {
        return Binder(self.base) { view, falloff in
            view.falloff = falloff
        }
    }

    public var isEnabled: Binder<Bool> {
        return Binder(self.base) { view, isEnabled in
            view.isEnabled = isEnabled
        }
    }

    public var isExclusive: Binder<Bool> {
        return Binder(self.base) { view, isExclusive in
            view.isExclusive = isExclusive
        }
    }

    public var minimumRadius: Binder<Float> {
        return Binder(self.base) { view, minimumRadius in
            view.minimumRadius = minimumRadius
        }
    }

    public var region: Binder<SKRegion?> {
        return Binder(self.base) { view, region in
            view.region = region
        }
    }

    public var smoothness: Binder<Float> {
        return Binder(self.base) { view, smoothness in
            view.smoothness = smoothness
        }
    }

    public var strength: Binder<Float> {
        return Binder(self.base) { view, strength in
            view.strength = strength
        }
    }

    public var texture: Binder<SKTexture?> {
        return Binder(self.base) { view, texture in
            view.texture = texture
        }
    }

}

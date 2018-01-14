import Foundation
import SpriteKit
import RxSwift
import RxCocoa

extension Reactive where Base: SKNode {

    public var alpha: Binder<CGFloat> {
        return Binder(self.base) { view, alpha in
            view.alpha = alpha
        }
    }

    public var isHidden: Binder<Bool> {
        return Binder(self.base) { view, isHidden in
            view.isHidden = isHidden
        }
    }

    public var isPaused: Binder<Bool> {
        return Binder(self.base) { view, isPaused in
            view.isPaused = isPaused
        }
    }

    public var position: Binder<CGPoint> {
        return Binder(self.base) { view, position in
            view.position = position
        }
    }

    public var speed: Binder<CGFloat> {
        return Binder(self.base) { view, speed in
            view.speed = speed
        }
    }

    public var xScale: Binder<CGFloat> {
        return Binder(self.base) { view, xScale in
            view.xScale = xScale
        }
    }

    public var yScale: Binder<CGFloat> {
        return Binder(self.base) { view, yScale in
            view.yScale = yScale
        }
    }

    public var zPosition: Binder<CGFloat> {
        return Binder(self.base) { view, zPosition in
            view.zPosition = zPosition
        }
    }

    public var zRotation: Binder<CGFloat> {
        return Binder(self.base) { view, zRotation in
            view.zRotation = zRotation
        }
    }

}

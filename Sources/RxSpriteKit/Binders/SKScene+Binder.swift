import Foundation
import SpriteKit
import RxSwift
import RxCocoa

extension Reactive where Base: SKScene {

    public var anchorPoint: Binder<CGPoint> {
        return Binder(self.base) { view, anchorPoint in
            view.anchorPoint = anchorPoint
        }
    }

    public var backgroundColor: Binder<RSKColor> {
        return Binder(self.base) { view, backgroundColor in
            view.backgroundColor = backgroundColor
        }
    }

    public var camera: Binder<SKCameraNode?> {
        return Binder(self.base) { view, camera in
            view.camera = camera
        }
    }

    public var listener: Binder<SKNode?> {
        return Binder(self.base) { view, listener in
            view.listener = listener
        }
    }

    public var scaleMode: Binder<SKSceneScaleMode> {
        return Binder(self.base) { view, scaleMode in
            view.scaleMode = scaleMode
        }
    }

    public var size: Binder<CGSize> {
        return Binder(self.base) { view, size in
            view.size = size
        }
    }

}

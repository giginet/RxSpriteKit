import Foundation
import SpriteKit
import RxSwift
import RxCocoa

extension Reactive where Base: SKTransformNode {

    public var xRotation: Binder<CGFloat> {
        return Binder(self.base) { view, xRotation in
            view.xRotation = xRotation
        }
    }

    public var yRotation: Binder<CGFloat> {
        return Binder(self.base) { view, yRotation in
            view.yRotation = yRotation
        }
    }

}

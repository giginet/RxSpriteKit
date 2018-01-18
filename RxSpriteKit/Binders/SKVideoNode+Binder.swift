import Foundation
import SpriteKit
import RxSwift
import RxCocoa

extension Reactive where Base: SKVideoNode {

    public var anchorPoint: Binder<CGPoint> {
        return Binder(self.base) { view, anchorPoint in
            view.anchorPoint = anchorPoint
        }
    }

    public var size: Binder<CGSize> {
        return Binder(self.base) { view, size in
            view.size = size
        }
    }

}

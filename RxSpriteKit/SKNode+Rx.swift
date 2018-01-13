import Foundation
import SpriteKit
import RxSwift
import RxCocoa

extension Reactive where Base: SKNode {
    public var isHidden: Binder<Bool> {
        return Binder(self.base) { view, hidden in
            view.isHidden = hidden
        }
    }
    
    /// Bindable sink for `alpha` property.
    public var alpha: Binder<CGFloat> {
        return Binder(self.base) { view, alpha in
            view.alpha = alpha
        }
    }
    
    public var position: Binder<CGPoint> {
        return Binder(self.base) { node, position in
            node.position = position
        }
    }
}

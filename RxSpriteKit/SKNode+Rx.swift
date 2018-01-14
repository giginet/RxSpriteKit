import Foundation
import SpriteKit
import RxSwift
import RxCocoa

extension Reactive where Base: SKNode {
  
    public var alpha: Binder<CGFloat>{
        return Binder(self.base) { view, alpha in
            view.alpha = alpha
        }
    }
  
    public var isHidden: Binder<Bool>{
        return Binder(self.base) { view, isHidden in
            view.isHidden = isHidden
        }
    }
  
    public var position: Binder<CGPoint>{
        return Binder(self.base) { view, position in
            view.position = position
        }
    }
  
    public var xScale: Binder<CGFloat>{
        return Binder(self.base) { view, xScale in
            view.xScale = xScale
        }
    }
  
    public var yScale: Binder<CGFloat>{
        return Binder(self.base) { view, yScale in
            view.yScale = yScale
        }
    }
  
}

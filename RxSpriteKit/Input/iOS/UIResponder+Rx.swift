import Foundation
import UIKit
import RxSwift
import RxCocoa

extension Reactive where Base: UIResponder {
    public var touchesBegan: ControlEvent<(Set<UITouch>, UIEvent?)> {
        let source = self.methodInvoked(#selector(Base.touchesBegan(_:with:)))
            .map { ($0.first as? Set<UITouch> ?? [], $0.last as? UIEvent ?? nil) }
        return ControlEvent(events: source)
    }

    public var touchesMoved: ControlEvent<(Set<UITouch>, UIEvent?)> {
        let source = self.methodInvoked(#selector(Base.touchesMoved(_:with:)))
            .map { ($0.first as? Set<UITouch> ?? [], $0.last as? UIEvent ?? nil) }
        return ControlEvent(events: source)
    }

    public var touchesEnded: ControlEvent<(Set<UITouch>, UIEvent?)> {
        let source = self.methodInvoked(#selector(Base.touchesEnded(_:with:)))
            .map { ($0.first as? Set<UITouch> ?? [], $0.last as? UIEvent ?? nil) }
        return ControlEvent(events: source)
    }

    public var touchesCancelled: ControlEvent<(Set<UITouch>, UIEvent?)> {
        let source = self.methodInvoked(#selector(Base.touchesCancelled(_:with:)))
            .map { ($0.first as? Set<UITouch> ?? [], $0.last as? UIEvent ?? nil) }
        return ControlEvent(events: source)
    }
}

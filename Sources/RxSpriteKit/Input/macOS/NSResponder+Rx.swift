#if os(macOS)

import Foundation
import Cocoa
import RxSwift
import RxCocoa

extension Reactive where Base: NSResponder {
    public var keyUp: ControlEvent<NSEvent> {
        let source = self.methodInvoked(#selector(Base.keyUp(with:))).map { $0.first as! NSEvent }
        return ControlEvent(events: source)
    }

    public var keyDown: ControlEvent<NSEvent> {
        let source = self.methodInvoked(#selector(Base.keyDown(with:))).map { $0.first as! NSEvent }
        return ControlEvent(events: source)
    }

    public var mouseDown: ControlEvent<NSEvent> {
        let source = self.methodInvoked(#selector(Base.mouseDown(with:))).map { $0.first as! NSEvent }
        return ControlEvent(events: source)
    }

    public var mouseDragged: ControlEvent<NSEvent> {
        let source = self.methodInvoked(#selector(Base.mouseDragged(with:))).map { $0.first as! NSEvent }
        return ControlEvent(events: source)
    }

    public var mouseUp: ControlEvent<NSEvent> {
        let source = self.methodInvoked(#selector(Base.mouseUp(with:))).map { $0.first as! NSEvent }
        return ControlEvent(events: source)
    }

    public var mouseMoved: ControlEvent<NSEvent> {
        let source = self.methodInvoked(#selector(Base.mouseMoved(with:))).map { $0.first as! NSEvent }
        return ControlEvent(events: source)
    }

    public var mouseEntered: ControlEvent<NSEvent> {
        let source = self.methodInvoked(#selector(Base.mouseEntered(with:))).map { $0.first as! NSEvent }
        return ControlEvent(events: source)
    }

    public var mouseExit: ControlEvent<NSEvent> {
        let source = self.methodInvoked(#selector(Base.mouseExited(with:))).map { $0.first as! NSEvent }
        return ControlEvent(events: source)
    }

    public var rightMouseDown: ControlEvent<NSEvent> {
        let source = self.methodInvoked(#selector(Base.rightMouseDown(with:))).map { $0.first as! NSEvent }
        return ControlEvent(events: source)
    }

    public var rightMouseUp: ControlEvent<NSEvent> {
        let source = self.methodInvoked(#selector(Base.rightMouseUp(with:))).map { $0.first as! NSEvent }
        return ControlEvent(events: source)
    }

    public var rightMouseDragged: ControlEvent<NSEvent> {
        let source = self.methodInvoked(#selector(Base.rightMouseDragged(with:))).map { $0.first as! NSEvent }
        return ControlEvent(events: source)
    }
}

#endif

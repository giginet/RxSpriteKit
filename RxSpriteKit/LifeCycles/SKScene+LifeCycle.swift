import Foundation
import SpriteKit
import RxSwift
import RxCocoa

extension Reactive where Base: SKScene {
    public var didChangeSize: ControlEvent<CGSize> {
        let source = self.methodInvoked(#selector(Base.didChangeSize)).map { $0.first as? CGSize ?? CGSize.zero }
        return ControlEvent(events: source)
    }

    public var sceneDidLoad: ControlEvent<Void> {
        let source = self.methodInvoked(#selector(Base.sceneDidLoad)).map { _ in }
        return ControlEvent(events: source)
    }

    #if os(iOS) || os(macOS) || os(tvOS)

    public var willMove: ControlEvent<SKView> {
        let source = self.methodInvoked(#selector(Base.willMove)).map { $0.first as! SKView }
        return ControlEvent(events: source)
    }

    public var didMove: ControlEvent<SKView> {
        let source = self.methodInvoked(#selector(Base.didMove)).map { $0.first as! SKView }
        return ControlEvent(events: source)
    }

    #endif

    public var update: ControlEvent<TimeInterval> {
        let source = self.methodInvoked(#selector(Base.update)).map { $0.first as? TimeInterval ?? 0 }
        return ControlEvent(events: source)
    }

    public var didEvaluateActions: ControlEvent<Void> {
        let source = self.methodInvoked(#selector(Base.didEvaluateActions)).map { _ in }
        return ControlEvent(events: source)
    }

    public var didSimulatePhysics: ControlEvent<Void> {
        let source = self.methodInvoked(#selector(Base.didSimulatePhysics)).map { _ in }
        return ControlEvent(events: source)
    }

    public var didApplyConstraints: ControlEvent<Void> {
        let source = self.methodInvoked(#selector(Base.didApplyConstraints)).map { _ in }
        return ControlEvent(events: source)
    }

    public var didFinishUpdate: ControlEvent<Void> {
        let source = self.methodInvoked(#selector(Base.didFinishUpdate)).map { _ in }
        return ControlEvent(events: source)
    }
}

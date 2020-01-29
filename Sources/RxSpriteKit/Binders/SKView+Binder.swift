import Foundation
import SpriteKit
import RxSwift
import RxCocoa

extension Reactive where Base: SKView {

    public var allowsTransparency: Binder<Bool> {
        return Binder(self.base) { view, allowsTransparency in
            view.allowsTransparency = allowsTransparency
        }
    }

    public var ignoresSiblingOrder: Binder<Bool> {
        return Binder(self.base) { view, ignoresSiblingOrder in
            view.ignoresSiblingOrder = ignoresSiblingOrder
        }
    }

    public var isAsynchronous: Binder<Bool> {
        return Binder(self.base) { view, isAsynchronous in
            view.isAsynchronous = isAsynchronous
        }
    }

    public var isPaused: Binder<Bool> {
        return Binder(self.base) { view, isPaused in
            view.isPaused = isPaused
        }
    }

    public var preferredFramesPerSecond: Binder<Int> {
        return Binder(self.base) { view, preferredFramesPerSecond in
            view.preferredFramesPerSecond = preferredFramesPerSecond
        }
    }

    public var shouldCullNonVisibleNodes: Binder<Bool> {
        return Binder(self.base) { view, shouldCullNonVisibleNodes in
            view.shouldCullNonVisibleNodes = shouldCullNonVisibleNodes
        }
    }

    public var showsDrawCount: Binder<Bool> {
        return Binder(self.base) { view, showsDrawCount in
            view.showsDrawCount = showsDrawCount
        }
    }

    public var showsFPS: Binder<Bool> {
        return Binder(self.base) { view, showsFPS in
            view.showsFPS = showsFPS
        }
    }

    public var showsFields: Binder<Bool> {
        return Binder(self.base) { view, showsFields in
            view.showsFields = showsFields
        }
    }

    public var showsNodeCount: Binder<Bool> {
        return Binder(self.base) { view, showsNodeCount in
            view.showsNodeCount = showsNodeCount
        }
    }

    public var showsPhysics: Binder<Bool> {
        return Binder(self.base) { view, showsPhysics in
            view.showsPhysics = showsPhysics
        }
    }

    public var showsQuadCount: Binder<Bool> {
        return Binder(self.base) { view, showsQuadCount in
            view.showsQuadCount = showsQuadCount
        }
    }

}

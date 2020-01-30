import Foundation
import SpriteKit
import RxSwift
import RxCocoa
import SceneKit

extension Reactive where Base: SK3DNode {

    public var autoenablesDefaultLighting: Binder<Bool> {
        return Binder(self.base) { view, autoenablesDefaultLighting in
            view.autoenablesDefaultLighting = autoenablesDefaultLighting
        }
    }

    public var isPlaying: Binder<Bool> {
        return Binder(self.base) { view, isPlaying in
            view.isPlaying = isPlaying
        }
    }

    public var loops: Binder<Bool> {
        return Binder(self.base) { view, loops in
            view.loops = loops
        }
    }

    public var pointOfView: Binder<SCNNode?> {
        return Binder(self.base) { view, pointOfView in
            view.pointOfView = pointOfView
        }
    }

    public var sceneTime: Binder<TimeInterval> {
        return Binder(self.base) { view, sceneTime in
            view.sceneTime = sceneTime
        }
    }

    public var scnScene: Binder<SCNScene?> {
        return Binder(self.base) { view, scnScene in
            view.scnScene = scnScene
        }
    }

    public var viewportSize: Binder<CGSize> {
        return Binder(self.base) { view, viewportSize in
            view.viewportSize = viewportSize
        }
    }

}

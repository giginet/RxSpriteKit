import Foundation
import SpriteKit
import RxSwift
import RxCocoa
import AVFoundation

extension Reactive where Base: SKAudioNode {

    public var autoplayLooped: Binder<Bool> {
        return Binder(self.base) { view, autoplayLooped in
            view.autoplayLooped = autoplayLooped
        }
    }

    public var avAudioNode: Binder<AVAudioNode?> {
        return Binder(self.base) { view, avAudioNode in
            view.avAudioNode = avAudioNode
        }
    }

    public var isPositional: Binder<Bool> {
        return Binder(self.base) { view, isPositional in
            view.isPositional = isPositional
        }
    }

}

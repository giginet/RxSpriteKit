import Foundation
import SpriteKit
import RxSwift
import RxCocoa

extension Reactive where Base: SKPhysicsJointLimit {

    public var maxLength: Binder<CGFloat> {
        return Binder(self.base) { view, maxLength in
            view.maxLength = maxLength
        }
    }

}

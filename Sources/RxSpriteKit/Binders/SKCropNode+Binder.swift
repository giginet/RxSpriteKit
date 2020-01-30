import Foundation
import SpriteKit
import RxSwift
import RxCocoa

extension Reactive where Base: SKCropNode {

    public var maskNode: Binder<SKNode?> {
        return Binder(self.base) { view, maskNode in
            view.maskNode = maskNode
        }
    }

}

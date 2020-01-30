import Foundation
import SpriteKit
import RxSwift
import RxCocoa

extension Reactive where Base: SKTileMapNode {

    public var anchorPoint: Binder<CGPoint> {
        return Binder(self.base) { view, anchorPoint in
            view.anchorPoint = anchorPoint
        }
    }

    public var blendMode: Binder<SKBlendMode> {
        return Binder(self.base) { view, blendMode in
            view.blendMode = blendMode
        }
    }

    public var color: Binder<RSKColor> {
        return Binder(self.base) { view, color in
            view.color = color
        }
    }

    public var colorBlendFactor: Binder<CGFloat> {
        return Binder(self.base) { view, colorBlendFactor in
            view.colorBlendFactor = colorBlendFactor
        }
    }

    public var enableAutomapping: Binder<Bool> {
        return Binder(self.base) { view, enableAutomapping in
            view.enableAutomapping = enableAutomapping
        }
    }

    public var lightingBitMask: Binder<UInt32> {
        return Binder(self.base) { view, lightingBitMask in
            view.lightingBitMask = lightingBitMask
        }
    }

    public var numberOfColumns: Binder<Int> {
        return Binder(self.base) { view, numberOfColumns in
            view.numberOfColumns = numberOfColumns
        }
    }

    public var numberOfRows: Binder<Int> {
        return Binder(self.base) { view, numberOfRows in
            view.numberOfRows = numberOfRows
        }
    }

    public var tileSet: Binder<SKTileSet> {
        return Binder(self.base) { view, tileSet in
            view.tileSet = tileSet
        }
    }

    public var tileSize: Binder<CGSize> {
        return Binder(self.base) { view, tileSize in
            view.tileSize = tileSize
        }
    }

}

import Foundation
import SpriteKit
import RxSwift
import RxCocoa

extension Reactive where Base: SKShapeNode {

    public var blendMode: Binder<SKBlendMode> {
        return Binder(self.base) { view, blendMode in
            view.blendMode = blendMode
        }
    }

    public var fillColor: Binder<RSKColor> {
        return Binder(self.base) { view, fillColor in
            view.fillColor = fillColor
        }
    }

    public var fillShader: Binder<SKShader?> {
        return Binder(self.base) { view, fillShader in
            view.fillShader = fillShader
        }
    }

    public var fillTexture: Binder<SKTexture?> {
        return Binder(self.base) { view, fillTexture in
            view.fillTexture = fillTexture
        }
    }

    public var glowWidth: Binder<CGFloat> {
        return Binder(self.base) { view, glowWidth in
            view.glowWidth = glowWidth
        }
    }

    public var isAntialiased: Binder<Bool> {
        return Binder(self.base) { view, isAntialiased in
            view.isAntialiased = isAntialiased
        }
    }

    public var lineCap: Binder<CGLineCap> {
        return Binder(self.base) { view, lineCap in
            view.lineCap = lineCap
        }
    }

    public var lineJoin: Binder<CGLineJoin> {
        return Binder(self.base) { view, lineJoin in
            view.lineJoin = lineJoin
        }
    }

    public var lineWidth: Binder<CGFloat> {
        return Binder(self.base) { view, lineWidth in
            view.lineWidth = lineWidth
        }
    }

    public var miterLimit: Binder<CGFloat> {
        return Binder(self.base) { view, miterLimit in
            view.miterLimit = miterLimit
        }
    }

    public var path: Binder<CGPath?> {
        return Binder(self.base) { view, path in
            view.path = path
        }
    }

    public var strokeColor: Binder<RSKColor> {
        return Binder(self.base) { view, strokeColor in
            view.strokeColor = strokeColor
        }
    }

    public var strokeShader: Binder<SKShader?> {
        return Binder(self.base) { view, strokeShader in
            view.strokeShader = strokeShader
        }
    }

    public var strokeTexture: Binder<SKTexture?> {
        return Binder(self.base) { view, strokeTexture in
            view.strokeTexture = strokeTexture
        }
    }

}

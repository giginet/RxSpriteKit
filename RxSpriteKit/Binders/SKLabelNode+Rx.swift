import Foundation
import SpriteKit
import RxSwift
import RxCocoa

extension Reactive where Base: SKLabelNode {

    public var attributedText: Binder<NSAttributedString?> {
        return Binder(self.base) { view, attributedText in
            view.attributedText = attributedText
        }
    }

    public var blendMode: Binder<SKBlendMode> {
        return Binder(self.base) { view, blendMode in
            view.blendMode = blendMode
        }
    }

    public var color: Binder<RSKColor?> {
        return Binder(self.base) { view, color in
            view.color = color
        }
    }

    public var colorBlendFactor: Binder<CGFloat> {
        return Binder(self.base) { view, colorBlendFactor in
            view.colorBlendFactor = colorBlendFactor
        }
    }

    public var fontColor: Binder<RSKColor?> {
        return Binder(self.base) { view, fontColor in
            view.fontColor = fontColor
        }
    }

    public var fontName: Binder<String?> {
        return Binder(self.base) { view, fontName in
            view.fontName = fontName
        }
    }

    public var fontSize: Binder<CGFloat> {
        return Binder(self.base) { view, fontSize in
            view.fontSize = fontSize
        }
    }

    public var horizontalAlignmentMode: Binder<SKLabelHorizontalAlignmentMode> {
        return Binder(self.base) { view, horizontalAlignmentMode in
            view.horizontalAlignmentMode = horizontalAlignmentMode
        }
    }

    public var lineBreakMode: Binder<RSKLineBreakMode> {
        return Binder(self.base) { view, lineBreakMode in
            view.lineBreakMode = lineBreakMode
        }
    }

    public var numberOfLines: Binder<Int> {
        return Binder(self.base) { view, numberOfLines in
            view.numberOfLines = numberOfLines
        }
    }

    public var preferredMaxLayoutWidth: Binder<CGFloat> {
        return Binder(self.base) { view, preferredMaxLayoutWidth in
            view.preferredMaxLayoutWidth = preferredMaxLayoutWidth
        }
    }

    public var text: Binder<String?> {
        return Binder(self.base) { view, text in
            view.text = text
        }
    }

    public var verticalAlignmentMode: Binder<SKLabelVerticalAlignmentMode> {
        return Binder(self.base) { view, verticalAlignmentMode in
            view.verticalAlignmentMode = verticalAlignmentMode
        }
    }

}

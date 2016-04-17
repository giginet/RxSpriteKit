import SpriteKit
import RxSwift
import RxCocoa

extension SKLabelNode {
    public var rx_text: ControlProperty<String?> {
        return self.controlPropertyForName("text")
    }
    
    public var rx_fontColor: AnyObserver<UIColor?> {
        return self.observerForPropertyName("fontColor")
    }
    
    public var rx_fontName: AnyObserver<String?> {
        return self.observerForPropertyName("fontName")
    }
    
    public var rx_fontSize: AnyObserver<CGFloat> {
        return self.observerForPropertyName("fontSize")
    }
    
    public var rx_verticalAlignmentMode: AnyObserver<SKLabelVerticalAlignmentMode> {
        return UIBindingObserver(UIElement: self) { node, value in
            node.verticalAlignmentMode = value
        }.asObserver()
    }
    
    public var rx_horizontalAlignmentMode: AnyObserver<SKLabelHorizontalAlignmentMode> {
        return UIBindingObserver(UIElement: self) { node, value in
            node.horizontalAlignmentMode = value
        }.asObserver()
    }
    
    public var rx_color: AnyObserver<UIColor?> {
        return self.observerForPropertyName("color")
    }
    
    public var rx_colorBlendFactor: AnyObserver<CGFloat> {
        return self.observerForPropertyName("colorBlendFactor")
    }
    
    public var rx_blendMode: AnyObserver<SKBlendMode> {
        return UIBindingObserver(UIElement: self) { node, value in
            self.blendMode = value
        }.asObserver()
    }
}
import SpriteKit
import RxSwift
import RxCocoa

extension SKSpriteNode {
    public var rx_size: AnyObserver<CGSize> {
        return UIBindingObserver(UIElement: self) { node, value in
            node.size = value
        }.asObserver()
    }
    
    public var rx_anchorPoint: AnyObserver<CGPoint> {
        return UIBindingObserver(UIElement: self) { node, value in
            node.anchorPoint = value
        }.asObserver()
    }
    
    public var rx_texture: AnyObserver<SKTexture?> {
        return observerForPropertyName("texture")
    }
    
    public var rx_centerRect: AnyObserver<CGRect> {
        return UIBindingObserver(UIElement: self) { node, value in
            node.centerRect = value
        }.asObserver()
    }
    
    public var rx_colorBlendFactor: AnyObserver<CGFloat> {
        return self.observerForPropertyName("colorBlendFactor")
    }
    
    public var rx_blendMode: AnyObserver<SKBlendMode> {
        return UIBindingObserver(UIElement: self) { node, value in
            self.blendMode = value
        }.asObserver()
    }
    
    public var rx_lightingBitMask: AnyObserver<UInt32> {
        return UIBindingObserver(UIElement: self) { node, value in
            node.lightingBitMask = value
        }.asObserver()
    }
    
    public var rx_shadowedBitMask: AnyObserver<UInt32> {
        return UIBindingObserver(UIElement: self) { node, value in
            node.shadowedBitMask = value
        }.asObserver()
    }
    
    public var rx_shadowCastBitMask: AnyObserver<UInt32> {
        return UIBindingObserver(UIElement: self) { node, value in
            node.shadowCastBitMask = value
        }.asObserver()
    }
    
    public var rx_normalTexture: AnyObserver<SKTexture?> {
        return observerForPropertyName("normalTexture")
    }
    
    public var rx_shader: AnyObserver<SKShader?> {
        return observerForPropertyName("shader")
    }
}
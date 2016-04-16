import SpriteKit
import RxSwift
import RxCocoa

extension SKNode {
    public var rx_position: ControlProperty<CGPoint> {
        let source = Observable<CGPoint>.create { observer in
            observer.on(.Next(self.position))
            return NopDisposable.instance
            }
            .distinctUntilChanged()
            .takeUntil(self.rx_deallocated)
        
        let bindingObserver = UIBindingObserver(UIElement: self) { node, position in
            node.position = position
        }
        return ControlProperty(values: source, valueSink: bindingObserver)
    }
    
    public var rx_scale: AnyObserver<CGFloat> {
        return UIBindingObserver(UIElement: self) { node, scale in
            node.setScale(scale)
            }.asObserver()
    }
    
    public var rx_xScale: AnyObserver<CGFloat> {
        return UIBindingObserver(UIElement: self) { node, xScale in
            node.xScale = xScale
            }.asObserver()
    }
    
    public var rx_yScale: AnyObserver<CGFloat> {
        return UIBindingObserver(UIElement: self) { node, yScale in
            node.yScale = yScale
            }.asObserver()
    }
    
    public var rx_zRotation: AnyObserver<CGFloat> {
        return UIBindingObserver(UIElement: self) { node, zRotation in
            node.zRotation = zRotation
            }.asObserver()
    }
    
    public var rx_alpha: AnyObserver<CGFloat> {
        return UIBindingObserver(UIElement: self) { node, alpha in
            node.alpha = alpha
            }.asObserver()
    }

    public var rx_hidden: AnyObserver<Bool> {
        return UIBindingObserver(UIElement: self) { node, hidden in
            node.hidden = hidden
            }.asObserver()
    }
    
    public var rx_name: AnyObserver<String?> {
        return UIBindingObserver(UIElement: self) { node, name in
            node.name = name
            }.asObserver()
    }
    
    public var rx_speed: AnyObserver<CGFloat> {
        return UIBindingObserver(UIElement: self) { node, speed in
            node.speed = speed
            }.asObserver()
    }
    
    public var rx_paused: AnyObserver<Bool> {
        return UIBindingObserver(UIElement: self) { node, paused in
            node.paused = paused
            }.asObserver()
    }
}
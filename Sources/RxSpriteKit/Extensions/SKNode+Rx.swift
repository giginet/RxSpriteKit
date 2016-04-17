import SpriteKit
import RxSwift
import RxCocoa

extension SKNode {
    func controlPropertyForName<ValueType: Equatable>(getter: (SKNode) -> ValueType,
                                setter: (SKNode, ValueType) -> Void) -> ControlProperty<ValueType> {
        let source: Observable<ValueType> = Observable.create { [weak weakNode = self] observer in
            guard let node = weakNode else {
                observer.on(.Completed)
                return NopDisposable.instance
            }
            
            observer.on(.Next(getter(node)))
            
            let nodeTarget = NodeTarget<SKNode, ValueType>(node: self, getter: getter, setter: setter)
            return AnonymousDisposable {
                nodeTarget.dispose()
            }
            }
            .distinctUntilChanged()
            .takeUntil((self as NSObject).rx_deallocated)
        
        let bindingObserver = UIBindingObserver<SKNode, ValueType>(UIElement: self, binding: { node, value in
        })
        
        return ControlProperty<ValueType>(values: source, valueSink: bindingObserver)
    }

    
    func observerForPropertyName<ValueType>(propertyName: String) -> AnyObserver<ValueType> {
        return UIBindingObserver(UIElement: self) { node, value in
            if let value = value as? AnyObject {
                self.setValue(value, forKeyPath: propertyName)
            }
        }.asObserver()
    }
    
    public var rx_position: ControlProperty<CGPoint> {
        return controlPropertyForName({ (node) in
            return self.position
        }, setter: { (node, value) in
                self.position = value
        })
    }
    
    public var rx_scale: AnyObserver<CGFloat> {
        return UIBindingObserver(UIElement: self) { node, scale in
            node.setScale(scale)
        }.asObserver()
    }
    
    public var rx_xScale: AnyObserver<CGFloat> {
        return self.observerForPropertyName("xScale")
    }
    
    public var rx_yScale: AnyObserver<CGFloat> {
        return self.observerForPropertyName("yScale")
    }
    
    public var rx_zRotation: AnyObserver<CGFloat> {
        return self.observerForPropertyName("zRotation")
    }
    
    public var rx_alpha: AnyObserver<CGFloat> {
        return self.observerForPropertyName("alpha")
    }

    public var rx_hidden: AnyObserver<Bool> {
        return self.observerForPropertyName("hidden")
    }
    
    public var rx_name: AnyObserver<String?> {
        return self.observerForPropertyName("name")
    }
    
    public var rx_speed: AnyObserver<CGFloat> {
        return self.observerForPropertyName("speed")
    }
    
    public var rx_paused: AnyObserver<Bool> {
        return self.observerForPropertyName("paused")
    }
}
import SpriteKit
import RxSwift

extension SKNode {
    public var rx_position: ControlProperty<CGPoint> {
        let source = Observable<CGPoint>.create { observer in
            observer.on(.Next(self.position))
            return AnonymousDisposable {
                print("dispose")
            }
        }
        .distinctUntilChanged()
        
        let bindingObserver = NodeBindingObserver(UIElement: self) { node, position in
            node.position = position
        }
        return ControlProperty(values: source, valueSink: bindingObserver)
    }
    
    
    public var rx_hidden: AnyObserver<Bool> {
        return NodeBindingObserver(UIElement: self) { view, hidden in
            view.hidden = hidden
            }.asObserver()
    }
}
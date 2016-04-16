import SpriteKit
import RxSwift
import RxCocoa

extension SKNode {
    public var rx_position: ControlProperty<CGPoint> {
        let source = Observable<CGPoint>.create { observer in
            observer.on(.Next(self.position))
            return AnonymousDisposable {
                print("dispose")
            }
        }
        .distinctUntilChanged()
        .takeUntil(self.rx_deallocated)
        
        let bindingObserver = UIBindingObserver(UIElement: self) { node, position in
            node.position = position
        }
        return ControlProperty(values: source, valueSink: bindingObserver)
    }
    
    
    public var rx_hidden: AnyObserver<Bool> {
        return UIBindingObserver(UIElement: self) { view, hidden in
            view.hidden = hidden
            }.asObserver()
    }
}
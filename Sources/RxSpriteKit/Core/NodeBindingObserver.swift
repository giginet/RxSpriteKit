import Foundation
import RxSwift

public class NodeBindingObserver<UIElementType, Value where UIElementType: AnyObject> : ObserverType {
    public typealias E = Value
    
    weak var UIElement: UIElementType?
    
    let binding: (UIElementType, Value) -> Void
    
    public init(UIElement: UIElementType, binding: (UIElementType, Value) -> Void) {
        self.UIElement = UIElement
        self.binding = binding
    }
    
    public func on(event: Event<Value>) {
        MainScheduler.ensureExecutingOnScheduler()
        
        switch event {
        case .Next(let element):
            if let view = self.UIElement {
                binding(view, element)
            }
        case .Error(let error):
            fatalError("Binding error \(error)")
        case .Completed:
            break
        }
    }
    
    /**
     Erases type of observer.
     
     - returns: type erased observer.
     */
    public func asObserver() -> AnyObserver<Value> {
        return AnyObserver(eventHandler: on)
    }
}
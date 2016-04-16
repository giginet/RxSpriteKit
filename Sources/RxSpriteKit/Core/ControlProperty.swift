import Foundation
import RxSwift

public protocol ControlPropertyType : ObservableType, ObserverType {
    func asControlProperty() -> ControlProperty<E>
}

public struct ControlProperty<PropertyType> : ControlPropertyType {
    public typealias E = PropertyType
    
    let _values: Observable<PropertyType>
    let _valueSink: AnyObserver<PropertyType>
    
    public init<V: ObservableType, S: ObserverType where E == V.E, E == S.E>(values: V, valueSink: S) {
        _values = values.subscribeOn(ConcurrentMainScheduler.instance)
        _valueSink = valueSink.asObserver()
    }
    
    public func subscribe<O : ObserverType where O.E == E>(observer: O) -> Disposable {
        return _values.subscribe(observer)
    }
    
    public func asObservable() -> Observable<E> {
        return _values
    }
    
    public func asControlProperty() -> ControlProperty<E> {
        return self
    }
    
    public func on(event: Event<E>) {
        switch event {
        case .Error(let error):
            fatalError("Binding error \(error)")
        case .Next:
            _valueSink.on(event)
        case .Completed:
            _valueSink.on(event)
        }
    }
}
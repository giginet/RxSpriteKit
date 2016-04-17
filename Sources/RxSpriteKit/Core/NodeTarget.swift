import Foundation
import SpriteKit
import RxSwift
import RxCocoa

class NodeTarget<NodeType: SKNode, ValueType>: NSObject, Disposable {
    typealias Getter = (NodeType) -> ValueType
    typealias Setter = (NodeType, ValueType) -> Void
    
    weak var node: NodeType!
    var getter: Getter!
    var setter: Setter!
    let disposable: Disposable
    
    init(node: NodeType, getter: Getter, setter: Setter) {
        MainScheduler.ensureExecutingOnScheduler()
        
        self.node = node
        self.getter = getter
        self.setter = setter
        
        self.disposable = Observable<Int>.interval(1.0 / 60.0, scheduler: MainScheduler.instance).subscribe { event in
            setter(node, getter(node))
        }
        super.init()
    }

    func dispose() {
        self.node = nil
        self.getter = nil
        self.setter = nil
        self.disposable.dispose()
    }
}

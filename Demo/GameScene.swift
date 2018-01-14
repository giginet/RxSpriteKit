import SpriteKit
import GameplayKit
import RxSpriteKit
import RxSwift
import RxCocoa

class GameScene: SKScene {
    private let disposeBag = DisposeBag()
    private var label: SKLabelNode!
    private var positionRelay: PublishRelay = PublishRelay<CGPoint>()

    override func sceneDidLoad() {
        super.sceneDidLoad()

        guard let label = childNode(withName: "//helloLabel") as? SKLabelNode else {
            fatalError()
        }
        self.label = label
        self.rx.update
            .scan(CGPoint.zero, accumulator: { currentPosition, _ in CGPoint(x: 0, y: currentPosition.y + 1) })
            .bind(to: positionRelay)
            .disposed(by: disposeBag)
        positionRelay.bind(to: label.rx.position.asObserver()).disposed(by: disposeBag)
        positionRelay
            .asObservable()
            .map { String(describing: $0.y) }
            .bind(to: label.rx.text.asObserver())
            .disposed(by: disposeBag)
    }
}

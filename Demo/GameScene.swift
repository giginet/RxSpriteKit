import SpriteKit
import GameplayKit
import RxSpriteKit
import RxSwift
import RxCocoa

class GameScene: SKScene {
    private let disposeBag = DisposeBag()
    private var label: SKLabelNode!
    private let frameRelay = PublishRelay<Int>()

    override func sceneDidLoad() {
        super.sceneDidLoad()

        guard let label = childNode(withName: "//helloLabel") as? SKLabelNode else {
            fatalError()
        }
        self.label = label
        rx.update
            .scan(0, accumulator: { frameCount, _ in frameCount + 1 })
            .bind(to: frameRelay)
            .disposed(by: disposeBag)
        frameRelay
            .map { CGFloat($0) * 0.01 }
            .bind(to: label.rx.zRotation.asObserver())
            .disposed(by: disposeBag)
        frameRelay
            .map { CGPoint(x: 0, y: $0) }
            .bind(to: label.rx.position.asObserver())
            .disposed(by: disposeBag)
        frameRelay
            .map { String(describing: $0) }
            .bind(to: label.rx.text.asObserver())
            .disposed(by: disposeBag)
    }
}

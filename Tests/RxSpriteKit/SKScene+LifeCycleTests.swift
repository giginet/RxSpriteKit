import Foundation
import SpriteKit
import RxSpriteKit
import RxSwift
import RxCocoa
import RxBlocking
import RxTest
import XCTest

class SKScene_LifeCycleTests: XCTestCase {
    let disposeBag = DisposeBag()

    func testUpdate() {
        let scene = SKScene()
        let scheduler = TestScheduler(initialClock: 0)
        let observer = scheduler.createObserver(Double.self)
        scene.rx.update.bind(to: observer).disposed(by: disposeBag)
        scheduler.scheduleAt(100) {
            scene.update(0.1)
        }
        scheduler.start()
        XCTAssertEqual(observer.events, [next(100, 0.1)])
    }
}

import Foundation
import SpriteKit
import RxSpriteKit
import RxSwift
import RxCocoa
import RxTest
import XCTest

class SKScene_LifeCycleTests: XCTestCase {
    let disposeBag = DisposeBag()
    let scene = SKScene()
    let scheduler = TestScheduler(initialClock: 0)

    func testDidChangeSize() {
        let observer = scheduler.createObserver(CGSize.self)
        scene.rx.didChangeSize.bind(to: observer).disposed(by: disposeBag)
        scheduler.scheduleAt(100) {
            self.scene.didChangeSize(CGSize.zero)
        }
        scheduler.start()
        XCTAssertEqual(observer.events, [Recorded.next(100, CGSize.zero)])
    }

    func testUpdate() {
        let observer = scheduler.createObserver(Double.self)
        scene.rx.update.bind(to: observer).disposed(by: disposeBag)
        scheduler.scheduleAt(100) {
            self.scene.update(0.1)
        }
        scheduler.start()
        XCTAssertEqual(observer.events, [Recorded.next(100, 0.1)])
    }

    func testSceneDidLoad() {
        let observer = scheduler.createObserver(Void.self)
        scene.rx.sceneDidLoad.bind(to: observer).disposed(by: disposeBag)
        scheduler.scheduleAt(100) {
            self.scene.sceneDidLoad()
        }
        scheduler.start()
        XCTAssertEqual(observer.events.count, 1)
    }

    func testDidEvaluateActions() {
        let observer = scheduler.createObserver(Void.self)
        scene.rx.didEvaluateActions.bind(to: observer).disposed(by: disposeBag)
        scheduler.scheduleAt(100) {
            self.scene.didEvaluateActions()
        }
        scheduler.start()
        XCTAssertEqual(observer.events.count, 1)
    }

    func testDidSimulatePhysics() {
        let observer = scheduler.createObserver(Void.self)
        scene.rx.didSimulatePhysics.bind(to: observer).disposed(by: disposeBag)
        scheduler.scheduleAt(100) {
            self.scene.didSimulatePhysics()
        }
        scheduler.start()
        XCTAssertEqual(observer.events.count, 1)
    }

    func testDidApplyConstraints() {
        let observer = scheduler.createObserver(Void.self)
        scene.rx.didApplyConstraints.bind(to: observer).disposed(by: disposeBag)
        scheduler.scheduleAt(100) {
            self.scene.didApplyConstraints()
        }
        scheduler.start()
        XCTAssertEqual(observer.events.count, 1)
    }

    func testDidFinishUpdate() {
        let observer = scheduler.createObserver(Void.self)
        scene.rx.didFinishUpdate.bind(to: observer).disposed(by: disposeBag)
        scheduler.scheduleAt(100) {
            self.scene.didFinishUpdate()
        }
        scheduler.start()
        XCTAssertEqual(observer.events.count, 1)
    }
}

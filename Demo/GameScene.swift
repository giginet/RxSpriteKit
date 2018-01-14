//
//  GameScene.swift
//  RxSpriteKit
//
//  Created by giginet on 2018/01/10.
//  Copyright © 2018 giginet. All rights reserved.
//

import SpriteKit
import GameplayKit
import RxSpriteKit
import RxSwift
import RxCocoa

class GameScene: SKScene {
    private let disposeBag = DisposeBag()
    private var label : SKLabelNode!
    private let positionRelay: PublishRelay = PublishRelay<CGPoint>()
    
    override func sceneDidLoad() {
        super.sceneDidLoad()
        
        guard let label = childNode(withName: "//helloLabel") as? SKLabelNode else {
            fatalError()
        }
        self.label = label
        Observable<Int>
            .interval(0.01, scheduler: MainScheduler.instance)
            .map { CGPoint(x: 0, y: $0) }
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

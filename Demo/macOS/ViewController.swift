//
//  ViewController.swift
//  RxSpriteKitDemo
//
//  Created by giginet on 2018/01/13.
//  Copyright © 2018 giginet. All rights reserved.
//

import Cocoa
import SpriteKit
import GameplayKit

class ViewController: NSViewController {

    @IBOutlet var skView: SKView!

    override func viewDidLoad() {
        super.viewDidLoad()

        if let view = self.skView {
            let scene = GameScene.createScene()
            
            // Present the scene
            view.presentScene(scene)

            view.ignoresSiblingOrder = true

            view.showsFPS = true
            view.showsNodeCount = true
        }
    }
}

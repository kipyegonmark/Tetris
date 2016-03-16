//
//  GameViewController.swift
//  Tetris
//
//  Created by Mark Kipyegon Koskei on 16/03/2016.
//  Copyright (c) 2016. All rights reserved.
//

import UIKit
import SpriteKit

class GameViewController: UIViewController {
    
    var scene: GameScene!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    //Configure the view
    let skView = view as! SKView
    skView.multipleTouchEnabled = false
    
    //Create and configure the scene
    scene = GameScene(size: skView.bounds.size)
    scene.scaleMode = .AspectFill
    
    //Present the scene
    skView.presentScene(scene)
    }
    
    override func prefersStatusBarHidden() -> Bool {
        return true
    }

}
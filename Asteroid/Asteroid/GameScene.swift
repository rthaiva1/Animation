//
//  GameScene.swift
//  Asteroid
//
//  Created by Rosh Sugathan Thaivalappil on 9/24/19.
//  Copyright © 2019 Rosh Sugathan Thaivalappil. All rights reserved.
//

import SpriteKit
class GameScene: SKScene {
    
    var player:SKSpriteNode!
    var star:SKEmitterNode!
    
    override func sceneDidLoad()
    {

    }
     
    func addEmitter(){
        let emitter = SKEmitterNode(fileNamed: Emitter.MyParticle)!
    }
    override func update(_ currentTime: TimeInterval) {
    }
}

//
//  GameScene.swift
//  Asteroid
//
//  Created by Rosh Sugathan Thaivalappil on 9/24/19.
//  Copyright © 2019 Rosh Sugathan Thaivalappil. All rights reserved.
//

import SpriteKit
import GameplayKit
class GameScene: SKScene {
    
    var player:SKSpriteNode!
    var field:SKEmitterNode!
    
    override func didMove(to view: SKView) {
        field = SKEmitterNode(fileNamed: "MyParticle")
        field.position = CGPoint(x: 0, y: 1472)
        field.advanceSimulationTime(40)
        self.addChild(field)
        
        field.zPosition =  -1
        
        player = SKSpriteNode(imageNamed: "download")
  
        self.addChild(player)
    }
     
    override func update(_ currentTime: TimeInterval) {
    }
}

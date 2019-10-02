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
        field.position = CGPoint(x: 0, y: self.frame.size.height)
        self.addChild(field)
        field.zPosition =  -1
        player = SKSpriteNode(imageNamed: "download")
        player.position = CGPoint(x: 0, y: -(self.frame.size.height/2 - player.size.height))
  
        self.addChild(player)
    }
     
    override func update(_ currentTime: TimeInterval) {
    }
}

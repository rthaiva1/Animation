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
    
    var attacktime:Timer!
    var player:SKSpriteNode!
    var totalVillians = ["Villian","Villian2"]
    var field:SKEmitterNode!
    var count:intmax_t = 0
    
    override func didMove(to view: SKView) {
        field = SKEmitterNode(fileNamed: "MyParticle")
        field.position = CGPoint(x: 0, y: self.frame.size.height)
        self.addChild(field)
        field.zPosition =  -1
        player = SKSpriteNode(imageNamed: "Player")
        player.position = CGPoint(x: 0, y: -(self.frame.size.height/2 - player.size.height))
        self.addChild(player)
        attacktime = Timer.scheduledTimer(timeInterval: 0.75, target: self,selector: #selector(addVillian), userInfo: nil, repeats: true)
    }
    
    @objc func addVillian()
    {
        if(count == 0)
        {
            count = 1
        }
        else{
            count = 0
        }
        
        let villian = SKSpriteNode(imageNamed: totalVillians[count])
        let rand = GKRandomDistribution(lowestValue: Int(-self.frame.width/2 + villian.size.width), highestValue:Int(self.frame.width/2 - villian.size.width))
        let position = CGFloat(rand.nextInt())
        villian.position = CGPoint(x: position, y: self.frame.size.height + villian.size.height)
        villian.physicsBody = SKPhysicsBody(rectangleOf :villian.size)
        villian.physicsBody?.isDynamic = true
        self.addChild(villian)
        self.physicsWorld.gravity = CGVector(dx: 0, dy: -0.40)
        
    }
    
    override func update(_ currentTime: TimeInterval) {
    }
}

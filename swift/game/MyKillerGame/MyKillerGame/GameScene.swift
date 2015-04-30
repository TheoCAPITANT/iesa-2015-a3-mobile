//
//  GameScene.swift
//  MyKillerGame
//
//  Created by Théo CAPITANT on 4/30/15.
//  Copyright (c) 2015 Théo CAPITANT. All rights reserved.
//

import SpriteKit



class GameScene: SKScene {
    
    var index = 0
    var myLabel :SKLabelNode?
    
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        myLabel = SKLabelNode(fontNamed:"Chalkduster")
        myLabel!.text = "Hello, World!";
        myLabel!.fontSize = 65;
        myLabel!.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame));
        
        self.addChild(myLabel!)
    }
    
    
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        /* Called when a touch begins */
        
        for touch in (touches as! Set<UITouch>) {
            if (index == 0) {
                myLabel!.runAction(SKAction.fadeOutWithDuration(0.6), completion: {self.myLabel!.removeFromParent()})
            }
        }
    }
   
    override func update(currentTime: CFTimeInterval) {
        /* Called before each frame is rendered */
    }
}

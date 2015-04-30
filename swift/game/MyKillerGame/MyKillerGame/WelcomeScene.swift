//
//  WelcomeScene.swift
//  MyKillerGame
//
//  Created by Théo CAPITANT on 4/30/15.
//  Copyright (c) 2015 Théo CAPITANT. All rights reserved.
//

import SpriteKit

class WelcomeScene: SKScene {
    
    override func didMoveToView(view: SKView) {
        /* Setup your scene here */
        backgroundColor = SKColor.blackColor()
        
        let myLabel = SKLabelNode(fontNamed:"American Typewriter")
        myLabel.text = "Hello, World!";
        myLabel.fontSize = 65;
        myLabel.position = CGPoint(x:CGRectGetMidX(self.frame), y:CGRectGetMidY(self.frame));
        
        self.addChild(myLabel)
    }
    
    override func touchesBegan(touches: Set<NSObject>, withEvent event: UIEvent) {
        /* Called when a touch begins */
        
        let scene = GameScene(size:self.size)
        self.view?.presentScene(scene)
        
    }
   
}

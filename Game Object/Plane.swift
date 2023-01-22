//
//  Plane.swift
//  MAPD724_ICE1_Brijen
//
//  Created by Brijen Shah on 2023-01-20.
//

import GameplayKit
import SpriteKit

class Plane : GameObject
{
    init()
    {
        super.init(imageString: "plane", initialScale: 2.0)
        Start()
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func Start()
    {
        zPosition = 2
    }
    
    override func Update() {
        CheckBounds()
    }
    
    override func CheckBounds() {
        if(position.x <= -255)
        {
            position.x = -255
        }
        
        if(position.x >= 255)
        {
            position.x = 255
        }
    }
    
    func TouchMove(newPos: CGPoint)
    {
        position = newPos
    }
}

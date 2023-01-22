//
//  GameProtocol.swift
//  MAPD724_ICE1_Brijen
//
//  Created by Brijen Shah on 2023-01-20.
//

protocol GameProtocol
{
    // Prevent an object from leaving the screen
    func CheckBounds()
    
    // Reset our GameObjects offscreen
    func Reset()
    
    // Initialize properties of Game Objects
    func Start()
    
    // Update will be called every Frame (60 times per second) = 16.666 ms
    func Update()
}

import SwiftGodot
import Foundation

class Game {
    
    var scene:SceneTree!
    var rootNode:Node2D!
    var camera:Camera2D!
    
    var room:Room!
    
    func setup(scene:SceneTree){
        self.scene = scene
        setupCamera()
        
        room = Room()
        rootNode.addChild(node: room.setup())
    }
    
    private func setupCamera(){
        rootNode = Node2D()
        //rootNode.inputDelegate = self
        camera = Camera2D()
        camera.position = Vector2(x: 0, y: 0)
        camera.positionSmoothingSpeed = 0.2
        camera.positionSmoothingEnabled = true
        rootNode.addChild(node: camera)
    }
}

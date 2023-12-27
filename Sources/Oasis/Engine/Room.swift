import SwiftGodot
import Foundation

class Room : Node2D {
    let background = Sprite2D()
    
    func setup() -> Self {
        let resource = GD.load(path: "nowhere-house-bg.jpg")
        let crypto   = GD.load(path: "crypto.png")
        let font     = GD.load(path: "JandaManateeSolid.ttf")
        let soundOgg = GD.load(path: "water.ogg")
        let soundMp3 = GD.load(path: "invention_open.mp3")
        return self
    }
}

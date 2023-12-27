import Foundation
import SwiftGodotKit
import SwiftGodot


func loadScene (scene: SceneTree) {
    let game = Game()
    game.setup(scene: scene)
}


func registerTypes (level: GDExtension.InitializationLevel) {
}

@main
class Startup {
    static func main () {
        runGodot(
            args: ["--path", Bundle.module.path(forResource: "Project", ofType: nil)!],
            initHook: registerTypes,
            loadScene: loadScene,
            loadProjectSettings: { settings in }
        )
    }
}

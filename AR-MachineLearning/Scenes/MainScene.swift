//
//  MainScene.swift
//  AR-MachineLearning
//
//  Created by Zoe Schmitt on 5/30/22.
//

import Foundation
import SceneKit

struct MainScene {
    var scene: SCNScene?

    init() {
        scene = self.initializeScene()
    }

    func initializeScene() -> SCNScene? {
        let scene = SCNScene()

        setDefaults(scene: scene)

        return scene
    }

    func setDefaults(scene: SCNScene) {
        let ambientLightNode = SCNNode()
        ambientLightNode.light = SCNLight()
        ambientLightNode.light?.type = SCNLight.LightType.ambient
        ambientLightNode.light?.color = UIColor(white: 0.6, alpha: 1.0)
        scene.rootNode.addChildNode(ambientLightNode)
        let directionalLight = SCNLight()
        directionalLight.type = .directional
        let directionalNode = SCNNode()
        directionalNode.eulerAngles = SCNVector3Make(GLKMathDegreesToRadians(-130), GLKMathDegreesToRadians(0), GLKMathDegreesToRadians(35))
        directionalNode.light = directionalLight
        scene.rootNode.addChildNode(directionalNode)
    }
}

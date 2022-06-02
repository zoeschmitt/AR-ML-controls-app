//
//  Sphere.swift
//  AR-MachineLearning
//
//  Created by Zoe Schmitt on 5/31/22.
//

import Foundation
import SceneKit

class Sphere: SceneObject {
    var animating: Bool = false

    init() {
        super.init(from: "earth.dae")
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }

    func animate() {
        if animating { return }
        animating = true
        // rotate on y axis
        let rotateOne = SCNAction.rotateBy(x: 0, y: CGFloat(Float.pi * 2), z: 0, duration: 5.0)
        let repeatForever = SCNAction.repeatForever(rotateOne)
        runAction(repeatForever)
    }

    func stopAnimating() {
        removeAllActions()
        animating = false
    }
}

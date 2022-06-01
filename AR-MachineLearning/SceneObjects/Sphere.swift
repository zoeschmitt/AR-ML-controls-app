//
//  Sphere.swift
//  AR-MachineLearning
//
//  Created by Zoe Schmitt on 5/31/22.
//

import Foundation
import SceneKit

class Sphere: SceneObject {

    init() {
        super.init(from: "earth.dae")
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

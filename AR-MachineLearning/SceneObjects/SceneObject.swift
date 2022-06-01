//
//  SceneObject.swift
//  AR-MachineLearning
//
//  Created by Zoe Schmitt on 5/31/22.
//

import Foundation
import SceneKit

class SceneObject: SCNNode {

    init(from file: String) {
        super.init()

        let nodesInFile = SCNNode.allNodes(from: file)
        nodesInFile.forEach { (node) in
            self.addChildNode(node)
        }
    }

    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
}

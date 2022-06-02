//
//  UtilityExtensions.swift
//  Created by Zoe Schmitt on 5/26/22.
//

import Foundation
import UIKit

public extension Float {

    /// Returns a random floating point number between 0.0 and 1.0, inclusive.
    static var random: Float {
        get {
            return Float(arc4random()) / Float(0xFFFFFFFF)
        }
    }

    /**
     Create a random num Float

     - parameter min: Float
     - parameter max: Float

     - returns: Float
     */
    static func random(min: Float, max: Float) -> Float {
        return Float.random * (max - min) + min
    }
}

extension UIDeviceOrientation {
    func getImagePropertyOrientation() -> CGImagePropertyOrientation {
        switch self {
            case UIDeviceOrientation.portrait, .faceUp: return CGImagePropertyOrientation.right
            case UIDeviceOrientation.portraitUpsideDown, .faceDown: return CGImagePropertyOrientation.left
            case UIDeviceOrientation.landscapeLeft: return CGImagePropertyOrientation.up
            case UIDeviceOrientation.landscapeRight: return CGImagePropertyOrientation.down
            case UIDeviceOrientation.unknown: return CGImagePropertyOrientation.right
        default: return CGImagePropertyOrientation.right
        }
    }
}

//
//  Animation.Enums.swift
//  AnimationOps
//
//  Created by Haider Khan on 11/24/19.
//  Copyright © 2019 Haider Khan. All rights reserved.
//

import Foundation
import QuartzCore

#if os(iOS)
import UIKit
#elseif os(OSX)
import AppKit
#endif

/// This is utilized to update our presentation layer
/// instead of updating all of our values from our presentation layer
/// we can take an educated guess based on AnimationEnums
internal enum AnimationEnums : String {
    
    // MARK: - CALayer
    
    case anchorPoint
    case backgroundColor
    case borderColor
    case borderWidth
    case bounds
    case cornerRadius
    case mask
    case hidden
    case masksToBounds
    case opacity
    case position
    case shadowColor
    case shadowOffset
    case shadowOpacity
    case shadowPath
    case transform
    case zPosition
    
    // MARK: - CAShapeLayer
    
    case fillColor
    case lineDashPhase
    case lineWidth
    case miterLimit
    case strokeColor
    case strokeStart
    case strokeEnd
    
    // MARK: - CGPoint
    
    case x
    case y
    
    // MARK: - CGRect
    
    case origin
    case originX
    case originY
    case size
    case sizeWidth
    case sizeHeight        
    
    // MARK: - KeyPath
    
    internal var keyPath: String {
        switch self {
        case .anchorPoint:
            return AnimationKeyPaths.anchorPoint
        case .backgroundColor:
            return AnimationKeyPaths.backgroundColor
        case .borderColor:
            return AnimationKeyPaths.borderColor
        case .borderWidth:
            return AnimationKeyPaths.borderWidth
        case .bounds:
            return AnimationKeyPaths.bounds
        case .cornerRadius:
            return AnimationKeyPaths.cornerRadius
        case .mask:
            return AnimationKeyPaths.mask
        case .hidden:
            return AnimationKeyPaths.hidden
        case .masksToBounds:
            return AnimationKeyPaths.masksToBounds
        case .opacity:
            return AnimationKeyPaths.opacity
        case .position:
            return AnimationKeyPaths.position
        case .shadowColor:
            return AnimationKeyPaths.shadowColor
        case .shadowOffset:
            return AnimationKeyPaths.shadowOffset
        case .shadowOpacity:
            return AnimationKeyPaths.shadowOpacity
        case .shadowPath:
            return AnimationKeyPaths.shadowPath
        case .transform:
            return AnimationKeyPaths.transform
        case .zPosition:
            return AnimationKeyPaths.zPosition
        case .fillColor:
            return AnimationKeyPaths.fillColor
        case .lineDashPhase:
            return AnimationKeyPaths.lineDashPhase
        case .lineWidth:
            return AnimationKeyPaths.lineWidth
        case .miterLimit:
            return AnimationKeyPaths.miterLimit
        case .strokeColor:
            return AnimationKeyPaths.strokeColor
        case .strokeStart:
            return AnimationKeyPaths.strokeStart
        case .strokeEnd:
            return AnimationKeyPaths.strokeEnd
        case .x:
            return AnimationKeyPaths.positionX
        case .y:
            return AnimationKeyPaths.positionY
        case .origin:
            return AnimationKeyPaths.boundsOrigin
        case .originX:
            return AnimationKeyPaths.boundsOriginX
        case .originY:
            return AnimationKeyPaths.boundsOriginY
        case .size:
            return AnimationKeyPaths.boundsSize
        case .sizeWidth:
            return AnimationKeyPaths.boundsSizeWidth
        case .sizeHeight:
            return AnimationKeyPaths.boundsSizeHeight
        @unknown default:
            return ""
        }
    }
    
}

internal struct AnimationKeyPaths {
    
    static let anchorPoint: String = {
        return #keyPath(CALayer.anchorPoint)
    }()
    
    static let backgroundColor: String = {
        return #keyPath(CALayer.backgroundColor)
    }()
    
    static let borderColor: String = {
        return #keyPath(CALayer.borderColor)
    }()
    
    static let borderWidth: String = {
        return #keyPath(CALayer.borderWidth)
    }()
    
    static let bounds: String = {
        return #keyPath(CALayer.bounds)
    }()
    
    static let cornerRadius: String = {
        return #keyPath(CALayer.cornerRadius)
    }()
    
    static let mask: String = {
        return #keyPath(CALayer.mask)
    }()
    
    static let opacity: String = {
        return #keyPath(CALayer.opacity)
    }()
    
    static let hidden: String = {
        return #keyPath(CALayer.isHidden)
    }()
    
    static let masksToBounds: String = {
        return #keyPath(CALayer.masksToBounds)
    }()
    
    static let position: String = {
        return #keyPath(CALayer.position)
    }()
    
    static let shadowColor: String = {
        return #keyPath(CALayer.shadowColor)
    }()
    
    static let shadowOffset: String = {
        return #keyPath(CALayer.shadowOffset)
    }()
    
    static let shadowOpacity: String = {
        return #keyPath(CALayer.shadowOpacity)
    }()
    
    static let shadowPath: String = {
        return #keyPath(CALayer.shadowPath)
    }()
    
    static let transform: String = {
        return #keyPath(CALayer.transform)
    }()
    
    static let zPosition: String = {
        return #keyPath(CALayer.zPosition)
    }()
    
    static let fillColor: String = {
        return #keyPath(CAShapeLayer.fillColor)
    }()
    
    static let lineDashPhase: String = {
        return #keyPath(CAShapeLayer.lineDashPhase)
    }()
    
    static let lineWidth: String = {
        return #keyPath(CAShapeLayer.lineWidth)
    }()
    
    static let miterLimit: String = {
        return #keyPath(CAShapeLayer.miterLimit)
    }()
    
    static let strokeColor: String = {
        return #keyPath(CAShapeLayer.strokeColor)
    }()
    
    static let strokeStart: String = {
        return #keyPath(CAShapeLayer.strokeStart)
    }()
    
    static let strokeEnd: String = {
        return #keyPath(CAShapeLayer.strokeEnd)
    }()
    
    static let positionX: String = {
        return "\(#keyPath(CALayer.position)).x"
    }()
    
    static let positionY: String = {
        return "\(#keyPath(CALayer.position)).y"
    }()
    
    static let boundsOrigin: String = {
        return "\(#keyPath(CALayer.bounds)).origin"
    }()
    
    static let boundsOriginX: String = {
        return "\(#keyPath(CALayer.bounds)).origin.x"
    }()
    
    static let boundsOriginY: String = {
        return "\(#keyPath(CALayer.bounds)).origin.y"
    }()
    
    static let boundsSize: String = {
        return "\(#keyPath(CALayer.bounds)).size"
    }()
    
    static let boundsSizeWidth: String = {
        return "\(#keyPath(CALayer.bounds)).size.width"
    }()
    
    static let boundsSizeHeight: String = {
        return "\(#keyPath(CALayer.bounds)).size.height"
    }()
    
}

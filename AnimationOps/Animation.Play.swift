//
//  Animation.Play.swift
//  AnimationOps
//
//  Created by Haider Khan on 11/24/19.
//  Copyright © 2019 Haider Khan. All rights reserved.
//

import Foundation
import QuartzCore

extension Animating where Base: CALayer {
    
    @discardableResult
    public func play(for duration: TimeInterval,
                     delay: TimeInterval = 0.0,
                     timingFunction: CAMediaTimingFunction = CAMediaTimingFunction(name: .easeInEaseOut),
                     fillMode: CAMediaTimingFillMode = .forwards,
                     isRemovedOnCompletion: Bool = false,
                     completion: (() -> Void)? = nil) -> CAAnimationGroup {
        
        self.group.duration = duration
        self.group.beginTime = CACurrentMediaTime() + delay
        self.group.timingFunction = timingFunction
        self.group.fillMode = fillMode
        self.group.isRemovedOnCompletion = isRemovedOnCompletion
    
        CATransaction.setCompletionBlock { [weak base] in
            guard let weakLayer = base else { return }
            
            // Apply presentation properties
            if fillMode == .forwards,
                let presentation = weakLayer.presentation() {
                self.base.applyProperties(self.animationEnums, with: presentation)
            }
            
            // Call completion
            completion?()
        }
        
        // Add animation with unique id
        let id = String(ObjectIdentifier(self.group).hashValue)
        self.base.add(self.group, forKey: id)
        
        return self.group
    }
    
}

extension Animating where Base: View {
    
    @discardableResult
    public func play(for duration: TimeInterval,
                     delay: TimeInterval = 0.0,
                     timingFunction: CAMediaTimingFunction = CAMediaTimingFunction(name: .easeInEaseOut),
                     fillMode: CAMediaTimingFillMode = .forwards,
                     isRemovedOnCompletion: Bool = false,
                     completion: (() -> Void)? = nil) -> CAAnimationGroup {
        
        self.group.duration = duration
        self.group.beginTime = CACurrentMediaTime() + delay
        self.group.timingFunction = timingFunction
        self.group.fillMode = fillMode
        self.group.isRemovedOnCompletion = isRemovedOnCompletion
    
        CATransaction.setCompletionBlock { [weak base] in
            guard let weakLayer = base else { return }
            
            // Apply presentation properties
            if fillMode == .forwards,
                let presentation = weakLayer.layer.presentation() {
                self.base.layer.applyProperties(self.animationEnums, with: presentation)
            }
            
            // Call completion
            completion?()
        }
        
        // Add animation with unique id
        let id = String(ObjectIdentifier(self.group).hashValue)
        self.base.layer.add(self.group, forKey: id)
        
        return self.group 
    }
    
}

extension CALayer {
    
    internal func applyProperties(_ properties: [AnimationEnums],
                                  with presentation: CALayer) {
        for property in properties {
            switch property {
            case .anchorPoint:
                self.anchorPoint = presentation.anchorPoint
            case .backgroundColor:
                self.backgroundColor = presentation.backgroundColor
            case .borderColor:
                self.borderColor = presentation.borderColor
            case .borderWidth:
                self.borderWidth = presentation.borderWidth
            case .bounds:
                self.bounds = presentation.bounds
            case .cornerRadius:
                self.cornerRadius = presentation.cornerRadius
            case .mask:
                self.mask = presentation.mask
            case .hidden:
                self.isHidden = presentation.isHidden
            case .masksToBounds:
                self.masksToBounds = presentation.masksToBounds
            case .opacity:
                self.opacity = presentation.opacity
            case .position:
                self.position = presentation.position
            case .shadowColor:
                self.shadowColor = presentation.shadowColor
            case .shadowOffset:
                self.shadowOffset = presentation.shadowOffset
            case .shadowOpacity:
                self.shadowOpacity = presentation.shadowOpacity
            case .shadowPath:
                self.shadowPath = presentation.shadowPath
            case .transform:
                self.transform = presentation.transform
            case .zPosition:
                self.zPosition = presentation.zPosition
            case .fillColor:
                self.fillMode = presentation.fillMode
            case .lineDashPhase:
                if let shapeLayer = self as? CAShapeLayer,
                    let presentationShapeLayer = presentation as? CAShapeLayer {
                    shapeLayer.lineDashPhase = presentationShapeLayer.lineDashPhase
                }
            case .lineWidth:
                if let shapeLayer = self as? CAShapeLayer,
                    let presentationShapeLayer = presentation as? CAShapeLayer {
                    shapeLayer.lineWidth = presentationShapeLayer.lineWidth
                }
            case .miterLimit:
                 if let shapeLayer = self as? CAShapeLayer,
                     let presentationShapeLayer = presentation as? CAShapeLayer {
                     shapeLayer.miterLimit = presentationShapeLayer.miterLimit
                 }
            case .strokeColor:
                 if let shapeLayer = self as? CAShapeLayer,
                     let presentationShapeLayer = presentation as? CAShapeLayer {
                     shapeLayer.strokeColor = presentationShapeLayer.strokeColor
                 }
            case .strokeStart:
                 if let shapeLayer = self as? CAShapeLayer,
                     let presentationShapeLayer = presentation as? CAShapeLayer {
                     shapeLayer.strokeStart = presentationShapeLayer.strokeStart
                 }
            case .strokeEnd:
                 if let shapeLayer = self as? CAShapeLayer,
                     let presentationShapeLayer = presentation as? CAShapeLayer {
                     shapeLayer.strokeEnd = presentationShapeLayer.strokeEnd
                 }
            case .x:
                self.position.x = presentation.position.x
            case .y:
                self.position.y = presentation.position.y
            case .origin:
                self.bounds.origin = presentation.bounds.origin
            case .originX:
                self.bounds.origin.x = presentation.bounds.origin.x
            case .originY:
                self.bounds.origin.y = presentation.bounds.origin.y
            case .size:
                self.bounds.size = presentation.bounds.size
            case .sizeWidth:
                self.bounds.size.width = presentation.bounds.size.width
            case .sizeHeight:
                self.bounds.size.height = presentation.bounds.size.height
            @unknown default:
                break
            }
        }
    }
    
}

//
//  CornerRadius.swift
//  AnimationOps
//
//  Created by Haider Khan on 11/24/19.
//  Copyright © 2019 Haider Khan. All rights reserved.
//

import Foundation
import QuartzCore

extension Animating where Base: CALayer {
    
    @discardableResult
    public func cornerRadius(with radius: CGFloat) -> Animating<Base> {
        
        // 1. Declare type
        let type: AnimationEnums = .cornerRadius
        
        let from = self.base.cornerRadius.nsNumber
        let to = radius.nsNumber
        
        // 2. Create animation
        let cornerRadius = CABasicAnimation(keyPath: type.rawValue)
        cornerRadius.fromValue = from
        cornerRadius.toValue = to
        
        // 3. Add to group
        if group.animations == nil {
            group.animations = []
        }
        
        group.animations?.append(cornerRadius)
        
        // 4. return self
        return self
    }
    
}

extension Animating where Base: View {
    
    @discardableResult
    public func cornerRadius(with radius: CGFloat) -> Animating<Base> {
        
        // 1. Declare type
        let type: AnimationEnums = .cornerRadius
        
        let from = self.base.layer.cornerRadius.nsNumber
        let to = radius.nsNumber
        
        // 2. Create animation
        let cornerRadius = CABasicAnimation(keyPath: type.rawValue)
        cornerRadius.fromValue = from
        cornerRadius.toValue = to
        
        // 3. Add to group
        if group.animations == nil {
            group.animations = []
        }
        
        group.animations?.append(cornerRadius)
        
        // 4. return self
        return self
    }
    
}

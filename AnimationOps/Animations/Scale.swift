//
//  Scale.swift
//  AnimationOps
//
//  Created by Haider Khan on 11/24/19.
//  Copyright © 2019 Haider Khan. All rights reserved.
//

import Foundation
import QuartzCore

extension Animating where Base: CALayer {
    
    @discardableResult
    public func scale(width: CGFloat) -> Animating<Base> {
        return scale(
            width: width,
            height: self.base.bounds.size.height
        )
    }
    
    @discardableResult
    public func scale(height: CGFloat) -> Animating<Base> {
        return scale(
            width: self.base.bounds.size.width,
            height: height
        )
    }
    
    @discardableResult
    public func scale(width: CGFloat,
                      height: CGFloat) -> Animating<Base> {
        
        // 1. Declare type
        let type: AnimationEnums = .size
        
        let from = self.base.bounds.size
        let to = CGSize(width: width, height: height)
        
        // 2. Create animation
        let size = CABasicAnimation(keyPath: type.rawValue)
        size.fromValue = from.nsValue
        size.toValue = to.nsValue
        
        // 3. Add to group
        if group.animations == nil {
            group.animations = []
        }
        
        group.animations?.append(size)
        
        // 4. return self
        return self
    }
    
}

extension Animating where Base: View {
    
    @discardableResult
    public func scale(width: CGFloat) -> Animating<Base> {
        return scale(
            width: width,
            height: self.base.bounds.size.height
        )
    }
    
    @discardableResult
    public func scale(height: CGFloat) -> Animating<Base> {
        return scale(
            width: self.base.bounds.size.width,
            height: height
        )
    }
    
    @discardableResult
    public func scale(width: CGFloat,
                      height: CGFloat) -> Animating<Base> {
        
        // 1. Declare type
        let type: AnimationEnums = .size
        
        let from = self.base.layer.bounds.size
        let to = CGSize(width: width, height: height)
        
        // 2. Create animation
        let size = CABasicAnimation(keyPath: type.rawValue)
        size.fromValue = from.nsValue
        size.toValue = to.nsValue
        
        // 3. Add to group
        if group.animations == nil {
            group.animations = []
        }
        
        group.animations?.append(size)
        
        // 4. return self
        return self
    }
    
}

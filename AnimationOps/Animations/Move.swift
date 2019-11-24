//
//  Move.swift
//  AnimationOps
//
//  Created by Haider Khan on 11/24/19.
//  Copyright © 2019 Haider Khan. All rights reserved.
//

import Foundation
import QuartzCore

extension Animating where Base: CALayer {
    
    @discardableResult
    public func move(x: CGFloat) -> Animating<Base> {
        return move(
            x: x,
            y: self.base.bounds.origin.y
        )
    }
    
    @discardableResult
    public func move(y: CGFloat) -> Animating<Base> {
        return move(
            x: self.base.bounds.origin.x,
            y: y
        )
    }
    
    @discardableResult
    public func move(x: CGFloat,
                     y: CGFloat) -> Animating<Base> {
        
        // 1. Declare type
        let type: AnimationEnums = .origin
        
        let from = self.base.bounds.origin
        var to = from
        to.x += x
        to.y += y
        
        // 2. Create animation
        let move = CABasicAnimation(keyPath: type.rawValue)
        move.fromValue = from.nsValue
        move.toValue = to.nsValue
        
        // 3. Add to group
        if group.animations == nil {
            group.animations = []
        }
        
        group.animations?.append(move)
        
        // 4. return self
        return self
    }
    
}

extension Animating where Base: View {
    
    @discardableResult
    public func move(x: CGFloat) -> Animating<Base> {
        return move(
            x: x,
            y: self.base.bounds.origin.y
        )
    }
    
    @discardableResult
    public func move(y: CGFloat) -> Animating<Base> {
        return move(
            x: self.base.bounds.origin.x,
            y: y
        )
    }
    
    @discardableResult
    public func move(x: CGFloat,
                     y: CGFloat) -> Animating<Base> {
        
        // 1. Declare type
        let type: AnimationEnums = .origin
        
        let from = self.base.layer.bounds.origin
        var to = from
        to.x += x
        to.y += y
        
        // 2. Create animation
        let move = CABasicAnimation(keyPath: type.keyPath)
        move.fromValue = from.nsValue
        move.toValue = to.nsValue
        
        // 3. Add to group
        if group.animations == nil {
            group.animations = []
        }
        
        group.animations?.append(move)
        
        // 4. return self
        return self
    }
    
}


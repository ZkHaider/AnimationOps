//
//  Color.swift
//  AnimationOps
//
//  Created by Haider Khan on 11/24/19.
//  Copyright © 2019 Haider Khan. All rights reserved.
//

import Foundation
import QuartzCore
#if os(OSX)
import AppKit
typealias UIColor = NSColor
#elseif os(iOS)
import UIKit
#endif

extension Animating where Base: CALayer {
    
    @discardableResult
    public func backgroundColor(to color: UIColor) -> Animating<Base> {
        
        // 1. Declare type
        let type: AnimationEnums = .backgroundColor
        self.animationEnums.append(type)
        
        let from = self.base.backgroundColor
        let to = color.cgColor
        
        // 2. Create animation
        let backgroundColor = CABasicAnimation(keyPath: type.keyPath)
        backgroundColor.fromValue = from
        backgroundColor.toValue = to
        
        // 3. Add to group
        if group.animations == nil {
            group.animations = []
        }
        
        group.animations?.append(backgroundColor)
        
        // 4. return self
        return self
    }
    
    @discardableResult
    public func borderColor(to color: UIColor) -> Animating<Base> {
        
        // 1. Declare type
        let type: AnimationEnums = .borderColor
        self.animationEnums.append(type)
        
        let from = self.base.borderColor
        let to = color.cgColor
        
        // 2. Create animation
        let borderColor = CABasicAnimation(keyPath: type.keyPath)
        borderColor.fromValue = from
        borderColor.toValue = to
        
        // 3. Add to group
        if group.animations == nil {
            group.animations = []
        }
        
        group.animations?.append(borderColor)
        
        // 4. return self
        return self
    }
    
    @discardableResult
    public func shadowColor(to color: UIColor) -> Animating<Base> {
        
        // 1. Declare type
        let type: AnimationEnums = .shadowColor
        self.animationEnums.append(type)
        
        let from = self.base.shadowColor
        let to = color.cgColor
        
        // 2. Create animation
        let shadowColor = CABasicAnimation(keyPath: type.keyPath)
        shadowColor.fromValue = from
        shadowColor.toValue = to
        
        // 3. Add to group
        if group.animations == nil {
            group.animations = []
        }
        
        group.animations?.append(shadowColor)
        
        // 4. return self
        return self
    }
    
}

extension Animating where Base: CAShapeLayer {
    
    @discardableResult
    public func fillColor(to color: UIColor) -> Animating<Base> {
        
        // 1. Declare type
        let type: AnimationEnums = .fillColor
        self.animationEnums.append(type)
        
        let from = self.base.fillColor
        let to = color.cgColor
        
        // 2. Create animation
        let fillColor = CABasicAnimation(keyPath: type.keyPath)
        fillColor.fromValue = from
        fillColor.toValue = to
        
        // 3. Add to group
        if group.animations == nil {
            group.animations = []
        }
        
        group.animations?.append(fillColor)
        
        // 4. return self
        return self
    }
    
    @discardableResult
    public func strokeColor(to color: UIColor) -> Animating<Base> {
        
        // 1. Declare type
        let type: AnimationEnums = .strokeColor
        self.animationEnums.append(type)
        
        let from = self.base.strokeColor
        let to = color.cgColor
        
        // 2. Create animation
        let strokeColor = CABasicAnimation(keyPath: type.keyPath)
        strokeColor.fromValue = from
        strokeColor.toValue = to
        
        // 3. Add to group
        if group.animations == nil {
            group.animations = []
        }
        
        group.animations?.append(strokeColor)
        
        // 4. return self
        return self
    }
    
}

extension Animating where Base: View {
    
    @discardableResult
    public func backgroundColor(to color: UIColor) -> Animating<Base> {
        
        // 1. Declare type
        let type: AnimationEnums = .backgroundColor
        self.animationEnums.append(type)
        
        let from = self.base.layer.backgroundColor
        let to = color.cgColor
        
        // 2. Create animation
        let backgroundColor = CABasicAnimation(keyPath: type.keyPath)
        backgroundColor.fromValue = from
        backgroundColor.toValue = to
        
        // 3. Add to group
        if group.animations == nil {
            group.animations = []
        }
        
        group.animations?.append(backgroundColor)
        
        // 4. return self
        return self
    }
    
    @discardableResult
    public func borderColor(to color: UIColor) -> Animating<Base> {
        
        // 1. Declare type
        let type: AnimationEnums = .borderColor
        self.animationEnums.append(type)
        
        let from = self.base.layer.borderColor
        let to = color.cgColor
        
        // 2. Create animation
        let borderColor = CABasicAnimation(keyPath: type.keyPath)
        borderColor.fromValue = from
        borderColor.toValue = to
        
        // 3. Add to group
        if group.animations == nil {
            group.animations = []
        }
        
        group.animations?.append(borderColor)
        
        // 4. return self
        return self
    }
    
    @discardableResult
    public func shadowColor(to color: UIColor) -> Animating<Base> {
        
        // 1. Declare type
        let type: AnimationEnums = .shadowColor
        self.animationEnums.append(type)
        
        let from = self.base.layer.shadowColor
        let to = color.cgColor
        
        // 2. Create animation
        let shadowColor = CABasicAnimation(keyPath: type.keyPath)
        shadowColor.fromValue = from
        shadowColor.toValue = to
        
        // 3. Add to group
        if group.animations == nil {
            group.animations = []
        }
        
        group.animations?.append(shadowColor)
        
        // 4. return self
        return self
    }
    
}

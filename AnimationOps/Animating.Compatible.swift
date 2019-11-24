//
//  Animatable.Compatible.swift
//  AnimationOps
//
//  Created by Haider Khan on 11/24/19.
//  Copyright © 2019 Haider Khan. All rights reserved.
//

import Foundation

/// Allows conformance to Animating
public protocol AnimatingCompatible: class {
    
    associatedtype CompatibleType
    
    /// Core access to Animating and group animations
    var ax: Animating<CompatibleType> { get }
}

extension AnimatingCompatible {
    
    public var ax: Animating<Self> {
        get {
            return Animating(self)
        }
    }
    
}

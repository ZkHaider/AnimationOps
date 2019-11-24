//
//  Animating.swift
//  AnimationOps
//
//  Created by Haider Khan on 11/24/19.
//  Copyright © 2019 Haider Khan. All rights reserved.
//

import Foundation
import QuartzCore

public final class Animating<Base> {
    
    // MARK: - Attributes 
    
    /// Base type which is animatable
    public let base: Base
    
    /// We will be utilizing CAAnimations so hold an overall CAAnimationGroup
    internal let group: CAAnimationGroup = CAAnimationGroup()
    
    /// Group of enums identifying which animations were used, this helps us set the presentation
    /// layer properties to the base layer without applying all the properties
    internal var animationEnums: [AnimationEnums] = []
    
    // MARK: - Init
    
    public init(_ base: Base) {
        self.base = base
    }
    
}

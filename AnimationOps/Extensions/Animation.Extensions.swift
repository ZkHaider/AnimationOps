//
//  Animation.Extensions.swift
//  AnimationOps
//
//  Created by Haider Khan on 11/24/19.
//  Copyright © 2019 Haider Khan. All rights reserved.
//

import Foundation
#if os(iOS)
import UIKit
#elseif os(OSX)
import AppKit
#endif

extension CGRect {
    
    internal var nsValue: NSValue {
        return NSValue(cgRect: self)
    }
    
}

extension CGSize {
    
    internal var nsValue: NSValue {
        return NSValue(cgSize: self)
    }
    
}

extension CGPoint {
    
    internal var nsValue: NSValue {
        return NSValue(cgPoint: self)
    }
    
}

extension CGFloat {
    
    internal var nsNumber: NSNumber {
        return NSNumber(value: Float(self))
    }
    
}

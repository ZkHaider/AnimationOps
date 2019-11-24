//
//  ViewController.swift
//  Example
//
//  Created by Haider Khan on 11/24/19.
//  Copyright © 2019 Haider Khan. All rights reserved.
//

import Foundation
import UIKit
import AnimationOps

final class ViewController: UIViewController {
    
    lazy var shapeLayer: CAShapeLayer = {
        let layer = CAShapeLayer()
        layer.frame.size = CGSize(width: 56.0, height: 56.0)
        layer.backgroundColor = UIColor.green.cgColor
        return layer
    }()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.view.layer.addSublayer(self.shapeLayer)
        
        self.shapeLayer.ax
            .move(x: 200.0)
            .play(for: 0.4, delay: 2.0)
    }
    
    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        
        self.shapeLayer.position = CGPoint(x: self.view.bounds.midX, y: self.view.bounds.midY)
    }
    
}

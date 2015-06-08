//
//  BezierPathsView.swift
//  Dropit
//
//  Created by Omar Faruqe on 2015-06-08.
//  Copyright (c) 2015 Omar Faruqe. All rights reserved.
//

import UIKit

class BezierPathsView: UIView {

    
    // Only override drawRect: if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    
    private var bazierPaths = [String:UIBezierPath]()
    
    func setPath(path: UIBezierPath?, named name:String){
        bazierPaths[name] = path
        setNeedsDisplay()
    }
    
    override func drawRect(rect: CGRect) {
        // Drawing code
        for (_, path) in bazierPaths {
            path.stroke()
        }
    }


}

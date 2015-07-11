//
//  LionCub.swift
//  LionsAndTigers
//
//  Created by Hurewitz, Matthew on 7/10/15.
//  Copyright (c) 2015 Hurewitz, Matthew. All rights reserved.
//

import Foundation
import UIKit

class LionCub:Lion {
    
    func rubLionCubsBelly () {
    println("Lion cub snuggle and be happy")
    }
    
    override func roar() {
        super.roar()
        println("Lion cub: growl! growl!")
    }
}
//
//  Tiger.swift
//  LionsAndTigers
//
//  Created by Hurewitz, Matthew on 6/16/15.
//  Copyright (c) 2015 Hurewitz, Matthew. All rights reserved.
//

import Foundation
import UIKit

struct Tiger {
    var age = 0
    var name = ""
    var breed = ""
    var image = UIImage(named:"")
    
    func chuff(){
        println("Tiger: Chuff Chuff")
    }
    
    func chuffNumberOfTimes(numberofTimes: Int) {
        for var chuff = 0; chuff < numberofTimes; ++chuff{
            self.chuff()
        }
    }
}
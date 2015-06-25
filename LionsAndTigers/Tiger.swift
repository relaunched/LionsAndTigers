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
    
    func chuffNumberOfTimes(numberOfTimes: Int) {
        for var chuff = 0; chuff < numberOfTimes; ++chuff{
            self.chuff()
        }
    }
    
    func chuffNumberOfTimes(numberOfTimes: Int, isLoud: Bool){
        
        for var chuffTimes = 1; chuffTimes <= numberOfTimes; chuffTimes++ {
            if isLoud {
                chuff()
            }
            
            else {
                println("Tiger: purr, purr")
            }
        }
        
        
    }
    
    func ageInYearsFromAge(regularAge: Int) -> Int {
        let newAge = regularAge * 3
        return newAge
    }
}
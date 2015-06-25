//
//  ViewController.swift
//  LionsAndTigers
//
//  Created by Hurewitz, Matthew on 6/15/15.
//  Copyright (c) 2015 Hurewitz, Matthew. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var nameLabel: UILabel!
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var breedLabel: UILabel!
    
    var myTigers:[Tiger] = []
    
    var currentIndex = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        var myTiger = Tiger()
        myTiger.name = "Tigger"
        myTiger.breed = "Bengal"
        myTiger.age = 3
        myTiger.image = UIImage(named: "BengalTiger.jpg")
        
        myTiger.age = myTiger.ageInYearsFromAge(myTiger.age)
        
        myTiger.chuff()
        myTiger.chuffNumberOfTimes(5, isLoud: false)
        
        println("My Tiger's name is: \(myTiger.name), it's age is: \(myTiger.age), it's breed is: \(myTiger.age), and its image is \(myTiger.image)")
        
        myImageView.image = myTiger.image
        nameLabel.text = myTiger.name
        ageLabel.text = "\(myTiger.age)"
        breedLabel.text = myTiger.breed
        
        var secondTiger = Tiger()
        secondTiger.name = "Tigress"
        secondTiger.breed = "Indochinese Tiger"
        secondTiger.age = 2
        secondTiger.image = UIImage(named: "IndochineseTiger.jpg")
        
        secondTiger.age = secondTiger.ageInYearsFromAge(secondTiger.age)
        secondTiger.chuff()
        
        var thirdTiger = Tiger()
        thirdTiger.name = "Jacob"
        thirdTiger.breed = "Malayan Tiger"
        thirdTiger.age = 4
        thirdTiger.image = UIImage(named: "MalayanTiger.jpg")
        
        thirdTiger.age = thirdTiger.ageInYearsFromAge(thirdTiger.age)
        
        var fourthTiger = Tiger()
        fourthTiger.name = "Spar"
        fourthTiger.breed = "Siberian Tiger"
        fourthTiger.age = 5
        fourthTiger.image = UIImage(named: "SiberianTiger.jpg")
        
        fourthTiger.age = fourthTiger.ageInYearsFromAge(fourthTiger.age)
        
        myTigers.append(myTiger)
        myTigers += [secondTiger, thirdTiger, fourthTiger]
        
        myTiger.chuffNumberOfTimes(3)
        secondTiger.chuffNumberOfTimes(3)
        
        var currentIndex = "String"
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    @IBAction func nextToolbarButtonItemPressed(sender: UIBarButtonItem) {
        
        var randomIndex: Int
        
        do {
                randomIndex = Int(arc4random_uniform(UInt32(myTigers.count)))
        
        } while currentIndex == randomIndex
        
        currentIndex = randomIndex
        
        println(randomIndex)
        
        let tiger = myTigers[randomIndex]
        
        UIView.transitionWithView(self.view, duration: 2, options: UIViewAnimationOptions.TransitionCrossDissolve, animations: {
            self.myImageView.image = tiger.image
            self.nameLabel.text = tiger.name
            self.ageLabel.text = "\(tiger.age)"
            self.breedLabel.text = tiger.breed
            }, completion: {
                (finished: Bool) -> () in
        })
        }
    
        
//        imageView.image = tiger.image
//        nameLabel.text = tiger.name
//        ageLabel.text = "\(tiger.age)"
//        breedLabel.text = tiger.breed
   
}



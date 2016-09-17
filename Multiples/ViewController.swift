//
//  ViewController.swift
//  Multiples
//
//  Created by Gladys Umali on 9/15/16.
//  Copyright © 2016 Joy Umali. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    

    // git test
    

    // Outlets on first screen
    @IBOutlet weak var logoImg: UIImageView!
    
    @IBOutlet weak var whatMultipleTxt: UITextField!
    
    @IBOutlet weak var playButton: UIButton!
    
    // Outlets on second screen (after Play Button Tapped)
    
    @IBOutlet weak var addText: UILabel!
    
    @IBOutlet weak var addButton: UIButton!
    
    // Global Properties
    var sum = 0
    var currentSum = 0
    
    func multipleEqn() -> String {
        
        let multiple = Int(whatMultipleTxt.text!)!
        let currentSum = sum + multiple
        //sum = currentSum
        
        let equation = "\(sum) + \(multiple) = \(currentSum)"
        return (equation)
        
        //return ("\(sum) + \(multiple) = \(currentSum)")
        
        
        
    }
    
    
    
    // Actions!!
    
    
    @IBAction func tapPlayButton(sender: AnyObject) {
        
        if whatMultipleTxt.text != nil && whatMultipleTxt.text != "" {
            
            logoImg.hidden = true
            whatMultipleTxt.hidden = true
            playButton.hidden = true
            
            addText.hidden = false
            addButton.hidden = false
   
        }
    }
    
    
    @IBAction func tapAddButton(sender: AnyObject) {
        
        addText.text = multipleEqn()
        //addText.text = String(multipleEqn().currentSum)
        //sum = currentSum
        
        
    }
    

    

}


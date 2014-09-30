//
//  ViewController.swift
//  iOS 101
//
//  Created by Madison DeHart on 9/29/14.
//  Copyright (c) 2014 Madison DeHart. All rights reserved.
//


import UIKit

class ViewController: UIViewController {
    
    let quote = "Do you see any Teletubbies in here? Do you see a slender plastic tag clipped to my shirt with my name printed on it? Do you see a little Asian child with a blank expression on his face sitting outside on a mechanical helicopter that shakes when you put quarters in it? No? Well, that's what you see at a toy store. And you must think you're in a toy store, because you're here shopping for an infant named Jeb. Yeah, I like animals better than people sometimes... Especially dogs. Dogs are the best. Every time you come home, they act like they haven't seen you in a year. And the good thing about dogs... is they got different dogs for different people. Like pit bulls. The dog of dogs. Pit bull can be the right man's best friend... or the wrong man's worst enemy. You going to give me a dog for a pet, give me a pit bull. Give me... Raoul. Right, Omar? Give me Raoul."
    
    @IBOutlet var quoteLabel:UILabel?
    @IBOutlet var saySomethingButton:UIButton?
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func changeLabelText() {
        // Multiple ways to deal with optionals
        quoteLabel?.text = quote
        
        /*
        // These are the same thing, really
        if let unwrappedQuoteLabel = quoteLabel {
        unwrappedQuoteLabel.text = quote
        }
        
        if quoteLabel != nil {
        quoteLabel!.text = quote
        }
        */
        
    }
    
}


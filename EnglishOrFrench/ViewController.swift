//
//  ViewController.swift
//  EnglishOrFrench
//
//  Created by Russell Gordon on 2019-11-26.
//  Copyright © 2019 Russell Gordon. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    // MARK: Properties and Outlets
    @IBOutlet weak var inputText: UITextView!
    @IBOutlet weak var outputResults: UILabel!

    // MARK: Initializers
    
    // MARK: Methods
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    // MARK: Actions
    @IBAction func analyze(_ sender: Any) {
        
        // 1. INPUT
        // Get text to analyze.
        // Must be non-empty input.
        guard let input = inputText.text, inputText.text.count > 0 else {
            outputResults.text = "Please enter text to analyze."
            return
        }
        
        // 2. PROCESS
        // Check each character.
        // Keep a count of characters of each type.
        var englishCharacterCount = 0
        var frenchCharacterCount = 0
        for character in input {
            
            switch character {
            case "t", "T":
                englishCharacterCount += 1
            case "s", "S":
                frenchCharacterCount += 1
            default:
                break
            }
            
        }
        
        // 3. OUTPUT
        // State the resulting probable language.
        if englishCharacterCount > frenchCharacterCount {
            outputResults.text = "This looks like English."
        } else {
            outputResults.text = "This looks like French."
        }
        
    }
    


}


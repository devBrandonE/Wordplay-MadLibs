//
//  FourthViewController.swift
//  Wordplay MadLibs
//
//  Created by Brandon Escobar on 10/16/19.
//  Copyright © 2019 Brandon Escobar. All rights reserved.
//

import UIKit

class FourthViewController: UIViewController {
    
    @IBOutlet weak var story: UILabel!
    var data = ""
    var madLibs = Words()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        story.text = madLibs.storyMaker()
    }
}

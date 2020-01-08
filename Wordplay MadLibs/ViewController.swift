//
//  ViewController.swift
//  Wordplay MadLibs
//
//  Created by Brandon Escobar on 10/16/19.
//  Copyright © 2019 Brandon Escobar. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var noun1: UITextField!
    @IBOutlet weak var noun2: UITextField!
    @IBOutlet weak var noun3: UITextField!
    @IBOutlet weak var noun4: UITextField!
    @IBOutlet weak var juicyTreeMadeStuff: UITextField!
    var data = ""
    var madLibs = Words()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        print(data)
    }
     
    @IBAction func onButtonTapped(_ sender: Any) {
        if noun1.text!.count != 0 && noun2.text!.count != 0 && noun3.text!.count != 0 && noun4.text!.count != 0 && juicyTreeMadeStuff.text!.count != 0 {
            madLibs.nounOne = noun1.text!
            madLibs.nounTwo = noun2.text!
            madLibs.nounThree = noun3.text!
            madLibs.nounFour = noun4.text!
            madLibs.fruit = juicyTreeMadeStuff.text!
            performSegue(withIdentifier: "firstToSecond", sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dvc = segue.destination as! SecondViewController
        dvc.data = "This came from the First VC"
        dvc.madLibs = self.madLibs
    }
}


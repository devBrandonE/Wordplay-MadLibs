//
//  NounViewController.swift
//  Wordplay MadLibs
//
//  Created by Brandon Escobar on 10/16/19.
//  Copyright © 2019 Brandon Escobar. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }
    
    @IBOutlet weak var adj1: UITextField!
    @IBOutlet weak var adj2: UITextField!
    @IBOutlet weak var adj3: UITextField!
    @IBOutlet weak var adj4: UITextField!
    var data = ""
    var madLibs = Words()
    
    override func viewWillAppear(_ animated: Bool) {
        print(data)
    }
    
    @IBAction func tappedButton(_ sender: Any) {
        if adj1.text!.count != 0 && adj2.text!.count != 0 && adj3.text!.count != 0 && adj4.text!.count != 0 {
            madLibs.AdjectiveOne = adj1.text!
            madLibs.AdjectiveTwo = adj2.text!
            madLibs.AdjectiveThree = adj3.text!
            madLibs.AdjectiveFour = adj4.text!
            performSegue(withIdentifier: "secondToThird", sender: self)
        }
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dvc = segue.destination as! ThirdViewController
        dvc.data = "This came from the Second VC"
        dvc.madLibs = self.madLibs
    }
    
}

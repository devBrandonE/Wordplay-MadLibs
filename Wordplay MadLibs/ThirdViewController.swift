//
//  ThirdViewController.swift
//  Wordplay MadLibs
//
//  Created by Brandon Escobar on 10/16/19.
//  Copyright © 2019 Brandon Escobar. All rights reserved.
//

import UIKit

class ThirdViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBOutlet weak var numOne: UITextField!
    @IBOutlet weak var numTwo: UITextField!
    @IBOutlet weak var numThree: UITextField!
    @IBOutlet weak var numFour: UITextField!
    var data = ""
    var madLibs = Words()
    
    override func viewWillAppear(_ animated: Bool) {
        print(data)
    }
    
    @IBAction func onTapNext(_ sender: Any) {
        if numOne.text!.count != 0 && numTwo.text!.count != 0 && numThree.text!.count != 0 && numFour.text!.count != 0 {
            madLibs.num1 = numOne.text!
            madLibs.num2 = numTwo.text!
            madLibs.num3 = numThree.text!
            madLibs.num4 = numFour.text!
            performSegue(withIdentifier: "thirdToStory", sender: self)
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let dvc = segue.destination as! FourthViewController
        dvc.data = "This came from the Third VC"
        dvc.madLibs = self.madLibs
    }
}

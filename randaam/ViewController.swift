//
//  ViewController.swift
//  randaam
//
//  Created by Sem Pruijs on 06-02-18.
//  Copyright © 2018 Sem Pruijs. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var fulljobLabel: UILabel!
    @IBOutlet weak var salaryLabel: UILabel!
    
    // The person info generator
    let personInfoGenerator = PersonInfoGenerator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fulljobLabel.text = personInfoGenerator.generateJob()
    }

    @IBAction func screenTapped(_ sender: UITapGestureRecognizer) {
        fulljobLabel.text = personInfoGenerator.generateJob()
        salaryLabel.text = String(personInfoGenerator.generateSalary())
    }
}

























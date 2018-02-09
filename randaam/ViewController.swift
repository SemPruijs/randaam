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
        let salary = personInfoGenerator.generateSalary()
        if salary >= 990 {
            salaryLabel.textColor = UIColor.purple
        } else if salary >= 900 {
            salaryLabel.textColor = UIColor.cyan
        } else if salary >= 600 {
            salaryLabel.textColor = UIColor.green
        } else if salary >= 400 {
            salaryLabel.textColor = UIColor.yellow
        } else if salary >= 200 {
            salaryLabel.textColor = UIColor.orange
        } else if salary >= 0 {
            salaryLabel.textColor = UIColor.red
        }
     
        fulljobLabel.text = personInfoGenerator.generateJob()
        salaryLabel.text = "€\(salary)/week"
        
    }
    
}





















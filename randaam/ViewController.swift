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
    @IBOutlet weak var ageLabel: UILabel!
    @IBOutlet weak var raretyLabel: UILabel!
    @IBOutlet weak var logoLabel: UILabel!
    
    // The person info generator
    let personInfoGenerator = PersonInfoGenerator()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        fulljobLabel.text = personInfoGenerator.generateJob()
        
    }

    
    
    @IBAction func screenTapped(_ sender: UITapGestureRecognizer) {
        
        let age = generateAge()
        
        let salary = personInfoGenerator.generateSalary()
       
        
        switch salary {
        case 1..<200:
                salaryLabel.textColor = #colorLiteral(red: 0.8358970207, green: 0.1556696349, blue: 0, alpha: 1)
        case 200..<400:
                salaryLabel.textColor = #colorLiteral(red: 1, green: 0.5781051517, blue: 0, alpha: 1)
        case 400..<600:
                salaryLabel.textColor = #colorLiteral(red: 0.5183701748, green: 0.6004124365, blue: 0, alpha: 1)
        case 600..<900:
                salaryLabel.textColor = #colorLiteral(red: 0.2457480216, green: 1, blue: 0, alpha: 1)
        case 900..<990:
                salaryLabel.textColor = #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1)
        case 990..<999:
                salaryLabel.textColor = #colorLiteral(red: 0.9662646678, green: 0.09260331458, blue: 0.9686274529, alpha: 1)
    
        default: salaryLabel.textColor = #colorLiteral(red: 0.4190762824, green: 0.005558046088, blue: 0.3883012486, alpha: 1)
            
        }
        
        // Change background coor and rarity depending on text color
        switch salaryLabel.textColor {
        case #colorLiteral(red: 0.4190762824, green: 0.005558046088, blue: 0.3883012486, alpha: 1):
            raretyLabel.text = "zeldzaamheid = legendarisch!!!"
            self.view.backgroundColor = #colorLiteral(red: 0.04830179749, green: 0.0630759631, blue: 0.433653236, alpha: 1)
            salaryLabel.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            fulljobLabel.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            ageLabel.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            raretyLabel.textColor = #colorLiteral(red: 1, green: 1, blue: 1, alpha: 1)
            logoLabel.textColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
        case #colorLiteral(red: 0.9662646678, green: 0.09260331458, blue: 0.9686274529, alpha: 1): self.view.backgroundColor = #colorLiteral(red: 0, green: 0.6198842005, blue: 0.005984226446, alpha: 1)
            salaryLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            fulljobLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            ageLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            raretyLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            logoLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
        case #colorLiteral(red: 0.2588235438, green: 0.7568627596, blue: 0.9686274529, alpha: 1): raretyLabel.text = "zeldzaamheid = zeldzaam"
            self.view.backgroundColor =  #colorLiteral(red: 1, green: 0.5781051517, blue: 0, alpha: 1)
        default: raretyLabel.text = "zeldzaamheid = normaal"
            self.view.backgroundColor = #colorLiteral(red: 1.0, green: 1.0, blue: 1.0, alpha: 1.0)
            fulljobLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            ageLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            raretyLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            logoLabel.textColor = #colorLiteral(red: 0, green: 0, blue: 0, alpha: 1)
            
        }
        
        
        
        
        
        
        fulljobLabel.text = personInfoGenerator.generateJob()
        salaryLabel.text = "€\(salary)/week"
        ageLabel.text = "\(age) jaar oud"
        
    }
    
}





















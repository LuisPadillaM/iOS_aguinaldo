//
//  ViewController.swift
//  iosTrackerLdpm
//
//  Created by Luis Padilla  on 12/14/18.
//  Copyright © 2018 Luis Padilla . All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var fullName: UILabel!
    @IBOutlet weak var aguinaldo: UITextField!
    var nameHolder = "";
    var firstLastNameHolder = "";
    var secondLastNameHolder = "";
    var months = 0;
    var salary = 0;
    var aguinaldoHolder = 0;
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    func updateFullName() {
        fullName.text = "\(nameHolder) \(firstLastNameHolder) \(secondLastNameHolder)"
    }
    
    func calcAguinaldo() {
        if(months == 0 || salary == 0) {
            return;
        }
        aguinaldoHolder = months * salary / 12;
        aguinaldo.text = "\(aguinaldoHolder)"
    }

    @IBAction func updateName(_ sender: UITextField) {
        nameHolder = sender.text!;
        updateFullName();
    }
    @IBAction func updatefirstLastName(_ sender: UITextField) {
        firstLastNameHolder = sender.text!;
         updateFullName();
    }
    @IBAction func updateSecondLastName(_ sender: UITextField) {
         secondLastNameHolder = sender.text!;
         updateFullName();
    }
    @IBAction func months(_ sender: UITextField) {
        guard let month = Int(sender.text!) else {
            self.months = 0;
            return;
        }
        self.months = Int(month);
        calcAguinaldo();
    }
    @IBAction func Salary(_ sender: UITextField) {
        guard let salary = Int(sender.text!) else {
            self.salary = 0;
             return;
        }
        self.salary = salary;
        calcAguinaldo();
    }
}


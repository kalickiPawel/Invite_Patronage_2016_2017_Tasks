//
//  SecondViewController.swift
//  Task Lista
//
//  Created by Paweł Kalicki on 21/01/2017.
//  Copyright © 2017 Paweł Kalicki. All rights reserved.
//

import UIKit

class SecondViewController: UIViewController {

    @IBOutlet weak var wejscie: UITextField!
    
    @IBAction func dodaj(_ sender: Any)
    {
        if(wejscie.text != "")
        {
            lista.append(wejscie.text!)
            wejscie.text = ""
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


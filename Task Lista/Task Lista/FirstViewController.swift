//
//  FirstViewController.swift
//  Task Lista
//
//  Created by Paweł Kalicki on 21/01/2017.
//  Copyright © 2017 Paweł Kalicki. All rights reserved.
//

import UIKit

var lista = ["Zrob zakupy", "Wyprowadz psa", "Wynies smieci", "Isc na pizze"]

class FirstViewController: UIViewController, UITableViewDelegate, UITableViewDataSource{
    
    @IBOutlet weak var widokTabeli: UITableView!
    
    public func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int
    {
        return (lista.count)
    }
    
    public func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell
    {
        let cell = UITableViewCell(style: UITableViewCellStyle.default, reuseIdentifier: "cell")
        cell.textLabel?.text = lista[indexPath.row]
        
        return (cell)
    }
    
    func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath)
    {
        if editingStyle == UITableViewCellEditingStyle.delete
        {
            lista.remove(at: indexPath.row)
            widokTabeli.reloadData()
        }
    }
    
    override func viewDidAppear(_ animated: Bool) {
        widokTabeli.reloadData()
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


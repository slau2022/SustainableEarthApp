//
//  Actions.swift
//  SustainableEarthApp
//
//  Created by Sophia Lau on 10/30/20.
//  Copyright © 2020 Sophia Lau. All rights reserved.
//

import UIKit

class actionData {
    var actionName: String?
    var actionCoins: String?
    
    init(acName:String, acCoins:String) {
        self.actionName = acName
        self.actionCoins = acCoins
    }
}

class Actions: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView: UITableView!
    
    var actionArray = [actionData]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let compostSchatz = actionData(acName: "Compost at Schatz", acCoins: "10")
        actionArray.append(compostSchatz)
        
        let fillWaterbottle = actionData(acName: "Refill reusable waterbottle", acCoins: "20")
        actionArray.append(fillWaterbottle)
        
        let shortShower = actionData(acName: "Take a 5 minute shower", acCoins: "5")
        actionArray.append(shortShower)
        
        let noMeat = actionData(acName: "Participate in 'No Meat Monday'", acCoins: "15")
        actionArray.append(noMeat)
        
        tableView.dataSource = self
        tableView.delegate = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return actionArray.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        var cell = tableView.dequeueReusableCell(withIdentifier: "tableView")
        if cell == nil {
            cell = UITableViewCell(style: .subtitle, reuseIdentifier: "tableView")
        }
        
        cell?.textLabel?.text = actionArray[indexPath.row].actionName
        cell?.detailTextLabel?.text = actionArray[indexPath.row].actionCoins
        
        return cell!
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        //tableView.deselectRow(at: indexPath, animated: true)
        performSegue(withIdentifier: "showDetail", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let destination = segue.destination as? DetailedActionVC {
            destination.action = actionArray[(tableView.indexPathForSelectedRow?.row)!]
        tableView.deselectRow(at: tableView.indexPathForSelectedRow!, animated: true)
        }
    }
    
    
    @IBOutlet weak var favoritesButton: UIButton!
    @IBOutlet weak var energyButton: UIButton!
    @IBOutlet weak var waterButton: UIButton!
    @IBOutlet weak var recycleButton: UIButton!
    
    
    
    
    
    
    
        
        
        
    // Do any additional setup after loading the view.

    
//
        

    // MARK: Actions
       

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */
    
//    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
//        if let destination = segue.destination as? DetailedActionVC {
//            destination.action = actionArray[(actionsTable.indexPathForSelectedRow?.row)!]
//        }
    }

    
    


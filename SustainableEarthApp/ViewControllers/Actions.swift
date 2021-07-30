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
    var actionDescription: String?
    var actionImageName: String?

    init(acName:String, acCoins:String, acDescription:String, acImgName:String) {
        self.actionName = acName
        self.actionCoins = acCoins
        self.actionDescription = acDescription
        self.actionImageName = acImgName
    }
}

class Actions: UIViewController, UITableViewDelegate, UITableViewDataSource {

    var actionArray = [actionData]()

    override func viewDidLoad() {
        super.viewDidLoad()

        let compost = actionData(acName: "Compost", acCoins: "10", acDescription: "blah blah", acImgName:"recycle")
        actionArray.append(compost)

        let fillWaterbottle = actionData(acName: "Refill reusable waterbottle", acCoins: "20", acDescription: "70 Million plastic water bottles are used in the United States each day and only 23% of them are recycled.\n\nAvoid single use plastic and refill your reusable water bottle", acImgName:"reusewaterbottle")
        actionArray.append(fillWaterbottle)

        let shortShower = actionData(acName: "Take a 5 minute shower", acCoins: "5", acDescription: "blah blah", acImgName:"recycle")
        actionArray.append(shortShower)

        let noMeat = actionData(acName: "Participate in 'No Meat Monday'", acCoins: "25", acDescription: "blah blah", acImgName:"recycle")
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


    
    


//
//  ActivitiesTableViewController.swift
//  MedicalOrganizer
//
//  Created by ZhouYiqin on 9/16/17.
//  Copyright © 2017 Yiqin Zhou. All rights reserved.
//

import UIKit

class ActivitiesTableViewController: UITableViewController, ActivityDelegate {
    
    var activities: [Activity]=[]
    
    var image: UIImage?
    
    
  
   
    
    
    
   

    override func viewDidLoad() {
        super.viewDidLoad()
        activities.append(Activity(date: "2017-6-9", description: "Blood test", image: image))
            
        activities.append(Activity(date: "2017-1-12", description: "Immunization",image:image))
        self.tableView.reloadData()
        

        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false

        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem()
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    // MARK: - Table view data source

    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return activities.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "activityCell", for: indexPath)
        as! ActivityTableViewCell
        
               // Configure the cell...
        
              cell.DateLabel?.text=activities[indexPath.row].date
              cell.DescriptionLabel?.text=activities[indexPath.row].description
        
              

        
                return cell
           }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?){
        if (segue.identifier == "newActivity"){
            let ActivityNavigationController = segue.destination as! UINavigationController
            let ActivityViewController = ActivityNavigationController.topViewController as! AddMedicalRecordsViewController
            
            ActivityViewController.delegate = self
            
        }
        
        
    }
    
    
    
    
    func readyToAdd(date: String, description: String,image:UIImage){
        self.activities.append(Activity(date:date, description:description,image:image))
        self.tableView?.reloadData()
    }
    
  
 
 
    
  
    
    
    
    

    
    
    /*
    // Override to support conditional editing of the table view.
    override func tableView(_ tableView: UITableView, canEditRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the specified item to be editable.
        return true
    }
    */

    /*
    // Override to support editing the table view.
    override func tableView(_ tableView: UITableView, commit editingStyle: UITableViewCellEditingStyle, forRowAt indexPath: IndexPath) {
        if editingStyle == .delete {
            // Delete the row from the data source
            tableView.deleteRows(at: [indexPath], with: .fade)
        } else if editingStyle == .insert {
            // Create a new instance of the appropriate class, insert it into the array, and add a new row to the table view
        }    
    }
    */

    /*
    // Override to support rearranging the table view.
    override func tableView(_ tableView: UITableView, moveRowAt fromIndexPath: IndexPath, to: IndexPath) {

    }
    */

    /*
    // Override to support conditional rearranging of the table view.
    override func tableView(_ tableView: UITableView, canMoveRowAt indexPath: IndexPath) -> Bool {
        // Return false if you do not want the item to be re-orderable.
        return true
    }
    */

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

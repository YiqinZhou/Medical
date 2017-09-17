//
//  AddUpcomingViewController.swift
//  MedicalOrganizer
//
//  Created by ZhouYiqin on 9/16/17.
//  Copyright © 2017 Yiqin Zhou. All rights reserved.
//

import UIKit



class AddUpcomingViewController: UIViewController, UIPickerViewDataSource, UIPickerViewDelegate {

    @IBOutlet weak var dateTrial: UILabel!
    @IBOutlet weak var finalTrial: UILabel!

    @IBOutlet weak var Description: UIPickerView!
    @IBOutlet weak var Location: UITextView!
    @IBOutlet weak var result: UILabel!
    @IBOutlet weak var Picker: UIPickerView!
    var delegate: upcomingDelegate?
    var activityTableViewController: UpcomingEventsTableViewController?
  
    @IBOutlet weak var pickDate: UIDatePicker!
   
    
    let types=["HPV","smallpox","Measles","Varicella","Influenza"]
    
    
   
    @IBAction func DatePickerAction(_ sender: Any) {
        
    }
    
    func numberOfComponents(in pickerView: UIPickerView) -> Int {
        return 1
    }
    
    func pickerView(_ pickerView: UIPickerView, numberOfRowsInComponent component: Int) -> Int {
        return types.count
    }
    
    func pickerView(_ pickerView: UIPickerView, titleForRow row: Int, forComponent component: Int) -> String?{
        return types[row]
    }
    
    func pickerView(_ pickerView: UIPickerView, didSelectRow row: Int, inComponent component: Int) {
        finalTrial.text=types[row]
    }
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    @IBAction func Save(_ sender: Any) {
        activityTableViewController?.readyToAdd(date: "2017-9-19", description: finalTrial.text!, time: "9:00", location:Location.text)
        
        delegate?.readyToAdd(date: "2017-9-19", description: finalTrial.text!, time: "9:00", location:Location.text)
        
        
        activityTableViewController?.tableView?.reloadData()
        
        
        self.dismiss(animated: true, completion: nil)
    }
    @IBOutlet weak var Save: UIButton!

    @IBAction func Cancel(_ sender: Any) {
        self.dismiss(animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

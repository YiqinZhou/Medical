//
//  AddMedicalRecordsViewController.swift
//  MedicalOrganizer
//
//  Created by ZhouYiqin on 9/16/17.
//  Copyright © 2017 Yiqin Zhou. All rights reserved.
//

import UIKit

class AddMedicalRecordsViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate {
    
    var delegate: ActivityDelegate?
    var activityTableViewController: ActivitiesTableViewController?

    @IBOutlet weak var Images: UIImageView!
    @IBOutlet weak var Description: UITextView!
    @IBOutlet weak var Date: UIDatePicker!
    @IBOutlet weak var Save: UIButton!
    @IBOutlet weak var Cancel: UIButton!
    
  
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func CancelEntry(_: Any) {
        self.dismiss(animated: true, completion: nil)
    }
   
    
    
    @IBAction func SaveEntry(_: Any) {
      
      
        activityTableViewController?.readyToAdd(date: "2016-9-19", description: Description.text, image: Images.image!)
    
        delegate?.readyToAdd(date: "2016-9-19", description: Description.text, image: Images.image!)
        
        
        activityTableViewController?.tableView?.reloadData()
        self.dismiss(animated: true, completion: nil)
        
        
    }
    
    
    
    @IBAction func AddRecords(_ sender: UIButton) {
        let imagePickerController = UIImagePickerController()
        imagePickerController.sourceType = .photoLibrary
        imagePickerController.delegate=self
        present(imagePickerController, animated: true, completion: nil)
    }
   
  
  
    
    //MARK: UIImagePickerControllerDelegate
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController){
        // Dismiss the picker if the user canceled.
        dismiss(animated: true, completion: nil)
    }
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [String : Any]) {
        
        // The info dictionary may contain multiple representations of the image. You want to use the original.
        guard let selectedImage = info[UIImagePickerControllerOriginalImage] as? UIImage else {
            fatalError("Expected a dictionary containing an image, but was provided the following: \(info)")
        }
        
        // Set photoImageView to display the selected image.
        Images.image = selectedImage
        
        // Dismiss the picker.
        dismiss(animated: true, completion: nil)
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

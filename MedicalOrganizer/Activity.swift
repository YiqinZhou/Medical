//
//  Record.swift
//  MedicalOrganizer
//
//  Created by ZhouYiqin on 9/16/17.
//  Copyright © 2017 Yiqin Zhou. All rights reserved.
//

import Foundation
import UIKit

class Activity{
    var date: String?
    var description: String?
    var time: String?
    var location: String?
    var image: UIImage?

   
   
    
    init(date: String?, description: String?, image:UIImage?) {
        self.date=date
        self.description=description
        self.image=image
        
        
    }
    
    
    init(date: String?, description: String?, time:String?, location: String?) {
        self.date=date
        self.description=description
        self.time=time
        self.location=location
        
    }
    
    
    

}




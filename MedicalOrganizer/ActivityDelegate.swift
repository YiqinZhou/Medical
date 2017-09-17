//
//  ActivityDelegate.swift
//  MedicalOrganizer
//
//  Created by ZhouYiqin on 9/17/17.
//  Copyright © 2017 Yiqin Zhou. All rights reserved.
//

import Foundation
import UIKit

protocol ActivityDelegate{
    func readyToAdd(date:String, description:String,image:UIImage)
}

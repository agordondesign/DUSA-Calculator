//
//  ViewAnalysis.swift
//  DUSA Calculator
//
//  Created by Interactive Director on 2/12/16.
//  Copyright © 2016 active mind fuel. All rights reserved.
//

import Foundation
import UIKit

class ViewAnalysis : UIViewController {
    
    @IBOutlet weak var AccountField: UITextField!
    
    override func viewDidLoad() {
        
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        let DestViewController : ViewSummary = segue.destinationViewController as! ViewSummary
       
        DestViewController.AccountLabelText = AccountField.text!
    }

}

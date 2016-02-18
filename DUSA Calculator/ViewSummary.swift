//
//  ViewSummary.swift
//  DUSA Calculator
//
//  Created by Interactive Director on 2/12/16.
//  Copyright © 2016 active mind fuel. All rights reserved.
//

import Foundation
import UIKit

class ViewSummary : UIViewController {
    
    @IBOutlet weak var AccountLabel: UILabel!
    var AccountLabelText = String()

    override func viewDidLoad() {
        
        AccountLabel.text = AccountLabelText
        
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    
        if let DestViewController = segue.destinationViewController as? ViewAnalysis {
            DestViewController.AccountField.text! = AccountLabelText
        }
        //let DestViewController : ViewSummary = segue.destinationViewController as! ViewSummary
        //DestViewController.AccountLabelText = AccountField.text!
    
    }

}
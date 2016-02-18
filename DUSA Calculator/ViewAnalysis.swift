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
    //var delegate:changeUserValueDelegate?
    var currentUserSecondVC = String()
    
    var currentUser = true {
        didSet {
            print(currentUser)
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        currentUser = false
    }
    
    func changeValue() {
        currentUser = !currentUser
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if let DestViewController = segue.destinationViewController as? ViewSummary {
            DestViewController.AccountLabelText = AccountField.text!
        }
        //let DestViewController : ViewSummary = segue.destinationViewController as! ViewSummary
        //DestViewController.AccountLabelText = AccountField.text!
    }

}

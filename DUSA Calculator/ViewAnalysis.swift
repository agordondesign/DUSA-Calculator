//
//  ViewAnalysis.swift
//  DUSA Calculator
//
//  Created by Interactive Director on 2/12/16.
//  Copyright © 2016 active mind fuel. All rights reserved.
//

import Foundation
import UIKit
//import SegueManager


class ViewAnalysis : UIViewController {
    
    //lazy var segueManager : SegueManager = { return SegueManager(viewController : self) }()
    
    //override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
    //    segueManager.prepareForSegue(segue)
    //}
    
    @IBOutlet weak var AccountField : UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func prepareForSegue(segue : UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "Summary" {
            if let DestViewController = segue.destinationViewController as? ViewSummary {
                DestViewController.AccountLabelText = AccountField.text!
            }
        }
        
        //let DestViewController : ViewSummary = segue.destinationViewController as! ViewSummary
        //DestViewController.AccountLabelText = AccountField.text!
        
    }
    
    
    /*
    segueManager.performSegue("Summary") { (details: DetailsViewController) in
        details.viewModel = DetailsViewModel("This is the details view model")
    }*/
}

/*
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        
    
        if segue.identifier == "Summary" {
            let DestViewController : ViewSummary = segue.destinationViewController as! ViewSummary
            DestViewController.AccountLabelText = AccountField.text!
        }
        
        if segue.identifier == "Summary" {
            let DestViewController : ViewSummary = segue.destinationViewController as! ViewSummary
            DestViewController.AccountLabelText = AccountField.text!
        }
        
        else if segue.identifier == "GPCI" {
            //let DestViewController : ViewGPCI = segue.destinationViewController as! ViewGPCI
            //DestViewController.AccountLabelText = AccountField.text!
        }
    
    }
*/


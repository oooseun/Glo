//
//  ViewController.swift
//  Glo
//
//  Created by Ope on 5/15/16.
//  Copyright © 2016 oooseun. All rights reserved.
//

import UIKit
import Alamofire

var swiftRequest = SwiftRequest()
var alarmtimeAsString = "20:00"
var alarmtime = NSDate()
var dateString = ""


class ViewController: UIViewController {


    @IBAction func setButton(sender: AnyObject) {
        
        swiftRequest.get("http://10.32.176.104:2015/getalarmtime", callback: {err, response, body in
            if( err == nil ) {
                print(body)
                alarmtimeAsString=body as! String
                let dateFormatter = NSDateFormatter()
                dateFormatter.dateFormat = "hh:mm a"
                if (alarmtimeAsString != ""){
                alarmtime = dateFormatter.dateFromString(alarmtimeAsString)!
                }
            }
        })
        DatePickerDialog().show("Alarm Time", doneButtonTitle: "Done", cancelButtonTitle: "Cancel", defaultDate: alarmtime , datePickerMode: .Time) {
            (date) -> Void in
            //self.textField.text = "\(date)"
            let dateFormatter = NSDateFormatter()
            dateFormatter.dateFormat = "hh:mm a" //format style. Browse online to get a format that fits your needs.
            dateString = dateFormatter.stringFromDate(date)
            print(dateString) //prints out 10:12 PM
            print(date)
            
        }
        

    }


    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    override func viewDidAppear(animated: Bool) {
        swiftRequest.get("http://10.32.176.104:2015/getalarmtime", callback: {err, response, body in
            if( err == nil ) {
                print(body)
                alarmtimeAsString=body as! String
                let dateFormatter = NSDateFormatter()
                dateFormatter.dateFormat = "hh:mm a"
                if (alarmtimeAsString != ""){
                    alarmtime = dateFormatter.dateFromString(alarmtimeAsString)!
                }            }
        })

    }
    override func   viewDidLoad() {
        swiftRequest.get("http://10.32.176.104:2015/getalarmtime", callback: {err, response, body in
            if( err == nil ) {
                print(body)
                alarmtimeAsString=body as! String
                let dateFormatter = NSDateFormatter()
                dateFormatter.dateFormat = "hh:mm a"
                if (alarmtimeAsString != ""){
                    alarmtime = dateFormatter.dateFromString(alarmtimeAsString)!
                }            }
        })

    }

}


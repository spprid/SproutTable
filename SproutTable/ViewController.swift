//
//  ViewController.swift
//  SproutTable
//
//  Created by Spprid on 2017. 11. 8..
//  Copyright © 2017년 Spprid. All rights reserved.
//

import UIKit
import Alamofire
import SwiftyJSON


class ViewController: UIViewController {

    @IBOutlet var lblLunch: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let jsonUrl = "https://gw.sinsago.co.kr/m/rice_json.aspx"
        
        Alamofire.request(jsonUrl).responseJSON(){ response in
            if response.result.isSuccess{
                let field = ["lunch", "dinner"]
                
                let json = JSON(response.result.value)
                let lunch = json["content"]["lunch"]
                
                var nm : String = ""
                
                for (_, JSON) in lunch
                {
                    nm += JSON.stringValue + "\r"
                }
                
                self.lblLunch.text = nm
            }
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


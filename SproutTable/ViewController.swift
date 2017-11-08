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

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let jsonUrl = "https://gw.sinsago.co.kr/m/rice_json.aspx"
        
        Alamofire.request(jsonUrl).responseJSON(){ response in
            
            print(response.result.isSuccess)
            
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


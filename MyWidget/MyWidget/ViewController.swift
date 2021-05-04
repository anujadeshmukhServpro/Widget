//
//  ViewController.swift
//  MyWidget
//
//  Created by Anuja Deshmukh on 01/05/21.
//

import UIKit
import WidgetKit
class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let clubData : ClubDataModel = ClubDataModel(clubName: "chiswik", clubId: "245")
        print(clubData)
        // Do any additional setup after loading the view.
    }


}


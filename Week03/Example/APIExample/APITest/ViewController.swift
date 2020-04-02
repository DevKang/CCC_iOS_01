//
//  ViewController.swift
//  APITest
//
//  Created by KANG HEE JONG on 2020/04/02.
//  Copyright © 2020 KANG HEE JONG. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        print("Before")
        API.shared.coffeeMenu(completionHandler: { menu in
            print(menu)
        })
        print("Ater")
    }
}


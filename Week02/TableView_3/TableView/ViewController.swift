//
//  ViewController.swift
//  TableView
//
//  Created by vlm on 2020/03/26.
//  Copyright © 2020 vlm. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource {
    
    
   let coffeeMenu:[String] = [
        
        "아메리키노",
        "카페라떼",
        "오늘의 커피",
        "콜드브루"
    ]
    
    let coffeePrice:[String] = [
        
        "3500원",
        "4000원",
        "3200원",
        "3800원"
    ]
    
    let food:[String] = [
        
        "BLT 샌드위치",
        "마카롱"
    
    ]
    
    let foodPrice:[String] = [
        
        "4000원",
        "4200원"
    
    ]

    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 2
    }
    
    func tableView(_ tableView: UITableView, titleForHeaderInSection
                                section: Int) -> String? {
        
       if section == 0{
            
            return "음료"
        } else {
            return "음식"
            
        }
       
    }
    
    func tableView(_ tableView: UITableView, titleForFooterInSection
                                section: Int) -> String? {
       if section == 0{
           
           return "더 많은 음료가 업데이트 예정입니다."
       } else {
           return "더 많은 음식이 업데이트 예정입니다."
           
       }
    }
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        if section == 0{
            
            return coffeeMenu.count
            
            
        } else {
            return food.count
            
        }
        
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "Basic", for: indexPath)
        
        if indexPath.section == 0 {

            cell.textLabel?.text = "음료 " + coffeeMenu[indexPath.row] + " " + coffeePrice[indexPath.row]
            
            return cell
        } else {

           cell.textLabel?.text = "음식 " + food[indexPath.row] + " " + foodPrice[indexPath.row]
            
            return cell
        }
        
       
        
        
    }
    
    
    
    @IBOutlet weak var tableView: UITableView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.tableView.dataSource = self
        // Do any additional setup after loading the view.
        
        
        
        
        
    }


}


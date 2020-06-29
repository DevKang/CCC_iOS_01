//
//  TabVCTemplate.swift
//  pray_111
//
//  Created by vlm on 2020/06/26.
//  Copyright © 2020 rubypaper. All rights reserved.
//

import Foundation
import UIKit

class TabVCTemplate : UIViewController {
    
    // placeholder for the tab's index
    var selectedTab = 0
    
    override func viewDidLoad() {
        
        // Sent from LeftMenu
        NotificationCenter.default.addObserver(self, selector: #selector(TabVCTemplate.openPushWindow), name: NSNotification.Name(rawValue: "openPushWindow"), object: nil)
        
    }
    
    deinit {
        NotificationCenter.default.removeObserver(self)
    }
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        NotificationCenter.default.post(name: NSNotification.Name(rawValue: "closeMenuViaNotification"), object: nil)
        view.endEditing(true)
    }
    
    @objc func openPushWindow(){
        if tabBarController?.selectedIndex == selectedTab {
            performSegue(withIdentifier: "openPushWindow", sender: nil)
        }
    }
    
}

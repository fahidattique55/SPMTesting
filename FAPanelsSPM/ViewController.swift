//
//  ViewController.swift
//  FAPanelsSPM
//
//  Created by fahid.attique on 06/12/2019.
//  Copyright © 2019 fahid.attique. All rights reserved.
//

import UIKit
import FAPanels
import Alamofire
import FAInteractiveView
import FAPopover


class ViewController: UIViewController, PopoverPresentable {

    func preferredContentsizeForPopover() -> CGSize {
        return CGSize(width: 200, height: 300)
    }
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        
//        InteractiveView.animationDuration = 2
        
        preferredContentSize = preferredContentsizeForPopover()
        
        
        
    }
    
    @IBAction func showSingleControllerInPopover(_ sender: UIButton) {
        
        let testViewController = UIStoryboard(name: "Main", bundle: nil).instantiateViewController(identifier: "ViewController")
        FAPopoverManager.show(testViewController, arrow: .up, sourceRect: sender.bounds, sourceView: sender)
    }
}


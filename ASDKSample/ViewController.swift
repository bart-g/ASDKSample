//
//  ViewController.swift
//  ASDKSample
//
//  Created by Bartosz Górka on 23/06/16.
//  Copyright © 2016 test. All rights reserved.
//

import UIKit
import AsyncDisplayKit

class ViewController: ASViewController {
    
    var mainNode: MainNode
    
    init() {
        mainNode = MainNode()
        super.init(node: mainNode)
        
    }
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}


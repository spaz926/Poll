//
//  PollingTabBarViewController.swift
//  Poll
//
//  Created by Jeffrey Carpenter on 4/22/19.
//  Copyright © 2019 Jeffrey Carpenter. All rights reserved.
//

import UIKit

class PollingTabBarViewController: UITabBarController {
    
    var voteController = VoteController()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        print(voteController.votes)
        
        for childVC in children {
            if let childViewController = childVC as? VoteControllerProtocol {
                childViewController.voteController = voteController
            }
        }

    }
    
}

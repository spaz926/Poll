//
//  CombinedViewController.swift
//  Poll
//
//  Created by Jeffrey Carpenter on 4/22/19.
//  Copyright © 2019 Jeffrey Carpenter. All rights reserved.
//

import UIKit

class CombinedViewController: UIViewController, VoteControllerProtocol {
    
    var voteController: VoteController?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // MARK: - Navigation

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        
        if segue.identifier == "Voting" || segue.identifier == "Results" {
            
            guard let destinationVC = segue.destination as? VoteControllerProtocol else { return }
            
            destinationVC.voteController = voteController
            
        }
        
    }

}

//
//  VotingViewController.swift
//  Poll
//
//  Created by Jeffrey Carpenter on 4/22/19.
//  Copyright © 2019 Jeffrey Carpenter. All rights reserved.
//

import UIKit

class VotingViewController: UIViewController, VoteControllerProtocol {
    
    var voteController: VoteController?

    @IBOutlet weak var nameTextField: UITextField!
    @IBOutlet weak var responseTextField: UITextField!
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    @IBAction func castVoteButtonPressed(_ sender: UIButton) {
        
        guard let name = nameTextField.text,
        let response = responseTextField.text
        else { return }
        
        voteController?.create(name: name, response: response)
        
    }
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}

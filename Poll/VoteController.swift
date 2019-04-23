//
//  VoteController.swift
//  Poll
//
//  Created by Jeffrey Carpenter on 4/22/19.
//  Copyright © 2019 Jeffrey Carpenter. All rights reserved.
//

import Foundation

class VoteController {
    
    var votes: [Vote] = []
    
    init() {
        #warning("Sample Data Being Used")
        create(name: "Jeff", response: "Purple")
        create(name: "Bob", response: "Red")
    }
    
    func create(name: String, response: String) {
        let newVote = Vote(name: name, response: response)
        votes.append(newVote)
    }
    
}

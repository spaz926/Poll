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
    
    func create(name: String, response: String) {
        let newVote = Vote(name: name, response: response)
        votes.append(newVote)
    }
    
}

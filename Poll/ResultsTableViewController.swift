//
//  ResultsTableViewController.swift
//  Poll
//
//  Created by Jeffrey Carpenter on 4/22/19.
//  Copyright © 2019 Jeffrey Carpenter. All rights reserved.
//

import UIKit

class ResultsTableViewController: UITableViewController, VoteControllerProtocol {
    
    var voteController: VoteController?

    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    override func viewWillAppear(_ animated: Bool) {
        super.viewWillAppear(true)
        
        tableView.reloadData()
    }

    // MARK: - Table view data source

    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return voteController?.votes.count ?? 0
    }

    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCell(withIdentifier: "ResultsCell", for: indexPath)

        cell.textLabel?.text = voteController?.votes[indexPath.row].name
        cell.detailTextLabel?.text = voteController?.votes[indexPath.row].response

        return cell
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

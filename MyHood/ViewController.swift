//
//  ViewController.swift
//  MyHood
//
//  Created by Lyle Christianne Jover on 19/02/2016.
//  Copyright © 2016 Lyle Christianne Jover. All rights reserved.
//

import UIKit

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    
    @IBOutlet weak var tableView: UITableView!
    
    var posts = [Post]()

    override func viewDidLoad() {
        super.viewDidLoad()
       tableView.delegate = self
       tableView.dataSource = self
        
        var post  = Post(imagePath: "", title: "Kung Ako Paduday Dako", description: "Picture perfect. Bombing hoochies with precision, my intentions for SNOOP and to all my fuckin homies.")
        
        var post2  = Post(imagePath: "", title: "Kung Ako Paduday Dako", description: "Picture perfect. Bombing hoochies with precision, my intentions for SNOOP and to all my fuckin homies.")
        
        var post3  = Post(imagePath: "", title: "Kung Ako Paduday Dako", description: "Picture perfect. Bombing hoochies with precision, my intentions for SNOOP and to all my fuckin homies.")
        
        
        posts.append(post)
        posts.append(post2)
        posts.append(post3)
        
        tableView.reloadData()
    }

    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }

    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let post = posts[indexPath.row]
        if let cell = tableView.dequeueReusableCellWithIdentifier("PostCell") as? PostCell {
           
            cell.configureCell(post)
            return cell
        } else {
            let cell = PostCell()
            cell.configureCell(post)
            return cell
        }
        
    }
    
    func tableView(tableView: UITableView, heightForRowAtIndexPath indexPath: NSIndexPath) -> CGFloat {
        return 87.0
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return posts.count
    }
    
}


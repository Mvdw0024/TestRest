//
//  DetailViewController.swift
//  TestRest
//
//  Created by mobapp08 on 22/01/2020.
//  Copyright © 2020 mobapp08. All rights reserved.
//

import UIKit

class DetailViewController: UIViewController {

    
    @IBOutlet weak var userNameLabel: UILabel!
    @IBOutlet weak var PostnrLabel: UILabel!
    @IBOutlet weak var TitleLabel: UILabel!
    @IBOutlet weak var BodyLabel: UITextView!
    
    
    var selectedPost:User?
    var detSelectedPost:Post?
    
    override func viewDidLoad() {
        super.viewDidLoad()

        
        if let post = selectedPost{
        let user = detSelectedPost
            
            userNameLabel.text = selectedPost!.username
            PostnrLabel.text = "\(selectedPost!.id)"
            TitleLabel.text = detSelectedPost!.title
            BodyLabel.text = detSelectedPost!.body
            
            
        }
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

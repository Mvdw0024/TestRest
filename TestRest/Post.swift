//
//  Post.swift
//  TestRest
//
//  Created by mobapp08 on 22/01/2020.
//  Copyright © 2020 mobapp08. All rights reserved.
//

import Foundation

class Post{
    
    var userID:Int
    var id:Int
    var title:String
    var body:String
    
    init(userID: Int, id: Int, title: String, body: String) {
        self.userID = userID
        self.id = id
        self.title = title
        self.body = body
    }
    
}

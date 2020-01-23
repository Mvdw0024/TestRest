//
//  User.swift
//  TestRest
//
//  Created by mobapp08 on 22/01/2020.
//  Copyright © 2020 mobapp08. All rights reserved.
//

import Foundation

class User{
    
    var id:Int
    var name:String
    var username:String
    
    internal init(id: Int,name:String, username: String) {
        self.id = id
        self.name = name
        self.username = username
    }
    
}

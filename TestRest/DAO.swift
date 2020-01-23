//
//  DAO.swift
//  TestRest
//
//  Created by mobapp08 on 22/01/2020.
//  Copyright © 2020 mobapp08. All rights reserved.
//

import Foundation

class DAO{
    private init(){}
    static var sharedInstance:DAO = DAO.init()
    
    func getAllPosts() -> [Post] {
        var posts = [Post]()
        let url = URL.init(string: "https://jsonplaceholder.typicode.com/posts")
        
        do {
            //ruwe data uit het adres halen
            let data = try Data.init(contentsOf: url!)
            //root element was een array
            let jsonArray = try JSONSerialization.jsonObject(with: data) as! [NSObject]
            
            for item in jsonArray {
                let userId = item.value(forKey: "userId") as! Int
                let id = item.value(forKey: "id") as! Int
                let title = item.value(forKey: "title") as! String
                let body = item.value(forKey: "body") as! String
                
                let post = Post.init(userID: userId, id: id, title: title, body: body)
                posts.append(post)
            }
        } catch {
            print("kapot")
        }
        
        return posts
    }
    
    func getAllUsers() -> [User] {
        var users = [User]()
        let urluser = URL.init(string: "https://jsonplaceholder.typicode.com/users")
        
        do {
            let userData = try Data.init(contentsOf: urluser!)
            let userJsonArray = try JSONSerialization.jsonObject(with: userData) as! [NSObject]
            
            for item in userJsonArray{
                let userId = item.value(forKey: "id") as! Int
                let usName = item.value(forKey: "name") as! String
                let username = item.value(forKey: "username")as! String
                
                let user = User.init(id: userId, name: usName, username: username)
                users.append(user)
            }
        } catch  {
            print("echt kapot")
        }
        return users
    }
}



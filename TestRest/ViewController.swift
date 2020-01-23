//
//  ViewController.swift
//  TestRest
//
//  Created by mobapp08 on 22/01/2020.
//  Copyright © 2020 mobapp08. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var collectionView: UICollectionView!
    
    var items = [Post]()
    var users = [User]()
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
        items = DAO.sharedInstance.getAllPosts()
        users = DAO.sharedInstance.getAllUsers()
        
    }
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "detailsSegue"{
            
            let cell = sender as! PostCollectionViewCell
            let indexPath = collectionView.indexPath(for: cell)!
            let selectpost = items[indexPath.item]
            let detailsVC:DetailViewController = segue.destination as! DetailViewController
           
            detailsVC.detSelectedPost = selectpost
          /*  TitleLabel.text = selectpost.title
            detailsVC.BodyLabel.text = selectpost.body
            detailsVC.userNameLabel.text = "\(selectpost.userID)" */
            
            
        }
        
        /*
         func tableView(_ tableView: UITableView, cellForRowAt indexpath:IndexPath)->UITableViewCell{
         //maak verwijzing naar cell in storyboard
         let curCell:PostCollectionViewCell = tableView.dequeueReusableCell(withIdentifier: "cell") as! ProductTableViewCell
         //product voor de juiste rij in DataSource gezocht
         let curPost = items[indexpath.row]
         //cell opvullen met het product
         curCell.nameLabel.text = curProduct.naam
         curCell.priceLabel.text = "€ \(curProduct.prijs)"
         
         return curCell
         */
        
        
        
    }
    
}

extension ViewController:UICollectionViewDataSource{
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return items.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "cell", for: indexPath) as! PostCollectionViewCell
        
        let post = items[indexPath.item]
        
        cell.titleTV.text = post.title
        //cell.imageView.image = post.
        
        return cell
        
    }
}

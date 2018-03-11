//
//  FollowersViewController.swift
//  TestTwitterIntegration
//
//  Created by Admin on 3/11/18.
//  Copyright © 2018 ITI. All rights reserved.
//

import UIKit


var followerName = ["mohamad ahmed","mostafa mohsen","sally ahmed ","sara ali"]

var bioArray = ["hi iam designer ","hi ",""," is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book. It has survived not only five centuries, but also the leap into electronic typesetting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum. "]

  var followerImage  = [UIImage(named:"bundesliga-logo-03A7CC2961-seeklogo.com")!,UIImage(named:"logo-black+(3)")!,UIImage(named:"ManchesterCityFCbadge")!,UIImage(named:"manu")!]

var myIndex = 0 

class FollowersViewController: UIViewController , UITableViewDelegate , UITableViewDataSource {

    
  
    
    
    @IBOutlet weak var profileName: UILabel!
    
    
    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.delegate = self
        
        //tableView.rowHeight = UITableViewAutomaticDimension
 

        // Do any additional setup after loading the view.
      
        
        profileName.text = UserDefaults.standard.object(forKey: "name") as! String!
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return followerName.count
        
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! FollowersCustomCell
        
        cell.bio.text! = bioArray[indexPath.row]
         //cell.bio?.numberOfLines = 0
        cell.followerName.text! = followerName[indexPath.row]

        cell.followerImage.image = followerImage[indexPath.row]
        
        return cell
    }

  
func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath)
    {
        myIndex = indexPath.row
        performSegue(withIdentifier: "toDetailsPage", sender: self)
    }
}

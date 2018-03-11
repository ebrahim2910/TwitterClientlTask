//
//  DetailsViewController.swift
//  TestTwitterIntegration
//
//  Created by Admin on 3/11/18.
//  Copyright © 2018 ITI. All rights reserved.
//

import UIKit

class DetailsViewController: UIViewController {
    
    

    @IBOutlet weak var profileImage: UIImageView!
    
    @IBOutlet weak var profileName: UILabel!
    
    
    @IBOutlet weak var bio: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
        profileName.text = followerName[myIndex]
        bio.text = bioArray[myIndex]
        
        profileImage.image = followerImage[myIndex]
        
        
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

//
//  ViewController.swift
//  TestTwitterIntegration
//
//  Created by Admin on 3/6/18.
//  Copyright © 2018 ITI. All rights reserved.
//

import UIKit
import Firebase
import FirebaseAuth
import TwitterKit





class ViewController: UIViewController {
    
    
    @IBOutlet weak var toProfile: UIButton!
    

    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        
    
        
       
//        let firebaseAuth = Auth.auth()
//        do {
//            try firebaseAuth.signOut()
//        } catch let signOutError as NSError {
//            print ("Error signing out: %@", signOutError)
//        }
        
        
        
         // loadTeamsData()
    }
    
    
    
    override func viewWillAppear(_ animated: Bool) {
        
        
        
        
        if Auth.auth().currentUser != nil {
            // User is signed in.
            // ...
            print("ok move to another page")
            toProfile.isHidden = false
            
     performSegue(withIdentifier: "toFollowers", sender: self)
            
        } else {
            // No user is signed in.
            // ...
            toProfile.isHidden = true

            let buttonLogin = TWTRLogInButton(logInCompletion : {  session , error in
                
                
                if(session != nil ){
                    
                    let authToken = session?.authToken
                    let authTokenSecret = session?.authTokenSecret
                    
                    let credential = TwitterAuthProvider.credential(withToken: authToken!, secret: authTokenSecret!)
                    
                    Auth.auth().signIn (with: credential) { (user, error) in
                        if error != nil {
                            // ...
                            return
                        }
                        // User is signed in
                        // ...
                        let user = Auth.auth().currentUser
                        if let user = user {
                            // The user's ID, unique to the Firebase project.
                            // Do NOT use this value to authenticate with your backend server,
                            // if you have one. Use getTokenWithCompletion:completion: instead.
                            let uid = user.uid
                            
                            let photoURL = user.photoURL
                            let name = user.displayName
                            
                            print(uid)

                            print(photoURL!)
                            // ...
                            UserDefaults.standard.set( name , forKey: "name")
                            UserDefaults.standard.set( photoURL , forKey: "photoURL")
                            
                            
                        }
                        
                    }
                    
                    
                    // Auth.auth()?.
                    
                    
                } else {
                    
                    
                    
                }
                
                
                
                
            })
            
            
            buttonLogin.center = self.view.center
            self.view.addSubview(buttonLogin)
        }
    }

    
    
    
    
    
}



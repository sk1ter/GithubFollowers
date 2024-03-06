//
//  FollowerListViewController.swift
//  GithubFollowers
//
//  Created by Javlonbek Sharipov on 06/03/24.
//

import UIKit

class FollowerListViewController: UIViewController {
    
    var username: String!

    override func viewDidLoad() {
        super.viewDidLoad()

        view.backgroundColor = .red
        navigationController?.setNavigationBarHidden(false, animated: true)
        navigationController?.navigationBar.prefersLargeTitles = true
        
        NetworkManager.shared.getFollowers(for: username, page: 1, completed: { result in
            switch result {
            case .success(let followers):
                print("Followers.count = ", followers.count)
                print(followers)
            case .failure(let error):
                self.presentGFAlertOnMainThread(title: "Error occured", message: error.rawValue, buttonTitle: "OK")
            }
           
        })
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

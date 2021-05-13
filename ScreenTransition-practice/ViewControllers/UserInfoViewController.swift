//
//  UserInfoViewController.swift
//  ScreenTransition-practice
//
//  Created by 大西玲音 on 2021/05/13.
//

import UIKit

final class UserInfoViewController: UIViewController {

    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var jobLabel: UILabel!
    
    private var user: User?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = user?.name
        jobLabel.text = user?.job
        
    }

    @IBAction private func backButtonDidTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
    static func instantiate(user: User) -> UserInfoViewController {
        let userInfoVC = UIStoryboard.userInfo.instantiateViewController(
            identifier: UserInfoViewController.identifier
        ) as! UserInfoViewController
        userInfoVC.user =  user
        return userInfoVC
    }
    
}

private extension UIStoryboard {
    
    static var userInfo: UIStoryboard {
        UIStoryboard(name: "UserInfo", bundle: nil)
    }
    
}

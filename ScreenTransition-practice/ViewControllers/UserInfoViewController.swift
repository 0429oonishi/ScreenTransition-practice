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
    
    var user: User?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        nameLabel.text = user?.name
        jobLabel.text = user?.job
        
    }

    @IBAction private func backButtonDidTapped(_ sender: Any) {
        dismiss(animated: true, completion: nil)
    }
    
}

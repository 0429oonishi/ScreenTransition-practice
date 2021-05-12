//
//  TaskListTableViewCell.swift
//  ScreenTransition-practice
//
//  Created by 大西玲音 on 2021/05/13.
//

import UIKit

final class TaskListTableViewCell: UITableViewCell {
    
    @IBOutlet private weak var nameLabel: UILabel!
    @IBOutlet private weak var jobLabel: UILabel!
    
    var onTapEvent: (() -> Void)?
    
    override func touchesBegan(_ touches: Set<UITouch>, with event: UIEvent?) {
        onTapEvent?()
    }
    
}

// MARK: - setup
extension TaskListTableViewCell {
    
    func setup(user: User, onTapEvent: (() -> Void)?) {
        self.onTapEvent = onTapEvent
        nameLabel.text = user.name
        jobLabel.text = user.job
    }
    
}

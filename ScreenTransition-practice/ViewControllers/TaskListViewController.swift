//
//  TaskListViewController.swift
//  ScreenTransition-practice
//
//  Created by 大西玲音 on 2021/05/13.
//

import UIKit

final class TaskListViewController: UIViewController {
    
    @IBOutlet weak var tableView: UITableView!
    
    private var users = [User]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        tableView.dataSource = self
        tableView.register(TaskListTableViewCell.nib,
                           forCellReuseIdentifier: TaskListTableViewCell.identifier)
        tableView.tableFooterView = UIView()
        
    }
    
    @IBAction private func addButtonDidTapped(_ sender: Any) {
        let addTaskVC = AddTaskViewController.instantiate { user in
            guard let user = user else { return }
            self.users.append(user)
            self.tableView.reloadData()
        }
        addTaskVC.modalPresentationStyle = .fullScreen
        present(addTaskVC, animated: true, completion: nil)
    }
    
}

// MARK: - UITableViewDataSource
extension TaskListViewController: UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return users.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: TaskListTableViewCell.identifier) as! TaskListTableViewCell
        let user = users[indexPath.row]
        cell.setup(user: user) { [weak self] in
            self?.presentUserInfoVC(user: user)
        }
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    private func presentUserInfoVC(user: User) {
        let userInfoVC = UserInfoViewController.instantiate(user: user)
        userInfoVC.modalPresentationStyle = .fullScreen
        present(userInfoVC, animated: true, completion: nil)
    }
    
}

// 
//  UITableViewController+EachNavigationBar.swift
//  EachNavigationBar
//
//  Created by Pircate(gao497868860@gmail.com) on 2018/10/27
//  
//

extension UITableViewController {
    
    func addObserverIfViewIsTableView() {
        each_navigationBar.isUnrestoredWhenViewWillLayoutSubviews = true
        tableView.addObserver(
            self,
            forKeyPath: "contentOffset",
            options: .new,
            context: nil)
    }
    
    func adjustsTableViewContentInset() {
        guard !each_navigationBar.isHidden else { return }
        tableView.contentInset.top = each_navigationBar.bounds.height
        tableView.scrollIndicatorInsets.top = each_navigationBar.bounds.height
    }
    
    open override func observeValue(
        forKeyPath keyPath: String?,
        of object: Any?,
        change: [NSKeyValueChangeKey : Any]?,
        context: UnsafeMutableRawPointer?) {
        guard keyPath == "contentOffset",
            let tableView = object as? UITableView,
            self.tableView === tableView else { return }
        each_navigationBar.frame.origin.y = tableView.contentOffset.y + UIApplication.shared.statusBarFrame.maxY
    }
}
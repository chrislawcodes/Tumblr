//
//  TabBarViewController.swift
//  Tumblr
//
//  Created by Claw on 10/7/15.
//  Copyright © 2015 Claw. All rights reserved.
//

import UIKit

class TabBarViewController: UIViewController {

    @IBOutlet weak var contentView: UIView!
    
    var HomeViewController: UIViewController!
    var SearchViewController: UIViewController!
    var ComposeViewController: UIViewController!
    var AccountViewController: UIViewController!
    var TrendingViewController: UIViewController!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let storyboard = UIStoryboard(name:"Main", bundle: nil)
        
        HomeViewController = storyboard.instantiateViewControllerWithIdentifier ("HomeViewController")
        SearchViewController = storyboard.instantiateViewControllerWithIdentifier ("SearchViewController")
        ComposeViewController = storyboard.instantiateViewControllerWithIdentifier ("ComposeViewController")
        AccountViewController = storyboard.instantiateViewControllerWithIdentifier ("AccountViewController")
        TrendingViewController =  storyboard.instantiateViewControllerWithIdentifier ("TrendingViewController")
        


    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    @IBAction func onHomeButton(sender: AnyObject) {
        contentView.addSubview(HomeViewController.view)
        
    }

    @IBAction func onSearchButton(sender: AnyObject) {
        contentView.addSubview(SearchViewController.view)
    }
    
    
    @IBAction func onComposeButton(sender: AnyObject) {
        contentView.addSubview(ComposeViewController.view)
    }
    
    @IBAction func onAccountButton(sender: AnyObject) {
        contentView.addSubview(AccountViewController.view)
    }

    @IBAction func onTrendingButton(sender: AnyObject) {
        contentView.addSubview(TrendingViewController.view)
    }
    
    
    
    


    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}

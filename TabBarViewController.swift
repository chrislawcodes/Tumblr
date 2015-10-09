//
//  TabBarViewController.swift
//  Tumblr
//
//  Created by Claw on 10/7/15.
//  Copyright © 2015 Claw. All rights reserved.
//

import UIKit

class TabBarViewController: UIViewController {

    @IBOutlet var fullUIView: UIView!
    @IBOutlet weak var contentView: UIView!

    @IBOutlet var buttons: [UIButton]!


    
    var HomeViewController: UIViewController!
    var SearchViewController: UIViewController!
    var ComposeViewController: UIViewController!
    var AccountViewController: UIViewController!
    var TrendingViewController: UIViewController!
    
    var viewControllers: [UIViewController]!
    var selectedIndex: Int = 0
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let storyboard = UIStoryboard(name:"Main", bundle: nil)
        
        HomeViewController = storyboard.instantiateViewControllerWithIdentifier("HomeViewController")
        
        SearchViewController = storyboard.instantiateViewControllerWithIdentifier("SearchViewController")
        
        ComposeViewController = storyboard.instantiateViewControllerWithIdentifier("ComposeViewController")
        
        AccountViewController = storyboard.instantiateViewControllerWithIdentifier("AccountViewController")
        
        TrendingViewController = storyboard.instantiateViewControllerWithIdentifier("TrendingViewController")

        viewControllers = [HomeViewController, SearchViewController, AccountViewController, TrendingViewController]

        
        buttons[selectedIndex].selected = true
        didPressTab(buttons[selectedIndex])
        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func didPressTab(sender: UIButton) {
        let previousIndex = selectedIndex
        selectedIndex = sender.tag
        buttons[previousIndex].selected = false
        
        var previousVC = viewControllers[previousIndex]

        //Remove previous View Controller
        previousVC.willMoveToParentViewController(nil)
        previousVC.view.removeFromSuperview()
        previousVC.removeFromParentViewController()
        
        //Add new View Controller
        sender.selected = true
        let vc = viewControllers[selectedIndex]
        addChildViewController(vc)
        vc.view.frame = contentView.bounds
        contentView.addSubview(vc.view)
        vc.didMoveToParentViewController(self)
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

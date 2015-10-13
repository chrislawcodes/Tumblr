//
//  TabBarViewController.swift
//  Tumblr
//
//  Created by Claw on 10/7/15.
//  Copyright © 2015 Claw. All rights reserved.
//

import UIKit


class TabBarViewController: UIViewController, UIViewControllerTransitioningDelegate{

    @IBOutlet var fullUIView: UIView!
    @IBOutlet weak var contentView: UIView!

    @IBOutlet var buttons: [UIButton]!
    
    @IBOutlet weak var exploreBubbleView: UIView!
    
    
    var viewControllers: [UIViewController]!
    var HomeViewController: UIViewController!
    var SearchViewController: UIViewController!
    var AccountViewController: UIViewController!
    var TrendingViewController: UIViewController!
    var LoadingViewController: UIViewController!
    
    var selectedIndex: Int = 0
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //Setup the View Controllers
        
        let storyboard = UIStoryboard(name:"Main", bundle: nil)
        
        HomeViewController = storyboard.instantiateViewControllerWithIdentifier("HomeViewController")
        
        SearchViewController = storyboard.instantiateViewControllerWithIdentifier("SearchViewController")

        
        AccountViewController = storyboard.instantiateViewControllerWithIdentifier("AccountViewController")
        
        TrendingViewController = storyboard.instantiateViewControllerWithIdentifier("TrendingViewController")

        LoadingViewController = storyboard.instantiateViewControllerWithIdentifier("LoadingViewController")

        viewControllers = [HomeViewController, SearchViewController, AccountViewController, TrendingViewController]
        
        
        // Listen for the button press
        buttons[selectedIndex].selected = true
        didPressTab(buttons[selectedIndex])
        
        // animate the Explore Bubble
        exploreBubbleAnimate()
        
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
        let vc = viewControllers[selectedIndex]
        addChildViewController(vc)
        
        vc.view.frame = contentView.bounds
        contentView.addSubview(vc.view)
        vc.didMoveToParentViewController(self)
        
        sender.selected = true
        
        // check to see if Explore button was pushed.
        if buttons[1].selected == true {
            print("button 1 selected")
            exploreBubbleView.alpha = 0
        }
        else if buttons[1].selected == false{
            print("Button 1 not selected")
            exploreBubbleView.alpha = 0.75
        }
        
        
  }
    
    func exploreBubbleAnimate (){
        
        UIView.animateWithDuration(0.8, delay: 0, options: [UIViewAnimationOptions.Autoreverse, UIViewAnimationOptions.Repeat], animations: { () -> Void in
            
            self.exploreBubbleView.transform = CGAffineTransformMakeTranslation(0, -20)
            }, completion: nil)
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

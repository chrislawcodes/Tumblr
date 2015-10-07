//
//  TrendingViewController.swift
//  Tumblr
//
//  Created by Claw on 10/7/15.
//  Copyright © 2015 Claw. All rights reserved.
//

import UIKit

class TrendingViewController: UIViewController {

    @IBOutlet weak var trendingfeedUIView: UIImageView!
    
    @IBOutlet weak var trendingScrollView: UIScrollView!
    

    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        trendingScrollView.contentSize = trendingfeedUIView.image!.size

        
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
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

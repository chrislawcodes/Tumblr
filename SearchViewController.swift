//
//  SearchViewController.swift
//  Tumblr
//
//  Created by Claw on 10/7/15.
//  Copyright © 2015 Claw. All rights reserved.
//

import UIKit

class SearchViewController: UIViewController {

    @IBOutlet weak var loadingView: UIImageView!
    
    @IBOutlet weak var searchfeedView: UIImageView!
    
    var loading_1: UIImage!
    var loading_2: UIImage!
    var loading_3: UIImage!
    var images: [UIImage]!
    var animatedImage: UIImage!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        // Hide the searchfeed
        searchfeedView.alpha = 0
        
        // Animate the loading image
        loading_1 = UIImage(named: "loading-1")
        loading_2 = UIImage(named: "loading-2")
        loading_3 = UIImage(named: "loading-3")
        
        images = [loading_1, loading_2, loading_3]
        
        animatedImage = UIImage.animatedImageWithImages(images, duration: 1.0)
        
        loadingView.image = animatedImage
        loadingView.alpha = 1
        print ("loading search screen")
        delay (2){
            //Show the searchfeed and hide the load
            self.searchfeedView.alpha = 1
            self.loadingView.alpha = 0
            
        }

        
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

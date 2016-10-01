//
//  SpecificSongViewController.swift
//  Kingdom Songs
//
//  Created by Lena Ngungu on 9/9/16.
//  Copyright © 2016 Lena Ngungu Corp. All rights reserved.
//

import UIKit

class SpecificSongViewController: UIViewController {
    // this VC will take in a number that will correspond to a song image and there should be an array of all the images and the image displayed will be based off of the number passed down from the list 
    //each image will be named by the number of
    
    //let img = UIImage(named: "Done!")
   // var images: [UIImage] = [""]
    @IBOutlet weak var songImage: UIImageView!
    var number: String?

    @IBOutlet weak var favoriteButton: UIButton!
    
    //pass the number of selectd song, have a dic here with num anf images, display image that maps to the number sent from the previous Vc 
    
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func viewWillAppear(animated: Bool) {
        
        songImage.image = UIImage(named: "\(number!)")
    }

    @IBAction func favButtonAction(sender: AnyObject) {
        //Take the song's title and number and send it into the favorite array
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

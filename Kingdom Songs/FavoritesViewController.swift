//
//  FavoritesViewController.swift
//  Kingdom Songs
//
//  Created by Lena Ngungu on 9/9/16.
//  Copyright © 2016 Lena Ngungu Corp. All rights reserved.
//

import UIKit

class FavoritesViewController: UIViewController {
   
    var titles: [String] = ["huu"]

    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        
        if segue.identifier == "favSong"
        {
            let send = sender as! FavoritesTableViewCell
            let nextVC = segue.destinationViewController as! SpecificSongViewController
            
            nextVC.number = send.num
            
        }
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


extension FavoritesViewController: UITableViewDataSource, UITableViewDelegate
{
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("favSong") as! FavoritesTableViewCell
        // For the cell at a specific index, fill it up with the title at the corresponding index
        cell.favTitle.text = titles[indexPath.row]
        cell.favNumber.text = "\(indexPath.row + 1)"
        cell.num = "\(indexPath.row + 1)"
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return titles.count
    }
    
}
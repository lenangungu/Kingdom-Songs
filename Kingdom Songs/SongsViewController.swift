//
//  SongsViewController.swift
//  Kingdom Songs
//
//  Created by Lena Ngungu on 9/9/16.
//  Copyright © 2016 Lena Ngungu Corp. All rights reserved.
//

import UIKit

class SongsViewController: UIViewController {
    
    var titles: [String] = ["hi","hello"]
    var number: String?

   // let userData = JSON(data: jsonData)
    
    // Alright, now we have a JSON object from SwiftyJSON containing the user data!
    // Let's save the user's first name to a constant!
//    let firstName = Songs["results"][0]["name"]["first"].stringValue
   
   // var SongsDictionary: [String : Int] = ["Encourage my soul" : 209 , "Seek Ye First" : 440]

    var soongs : [[String]] = [["Create in Me a Pure Heart", "1"], [ "Be still and Know I Am God", "2"], ["Have You Not Heard?", "3"], ["His Love Endures Forever", "4"],["Unto Thee, O Lord", "100"],["The Law of the Lord", "101"], ["The Steadfast Love of the Lord", "102"], ["I Will Call upon the Lord", "103"],["Humble Yourself in Sight of the Lord ", "104"] ,["Praise God", "105"]]
    override func viewDidLoad() {
        super.viewDidLoad()

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
//    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
//        if segue.identifier == "song"
//        {
//            let nextVC = segue.destinationViewController as! SpecificSongViewController
//            nextVC.number = number
//        }
//    }

    //
    override func prepareForSegue(segue: UIStoryboardSegue, sender: AnyObject?) {
        if segue.identifier == "song"
        {
            let send = sender as! SongTableViewCell
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

extension SongsViewController: UITableViewDataSource, UITableViewDelegate
{
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCellWithIdentifier("song") as! SongTableViewCell
        // For the cell at a specific index, fill it up with the title at the corresponding index
       // cell.title.text = titles[indexPath.row]
       // cell.number.text = "\(indexPath.row + 1)"
        cell.title.text = soongs[indexPath.row][0]
        cell.number.text = soongs[indexPath.row][1]
        cell.num = soongs[indexPath.row][1]
        cell.songImage = UIImage(named: cell.num!);
      
//        cell.title.text = SongsDictionary["0":"]!
     
     
      
        return cell
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return soongs.count
    }
    
 
   
    
}




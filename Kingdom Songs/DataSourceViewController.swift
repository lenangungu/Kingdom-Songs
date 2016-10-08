//
//  DataSourceViewController.swift
//  Kingdom Songs
//
//  Created by Lena Ngungu on 10/1/16.
////  Copyright © 2016 Lena Ngungu Corp. All rights reserved.
////
//
//import UIKit
//
//class DataSourceViewController: UIViewController, UIPageViewControllerDataSource {
//    
//    
//    var pageImages:NSArray!
//    var pageViewController:UIPageViewController!
//    
//    
//    override func viewDidLoad() {
//        super.viewDidLoad()
//        // Do any additional setup after loading the view, typically from a nib.
//        
//        
//        pageImages = NSArray(objects:"screen1","screen2","screen3")
//        
//        
//        self.pageViewController = self.storyboard?.instantiateViewControllerWithIdentifier("MyPageViewController") as! UIPageViewController
//        
//        self.pageViewController.dataSource = self
//        
//        var initialContenViewController = self.pageTutorialAtIndex(0) as SpecificSongViewController
//        
//        var viewControllers = NSArray(object: initialContenViewController)
//        
//        
//        self.pageViewController.setViewControllers(viewControllers as [AnyObject] as [AnyObject] , direction: UIPageViewControllerNavigationDirection.Forward, animated: true, completion: nil)
//        
//        self.pageViewController.view.frame = CGRectMake(0, 100, self.view.frame.size.width, self.view.frame.size.height-100)
//        
//        self.addChildViewController(self.pageViewController)
//        self.view.addSubview(self.pageViewController.view)
//        self.pageViewController.didMoveToParentViewController(self)
//        
//        
//    }
//    
//    override func didReceiveMemoryWarning() {
//        super.didReceiveMemoryWarning()
//        // Dispose of any resources that can be recreated.
//    }
//    
//    
//    
//    
//    func pageTutorialAtIndex(index: Int) ->SpecificSongViewController
//    {
//        
//        let pageContentViewController = self.storyboard?.instantiateViewControllerWithIdentifier("SpecificSongViewController") as! SpecificSongViewController
//        
//        pageContentViewController.imageFileName = pageImages[index] as! String
//        pageContentViewController.pageIndex = index
//        
//        
//        return pageContentViewController
//        
//    }
//    
//    
//    func pageViewController(pageViewController: UIPageViewController, viewControllerBeforeViewController viewController: UIViewController) -> UIViewController?
//    {
//        let viewController = viewController as! SpecificSongViewController
//        var index = viewController.pageIndex as Int
//        
//        if(index == 0 || index == NSNotFound)
//        {
//            return nil
//        }
//        
//        index--
//        
//        return self.pageTutorialAtIndex(index)
//    }
//    
//    func pageViewController(pageViewController: UIPageViewController, viewControllerAfterViewController viewController: UIViewController) -> UIViewController?
//    {
//        let viewController = viewController as! SpecificSongViewController
//        var index = viewController.pageIndex as Int
//        
//        if((index == NSNotFound))
//        {
//            return nil
//        }
//        
//        index++
//        
//        if(index == pageImages.count)
//        {
//            return nil
//        }
//        
//        return self.pageTutorialAtIndex(index)
//    }
//    
//    
//    
//    func presentationCountForPageViewController(pageViewController: UIPageViewController) -> Int
//    {
//        return pageImages.count
//    }
//    
//    
//    
//    
//    func presentationIndexForPageViewController(pageViewController: UIPageViewController) -> Int
//    {
//        return 0
//    }
//    
//    
//    
//    
//    
//    
////    
////    @IBAction func skipButtonTapped(sender: AnyObject) {
////        
////        let nextView: TheNextViewController = self.storyboard?.instantiateViewControllerWithIdentifier("TheNextViewController") as! TheNextViewController
////        
////        let appdelegate = UIApplication.sharedApplication().delegate as! AppDelegate
////        
////        
////        appdelegate.window!.rootViewController = nextView
////        
////    }
//}

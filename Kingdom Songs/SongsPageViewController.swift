//
//  SongsPageViewController.swift
//  Kingdom Songs
//
//  Created by Lena Ngungu on 10/1/16.
//  Copyright © 2016 Lena Ngungu Corp. All rights reserved.
//

import UIKit

class SongsPageViewController: UIPageViewController, UIPageViewControllerDataSource {

    
    var pageViewController: UIPageViewController!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let firstViewController = orderedViewControllers.first {
            setViewControllers([firstViewController],
                               direction: .Forward,
                               animated: true,
                               completion: nil)
        }

        // Do any additional setup after loading the view.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }
    
    
    
    private(set) lazy var orderedViewControllers: [UIViewController] = {
        return [self.newColoredViewController("Songs"),
                self.newColoredViewController("Songs2")]
    }()
    
    private func newColoredViewController(name: String) -> UIViewController {
        return UIStoryboard(name: "Main", bundle: nil) .
            instantiateViewControllerWithIdentifier("\(name)ViewController")
    }
    
  func pageViewController(pageViewController: UIPageViewController, viewControllerBeforeViewController viewController: UIViewController) -> UIViewController?
  {
    guard let viewControllerIndex = orderedViewControllers.indexOf(viewController) else {
        return nil
    }
    
    let previousIndex = viewControllerIndex - 1
    
    guard previousIndex >= 0 else {
        return nil
    }
    
    guard orderedViewControllers.count > previousIndex else {
        return nil
    }
    
    return orderedViewControllers[previousIndex]
    }
 
   func pageViewController(pageViewController: UIPageViewController, viewControllerAfterViewController viewController: UIViewController) -> UIViewController?
   {
    guard let viewControllerIndex = orderedViewControllers.indexOf(viewController) else {
        return nil
    }
    
    let nextIndex = viewControllerIndex + 1
    let orderedViewControllersCount = orderedViewControllers.count
    
    guard orderedViewControllersCount != nextIndex else {
        return nil
    }
    
    guard orderedViewControllersCount > nextIndex else {
        return nil
    }
    
    return orderedViewControllers[nextIndex]
    
    }
   
//   func presentationCountForPageViewController(pageViewController: UIPageViewController) -> Int
//   {
//    return 3
//    }
//   
//  func presentationIndexForPageViewController(pageViewController: UIPageViewController) -> Int
//  {
//    return 0
//    }

  

}

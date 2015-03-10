//
//  RootTabBarController.swift
//  ALAdvancedScrolling
//
//  Created by Alexandre Leite on 3/9/15.
//  Copyright (c) 2015 Alexandre Leite. All rights reserved.
//

import UIKit

class RootTabBarController: UITabBarController {

    override func viewDidLoad() {
        super.viewDidLoad()

        let topController: ViewController = ViewController()
        topController.title = "Root"
        
        let vcs = [
            topController,
            self.dummyViewController("Tab 2"),
            self.dummyViewController("Tab 3"),
            self.dummyViewController("Tab 4")
        ]
        self.viewControllers = vcs
    }

    //MARK- Helper Methods
    
    private func dummyViewController(title: String) -> UIViewController {
        var result = UIViewController()
        result.title = title
        result.view.backgroundColor = UIColor.blueColor()
        return result
    }

}

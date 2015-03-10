//
//  ViewController.swift
//  ALAdvancedScrolling
//
//  Created by Alexandre Leite on 3/9/15.
//  Copyright (c) 2015 Alexandre Leite. All rights reserved.
//

import UIKit

class ViewController: AdvancedScrollingViewController {

    override func loadView() {
        self.view = UIScrollView()
        self.view.backgroundColor = UIColor.yellowColor()
        
        let tallBuildingImageView = UIImageView(image: UIImage(named: "TallBuilding"))
        tallBuildingImageView.contentMode = UIViewContentMode.ScaleAspectFill
        self.view.addSubview(tallBuildingImageView)
        
        var tbFrame = tallBuildingImageView.frame
        tbFrame.size.width = self.view.bounds.size.width
        tallBuildingImageView.frame = tbFrame

        if let sv = self.view as? UIScrollView {
            sv.contentSize = tallBuildingImageView.bounds.size
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if let sv = self.view as? UIScrollView {
            sv.delegate = self
        }
    }

}


//
//  AdvancedScrollingViewController.swift
//  ALAdvancedScrolling
//
//  Created by Alexandre Leite on 3/9/15.
//  Copyright (c) 2015 Alexandre Leite. All rights reserved.
//

import UIKit

public class AdvancedScrollingViewController: UIViewController, UIScrollViewDelegate {
    
    //MARK- Helper Structs and Enum
    
    public enum AdvancedScrollingMode {
        case None, NavigationBar, TabBar, All
    }
    
    public enum  ScrollingDirection {
        case Up, Down, NotScrolling
    }
    
    public enum ScrollingState {
        case Idle, PullingDown, ReleasingPullDown, PullingUp, ReleasingPullUp, Scrolling
    }
    
    //MARK- Properties
    
    public var advancedScrollingMode: AdvancedScrollingMode = .None
    
    //MARK- Advanced Scrolling Properties

    private var _scrollingState: ScrollingState = .Idle
    public var scrollingState: ScrollingState { get { return self._scrollingState } }

    private var _scrollingDirection: ScrollingDirection = .NotScrolling
    public var scrollingDirection: ScrollingDirection { get { return self._scrollingDirection } }
    
    private var tabBar: UITabBar? {
        get {
            if let rootController = UIApplication.sharedApplication().keyWindow?.rootViewController as? UITabBarController {
                return rootController.tabBar
            }
            return nil
        }
    }
    
    private var navigationBar: UINavigationBar? {
        get {
            if let navigationBar = self.navigationController?.navigationBar {
                return navigationBar
            }
            return nil
        }
    }
    
    //MARK- Initializers
    
    public override init(nibName nibNameOrNil: String?, bundle nibBundleOrNil: NSBundle?) {
        super.init(nibName: nibNameOrNil, bundle: nibBundleOrNil)
        
        self.setInitialState()
    }
    
    public override convenience init() {
        self.init(nibName: nil, bundle: nil)
    }
    
    required public init(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    //MARK- Base Overrides
    
    
    //MARK- View Lifecycle

    public override func viewDidLoad() {
        super.viewDidLoad()
        
    }
    
    //MARK- Private Methods
    
    private func setInitialState() {
        println("Setting initial state")
        self.automaticallyAdjustsScrollViewInsets = false
        self._scrollingState = .Idle
        self._scrollingDirection = .NotScrolling
    }
    
    
    //MARK- ScrollView Delegate
    
    public func scrollViewWillBeginDragging(scrollView: UIScrollView) {
        println("#### WILL BEGIN DRAGGING")
    }
    
    public func scrollViewDidScroll(scrollView: UIScrollView) {
        println("#### SCROLLVIEW DID SCROLL: \(scrollView.contentOffset)")
    }
    
    public func scrollViewWillEndDragging(scrollView: UIScrollView, withVelocity velocity: CGPoint, targetContentOffset: UnsafeMutablePointer<CGPoint>) {
        println("#### SCROLLVIEW WILL END DRAGGING")
    }
    
    public func scrollViewDidEndDragging(scrollView: UIScrollView, willDecelerate decelerate: Bool) {
        println("#### SCROLLVIEW DID END DRAGGING")
    }
    
    public func scrollViewWillBeginDecelerating(scrollView: UIScrollView) {
        println("#### SCROLLVIEW WILL BEGIN DECELERATIONG")
    }
    
    public func scrollViewDidEndDecelerating(scrollView: UIScrollView) {
        println("#### SCROLLVIEW DID END DECELERATING")
    }

}

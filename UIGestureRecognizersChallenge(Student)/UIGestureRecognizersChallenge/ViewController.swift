//
//  ViewController.swift
//  UIGestureRecognizersChallenge
//
//  Created by Robert F. Kennedy
//  Copyright © 2020 MobileMakersEdu. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var myView: UIView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        myView.backgroundColor = .blue
    }
    //MARK: - MVP
    
    @IBAction func onViewMoved(_ sender: UIPanGestureRecognizer) {
        let point = sender.location(in: view)
        myView.center = point
    }
    
    
    //MARK: - Stretch #1
    
    @IBAction func onViewTapped(_ sender: UITapGestureRecognizer) {
        let point = sender.location(in: view)
        myView.center = point 
        if myView.backgroundColor == .blue {myView.backgroundColor = .green}
        else if  myView.backgroundColor == .green {myView.backgroundColor = .blue}
    }
    
    
    //MARK: - Stretch #2
   
    @IBAction func onViewPinched(_ sender: UIPinchGestureRecognizer) {
        let point = sender.location(in: view)
        myView.center = point
        let size = sender.scale
        myView.frame = CGRect(x: myView.frame.orgin.x, Y: myView.frame.orgin.y)
        
    }
    
    
    //MARK: - Stretch #3
    
    
    
    if sender.directin == UISwipeGestureRecognizer.Direction.right
    {
    myView.alpha += 0.1
    }
    
    
    //MARK: - Stretch #4
    
    
    
    var lastRotation: CGFloat = 0
    var orginalRotation: CGFloat = 0
    
    if sender.state == .began {
    sender.rotation = lastRotation
    orginalRotatioon = sender.rotation
    } else if sender.state == .ended {
    lastRotation = sender.rotation
    } else {
    let newRotation
    }
    
    
}


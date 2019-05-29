//
//  AnimatedTabBar.swift
//  Metrix
//
//  Created by Gonzalo Birrueta on 5/29/19.
//  Copyright © 2019 Gonzalo Birrueta. All rights reserved.
//


import Foundation
import UIKit

//creates a bounce animation whenever the tab is switched
class AnimatedTabBar: UITabBarController{
    
    var firstItemImageView: UIImageView!
    var secondItemImageView: UIImageView!
    var thirdItemImageView: UIImageView!
    var fourthItemImageView: UIImageView!
    var fifthItemImageView: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let firstItemView = self.tabBar.subviews[0]
        let secondItemView = self.tabBar.subviews[1]
        let thirdItemView = self.tabBar.subviews[2]
        let fourthItemView = self.tabBar.subviews[3]
        let fifthItemView = self.tabBar.subviews[4]
        
        
        self.firstItemImageView = (firstItemView.subviews.first as! UIImageView)
        self.firstItemImageView.contentMode = .center
        
        self.secondItemImageView = (secondItemView.subviews.first as! UIImageView)
        self.secondItemImageView.contentMode = .center
        
        self.thirdItemImageView = (thirdItemView.subviews.first as! UIImageView)
        self.thirdItemImageView.contentMode = .center
        
        self.fourthItemImageView = (fourthItemView.subviews.first as! UIImageView)
        self.fourthItemImageView.contentMode = .center
        
        self.fifthItemImageView = (fifthItemView.subviews.first as! UIImageView)
        self.fifthItemImageView.contentMode = .center
    }
    
    override func tabBar(_ tabBar: UITabBar, didSelect item: UITabBarItem) {
        if item.tag == 0{
            firstItemImageView.transform = CGAffineTransform(scaleX: 0.3, y: 0.3)
            UIView.animate(withDuration: 0.75, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                self.firstItemImageView.transform = .identity
            }, completion: nil)
        }else if item.tag == 1{
            secondItemImageView.transform = CGAffineTransform(scaleX: 0.3, y: 0.3)
            UIView.animate(withDuration: 0.75, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                self.secondItemImageView.transform = .identity
            }, completion: nil)
        }else if item.tag == 2{
            thirdItemImageView.transform = CGAffineTransform(scaleX: 0.3, y: 0.3)
            UIView.animate(withDuration: 0.75, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                self.thirdItemImageView.transform = .identity
            }, completion: nil)
        }else if item.tag == 3{
            fourthItemImageView.transform = CGAffineTransform(scaleX: 0.3, y: 0.3)
            UIView.animate(withDuration: 0.75, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                self.fourthItemImageView.transform = .identity
            }, completion: nil)
        }else if item.tag == 4{
            fifthItemImageView.transform = CGAffineTransform(scaleX: 0.3, y: 0.3)
            UIView.animate(withDuration: 0.75, delay: 0, usingSpringWithDamping: 0.6, initialSpringVelocity: 0, options: .curveEaseInOut, animations: {
                self.fifthItemImageView.transform = .identity
            }, completion: nil)
        }
    }
    
}

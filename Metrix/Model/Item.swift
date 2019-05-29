//
//  item.swift
//  Metrix
//
//  Created by Gonzalo Birrueta on 5/27/19.
//  Copyright © 2019 Gonzalo Birrueta. All rights reserved.
//

import Foundation
import UIKit

class Item {
    var image: UIImage
    var title: String
    var value: String
    
    init(titled: String, value: String, imageName: String){
        self.title = titled
        self.value = value
        if let image = UIImage(named: imageName){
            self.image = image
        } else{
            self.image = UIImage(named: "default")!        }
    }
}

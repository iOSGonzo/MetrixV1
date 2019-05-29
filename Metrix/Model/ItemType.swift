//
//  ItemType.swift
//  Metrix
//
//  Created by Gonzalo Birrueta on 5/27/19.
//  Copyright © 2019 Gonzalo Birrueta. All rights reserved.
//

import Foundation
import UIKit

class ItemType{
    var name: String
    var items: [Item]
    
    init(named: String, includeItems: [Item]){
        name = named
        items = includeItems
        
    }
    
    class func getItemTypes() -> [ItemType]{
        return []
    }
    
    private class func Sneakers() -> ItemType{
        var items = [Item]()
        
        items.append(Item(titled: "SneakerExample", value: "200", imageName:"sneaker"))
        
        return ItemType(named: "Sneakers", includeItems: items)
    }
    
}



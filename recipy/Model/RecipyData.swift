//
//  RecipyData.swift
//  recipy
//
//  Created by Pedro on 08/02/24.
//

import Foundation

struct RecipyData {
    let foodImages: [(key: String, value:String, com: String)] =
    [("hamburger2","Hamburger","$10.88 | Cheddar BBQ"),
     ("pasta","Pasta","$22.99 | Italian Pasta"),
     ("italian","Italian","$15.99 | Ravioli"),
     ("tapi","Tapioca","$5.99 | Brazilian Tapioca"),
     ("chicken","Chicken","$4.99 | Chicken Wings")]
    
    
    func showImage(foodImage: String) -> String? {
            for (key, value, _) in foodImages {
                if value == foodImage {
                    return key
                }
            }
            return nil
        }
}

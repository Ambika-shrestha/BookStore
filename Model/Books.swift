//
//  Books.swift
//  BookStore
//
//  Created by Ambika on 8/5/20.
//  Copyright © 2020 BookStore. All rights reserved.
//

import Foundation
import UIKit

struct Book {
    let image: String
    let name : String
    let description : String
    let publishedDate:String
    let author: String
    
    func getImage() -> UIImage? {
        return UIImage.init(named: image) ?? nil
    }
}

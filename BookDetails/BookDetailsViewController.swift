//
//  BookDetailsViewController.swift
//  BookStore
//
//  Created by Ambika on 8/7/20.
//  Copyright © 2020 BookStore. All rights reserved.
//

import UIKit

class BookDetailsViewController: UIViewController {

    var bookDetailsViewModel : BookDetailsViewModel?
    
    @IBOutlet weak var lblName: UILabel!
    @IBOutlet weak var lblAuthor: UILabel!
    @IBOutlet weak var lblDescription: UILabel!
    @IBOutlet weak var imageBookDetails: UIImageView!
    @IBOutlet weak var lblYear: UILabel!
    override func viewDidLoad() {
        super.viewDidLoad()
        guard let bookDetailsViewModel = bookDetailsViewModel,let book = bookDetailsViewModel.book  else {
            return
        }
        
        lblName.text = book.name
        lblYear.text = book.publishedDate
        lblDescription.text = book.description
        lblAuthor.text = book.author
        imageBookDetails.image = book.getImage()
    }

}

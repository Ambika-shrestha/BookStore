//
//  BookTableViewCell.swift
//  BookStore
//
//  Created by Ambika on 8/5/20.
//  Copyright © 2020 BookStore. All rights reserved.
//

import UIKit

class BookTableViewCell: UITableViewCell {
    
    
    @IBOutlet weak var viewbackground: UIView!
    
    @IBOutlet weak var imageBook: UIImageView!
    
    @IBOutlet weak var lblBookDiscription: UILabel!
    
    @IBOutlet weak var lblBookName: UILabel!
    
    
    @IBOutlet weak var lblBookPublishedDate: UILabel!
    
    @IBOutlet weak var lblBookAuthor: UILabel!
    

    override func awakeFromNib() {
        super.awakeFromNib()
        // Initialization code
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

        // Configure the view for the selected state
    }
    
    func configCell(_ book:Book){
        imageBook.image = book.getImage()
        lblBookName.text = book.name
        lblBookDiscription.text = book.description
        lblBookPublishedDate.text = book.publishedDate
        lblBookAuthor.text = book.author
        
        makeRoundCorner(view: viewbackground)
    }

    func makeRoundCorner(view: UIView) -> Void {
        view.layer.cornerRadius = 8
        dropShadow(view)
    }
    
    func dropShadow(_ view:UIView) {
        view.layer.shadowColor = UIColor.black.cgColor
        view.layer.shadowOpacity = 0.2
        view.layer.shadowOffset = CGSize.zero
        view.layer.shadowRadius = 2
    }
}

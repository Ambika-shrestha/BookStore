//
//  ViewController.swift
//  BookStore
//
//  Created by Ambika on 8/5/20.
//  Copyright © 2020 BookStore. All rights reserved.
//

import UIKit

class BookListViewController: UIViewController {

    
    @IBOutlet weak var bookListTableView: UITableView!
    var booklistmodel = BookListViewModel()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }


    
}
extension BookListViewController:UITableViewDelegate,UITableViewDataSource{
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return booklistmodel.count
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let selectedBook = booklistmodel.objectAt(indexPath)
        self.performSegue(withIdentifier:"seguedetails", sender: selectedBook)
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "bookCell") as? BookTableViewCell else{
            return UITableViewCell()
        }
        
        let book = booklistmodel.objectAt(indexPath)
        cell.configCell(book)
        
        return cell
    }
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let objBookDetail = segue.destination as? BookDetailsViewController{
            objBookDetail.bookDetailsViewModel.book = sender as? Book
        }
    }
}


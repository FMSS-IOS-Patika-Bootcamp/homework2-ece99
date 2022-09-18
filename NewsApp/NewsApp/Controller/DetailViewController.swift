//
//  DetailViewController.swift
//  NewsApp
//
//  Created by Ece Ayvaz on 18.09.2022.
//

import UIKit

class DetailViewController: UIViewController {
    
    var new: News!
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func viewDidLoad() {
        image.image = UIImage(named: new.image)
        descriptionLabel.text = new.description
        super.viewDidLoad()
    }
    
    @IBAction func viewWebDetail(_ sender: Any) {
    }
    
}

//
//  DetailViewController.swift
//  NewsApp
//
//  Created by Ece Ayvaz on 18.09.2022.
//

import UIKit
import WebKit

class DetailViewController: UIViewController {
    
    var new: News!
    
    @IBOutlet weak var image: UIImageView!
    @IBOutlet weak var descriptionLabel: UILabel!
    
    override func viewDidLoad() {
        image.image = UIImage(named: new.image)
        descriptionLabel.text = new.description
        navigationItem.title = new.title
        super.viewDidLoad()
    }
    
    
    // Open new's web link
    @IBAction func viewWebDetail(_ sender: Any) {
        guard let url = URL(string: new.link) else {
            return
        }
        let webViewVC = WebViewViewController(url: url)
        let navigationVC = UINavigationController(rootViewController: webViewVC)
        present(navigationVC, animated: true)
    }
    
}

//
//  NewCollectionViewCell.swift
//  NewsApp
//
//  Created by Ece Ayvaz on 18.09.2022.
//

import UIKit

class NewCollectionViewCell: UICollectionViewCell {

    @IBOutlet weak var imageView: UIImageView!
    
    @IBOutlet weak var title: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    
    // Configure method use for setting new's data
    func configure(model : News){
        imageView.image = UIImage(named: model.image)
        title.text = model.title
    }

}

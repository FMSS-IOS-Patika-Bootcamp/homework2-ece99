//
//  ViewController.swift
//  NewsApp
//
//  Created by Ece Ayvaz on 18.09.2022.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var collectionView: UICollectionView!
    
    override func viewDidLoad() {
        collectionView.delegate = self
        collectionView.dataSource = self
        super.viewDidLoad()
        collectionView.backgroundColor = nil
        collectionView.register(UINib(nibName: "NewCollectionViewCell", bundle: nil), forCellWithReuseIdentifier: "NewCell")
        
        let layout = UICollectionViewFlowLayout()
        layout.sectionInset = UIEdgeInsets(top: 20, left: 10, bottom: 20, right: 10)
        layout.minimumInteritemSpacing = 5
        layout.minimumLineSpacing = 20
        
        let collectionWidth = collectionView.frame.size.width
        let cellWidth = (collectionWidth -  60) / 2
        layout.itemSize = CGSize(width: cellWidth , height: cellWidth + 45)
        
        collectionView.collectionViewLayout = layout
    }
    
    // Adding news list manually
    var newList = [
        News(title: "Hellog", image: nil, description: "Haber tanımı", link: "https://www.google.com/"),
                 News(title: "Hellog", image: "hello", description: "Haber tanımı", link: "https://www.google.com/"),
                 News(title: "Meta", image: "meta", description: "Haber tanımı", link: "https://www.google.com/"),
                 News(title: "Venus", image: "venus", description: "Haber tanımı", link: "https://www.google.com/")
    ]
}

extension ViewController : UICollectionViewDelegate , UICollectionViewDataSource{
    
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return newList.count
    }
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = collectionView.dequeueReusableCell(withReuseIdentifier: "NewCell", for: indexPath) as! NewCollectionViewCell
        cell.layer.cornerRadius = 10
        cell.backgroundColor = .white
        cell.layer.borderColor = UIColor.lightGray.cgColor
        cell.layer.borderWidth = 1
        cell.layer.masksToBounds = true
        cell.configure(model: newList[indexPath.row])
        
        return cell
    }
    func collectionView(_ collectionView: UICollectionView, didSelectItemAt indexPath: IndexPath) {
        
        let new = newList[indexPath.row]
        
        let storyBoard = UIStoryboard(name: "Main", bundle: nil)
        
        if let controller = storyBoard.instantiateViewController(withIdentifier: "DetailVC") as? DetailViewController {
            controller.new = new
            navigationController?.pushViewController(controller, animated: true)
        }
    }
}


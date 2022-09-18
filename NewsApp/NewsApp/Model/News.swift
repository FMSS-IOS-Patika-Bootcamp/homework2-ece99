//
//  News.swift
//  NewsApp
//
//  Created by Ece Ayvaz on 18.09.2022.
//

import Foundation


struct News {
    
    let title : String
    let image: String
    let description : String
    let link : String
    
    init(title: String?,image: String?, description: String?, link: String?){
        self.title = title ?? "No new"
        self.image = image ?? "new"
        self.description = description ?? "No description"
        self.link = link ?? "No weblink"
    }
}

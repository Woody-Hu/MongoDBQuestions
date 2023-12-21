//
//  CategoryInfo.swift
//  MongoDBQuestions
//
//  Created by Stephen Hu on 2023/11/28.
//

import Foundation

struct CategoryInfo{
    let name:String
    let description:String
    let imageName:String
    
    init(name: String, description: String, imageName: String) {
        self.name = name
        self.description = description
        self.imageName = imageName
    }
}

//
//  CategoryInfo.swift
//  MongoDBQuestions
//
//  Created by Stephen Hu on 2023/11/28.
//

import Foundation

struct CategoryInfo{
    let name:String
    let Description:String
    let imageName:String
    
    init(name: String, Description: String, imageName: String) {
        self.name = name
        self.Description = Description
        self.imageName = imageName
    }
}

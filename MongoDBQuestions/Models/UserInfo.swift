//
//  UserInfo.swift
//  MongoDBQuestions
//
//  Created by Stephen Hu on 2023/11/6.
//

import Foundation

struct UserInfo:Identifiable
{
    let id:String
    let createdDateTime:Date
    let name:String
    
    init(id: String, createdDateTime: Date, name:String) {
        self.id = id
        self.createdDateTime = createdDateTime
        self.name = name
    }
}

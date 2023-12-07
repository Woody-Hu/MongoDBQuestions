//
//  UserInfo.swift
//  MongoDBQuestions
//
//  Created by Stephen Hu on 2023/11/6.
//

import Foundation

struct UserInfo:Identifiable
{
    let id:UUID
    let createdDateTime:Date
    let name:String
    
    init(id: UUID, createdDateTime: Date, name:String) {
        self.id = id
        self.createdDateTime = createdDateTime
        self.name = name
    }
}

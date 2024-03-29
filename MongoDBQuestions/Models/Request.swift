//
//  Request.swift
//  MongoDBQuestions
//
//  Created by Stephen Hu on 2023/11/7.
//

import Foundation

struct Request:Identifiable
{
    let id:UUID
    let userId: String
    let createdDateTime : Date
    let questions: [Question]
    let group:String
    init(id: UUID, userId: String, createdDateTime: Date, group:String, questions: [Question]) {
        self.id = id
        self.userId = userId
        self.createdDateTime = createdDateTime
        self.questions = questions
        self.group = group
    }
}

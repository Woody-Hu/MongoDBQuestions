//
//  QuestionRecord.swift
//  MongoDBQuestions
//
//  Created by Stephen Hu on 2023/11/6.
//

import Foundation

struct QuestionRecord:Identifiable
{
    let id:UUID
    let questionId:String
    let timeUsage:Double
    let requestId:String
    
    init(id: UUID, questionId: String, timeUsage: Double, requestId: String) {
        self.id = id
        self.questionId = questionId
        self.timeUsage = timeUsage
        self.requestId = requestId
    }   
}

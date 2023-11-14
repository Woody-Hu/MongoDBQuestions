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
    let duration:Double
    let requestId:String
    let selectOptionIds:[String]
    let success:Bool
    
    init(id: UUID, questionId: String, duration: Double, requestId: String, selectOptionIds:[String], success:Bool) {
        self.id = id
        self.questionId = questionId
        self.duration = duration
        self.requestId = requestId
        self.selectOptionIds = selectOptionIds
        self.success = success
    }
}

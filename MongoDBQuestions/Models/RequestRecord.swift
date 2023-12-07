//
//  RequestRecord.swift
//  MongoDBQuestions
//
//  Created by Stephen Hu on 2023/11/8.
//

import Foundation

struct RequestRecord:Identifiable
{
    let id:UUID
    let requestId:String
    let finishDate:Date
    let score:Int
    let questionRecord:[QuestionRecord]
    let totalDuration: Double
    
    init(id: UUID, requestId: String, finishDate:Date, score:Int, questionRecord:[QuestionRecord], totalDuration: Double) {
        self.id = id
        self.requestId = requestId
        self.finishDate = finishDate
        self.score = score
        self.questionRecord = questionRecord
        self.totalDuration = totalDuration
    }
}

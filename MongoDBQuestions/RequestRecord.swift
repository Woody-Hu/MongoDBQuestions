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
    let questionIds: [String]
    let rightQuestionIds : [String]
    let failQuestionIds: [String]
    let totalDuration: Double
    
    init(id: UUID, requestId: String, finishDate:Date) {
        self.id = id
        self.requestId = requestId
        self.finishDate = finishDate
        self.score = 0
        self.questionIds = []
        self.rightQuestionIds = []
        self.failQuestionIds = []
        self.totalDuration = 0.0
    }
}

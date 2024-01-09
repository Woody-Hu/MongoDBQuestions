//
//  HistoryInfo.swift
//  MongoDBQuestions
//
//  Created by Stephen Hu on 2023/12/6.
//

import Foundation
struct RequestHistoryInfo:Identifiable
{
    let id:UUID
    let requestRecordId:String
    let requestDate:Date
    let inputGroup:String
    let score:Int
    let historyName:String
    let questionHistoryInfos: [QuestionHistoryInfo]
    
    init(requestRecordId: String, requestDate: Date, inputGroup: String, score: Int, questionHistoryInfos : [QuestionHistoryInfo] ) {
        self.id = UUID()
        self.requestRecordId = requestRecordId
        self.requestDate = requestDate
        self.inputGroup = inputGroup
        self.score = score
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "YY/MM/dd"
        self.historyName = dateFormatter.string(from: self.requestDate)
        self.questionHistoryInfos = questionHistoryInfos
    }
}

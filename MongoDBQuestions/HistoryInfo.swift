//
//  HistoryInfo.swift
//  MongoDBQuestions
//
//  Created by Stephen Hu on 2023/12/6.
//

import Foundation
struct HistoryInfo
{
    let requestRecordI:String
    let requestDate:Date
    let requestCategory:String
    let score:Int
    let historyName:String
    
    init(requestRecordI: String, requestDate: Date, requestCategory: String, score: Int) {
        self.requestRecordI = requestRecordI
        self.requestDate = requestDate
        self.requestCategory = requestCategory
        self.score = score
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "YY/MM/dd"
        self.historyName = dateFormatter.string(from: self.requestDate)
    }
}

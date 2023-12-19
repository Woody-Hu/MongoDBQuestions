//
//  QuestionHistoryInfo.swift
//  MongoDBQuestions
//
//  Created by Stephen Hu on 2023/12/13.
//

import Foundation

struct QuestionHistoryInfo
{
    let currentIndex:Int
    let total:Int
    let questionDescrption:String
    let selectHistory:[SelectHistoryInfo]
    
    init(currentIndex: Int, total: Int, questionDescrption: String, selectHistory: [SelectHistoryInfo]) {
        self.currentIndex = currentIndex
        self.total = total
        self.questionDescrption = questionDescrption
        self.selectHistory = selectHistory
    }
}

//
//  SelectOptionInfo.swift
//  MongoDBQuestions
//
//  Created by Stephen Hu on 2023/12/11.
//

import Foundation

struct SelectHistoryInfo
{
    let optionId:String
    let optionValue:String
    let questionId:String
    let selectState:SelectState
    
    init(optionId: String, optionValue: String, questionId: String, selectState: SelectState) {
        self.optionId = optionId
        self.optionValue = optionValue
        self.questionId = questionId
        self.selectState = selectState
    }
}

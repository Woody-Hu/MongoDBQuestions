//
//  QuestionOption.swift
//  MongoDBQuestions
//
//  Created by Stephen Hu on 2023/11/2.
//

import Foundation
struct  QuestionOption:Codable
{
    let optionValue : String
    let optionId: String
    let questionId: String
    let baseOptionId: String

    // init method
    init(optionValue: String, optionId: String)
    {
        self.optionValue = optionValue
        self.optionId = optionId
        self.questionId = ""
        self.baseOptionId = ""
    }
}

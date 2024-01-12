//
//  QuestionHistoryInfo.swift
//  MongoDBQuestions
//
//  Created by Stephen Hu on 2023/12/13.
//

import Foundation

struct QuestionHistoryInfo
{
    let questionId:String
    let currentIndex:Int
    let total:Int
    let questionDescrption:String
    let selectHistory:[SelectHistoryInfo]
    
    init(questionId:String, currentIndex: Int, total: Int, questionDescrption: String, selectHistory: [SelectHistoryInfo]) {
        self.questionId = questionId
        self.currentIndex = currentIndex
        self.total = total
        self.questionDescrption = questionDescrption
        self.selectHistory = selectHistory
    }
    
    static func FromQuestion(question:Question, currentIndex:Int, total:Int, selectOptions:[QuestionOption]) -> QuestionHistoryInfo
    {
        var selectArray = Array<SelectHistoryInfo>()
        for option in question.options
        {
            var selectState = SelectState.normal
            let isAnswer = question.correctOptionIds.contains(option.optionId)
            let select = selectOptions.contains(where: { (selectOption) -> Bool in
                selectOption.optionId == option.optionId
            })

            if isAnswer && select
            {
                selectState = SelectState.selectRight
            }
            else if isAnswer && !select
            {
                selectState = SelectState.selectFail
            }
            else if !isAnswer && select
            {
                selectState = SelectState.unselectFail
            }

            selectArray.append(SelectHistoryInfo.FromQuestionOption(questionOption: option, selectState: selectState))
        }
        
        return QuestionHistoryInfo(questionId: question.id.uuidString, currentIndex: currentIndex, total: total, questionDescrption: question.questionDescription, selectHistory: selectArray)
    }
    
}

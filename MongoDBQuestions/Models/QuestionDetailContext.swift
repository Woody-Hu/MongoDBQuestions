//
//  QuestionDetailContext.swift
//  MongoDBQuestions
//
//  Created by Stephen Hu on 2024/1/16.
//

import Foundation
class QuestionDetailContext:ObservableObject
{
    @Published var currentIndex:Int = 0
    
    @Published var currentQuestionDesription:String = ""
    
    @Published var currentQuestionOptions:[QuestionOption] = []

    var currentQuestion:Question {
        return questions[currentIndex]
    }
    
    let totalCount:Int = 10
    
    let questions:[Question] = []
    
    var selectOptionIds:[String] = []
    
    var questionHistoryInfos: [QuestionHistoryInfo] = []

    var hasNext:Bool {
        return currentIndex  < totalCount
    }
    
    init(currentIndex: Int) {
        self.currentIndex = currentIndex
    }   

    func completeCurrent()
    {
        let selectOptions = currentQuestionOptions.filter { (option) -> Bool in
            selectOptionIds.contains(option.optionId)
        }

        let questionHistoryInfo = QuestionHistoryInfo.FromQuestion(question: currentQuestion, currentIndex: currentIndex, total: totalCount, selectOptions: selectOptions)
        questionHistoryInfos.append(questionHistoryInfo)
    }

    func next()
    {
        if hasNext
        {
            currentIndex += 1
            currentQuestionDesription = currentQuestion.questionDescription
            currentQuestionOptions = currentQuestion.options
            selectOptionIds = []
        }
    }
}

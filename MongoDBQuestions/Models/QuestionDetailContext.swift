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
    
    let totalCount:Int = 10
    
    let questions:[Question] = []
    
    var selectOptionIds:[String] = []
    
    var questionHistoryInfos: [QuestionHistoryInfo] = []
    
    init(currentIndex: Int) {
        self.currentIndex = currentIndex
    }   
}

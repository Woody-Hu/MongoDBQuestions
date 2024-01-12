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
    let requestId:String
    let requestDate:Date
    let inputGroup:String
    let score:Int
    let historyName:String
    let questionHistoryInfos: [QuestionHistoryInfo]
    
    init(requestId: String, requestDate: Date, inputGroup: String, score: Int, questionHistoryInfos : [QuestionHistoryInfo] ) {
        self.id = UUID()
        self.requestId = requestId
        self.requestDate = requestDate
        self.inputGroup = inputGroup
        self.score = score
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = "YY/MM/dd"
        self.historyName = dateFormatter.string(from: self.requestDate)
        self.questionHistoryInfos = questionHistoryInfos
    }
    
    static func FromRequest(request:Request, questionSelect:[String:[QuestionOption]]) -> RequestHistoryInfo
    {
        var questionHistoryInfos = Array<QuestionHistoryInfo>()
        var i = 1
        let total = request.questions.count
        var rightCount = 0
        for question in request.questions {
            var currentSelect = Array<QuestionOption>()
            if let temp = questionSelect[question.id.uuidString]
            {
                currentSelect = temp
            }
            
            let questionHistory = QuestionHistoryInfo.FromQuestion(question: question, currentIndex: i, total: total, selectOptions: currentSelect)
            let isRight = !questionHistory.selectHistory.contains { info in
                info.selectState == SelectState.selectFail || info.selectState == SelectState.unselectFail
            }
            
            questionHistoryInfos.append(QuestionHistoryInfo.FromQuestion(question: question, currentIndex: i, total: total, selectOptions: currentSelect))
            i = i + 1
            
            if isRight
            {
                rightCount = rightCount + 1
            }
        }
        
        let score = rightCount/total
        return RequestHistoryInfo(requestId: request.id.uuidString, requestDate: request.createdDateTime, inputGroup: request.group, score: score, questionHistoryInfos: questionHistoryInfos)
        
    }
}

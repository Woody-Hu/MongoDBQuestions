//
//  RequestContext.swift
//  MongoDBQuestions
//
//  Created by Stephen Hu on 2023/11/15.
//

import Foundation

class RequestContext
{
    let userInfo: UserInfo

    let currentRequest: Request

    var questionRecords: [QuestionRecord]

    internal init(userInfo: UserInfo, currentRequest: Request)
    {
        self.userInfo = userInfo
        self.currentRequest = currentRequest
        self.questionRecords = []
    }

    func AppendQuestionRecord(questionRecord:QuestionRecord)
    {
        self.questionRecords.append(questionRecord)
    }

    func FinishRequest() -> RequestRecord
    {
        var rightAnswerCount = 0 
        rightAnswerCount = self.questionRecords.filter{ $0.success == true }.count
        var totalCount = self.currentRequest.questions.count
        var score: Int = 0
        if totalCount > 0
        {
            score = rightAnswerCount * 100 / totalCount
        }

        let finishDate : Date  = Date()
        let totalDuration = finishDate.timeIntervalSince(self.currentRequest.createdDateTime)
        let requestRecord = RequestRecord( id: UUID(), requestId: self.currentRequest.id.uuidString, finishDate: finishDate, score: score, questionRecord: self.questionRecords, totalDuration: totalDuration)
        return requestRecord
    }


}

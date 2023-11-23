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
    
    var currentIndex:Int

    internal init(userInfo: UserInfo, currentRequest: Request)
    {
        self.userInfo = userInfo
        self.currentRequest = currentRequest
        self.questionRecords = []
        self.currentIndex = -1
    }

    func TotalCount() -> Int
    {
        return self.currentRequest.questions.count
    }

    func HaveNext() -> Bool
    {
        return self.currentIndex < self.currentRequest.questions.count - 1
    }

    func GetNext() -> Question?
    {
        self.currentIndex += 1
        if self.currentIndex >= self.currentRequest.questions.count
        {
            return nil
        }
        else
        {
            return self.currentRequest.questions[self.currentIndex]
        }
    }

    func AppendQuestionRecord(questionRecord:QuestionRecord)
    {
        self.questionRecords.append(questionRecord)
    }

    func FinishRequest() -> RequestRecord
    {
        var rightAnswerCount = 0 
        rightAnswerCount = self.questionRecords.filter{ $0.success == true }.count
        let totalCount = self.currentRequest.questions.count
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

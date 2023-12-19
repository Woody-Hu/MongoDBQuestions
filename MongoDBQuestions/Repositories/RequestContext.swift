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
    
    var currentIndex:Int

    internal init(userInfo: UserInfo, currentRequest: Request)
    {
        self.userInfo = userInfo
        self.currentRequest = currentRequest
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
}

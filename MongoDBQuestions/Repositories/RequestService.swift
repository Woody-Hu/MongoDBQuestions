//
//  RequestService.swift
//  MongoDBQuestions
//
//  Created by Stephen Hu on 2023/11/14.
//

import Foundation

class RequestService
{
    let questionRepository: IQuestionRepository

    var requestContext : RequestContext?

    var user : UserInfo

    init(questionRepository: IQuestionRepository, user:UserInfo)
    {
        self.questionRepository = questionRepository
        self.user = user
    }

    func GetRequestContext(count: Int = 20, inputGroup:String = "All") -> RequestContext
    {
        var usedCount = count
        if usedCount < 0
        {
            usedCount = 20
        }
        
        if let requestContext = self.requestContext
        {
            return requestContext
        }
        else
        {
            let request = GetRequest(user: user, count: usedCount, inputGroup: inputGroup)
            let requestContext  = RequestContext(userInfo: user, currentRequest: request)
            self.requestContext = requestContext
            return requestContext
        }
    }
    
    func ClearCurrentRequestContext()
    {
        self.requestContext = nil
    }

    func SaveRequestRecord()
    {
        let requestContext = GetRequestContext()
        // todo 
    }

    fileprivate func GetRequest(user:UserInfo, count: Int, inputGroup:String) -> Request
    {
        var questions: [Question] = []
        questions = questionRepository.GetQeustionsByGroup(inputGroup: inputGroup, count: count)

        questions.shuffle()
        let request = Request(id: UUID(), userId: user.id, createdDateTime: Date(), questions: questions)
        return request
    }
}

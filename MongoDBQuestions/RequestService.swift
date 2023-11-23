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

    let requestRecordRepository : IRequestRecordRepository

    let userRepository : IUserInfoRepository

    var requestContext : RequestContext?

    var user : UserInfo?

    init(questionRepository: IQuestionRepository, requestRecordRepository : IRequestRecordRepository, userRepository : IUserInfoRepository)
    {
        self.questionRepository = questionRepository
        self.requestRecordRepository = requestRecordRepository
        self.userRepository = userRepository
    }

    func GetUserInfo() -> UserInfo
    {
        if let user = self.user
        {
            return user
        }
        else
        {
            let user = userRepository.GetOrAddCurrentUserInfo()
            self.user = user
            return user
        }
    }

    func GetRequestContext(count: Int = 20, inputCategories:[String] = []) -> RequestContext
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
            let user = GetUserInfo()
            let request = GetRequest(user: user, count: usedCount, inputCategories: inputCategories)
            let requestContext  = RequestContext(userInfo: user, currentRequest: request)
            self.requestContext = requestContext
            return requestContext
        }
    }
    
    func GetRequestRecords() -> [RequestRecord]
    {
        return self.requestRecordRepository.GetAllRequestRecordsSortByFinishDate()
    }
    
    func DeleteRequestRecord(input : RequestRecord) -> Bool
    {
        return self.requestRecordRepository.DeleteRequestRecord(input: input)
    }
    
    func ClearCurrentRequestContext()
    {
        self.requestContext = nil
    }

    func SaveRequestRecord()
    {
        let requestContext = GetRequestContext()
        let savRes = SaveRequestRecord(requestContext: requestContext)
        if savRes
        {
            ClearCurrentRequestContext()
        }
    }

    fileprivate func GetRequest(user:UserInfo, count: Int, inputCategories:[String]) -> Request
    {
        var questions: [Question] = []
        if inputCategories.count == 0
        {
            questions =  questionRepository.GetAllQuestions(count: count)
        }
        else
        {
            questions = questionRepository.GetlQeustionsByCategories(inputCategories: inputCategories, count: count)
        }

        questions.shuffle()
        let request = Request(id: UUID(), userId: user.id.uuidString, createdDateTime: Date(), questions: questions)
        return request
    }

    fileprivate func SaveRequestRecord(requestContext:RequestContext) -> Bool
    {
        let requestRecord = requestContext.FinishRequest()
        let saveRes = requestRecordRepository.SaveRequestRecord(input: requestRecord)
        return saveRes
    }
}

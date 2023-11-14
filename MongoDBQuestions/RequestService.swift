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

    init(questionRepository: IQuestionRepository)
    {
        self.questionRepository = questionRepository
    }

    func GetRequest(user:UserInfo, count: Int = 20) -> Request
    {
        return GetRequest(user: user, count: count, inputCategories: [])
    }

    func GetRequest(user:UserInfo, count: Int, inputCategories:[String]) -> Request
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

        let request = Request(id: UUID(), userId: user.id.uuidString, createdDateTime: Date(), questions: questions)
        
        return request
    }

}

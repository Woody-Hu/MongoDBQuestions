//
//  MemoryQuestionRepository.swift
//  MongoDBQuestions
//
//  Created by Stephen Hu on 2024/1/2.
//

import Foundation
class MemoryQuestionRepository:IQuestionRepository
{
    let questions:[Question]
    
    init()
    {
        questions = [
            Question(id: UUID(uuidString: "b98171f3-f4a4-47f9-b43e-15b377ffea97")!, questionDescription: "test question", title: "test 1", options: [QuestionOption(optionValue: "test right", optionId: "1"), QuestionOption(optionValue: "test fail", optionId: "2")], correctOptionIds: ["1"], groups: ["All", "Test"]),
        ]
    }
    
    func GetAllQuestions(count: Int) -> [Question] {
        return []
    }
    
    func GetQeustionsByGroup(inputGroup: String, count: Int) -> [Question] {
        return []
    }
}

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
            Question(id: UUID(uuidString: "a3c20c28-5ab9-45a2-81d0-d0779c923b10")!, questionDescription: "test question 2", title: "test 2", options: [QuestionOption(optionValue: "test right 1", optionId: "1"), QuestionOption(optionValue: "test fail", optionId: "2"), QuestionOption(optionValue: "test right 2", optionId: "3")], correctOptionIds: ["1", "3"], groups: ["All", "Test"]),
        ]
    }
    
    func GetAllQuestions(count: Int) -> [Question] {
        return GetQeustionsByGroup(inputGroup:"All", count:count)
    }
    
    func GetQeustionsByGroup(inputGroup: String, count: Int) -> [Question] {
        return Array(questions.filter{question in question.groups.contains(inputGroup)}.shuffled()[0..<count])
    }
}

//
//  Question.swift
//  MongoDBQuestions
//
//  Created by Stephen Hu on 2023/11/2.
//

import Foundation
struct Question : Identifiable, Codable
{
    let id:UUID
    let title:String
    var questionDescription: String
    let options: [QuestionOption]
    let correctOptionIds: Set<String>
    let parentQuestionId:String
    let groups:[String]

    init(id: UUID, questionDescription: String, title:String = "", options: [QuestionOption], correctOptionIds: Set<String>, groups:[String] = ["All"], parentQuestionId: String = "")
    {
        self.id = id
        self.title = ""
        self.questionDescription = questionDescription
        self.options = options
        self.correctOptionIds = correctOptionIds
        self.parentQuestionId = ""
        self.groups = groups
    }
}

extension Question{
    // to json
    func toJson() -> String
    {
        let encoder = JSONEncoder()
        encoder.outputFormatting = .prettyPrinted
        let data = try! encoder.encode(self)
        return String(data: data, encoding: .utf8)!
    }

    // from json
    static func fromJson(_ input: String) -> Question
    {
        let decoder = JSONDecoder()
        let data = input.data(using: .utf8)!
        return try! decoder.decode(Question.self, from: data)
    }
}


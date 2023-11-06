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
    let questionDescription: String
    let options: [QuestionOption]
    let correctOptionIds: Set<String>
    let images: [ImageInfo]
    let link: URL
    let extendedDescription: String
    let parentQuestionId:String

    init(id: UUID, questionDescription: String, options: [QuestionOption], correctOptionIds: Set<String>, images: [ImageInfo], link: URL, extendedDescription: String)
    {
        self.id = id
        self.questionDescription = questionDescription
        self.options = options
        self.correctOptionIds = correctOptionIds
        self.images = images
        self.link = link
        self.extendedDescription = extendedDescription
        self.parentQuestionId = ""
    }
    
    func isAnswer(_ input:[QuestionOption]) -> Bool
    {
        var res = false;
        input.forEach { item in
            res = res && correctOptionIds.contains(item.optionId)
        }
        
        return res;
    }
    
    func shuffleOptions() -> [QuestionOption]
    {
        var res = Array(options)
        res.shuffle();
        return res;
    }
}

extension Question{
    // get empty question
    static func getEmptyQuestion() -> Question
    {
        return Question(id: UUID(), questionDescription: "", options: [], correctOptionIds: [], images: [], link: URL(string: "https://www.mongodb.com")!, extendedDescription: "")
    }

    // get sample question
    static func getSampleQuestion() -> Question
    {
        return Question(id: UUID(), questionDescription: "test quest", options: [QuestionOption(optionValue: "value", optionId: "id")], correctOptionIds: ["id"], images: [], link: URL(string: "https://www.mongodb.com")!, extendedDescription: "")
    }

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


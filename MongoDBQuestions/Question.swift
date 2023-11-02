//
//  Question.swift
//  MongoDBQuestions
//
//  Created by Stephen Hu on 2023/11/2.
//

import Foundation
import UIKit
struct Question
{
    let questionDescription: String
    let options: [QuestionOption]
    let correctOptionIds: Set<String>
    let images: [UIImage]
    let link: URL
    let extendedDescription: String
    
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

//
//  QuestionDetailContext.swift
//  MongoDBQuestions
//
//  Created by Stephen Hu on 2024/1/16.
//

import Foundation
class QuestionDetailContext:ObservableObject
{
    @Published var currentIndex:Int
    
    init(currentIndex: Int) {
        self.currentIndex = currentIndex
    }   
}

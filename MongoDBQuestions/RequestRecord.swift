//
//  RequestRecord.swift
//  MongoDBQuestions
//
//  Created by Stephen Hu on 2023/11/8.
//

import Foundation

struct RequestRecord:Identifiable
{
    let id:UUID
    let requestId:String
    
    init(id: UUID, requestId: String) {
        self.id = id
        self.requestId = requestId
    }
}

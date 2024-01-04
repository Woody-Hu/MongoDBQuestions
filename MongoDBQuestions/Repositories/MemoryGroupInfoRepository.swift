//
//  MemoryGroupInfoRepository.swift
//  MongoDBQuestions
//
//  Created by Stephen Hu on 2024/1/4.
//

import Foundation

class MemoryGroupInfoRepository:IGroupInfoRepository
{
    let groupInfos:[GroupInfo]
    
    init()
    {
        groupInfos = [
            GroupInfo(name: "All", description: "get all questions", imageName: ""),
            GroupInfo(name: "Test", description: "get test questions", imageName: ""),
        ]
    }
    
    func GetAllGroupInfos() -> [GroupInfo] {
        return groupInfos
    }
}

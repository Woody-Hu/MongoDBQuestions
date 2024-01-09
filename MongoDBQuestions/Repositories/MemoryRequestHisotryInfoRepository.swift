//
//  MemoryRequestHisotryInfoRepository.swift
//  MongoDBQuestions
//
//  Created by Stephen Hu on 2024/1/9.
//

import Foundation

class MemoryRequestHisotryInfoRepository:IRequestHistoryInfoRepository
{
    var _requestHistoryInfos:[RequestHistoryInfo]

    init()
    {
        _requestHistoryInfos = []
    }

    func GetRequestHistoryInofs(count: Int) -> [RequestHistoryInfo] {
        return Array(_requestHistoryInfos[0...count])
    }
    
    func AddRequestHistoryInfo(input: RequestHistoryInfo) {
        _requestHistoryInfos.append(input)
    }
    
    
}

//
//  IRequestHistoryInfoRepository.swift
//  MongoDBQuestions
//
//  Created by Stephen Hu on 2024/1/9.
//

import Foundation
protocol IRequestHistoryInfoRepository
{
    func GetRequestHistoryInofs(count: Int) -> [RequestHistoryInfo]
    
    func AddRequestHistoryInfo(input: RequestHistoryInfo)
}

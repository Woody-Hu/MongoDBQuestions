//
//  IGroupInfoRepository.swift
//  MongoDBQuestions
//
//  Created by Stephen Hu on 2024/1/4.
//

import Foundation
protocol IGroupInfoRepository
{
    func GetAllGroupInfos() -> [GroupInfo]
}

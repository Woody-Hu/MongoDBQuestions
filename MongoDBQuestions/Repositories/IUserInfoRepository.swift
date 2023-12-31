//
//  IUserInfoRepository.swift
//  MongoDBQuestions
//
//  Created by Stephen Hu on 2023/11/10.
//

import Foundation

protocol IUserInfoRepository
{
    func GetOrAddCurrentUserInfo() -> UserInfo
}

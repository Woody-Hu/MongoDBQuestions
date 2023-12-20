//
//  StaticUserInfoRepository.swift
//  MongoDBQuestions
//
//  Created by Stephen Hu on 2023/12/20.
//

import Foundation
class MemoryUserInfoRepository:IUserInfoRepository
{
    var _currentUserInfo:UserInfo?

    func GetOrAddCurrentUserInfo() -> UserInfo {
        if _currentUserInfo == nil
        {
            _currentUserInfo = UserInfo(id: "1", createdDateTime: Date(), name: "default")
        }

        return _currentUserInfo!
    }
}

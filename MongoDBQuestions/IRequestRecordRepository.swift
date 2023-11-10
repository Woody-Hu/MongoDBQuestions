//
//  IRequestRecordRepository.swift
//  MongoDBQuestions
//
//  Created by Stephen Hu on 2023/11/10.
//

import Foundation

protocol IRequestRecordRepository
{
    func AddRequestRecord(input: RequestRecord) -> Bool
    func GetAllRequestRecordsSortByFinishDate() -> [RequestRecord]
}

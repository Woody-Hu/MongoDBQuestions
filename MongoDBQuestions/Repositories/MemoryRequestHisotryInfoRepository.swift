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
    
    static func GetSampleRequestHistoryInfos() -> [RequestHistoryInfo]
    {
        return  [RequestHistoryInfo(requestId: "1", requestDate: Date(), inputGroup:"test", score: 100, questionHistoryInfos: [QuestionHistoryInfo (questionId: "1", currentIndex: 2, total: 15, questionDescrption: "Amongst which of the following is / are true about MongoDB?", selectHistory: [SelectHistoryInfo(optionId: "1", optionValue: "test value", questionId: "1", selectState: .selectRight),SelectHistoryInfo(optionId: "2", optionValue: "test value 2", questionId: "2", selectState: .selectFail), SelectHistoryInfo(optionId: "4", optionValue: "test value 4", questionId: "1", selectState: .unselectFail), SelectHistoryInfo(optionId: "3", optionValue: "test value 3", questionId: "1", selectState: .normal) ])])]
    }
    
    static func GetSampleQuestionHistoryInfo() -> [QuestionHistoryInfo]
    {
        return [
            QuestionHistoryInfo (questionId:"1", currentIndex: 2, total: 15, questionDescrption: "Amongst which of the following is / are true about MongoDB?", selectHistory: [SelectHistoryInfo(optionId: "1", optionValue: "test value", questionId: "1", selectState: .selectRight),SelectHistoryInfo(optionId: "2", optionValue: "test value 2", questionId: "2", selectState: .selectFail), SelectHistoryInfo(optionId: "4", optionValue: "test value 4", questionId: "1", selectState: .unselectFail), SelectHistoryInfo(optionId: "3", optionValue: "test value 3", questionId: "1", selectState: .normal) ]),
            QuestionHistoryInfo (questionId:"2", currentIndex: 3, total: 15, questionDescrption: "Amongst which of the following is / are true about MongoDB?", selectHistory: [SelectHistoryInfo(optionId: "1", optionValue: "test value", questionId: "1", selectState: .selectRight),SelectHistoryInfo(optionId: "2", optionValue: "test value 2", questionId: "2", selectState: .selectFail), SelectHistoryInfo(optionId: "4", optionValue: "test value 4", questionId: "1", selectState: .unselectFail), SelectHistoryInfo(optionId: "3", optionValue: "test value 3", questionId: "1", selectState: .normal) ])
        ]
    }
}

//
//  HistoryView.swift
//  MongoDBQuestions
//
//  Created by Stephen Hu on 2023/12/6.
//

import SwiftUI

struct HistoryView: View {
    let requestHisotryInfos: [RequestHistoryInfo]
    var body: some View {
        NavigationStack
        {
            List(requestHisotryInfos, id:\.requestId)
            {
                requestHisotryInfo in
                NavigationLink(destination: RequestHistoryView(score: requestHisotryInfo.score, questionHistoryInfos: requestHisotryInfo.questionHistoryInfos)){
                    HistoryRow(historyInfo: requestHisotryInfo)
                    
                }
                
            }
        }
    }
}

#Preview {
    HistoryView(requestHisotryInfos:[RequestHistoryInfo(requestId: "1", requestDate: Date(), inputGroup:"test", score: 100, questionHistoryInfos: [QuestionHistoryInfo (questionId: "1", currentIndex: 2, total: 15, questionDescrption: "Amongst which of the following is / are true about MongoDB?", selectHistory: [SelectHistoryInfo(optionId: "1", optionValue: "test value", questionId: "1", selectState: .selectRight),SelectHistoryInfo(optionId: "2", optionValue: "test value 2", questionId: "2", selectState: .selectFail), SelectHistoryInfo(optionId: "4", optionValue: "test value 4", questionId: "1", selectState: .unselectFail), SelectHistoryInfo(optionId: "3", optionValue: "test value 3", questionId: "1", selectState: .normal) ])])])
}

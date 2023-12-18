//
//  HistoryView.swift
//  MongoDBQuestions
//
//  Created by Stephen Hu on 2023/12/6.
//

import SwiftUI

struct HistoryView: View {
    let requestHisotryInfos: [HistoryInfo]
    var body: some View {
        NavigationStack
        {
            List(requestHisotryInfos, id:\.requestRecordId)
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
    HistoryView(requestHisotryInfos:[HistoryInfo(requestRecordId: "1", requestDate: Date(), requestCategory:"test", score: 100, questionHistoryInfos: [QuestionHistoryInfo ( currentIndex: 2, total: 15, questionDescrption: "Amongst which of the following is / are true about MongoDB?", selectOptionInfos: [SelectOptionInfo(optionId: "1", optionValue: "test value", questionId: "1", selectState: .selectRight),SelectOptionInfo(optionId: "2", optionValue: "test value 2", questionId: "2", selectState: .selectFail), SelectOptionInfo(optionId: "4", optionValue: "test value 4", questionId: "1", selectState: .unselectFail), SelectOptionInfo(optionId: "3", optionValue: "test value 3", questionId: "1", selectState: .normal) ])])])
}

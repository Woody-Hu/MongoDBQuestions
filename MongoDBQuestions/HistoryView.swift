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
    HistoryView(requestHisotryInfos:MemoryRequestHisotryInfoRepository.GetSampleRequestHistoryInfos())
}

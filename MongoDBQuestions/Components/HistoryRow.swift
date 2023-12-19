//
//  HistoryRow.swift
//  MongoDBQuestions
//
//  Created by Stephen Hu on 2023/12/7.
//

import SwiftUI

struct HistoryRow: View {
    let historyInfo: RequestHistoryInfo
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Text(historyInfo.historyName).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
                Spacer()
                Text(historyInfo.score.formatted()).font(/*@START_MENU_TOKEN@*/.title/*@END_MENU_TOKEN@*/)
            }
            
            Text(historyInfo.requestCategory).font(.subheadline)
        }
    }
}

#Preview {
    HistoryRow(historyInfo: RequestHistoryInfo(requestRecordId: "123", requestDate: Date(), requestCategory: "test", score: 100, questionHistoryInfos: []))
}

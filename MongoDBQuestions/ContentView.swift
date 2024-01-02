//
//  ContentView.swift
//  MongoDBQuestions
//
//  Created by Stephen Hu on 2023/11/2.
//

import SwiftUI

struct ContentView: View {
    let userInfoRepository:IUserInfoRepository
    let currentUser:UserInfo
    
    init()
    {
        userInfoRepository = MemoryUserInfoRepository()
        currentUser = userInfoRepository.GetOrAddCurrentUserInfo()
    }
    
    var body: some View {
        TabView
        {
            QuestionListView().tabItem { Label("Quize", systemImage: "play")}
            HistoryView(requestHisotryInfos: [RequestHistoryInfo(requestRecordId: "1", requestDate: Date(), inputGroup:"test", score: 100, questionHistoryInfos: [QuestionHistoryInfo ( currentIndex: 2, total: 15, questionDescrption: "Amongst which of the following is / are true about MongoDB?", selectHistory: [SelectHistoryInfo(optionId: "1", optionValue: "test value", questionId: "1", selectState: .selectRight),SelectHistoryInfo(optionId: "2", optionValue: "test value 2", questionId: "2", selectState: .selectFail), SelectHistoryInfo(optionId: "4", optionValue: "test value 4", questionId: "1", selectState: .unselectFail), SelectHistoryInfo(optionId: "3", optionValue: "test value 3", questionId: "1", selectState: .normal) ])])]).tabItem { Label("History", systemImage: "book") }
            
            SettingView().tabItem {Label("Settings", systemImage: "gearshape") }
            
        }
    }
}

#Preview {
    ContentView()
}

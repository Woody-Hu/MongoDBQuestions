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
    let groupInfoRepository:IGroupInfoRepository
    let questionRepository:IQuestionRepository
    
    init()
    {
        userInfoRepository = MemoryUserInfoRepository()
        currentUser = userInfoRepository.GetOrAddCurrentUserInfo()
        groupInfoRepository = MemoryGroupInfoRepository()
        questionRepository = MemoryQuestionRepository()
    }
    
    var body: some View {
        TabView
        {
            QuestionListView(groups:  groupInfoRepository.GetAllGroupInfos(), questionRepository: questionRepository).tabItem { Label("Quize", systemImage: "play")}
            HistoryView(requestHisotryInfos: [RequestHistoryInfo(requestId: "1", requestDate: Date(), inputGroup:"test", score: 100, questionHistoryInfos: [QuestionHistoryInfo (questionId: "1", currentIndex: 2, total: 15, questionDescrption: "Amongst which of the following is / are true about MongoDB?", selectHistory: [SelectHistoryInfo(optionId: "1", optionValue: "test value", questionId: "1", selectState: .selectRight),SelectHistoryInfo(optionId: "2", optionValue: "test value 2", questionId: "2", selectState: .selectFail), SelectHistoryInfo(optionId: "4", optionValue: "test value 4", questionId: "1", selectState: .unselectFail), SelectHistoryInfo(optionId: "3", optionValue: "test value 3", questionId: "1", selectState: .normal) ])])]).tabItem { Label("History", systemImage: "book") }
            
            SettingView().tabItem {Label("Settings", systemImage: "gearshape") }
            
        }
    }
}

#Preview {
    ContentView()
}

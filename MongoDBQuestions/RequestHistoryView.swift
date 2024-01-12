//
//  RequestHistoryView.swift
//  MongoDBQuestions
//
//  Created by Stephen Hu on 2023/12/13.
//

import SwiftUI

struct RequestHistoryView: View {
    let score:Int
    let questionHistoryInfos:[QuestionHistoryInfo]
    var body: some View {
        ScrollView{
            
            VStack
            {
                VStack(alignment: .leading)
                {
                    HStack{
                        Text("Score:").font(.largeTitle)
                        Text(String(score)).font(.largeTitle)
                    }
                    
                    Divider()
                }.frame(maxWidth: .infinity, alignment: .leading)
                
                ForEach(questionHistoryInfos, id:\.self.currentIndex)
                {
                    questionHistoryInfo in
                    VStack
                    {
                        QuestionHistoryComponent(questionHistoryInfo: questionHistoryInfo)
                        
                        Divider()
                    }
                }
            }
        }
    }
}

#Preview {
    RequestHistoryView(score: 100, questionHistoryInfos: MemoryRequestHisotryInfoRepository.GetSampleQuestionHistoryInfo())
}

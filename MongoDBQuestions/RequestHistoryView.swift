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
    RequestHistoryView(score: 100, questionHistoryInfos: [
        QuestionHistoryInfo (questionId:"1", currentIndex: 2, total: 15, questionDescrption: "Amongst which of the following is / are true about MongoDB?", selectHistory: [SelectHistoryInfo(optionId: "1", optionValue: "test value", questionId: "1", selectState: .selectRight),SelectHistoryInfo(optionId: "2", optionValue: "test value 2", questionId: "2", selectState: .selectFail), SelectHistoryInfo(optionId: "4", optionValue: "test value 4", questionId: "1", selectState: .unselectFail), SelectHistoryInfo(optionId: "3", optionValue: "test value 3", questionId: "1", selectState: .normal) ]),
        QuestionHistoryInfo (questionId:"2", currentIndex: 3, total: 15, questionDescrption: "Amongst which of the following is / are true about MongoDB?", selectHistory: [SelectHistoryInfo(optionId: "1", optionValue: "test value", questionId: "1", selectState: .selectRight),SelectHistoryInfo(optionId: "2", optionValue: "test value 2", questionId: "2", selectState: .selectFail), SelectHistoryInfo(optionId: "4", optionValue: "test value 4", questionId: "1", selectState: .unselectFail), SelectHistoryInfo(optionId: "3", optionValue: "test value 3", questionId: "1", selectState: .normal) ])
    ])
}

//
//  RequestHistoryView.swift
//  MongoDBQuestions
//
//  Created by Stephen Hu on 2023/12/13.
//

import SwiftUI

struct RequestHistoryView: View {
    let questionHistoryInfos:[QuestionHistoryInfo]
    var body: some View {
        ScrollView{
            ForEach(questionHistoryInfos, id:\.self.currentIndex)
            {
                questionHistoryInfo in
                VStack
                {
                    QuestionHistoryComponent(questionHistoryInfo: questionHistoryInfo)
                    
                    Divider()

                }.frame(height: UIScreen.main.bounds.height)

            }
            
        }
    }
}

#Preview {
    RequestHistoryView(questionHistoryInfos: [
        QuestionHistoryInfo ( currentIndex: 2, total: 15, questionDescrption: "Amongst which of the following is / are true about MongoDB?", selectOptionInfos: [SelectOptionInfo(optionId: "1", optionValue: "test value", questionId: "1", selectState: .selectRight),SelectOptionInfo(optionId: "2", optionValue: "test value 2", questionId: "2", selectState: .selectFail), SelectOptionInfo(optionId: "4", optionValue: "test value 4", questionId: "1", selectState: .unselectFail), SelectOptionInfo(optionId: "3", optionValue: "test value 3", questionId: "1", selectState: .normal) ]),
        QuestionHistoryInfo ( currentIndex: 3, total: 15, questionDescrption: "Amongst which of the following is / are true about MongoDB?", selectOptionInfos: [SelectOptionInfo(optionId: "1", optionValue: "test value", questionId: "1", selectState: .selectRight),SelectOptionInfo(optionId: "2", optionValue: "test value 2", questionId: "2", selectState: .selectFail), SelectOptionInfo(optionId: "4", optionValue: "test value 4", questionId: "1", selectState: .unselectFail), SelectOptionInfo(optionId: "3", optionValue: "test value 3", questionId: "1", selectState: .normal) ])
    ])
}

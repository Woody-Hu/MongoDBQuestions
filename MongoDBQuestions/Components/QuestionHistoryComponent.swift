//
//  HistoryDetialView.swift
//  MongoDBQuestions
//
//  Created by Stephen Hu on 2023/12/12.
//

import SwiftUI

struct QuestionHistoryComponent: View {
    let questionHistoryInfo : QuestionHistoryInfo
    
    
    var body: some View {
        VStack{
            TitleComponent(current: Binding<Int>.constant( self.questionHistoryInfo.currentIndex), total: self.questionHistoryInfo.total)
        
            Divider().frame(height:2).background(Color.gray)
            
            DescriptionComponent(description: Binding<String>.constant(self.questionHistoryInfo.questionDescrption),fontSize:  Binding<Double>.constant(20.0) ).padding()
            
            Divider().frame(height:2).background(Color.gray)
            
            MultipleSelectOptionInfoComponent(selectHisotry:  self.questionHistoryInfo.selectHistory)
            
        }
    }
}

#Preview {
    QuestionHistoryComponent(questionHistoryInfo: QuestionHistoryInfo (questionId:"1", currentIndex: 2, total: 15, questionDescrption: "Amongst which of the following is / are true about MongoDB?", selectHistory: [SelectHistoryInfo(optionId: "1", optionValue: "test value", questionId: "1", selectState: .selectRight),SelectHistoryInfo(optionId: "2", optionValue: "test value 2", questionId: "2", selectState: .selectFail), SelectHistoryInfo(optionId: "4", optionValue: "test value 4", questionId: "1", selectState: .unselectFail), SelectHistoryInfo(optionId: "3", optionValue: "test value 3", questionId: "1", selectState: .normal) ]))
}

//
//  HistoryDetialView.swift
//  MongoDBQuestions
//
//  Created by Stephen Hu on 2023/12/12.
//

import SwiftUI

struct HistoryDetialView: View {
    let questionDescrption:String
    let selectOptionInfos:[SelectOptionInfo]
    var body: some View {
        VStack{
            TitleComponent()
        
            Divider().frame(height:2).background(Color.gray)
            
            DescriptionComponent(description: questionDescrption).padding()
            
            Divider().frame(height:2).background(Color.gray)
            
            MultipleSelectOptionInfoComponent(selectOptions: selectOptionInfos)
            
        }.preferredColorScheme(.light)
    }
}

#Preview {
    HistoryDetialView(questionDescrption: "Amongst which of the following is / are true about MongoDB?", selectOptionInfos: [SelectOptionInfo(optionId: "1", optionValue: "test value", questionId: "1", selectState: .selectRight),SelectOptionInfo(optionId: "2", optionValue: "test value 2", questionId: "2", selectState: .selectFail), SelectOptionInfo(optionId: "4", optionValue: "test value 4", questionId: "1", selectState: .unselectFail), SelectOptionInfo(optionId: "3", optionValue: "test value 3", questionId: "1", selectState: .normal) ])
}

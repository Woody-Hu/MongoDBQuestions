//
//  MultipleSelectOptionInfoComponent.swift
//  MongoDBQuestions
//
//  Created by Stephen Hu on 2023/12/12.
//

import SwiftUI

struct MultipleSelectOptionInfoComponent: View {
    let selectHisotry:[SelectHistoryInfo]
    var body: some View {
        VStack(alignment:.leading)
        {
            ForEach(selectHisotry, id: \.optionId) { select in
                HStack
                {
                    if select.selectState == SelectState.selectRight || select.selectState == SelectState.selectFail
                        { Image(systemName:"checkmark.square")}
                    else
                        { Image(systemName: "square") }
                    Text(select.optionValue)
                }.foregroundColor(select.selectState.color)
            }.padding()
        }.frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    MultipleSelectOptionInfoComponent(selectHisotry: [SelectHistoryInfo(optionId: "1", optionValue: "test value", questionId: "1", selectState: .selectRight),SelectHistoryInfo(optionId: "2", optionValue: "test value 2", questionId: "2", selectState: .selectFail), SelectHistoryInfo(optionId: "4", optionValue: "test value 4", questionId: "1", selectState: .unselectFail), SelectHistoryInfo(optionId: "3", optionValue: "test value 3", questionId: "1", selectState: .normal) ])
}

//
//  MultipleSelectOptionInfoComponent.swift
//  MongoDBQuestions
//
//  Created by Stephen Hu on 2023/12/12.
//

import SwiftUI

struct MultipleSelectOptionInfoComponent: View {
    let selectOptions:[SelectOptionInfo]
    var body: some View {
        VStack(alignment:.leading)
        {
            ForEach(selectOptions, id: \.optionId) { selectOptionInfo in
                HStack
                {
                    if selectOptionInfo.selectState == SelectState.selectRight || selectOptionInfo.selectState == SelectState.selectFail
                        { Image(systemName:"checkmark.square")}
                    else
                        { Image(systemName: "square") }
                    Text(selectOptionInfo.optionValue)
                }.foregroundColor(selectOptionInfo.selectState.color)
            }.padding()
        }.frame(maxWidth: .infinity, alignment: .leading)
    }
}

#Preview {
    MultipleSelectOptionInfoComponent(selectOptions: [SelectOptionInfo(optionId: "1", optionValue: "test value", questionId: "1", selectState: .selectRight),SelectOptionInfo(optionId: "2", optionValue: "test value 2", questionId: "2", selectState: .selectFail), SelectOptionInfo(optionId: "4", optionValue: "test value 4", questionId: "1", selectState: .unselectFail), SelectOptionInfo(optionId: "3", optionValue: "test value 3", questionId: "1", selectState: .normal) ])
}

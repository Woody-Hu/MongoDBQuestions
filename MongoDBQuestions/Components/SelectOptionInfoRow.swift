//
//  SelectOptionInfoRow.swift
//  MongoDBQuestions
//
//  Created by Stephen Hu on 2023/12/12.
//

import SwiftUI

struct SelectOptionInfoRow: View {
    let selectOptionInfo:SelectOptionInfo
    var body: some View {
        HStack{
            if selectOptionInfo.selectState == SelectState.selectRight || selectOptionInfo.selectState == SelectState.selectFail
            {   Image(systemName: "checkmark.square")
            }
            else
            {
                Image(systemName: "square")
            }
            
            Text(selectOptionInfo.optionValue)
        }.foregroundColor(selectOptionInfo.selectState.color)
    }
}

#Preview {
    SelectOptionInfoRow(selectOptionInfo: SelectOptionInfo(optionId: "1", optionValue: "test value", questionId: "1", selectState: .selectRight))
}

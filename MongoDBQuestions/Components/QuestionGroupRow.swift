//
//  QuestionCategoryRow.swift
//  MongoDBQuestions
//
//  Created by Stephen Hu on 2023/11/28.
//

import SwiftUI

struct QuestionGroupRow: View {
    let groupInfo:GroupInfo
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Text(groupInfo.name).font(.title)
                Spacer()
                Image(systemName: "book").font(.largeTitle)
            }

            Text(groupInfo.description).font(.subheadline)
        }

    
    }
}

#Preview {
    QuestionGroupRow(groupInfo: GroupInfo(name: "test name", description: "test description", imageName: ""))
}

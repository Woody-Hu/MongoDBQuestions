//
//  QuestionSelectionView.swift
//  MongoDBQuestions
//
//  Created by Stephen Hu on 2023/11/22.
//

import SwiftUI

struct QuestionListView: View {
    var groups: [GroupInfo]
    var body: some View {
        NavigationStack{
            List(groups, id: \.name){ groupInfo in
                NavigationLink(destination: QuestionDetailView()){
                    QuestionGroupRow(groupInfo: groupInfo)
                }
            }
        }
    }
}

#Preview {
    QuestionListView(groups:[
        GroupInfo(name: "test1", description: "description for test1", imageName: ""),
        GroupInfo(name: "test2", description: "description for test2", imageName: ""),
        GroupInfo(name: "test3", description: "description for test3", imageName: "")
    ])
}

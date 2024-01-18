//
//  QuestionSelectionView.swift
//  MongoDBQuestions
//
//  Created by Stephen Hu on 2023/11/22.
//

import SwiftUI

struct QuestionListView: View {
    var groups: [GroupInfo]
    var questionRepository:IQuestionRepository
    var body: some View {
        NavigationStack{
            List(groups, id: \.name){ groupInfo in
                NavigationLink(destination:
                                QuestionDetailView(context: QuestionDetailContext(questions: questionRepository.GetQeustionsByGroup(inputGroup: groupInfo.name, count: 20)))){
                    QuestionGroupRow(groupInfo: groupInfo)
                }
            }
        }
    }
}

#Preview {
    QuestionListView(groups:MemoryGroupInfoRepository().GetAllGroupInfos(), questionRepository: MemoryQuestionRepository())
}

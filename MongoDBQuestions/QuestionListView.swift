//
//  QuestionSelectionView.swift
//  MongoDBQuestions
//
//  Created by Stephen Hu on 2023/11/22.
//

import SwiftUI

struct QuestionListView: View {
    var categories: [CategoryInfo] = [
        CategoryInfo(name: "test1", description: "description for test1", imageName: ""),
        CategoryInfo(name: "test2", description: "description for test2", imageName: ""),
        CategoryInfo(name: "test3", description: "description for test3", imageName: "")
    ]
    var body: some View {
        NavigationStack{
            List(categories, id: \.name){ category in
                NavigationLink(destination: QuestionDetailView()){
                    QuestionCategoryRow(categoryInfo: category)
                }
            }
        }
    }
}

#Preview {
    QuestionListView()
}

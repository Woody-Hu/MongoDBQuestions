//
//  QuestionSelectionView.swift
//  MongoDBQuestions
//
//  Created by Stephen Hu on 2023/11/22.
//

import SwiftUI

struct QuestionListView: View {
    var categories: [String] = ["test1", "test2", "test3"]
    var body: some View {
        NavigationStack{
            ForEach(categories, id: \.self){ category in
                NavigationLink(destination: QuestionDetailView()){
                    Text(category)
                }.padding()
            }
        }
    }
}

#Preview {
    QuestionListView()
}

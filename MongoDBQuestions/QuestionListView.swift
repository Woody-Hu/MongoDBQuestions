//
//  QuestionSelectionView.swift
//  MongoDBQuestions
//
//  Created by Stephen Hu on 2023/11/22.
//

import SwiftUI

struct QuestionListView: View {
    var categories: [String] = ["test1", "test2", "test3"]
    @State var questionsCount = 10.0
    var body: some View {
        NavigationView{
            VStack
            {
                ForEach(categories, id: \.self){ category in
                    NavigationLink(destination: QuestionDetailView()){
                        Text(category)
                    }.padding()
                }
                
                Spacer()
                
                Text("question size")
                Slider(value: $questionsCount, in: 10...30, step: 1){
                    Text("Number of questions: \(questionsCount)")}.padding()
                Text("\(Int(questionsCount))")
            }
        }
    }
}

#Preview {
    QuestionListView()
}

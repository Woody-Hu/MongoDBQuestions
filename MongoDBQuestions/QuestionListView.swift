//
//  QuestionSelectionView.swift
//  MongoDBQuestions
//
//  Created by Stephen Hu on 2023/11/22.
//

import SwiftUI

struct QuestionListView: View {
    var categories: [String] = []
    @State var questionsCount = 10.0
    @State var selectCategory: String = ""
    var body: some View {
        
        NavigationView{
            VStack
            {
                Slider(value: $questionsCount, in: 10...30, step: 1){
                    Text("Number of questions: \(questionsCount)")}.padding()
                Text("\(Int(questionsCount))")
                Picker(selection: $selectCategory, label: Text("Select a category")) {
                    ForEach(categories, id: \.self) {
                        Text($0)
                    }
                }.padding()
                
                Spacer()
                
                NavigationLink(destination: QuestionDetailView()) {
                    Text("Start") }.padding()
            }
        }
    }
}

#Preview {
    QuestionListView()
}

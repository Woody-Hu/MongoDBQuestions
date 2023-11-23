//
//  QuestionSelectionView.swift
//  MongoDBQuestions
//
//  Created by Stephen Hu on 2023/11/22.
//

import SwiftUI

struct QuestionSelectionView: View {
    var categories: [String] = []
    @State var questionsCount = 0.0
    @State var selectCategory: String = ""
    var body: some View {

        Slider(value: $questionsCount, in: 10...30, step: 1){
            Text("Number of questions: \(questionsCount)")
        }.padding()

        Picker(selection: $selectCategory, label: Text("Select a category")) {
            ForEach(categories, id: \.self) {
                Text($0)
            }
        }.padding()

        Button(action: {
            NavigationLink(destination: QuestionView()){
            }
        }){Text("Ok")}.padding()
    }
}

#Preview {
    QuestionSelectionView()
}

//
//  QuestionSelectionView.swift
//  MongoDBQuestions
//
//  Created by Stephen Hu on 2023/11/22.
//

import SwiftUI

struct QuestionSelectionView: View {
    var categories: [String]
    var questionsCount: Int
    var selectCategory: String
    var body: some View {

        sliderView{
            Text("Number of questions: \(questionsCount)")
        }.padding()

        Picker(selection: $selectCategory, label: Text("Select a category")) {
            ForEach(categories, id: \.self) {
                Text($0)
            }
        }.padding()

        Button(action: {
            NavigationLink(destination: QuestionView()) {
                Text("OK")
            }
        }).padding()
    }
}

#Preview {
    QuestionSelectionView()
}

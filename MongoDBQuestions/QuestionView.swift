//
//  QuestionView.swift
//  MongoDBQuestions
//
//  Created by Stephen Hu on 2023/11/22.
//

import SwiftUI

struct QuestionView: View {
    @Binding var question : Question
    @State var selectedOptions: [QuestionOption]
    init() {
    }
    
    var body: some View {
        Text(question.title).font(.title).padding()
        Text(question.questionDescription).padding()


        HStack {
            Button(action: {
                if question.isAnswer(selectedOptions) {
                    } else {
                    }
            }){Text("Ok") }.padding()
            Button(action: {
                selectedOptions = []
            }){Text("Cancel")}.padding()
        }.padding()
    }
}

#Preview {
    QuestionView()
}

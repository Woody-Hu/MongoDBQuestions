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
    
    var body: some View {
        VStack{
            Text(question.title).font(.title).padding()
            Text(question.questionDescription).padding()
            ForEach(question.options, id: \.self) { option in
                Button(action: {
                    if selectedOptions.contains(option) {
                        selectedOptions.removeAll(where: { $0 == option })
                    } else {
                        selectedOptions.append(option)
                    }
                }){
                    HStack{
                        if selectedOptions.contains(option) {
                            Image(systemName: "checkmark.square")
                        } else {
                            Image(systemName: "square")
                        }
                        Text(option.optionValue)
                    }
                }.padding()
            }
            
            
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
}

#Preview {
    QuestionView()
}

//
//  QuestionView.swift
//  MongoDBQuestions
//
//  Created by Stephen Hu on 2023/11/22.
//

import SwiftUI

struct QuestionDetailView: View {
    @State var question : Question
    @State var selectedOptions: [QuestionOption] = []
    
    var body: some View {
        VStack{
            TitleComponent()
        
            Divider().frame(height:2).background(Color.gray)
            
            DescriptionComponent(description: "Amongst which of the following is / are true about MongoDB?").padding()
            
            Divider().frame(height:2).background(Color.gray)
            
            MultipleChoiceComponent(choices: ["option 1", "option 2", "option 3"])
            
            ConfirmButtonComponent()
        }
    }
}

#Preview {
    QuestionDetailView(question: MemoryQuestionRepository.getSampleQuestion())
}

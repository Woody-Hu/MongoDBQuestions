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
    @State var currentIndex:Int
    let totalCount:Int
    
    var body: some View {
        VStack{
            TitleComponent(current: $currentIndex, total: totalCount)
        
            Divider().frame(height:2).background(Color.gray)
            
            DescriptionComponent(description: $question.questionDescription, fontSize:Binding<Double>.constant(20.0)).padding()
            
            Divider().frame(height:2).background(Color.gray)
            
            MultipleChoiceComponent(choices: ["option 1", "option 2", "option 3"])
            
            ConfirmButtonComponent()
        }
    }
}

#Preview {
    QuestionDetailView(question: MemoryQuestionRepository.getSampleQuestion(), currentIndex:1, totalCount: 10)
}

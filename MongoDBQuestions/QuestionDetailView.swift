//
//  QuestionView.swift
//  MongoDBQuestions
//
//  Created by Stephen Hu on 2023/11/22.
//

import SwiftUI

struct QuestionDetailView: View {
    @ObservedObject var context:QuestionDetailContext
    
    var body: some View {
        VStack{
            TitleComponent(current: $context.currentIndex, total: context.totalCount)
        
            Divider().frame(height:2).background(Color.gray)
            
            DescriptionComponent(description: $context.currentQuestionDesription, fontSize:Binding<Double>.constant(20.0)).padding()
            
            Divider().frame(height:2).background(Color.gray)
            
            MultipleChoiceComponent(choices: ["option 1", "option 2", "option 3"], selectedOptions: $context.selectOptionIds)
            
            ConfirmButtonComponent(selectOptions: $context.selectOptionIds, currentIndex: $context.currentIndex)
        }
    }
}

#Preview {
    QuestionDetailView(context: QuestionDetailContext(questions: [MemoryQuestionRepository.getSampleQuestion()]))
}

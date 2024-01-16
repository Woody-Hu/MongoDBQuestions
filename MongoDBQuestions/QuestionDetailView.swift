//
//  QuestionView.swift
//  MongoDBQuestions
//
//  Created by Stephen Hu on 2023/11/22.
//

import SwiftUI

struct QuestionDetailView: View {
    @State var question : Question
    @State var currentIndex:Int
    @State var selectOptionIds:[String] = []
    @ObservedObject var context:QuestionDetailContext = QuestionDetailContext(currentIndex: 1)
    let totalCount:Int
    
    var body: some View {
        VStack{
            TitleComponent(current: $context.currentIndex, total: totalCount)
        
            Divider().frame(height:2).background(Color.gray)
            
            DescriptionComponent(description: $question.questionDescription, fontSize:Binding<Double>.constant(20.0)).padding()
            
            Divider().frame(height:2).background(Color.gray)
            
            MultipleChoiceComponent(choices: ["option 1", "option 2", "option 3"], selectedOptions: $selectOptionIds)
            
            ConfirmButtonComponent(selectOptions: $selectOptionIds, context: context)
        }
    }
}

#Preview {
    QuestionDetailView(question: MemoryQuestionRepository.getSampleQuestion(), currentIndex:1, totalCount: 10)
}

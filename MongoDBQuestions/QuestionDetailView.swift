//
//  QuestionView.swift
//  MongoDBQuestions
//
//  Created by Stephen Hu on 2023/11/22.
//

import SwiftUI

struct QuestionDetailView: View {
    @State var question : Question  = Question(id: UUID(), questionDescription: "", options: [], correctOptionIds: [], images: [], link: URL(string: "https://www.mongodb.com")!, extendedDescription: "")
    @State var selectedOptions: [QuestionOption] = []
    
    var body: some View {
        VStack{
            DescriptionComponent(description: "Amongst which of the following is / are true about MongoDB?").padding()
            
            Text("")
            Divider().background(Color.black)
            Text("")
            
            MultipleChoiceComponent(choices: ["option 1", "option 2", "option 3"]).padding()
            
            
            
            ConfirmButtonComponent()
            
        }

    }
}

#Preview {
    QuestionDetailView()
}

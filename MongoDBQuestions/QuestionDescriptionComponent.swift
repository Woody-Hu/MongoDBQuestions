//
//  QuestionDescriptionComponent.swift
//  MongoDBQuestions
//
//  Created by Stephen Hu on 2023/11/29.
//

import SwiftUI

struct QuestionDescriptionComponent: View {
    let description:String
    var body: some View {
        ScrollView
        {
            VStack(alignment:.leading) {
                Text(description).font(.system(size: 30))
            }.frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}

#Preview {
    QuestionDescriptionComponent(description: "Amongst which of the following is / are true about MongoDB?")
}

//
//  QuestionDescriptionComponent.swift
//  MongoDBQuestions
//
//  Created by Stephen Hu on 2023/11/29.
//

import SwiftUI

struct DescriptionComponent: View {
    let description:String
    let fontSize = 20.0
    var body: some View {
        ScrollView
        {
            VStack(alignment:.leading) {
                Text(description).font(.system(size: fontSize))
            }.frame(maxWidth: .infinity, alignment: .leading)
        }
    }
}

#Preview {
    DescriptionComponent(description: "Amongst which of the following is / are true about MongoDB?")
}

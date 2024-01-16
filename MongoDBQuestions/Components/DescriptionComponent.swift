//
//  QuestionDescriptionComponent.swift
//  MongoDBQuestions
//
//  Created by Stephen Hu on 2023/11/29.
//

import SwiftUI

struct DescriptionComponent: View {
    @Binding var description:String
    @Binding var fontSize:Double
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
    DescriptionComponent(description: Binding.constant("Amongst which of the following is / are true about MongoDB?"), fontSize: Binding.constant(20.0) )
}

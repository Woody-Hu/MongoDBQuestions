//
//  MultiChoiceComponent.swift
//  MongoDBQuestions
//
//  Created by Stephen Hu on 2023/11/30.
//

import SwiftUI

struct MultipleChoiceComponent: View {
    var choices:[String]
    @State var selectedOptions: [String] = []
    var body: some View {
        VStack
        {
            ForEach(choices, id: \.self) { option in
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
                        
                        Text(option)
                    }
                }.padding()
            }
        }
    }
}

#Preview {
    MultipleChoiceComponent(choices: ["option 1", " option 2", "option 3"])
}

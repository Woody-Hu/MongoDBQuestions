//
//  SettingView.swift
//  MongoDBQuestions
//
//  Created by Stephen Hu on 2023/11/28.
//

import SwiftUI

struct SettingView: View {
    @State var questionsCount = 10.0
    var body: some View {
        VStack(alignment: .leading){
            Text("question size").font(.title)
            Text("choose the question count")
                .font(.subheadline)
                .foregroundStyle(.secondary)
            VStack {
                Slider(value: $questionsCount, in: 10...30, step: 1){
                    Text("Number of questions: \(questionsCount)")}.padding()
                Text("\(Int(questionsCount))")
            }
        }
    }
}

#Preview {
    SettingView()
}

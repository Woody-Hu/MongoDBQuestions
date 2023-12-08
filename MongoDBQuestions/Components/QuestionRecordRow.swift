//
//  QuestionRecordRow.swift
//  MongoDBQuestions
//
//  Created by Stephen Hu on 2023/12/8.
//

import SwiftUI

struct QuestionRecordRow: View {
    let questionRecord:QuestionRecord
    var body: some View {
        Text(/*@START_MENU_TOKEN@*/"Hello, World!"/*@END_MENU_TOKEN@*/)
    }
}

#Preview {
    QuestionRecordRow(questionRecord: QuestionRecord(id: UUID(), questionId: "1", duration: 1.0, requestId: "1", selectOptionIds: ["1"], success: true))
}

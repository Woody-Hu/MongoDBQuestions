//
//  QuestionCategoryRow.swift
//  MongoDBQuestions
//
//  Created by Stephen Hu on 2023/11/28.
//

import SwiftUI

struct QuestionCategoryRow: View {
    let categoryInfo:CategoryInfo
    var body: some View {
        VStack(alignment: .leading){
            HStack{
                Text(categoryInfo.name).font(.title)
                Spacer()
                Image(systemName: "book").font(.largeTitle)
            }

            Text(categoryInfo.description).font(.subheadline)
        }

    
    }
}

#Preview {
    QuestionCategoryRow(categoryInfo: CategoryInfo(name: "test name", description: "test description", imageName: ""))
}

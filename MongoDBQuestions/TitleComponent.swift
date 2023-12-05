//
//  TitleComponent.swift
//  MongoDBQuestions
//
//  Created by Stephen Hu on 2023/12/5.
//

import SwiftUI

struct TitleComponent: View {
    let current:Int = 0
    let total:Int = 10
    var body: some View {
        Text(String(current) + " / "  + String(total)).font(.largeTitle)
    }
}

#Preview {
    TitleComponent()
}

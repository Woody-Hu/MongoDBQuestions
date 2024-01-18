//
//  TitleComponent.swift
//  MongoDBQuestions
//
//  Created by Stephen Hu on 2023/12/5.
//

import SwiftUI

struct TitleComponent: View {
    @Binding var current:Int
    let total:Int
    
    var body: some View {
        Text(String(current + 1) + " / "  + String(total)).font(.largeTitle)
    }
}

#Preview {
    TitleComponent(current: Binding<Int>.constant(0), total: 20)
}

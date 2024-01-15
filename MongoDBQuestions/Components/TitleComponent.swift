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
        Text(String(current) + " / "  + String(total)).font(.largeTitle)
    }
}

#Preview {
    TitleComponent(current: Binding<Int>.constant(1), total: 20)
}

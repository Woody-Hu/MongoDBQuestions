//
//  TitleComponent.swift
//  MongoDBQuestions
//
//  Created by Stephen Hu on 2023/12/5.
//

import SwiftUI

struct TitleComponent: View {
    let current:Int
    let total:Int
    
    init()
    {
        self.current = 0
        self.total = 10
    }
    
    init(current:Int, total:Int)
    {
        self.current = current
        self.total = total
    }
    
    var body: some View {
        Text(String(current) + " / "  + String(total)).font(.largeTitle)
    }
}

#Preview {
    TitleComponent()
}

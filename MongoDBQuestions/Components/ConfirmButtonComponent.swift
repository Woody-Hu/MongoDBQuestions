//
//  ConfirmButtonComponent.swift
//  MongoDBQuestions
//
//  Created by Stephen Hu on 2023/12/4.
//

import SwiftUI

struct ConfirmButtonComponent: View {
    var body: some View {
        Button(action: {
            print("Button tapped")
        }){
            ZStack {
                Circle()
                    .frame(width: 100, height: 100)
                    .overlay(
                        LinearGradient(gradient: Gradient(colors: [Color.blue, Color.green]), startPoint: .top, endPoint: .bottom)
                            .frame(height: 100)
                    )
                    .clipShape(Circle())
                
                Text("Go")
                    .foregroundColor(.white)
                    .font(.title)
                    .italic()
                    .multilineTextAlignment(.center)
            }
        }
    }
}

#Preview {
    ConfirmButtonComponent()
}

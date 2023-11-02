//
//  MainView.swift
//  MongoDBQuestions
//
//  Created by Stephen Hu on 2023/11/2.
//

import SwiftUI

struct MainView: View {
    var body: some View {
        VStack {
            Text("Hello")
                .font(.title)
                .padding(20)
                .clipShape(RoundedRectangle(cornerRadius: 20))
            VStack {
                Button(action: {
                    print("Start button hit")
                })
                {
                   Text("Start")
                       
                }
                .padding(10)
                .border(Color.black, width: 2)
                .padding(10)
                
                Button(action: {
                    print("History button hit")
                })
                {
                    Text("History")
                }
                .padding(10)
                .border(Color.black, width: 2)
                .padding(10)
                
                Button(action: {
                    print("about button hit")
                })
                {
                    Text("About")
                }
                .padding(10)
                .border(Color.black, width: 2)
                .padding(10)
                Button(action: {
                    print("exit button hit")
                    exit(0) // 退出应用程序
                }) 
                {
                    Text("Exit")
                }
                .padding(10)
                .border(Color.black, width: 2)
            }
        }
    }
}

#Preview {
    MainView()
}

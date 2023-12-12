//
//  SelectState.swift
//  MongoDBQuestions
//
//  Created by Stephen Hu on 2023/12/11.
//

import Foundation
import SwiftUI
enum SelectState:String
{
    case selectRight
    case selectFail
    case unselectFail
    case normal
    
    var color : Color
    {
        switch self{
            case .selectRight:
                return Color.green
            case .selectFail:
                return Color.red
            case .unselectFail:
                return Color.red
            case .normal:
            return Color.black
        }
    }
}

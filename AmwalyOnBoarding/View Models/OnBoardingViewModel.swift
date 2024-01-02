//
//  OnBoardModel.swift
//  MoneyManegment
//
//  Created by saudAlhafith on 07/12/1444 AH.
//

import Foundation
import CoreData
import SwiftUI

class OnBoardingViewModel:ObservableObject {
    
    let allBoards:[BoardDataModel]
    let boardsCount: Int
    @Published var currentBoard: Int = 0
    
    @Published var firstName: String = ""
    @Published var lastName: String = ""
    @Published var expens: Double = 0
    @Published var saving: Double = 0
    @Published var emergency: Double = 0
    
    init(allBoards: [BoardDataModel]) {
        self.allBoards = allBoards
        self.boardsCount = self.allBoards.count
    }
    
    func moveToNextView() {
        
        if currentBoard == self.boardsCount - 1 {
            print("Done Logic")
        } else {
            currentBoard += 1
        }
    }
}

struct BoardDataModel {
    let boardGradientColor: AnyGradient
    let boardName: String
}

//
//  OnBoardingBar.swift
//  AmwalyOnBoarding
//
//  Created by saudAlhafith on 20/06/1445 AH.
//

import SwiftUI

struct OnBoardingBar: View {
    @EnvironmentObject var viewModel: OnBoardingViewModel
    
    var body: some View {
        VStack{
            Group{
                if viewModel.currentBoard != viewModel.boardsCount - 1 {
                    Text(viewModel.allBoards[viewModel.currentBoard].boardName)
                } else {
                    Text("Every thing is ready")
                }
            }
            .id(viewModel.currentBoard)
            .font(.title2)
            .fontWeight(.bold)
            .frame(maxWidth: .infinity, alignment: .leading)
            .lineLimit(1)
            .transition(.opacity) // Add a sliding transition
            .animation(.easeIn(duration: 0.3), value: viewModel.currentBoard)
            ZStack(alignment: .center) {
                GeometryReader{ proxy in
                    RoundedRectangle(cornerRadius: 10)
                        .fill(Color.gray.opacity(0.2))
                    RoundedRectangle(cornerRadius: 10)
                        .fill(viewModel.allBoards[viewModel.currentBoard].boardGradientColor)
                        .frame(width: proxy.size.width * CGFloat(viewModel.currentBoard) / CGFloat(viewModel.boardsCount - 1))
                }
            }
            .frame(maxWidth: .infinity, maxHeight: 10)
        }
        .padding(.horizontal)
    }
    
}

#Preview {
    OnBoarding()
}

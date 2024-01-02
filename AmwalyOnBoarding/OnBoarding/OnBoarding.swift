//
//  SettingProfile.swift
//  MoneyManegment
//
//  Created by saud on 25/11/1443 AH.
//

import SwiftUI

//show expanation don't forget about it


struct OnBoarding: View{
    @StateObject var viewModel = OnBoardingViewModel(allBoards: [
        BoardDataModel(boardGradientColor: Color.gray.gradient, boardName: "Hi, Welcome"),
        BoardDataModel(boardGradientColor: Color.blue.gradient, boardName: "Write full name"),
        BoardDataModel(boardGradientColor: Color.green.gradient, boardName: "Add your Expenses"),
        BoardDataModel(boardGradientColor: Color.yellow.gradient, boardName: "Add your saving"),
        BoardDataModel(boardGradientColor: Color.red.gradient, boardName: "Add your Emergency Cash"),
        BoardDataModel(boardGradientColor: Color.yellow.gradient, boardName: "")
    ])
    
    @Namespace var animationSlide
    
    var body: some View {
        ZStack{
            ZStack(alignment:.trailing){
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.white)
            }
            .edgesIgnoringSafeArea(.all)
            .dismissKeyboard()

            VStack(spacing: 20) {
                OnBoardingBar()
                TabView(selection: $viewModel.currentBoard){
                    OnBoardingIntroductry()
                        .contentShape(Rectangle()).gesture(DragGesture())
                        .tag(0)
                    OnBoardView()
                        .contentShape(Rectangle()).gesture(DragGesture())
                        .tag(1)
                    OnBoardView()
                        .contentShape(Rectangle()).gesture(DragGesture())
                        .tag(2)
                    OnBoardView()
                        .contentShape(Rectangle()).gesture(DragGesture())
                        .tag(3)
                    OnBoardView()
                        .contentShape(Rectangle()).gesture(DragGesture())
                        .tag(4)
                    OnBoardDone()
                        .contentShape(Rectangle()).gesture(DragGesture())
                        .tag(5)
                }
                .tabViewStyle(.page(indexDisplayMode: .never))
                
                nextButton
            }
        }
        .environmentObject(viewModel)
        .multilineTextAlignment(.leading)
        
    }
    
    var nextButton: some View {
        HStack{
            Button {
                withAnimation(Animation.spring(response: 0.4, dampingFraction: 0.6, blendDuration: 0.5)){
                    viewModel.moveToNextView()
                }
            } label: {
                Text(viewModel.currentBoard == (viewModel.boardsCount - 1) ? "Submit" : "Next")
                    .padding(.vertical, 10)
                    .font(.title2.weight(.semibold))
                    .foregroundColor(.white)
                    .frame(maxWidth:.infinity, alignment:.center)
                    .background(viewModel.allBoards[viewModel.currentBoard].boardGradientColor)
                    .cornerRadius(10)
                    .shadow(radius: 4)
            }
            if viewModel.currentBoard > 0{
                Button{
                    withAnimation(Animation.spring(response: 0.4, dampingFraction: 0.6, blendDuration: 0.5)){
                        if viewModel.currentBoard > 0{
                            viewModel.currentBoard -= 1
                        }
                    }
                } label: {
                    Text("Back")
                        .padding(.horizontal, 10)
                }
            }
        }
        .padding(.horizontal)
        .padding(.bottom, 10)
    }
}



struct OnBoardingView_Preview: PreviewProvider{
    static var previews: some View{
        OnBoarding()
    }
}



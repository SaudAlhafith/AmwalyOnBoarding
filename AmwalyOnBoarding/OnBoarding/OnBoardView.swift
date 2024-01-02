//
//  OnBoardView.swift
//  AmwalyOnBoarding
//
//  Created by saudAlhafith on 20/06/1445 AH.
//

import SwiftUI

struct OnBoardView: View {
    @EnvironmentObject var viewModel: OnBoardingViewModel
    
    var body: some View {
        VStack(alignment: .leading, spacing: 30){
            VStack(alignment: .leading){
                Text("This is a TextField")
                    .font(.subheadline)
                    .fontWeight(.medium)
                    .foregroundColor(.black)
                TextField("Really ?? i didn't know that before", text: $viewModel.firstName)
                    .textFieldStyle(width: .infinity, font: .subheadline, keyboardType: .default)
            }
            .padding(.horizontal)
            Spacer()
        }
        .background{
            ZStack(alignment:.trailing){
                RoundedRectangle(cornerRadius: 20)
                    .fill(Color.white)
                    .dismissKeyboard()
                
            }
        }
        
    }
}

#Preview {
    OnBoarding()
}

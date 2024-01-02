//
//  OnBoardDone.swift
//  AmwalyOnBoarding
//
//  Created by saudAlhafith on 20/06/1445 AH.
//

import SwiftUI

struct OnBoardDone: View {
    @EnvironmentObject var viewModel: OnBoardingViewModel
    
    private let numberFormatter: NumberFormatter = {
        let numberFormatter = NumberFormatter()
        numberFormatter.zeroSymbol = ""
        numberFormatter.numberStyle = .decimal
        return numberFormatter
    }()
    
    var body: some View {
        VStack(alignment: .leading){
            Spacer()
            VStack(spacing:5){
                Image("Congratulation")
                    .resizable()
                    .aspectRatio(contentMode: .fit)
                    .frame(width: 200, height: 140)
                    .padding(.vertical)
                Text("Every thing is ready")
                    .font(.title3)
                    .fontWeight(.bold)
                    .foregroundColor(Color.yellow)
                Text("Every thing is set up. About your borrows, it has been added to your saving")
                    .font(.system(size: 14))
                    .foregroundColor(Color.gray)
                    .lineLimit(2)
                    .multilineTextAlignment(.center)
                
            }
            .padding(.horizontal)
            Spacer()
        }
    }
}

#Preview {
    
    OnBoarding()
}

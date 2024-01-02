//
//  IntroductryView.swift
//  AmwalyOnBoarding
//
//  Created by saudAlhafith on 20/06/1445 AH.
//

import SwiftUI

struct OnBoardingIntroductry: View {
    var body: some View {
            VStack(alignment: .center) {
                Spacer()
                VStack(spacing: 5) {
                    Image("WelcomeImage") // Replace with your welcome image
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .frame(width: 250)
                        .padding(.vertical)
                    Text("Welcome \"App Name\"")
                        .font(.title)
                        .fontWeight(.bold)
                        .foregroundColor(Color.black) // You can change the color
                    Text("Let's get you started! Follow the steps to set up your account and begin.")
                        .font(.system(size: 18))
                        .foregroundColor(Color.gray)
                        .lineLimit(3)
                        .multilineTextAlignment(.center)
                }
                .padding(.horizontal)
                Spacer()
            }
        }
}

#Preview {
    OnBoardingIntroductry()
}

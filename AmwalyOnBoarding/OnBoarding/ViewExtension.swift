//
//  ViewExtension.swift
//  AmwalyOnBoarding
//
//  Created by saudAlhafith on 20/06/1445 AH.
//

import SwiftUI

extension View {
    func dismissKeyboard() -> some View{
        self
            .onTapGesture {
                UIApplication.shared.sendAction(#selector(UIResponder.resignFirstResponder), to: nil, from: nil, for: nil)
            }
    }
    
    func textFieldStyle(
        width:CGFloat = UIScreen.main.bounds.width * 0.44,
        height:CGFloat = 30,
        font:Font = .caption,
        cornerRadius:CGFloat = 15,
        textAlign:TextAlignment = .center,
        keyboardType:UIKeyboardType = .decimalPad,
        verticalPadding:CGFloat = 5,
        horizontalPadding:CGFloat = 20) -> some View {
        self
            .font(font)
            .multilineTextAlignment(textAlign)
            .padding(.vertical, verticalPadding)
            .padding(.horizontal, horizontalPadding)
            .frame(height:height)
            .frame(maxWidth:width)
            .background(Color.init(red: 0.95, green: 0.95, blue: 0.95))
            .cornerRadius(cornerRadius)
            .keyboardType(keyboardType)
    }
}

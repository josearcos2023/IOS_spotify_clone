//
//  StepperButtom.swift
//  Spotify-clone-A
//
//  Created by Mac13 on 18/05/24.
//

import SwiftUI

struct StepperButtom: View {
    @Binding var counter: Int
    var isNext: Bool = true
    var text: String = "Next"
    
    var body: some View {
        Button{
            
            if isNext {
                counter += 1
            } else {
                counter -= 1
            }
            
        } label: {
            
            Text(text)
                .foregroundStyle(.white)
                .font(.system(size:15))
                .fontWeight(/*@START_MENU_TOKEN@*/.bold/*@END_MENU_TOKEN@*/)
                .padding()
        }
        .frame(height: 42)
        .background(
            RoundedRectangle(cornerRadius: 45)
                .stroke(Color("primary"),lineWidth: 1)
                .fill(Color("primary"))
        )
    }
}

#Preview {
    StepperButtom(counter: .constant(0))
}

//
//  EmailInputView.swift
//  SOPT 39-assignment
//
//  Created by 김보민 on 10/16/26.
//

import SwiftUI

struct EmailInputView: View {
    @State private var email = ""
    var body: some View {
        NavigationStack{
            VStack(alignment: .leading, spacing: 0){
                
                Text("로그인/가입하려는 이메일을 입력해주세요")
                    .font(.system(size: 23, weight: .bold))
                    .padding(.top, 109)
                    .padding(.horizontal,30)
                
                Text("결제 등 중요 알림, 로그인, 비밀번호 찾기에 필요해요")
                    .font(.system(size: 12, weight: .regular))
                    .padding(.top, 13)
                    .padding(.horizontal,30)
                    .foregroundStyle(.gray)
                
                
                Text("사용 중인 이메일을 입력해주세요")
                    .font(.system(size: 12, weight: .regular))
                    .padding(.top, 5)
                    .padding(.horizontal,30)
                    .foregroundStyle(.gray)
                
                
                TextField("이메일", text: $email,
                          prompt: Text("email@address.com")
                    .font(.system(size: 12, weight: .regular))
                    .foregroundStyle(.gray200)
                    
                )
                .font(.system(size: 14, weight: .regular))
                .textContentType(.emailAddress)
                .keyboardType(.emailAddress)
                .textInputAutocapitalization(.never)
                .autocorrectionDisabled()
                .padding(.horizontal, 15)
                .frame(height: 44)
                .background(.white)
                .clipShape(
                    RoundedRectangle(cornerRadius: 5)
                )
                .overlay {
                    RoundedRectangle(cornerRadius: 5)
                        .stroke(.gray.opacity(0.1), lineWidth: 0.5)
                
                }
                .padding(.horizontal, 31)
                .padding(.top, 27)
                
                Spacer()
                
                NavigationLink{
                    PasswordInputView(name: email)
                } label: {
                    Text("다음")
                        .font(.system(size: 18, weight: .bold))
                        .foregroundStyle(isEmailEntered ? .white : .gray300)
                        .frame(height: 56)
                        .frame(maxWidth: .infinity)
                        .background(isEmailEntered ? .starbucksgreen : .gray200)
                        .clipShape(RoundedRectangle(cornerRadius: 10))
                }
                .disabled(!isEmailEntered)
                .padding(.top, 383)
                .padding(.horizontal, 22)
                
               
                
                
            }
            .background(.backgroundWhite)
        }
    }
    
    private var isEmailEntered: Bool {
           !email.isEmpty
       }
}

#Preview {
    EmailInputView()
}

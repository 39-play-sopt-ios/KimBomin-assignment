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
                    .font(.head2)
                    .padding(.top, 109)
                    .padding(.horizontal,30)
                
                Text("결제 등 중요 알림, 로그인, 비밀번호 찾기에 필요해요")
                    .font(.body2)
                    .padding(.top, 13)
                    .padding(.horizontal,30)
                    .foregroundStyle(.gray)
                
                
                Text("사용 중인 이메일을 입력해주세요")
                    .font(.body2)
                    .padding(.top, 5)
                    .padding(.horizontal,30)
                    .foregroundStyle(.gray)
                
                
                ZStack(alignment: .trailing) {

                    TextField("이메일", text: $email,
                              prompt: Text("email@address.com")
                        .font(.body2)
                        .foregroundStyle(.gray200)
                    )
                    .font(.pretendard(.regular, size: 14))
                    .textContentType(.emailAddress)
                    .keyboardType(.emailAddress)
                    .textInputAutocapitalization(.never)
                    .autocorrectionDisabled()
                    .padding(.leading, 15)
                    .padding(.trailing, 44)

                    if !email.isEmpty {
                        Button {
                            email = ""
                        } label: {
                            Image(.closeSquare)
                           
                        }
                        .padding(.trailing, 15)
                    }
                }
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
                        .font(.subhead1)
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

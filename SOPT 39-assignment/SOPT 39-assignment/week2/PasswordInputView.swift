//
//  PasswordInputView.swift
//  SOPT 39-assignment
//
//  Created by 김보민 on 10/16/26.
//

import SwiftUI

struct PasswordInputView: View {
    @State private var password = ""
    @State private var showSheet = false
    @State private var nickname = ""
    @State var isSecure: Bool = true
    
    let name : String
    
    var body: some View {
        
        VStack(alignment: .leading, spacing: 0){
            
            Text("사용할 비밀번호를\n입력해주세요")
                .font(.system(size: 23, weight: .bold))
                .padding(.top, 109)
            
            
            Text("\(name)로 가입중")
                .font(.system(size: 12, weight: .regular))
                .padding(.top, 13)
                .foregroundStyle(.gray)
            
            
            
            ZStack(alignment: .trailing){
                Group {
                    if isSecure {
                        SecureField("비밀번호", text: $password,
                                    prompt: Text("비밀번호 입력")
                            .font(.system(size: 12, weight: .regular))
                            .foregroundStyle(.gray200)
                        )
                    } else {
                        TextField("비밀번호", text: $password,
                                  prompt: Text("비밀번호 입력")
                            .font(.system(size: 12, weight: .regular))
                            .foregroundStyle(.gray200)
                        )
                    }
                }
                .font(.system(size: 14, weight: .regular))
                .textContentType(.password)
                .textInputAutocapitalization(.never)
                .autocorrectionDisabled()
                .padding(.leading, 15)
                .padding(.trailing, 44)
                
                Button {
                    isSecure.toggle()
                } label: {
                    Image(isSecure ? "u_eye-slash": "u_eye")
                        .foregroundStyle(.gray)
                }
                .padding(.trailing, 15)
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
            .padding(.top, 27)
            
            
            
            HStack(alignment: .center, spacing: 5){
                
                Image(.enableOn)
                    .resizable()
                    .frame(width: 13, height: 13)
                
                Text("영문, 숫자, 특수문자 포함 10글자 이상")
                    .font(.system(size: 12, weight: .regular))
                    .foregroundStyle(.gray)
            }
            .padding(.top, 13)
            
            Button{
                showSheet = true
            } label:{
                Text(nickname.isEmpty ? "닉네임 설정" : nickname)
                    .font(.system(size: 12, weight: .regular))
                    .padding(.top, 40)
                    .foregroundStyle(.gray)
                    .underline()
                    .frame(maxWidth: .infinity)
            }
            .sheet(isPresented: $showSheet){
                VStack(alignment: .leading, spacing: 0){
                    Text("닉네임을 입력해주세요")
                        .font(.system(size: 18, weight: .semibold))
                        .foregroundStyle(.white)
                        .padding(.top, 40)
                        .padding(.horizontal, 21)
                    
                    TextField("닉네임", text: $nickname,
                              prompt: Text("닉네임")
                        .foregroundStyle(.gray200)
                    )
                    .font(.system(size: 14, weight: .regular))
                    .textInputAutocapitalization(.never)
                    .autocorrectionDisabled()
                    .padding(.horizontal, 15)
                    .frame(height: 42)
                    .background(.white)
                    .clipShape(RoundedRectangle(cornerRadius: 8))
                    .padding(.horizontal, 27)
                    .padding(.top, 18)
                    
                    Spacer()
                    
                    Button {
                        showSheet = false
                    } label: {
                        Text("완료")
                            .font(.system(size: 16, weight: .regular))
                            .foregroundStyle(.darkGreen)
                            .frame(height: 51)
                            .frame(maxWidth: .infinity)
                            .background(.white)
                            .clipShape(RoundedRectangle(cornerRadius: 10))
                    }
                    .padding(.horizontal, 18)
                    .padding(.bottom, 43)
                }
                .presentationDetents([.height(344)])
                .presentationBackground(.darkGreen)
            }
            
            
            
            
            Spacer()
            
            NavigationLink{
                WelcomeView(nickname: nickname)
            } label: {
                Text("가입하기")
                    .font(.system(size: 18, weight: .bold))
                    .foregroundStyle(isPasswordEntered ? .white : .gray300)
                    .frame(height: 56)
                    .frame(maxWidth: .infinity)
                    .background(isPasswordEntered ? .starbucksgreen : .gray200)
                    .clipShape(RoundedRectangle(cornerRadius: 10))
            }
            .disabled(!isPasswordEntered)
            
            
            
            
        }
        .padding(.horizontal,30)
        .background(.backgroundWhite)
        
    }
    
    private var isPasswordEntered: Bool {
        !password.isEmpty
    }

}



#Preview {
    PasswordInputView(name : "테스트용")
}

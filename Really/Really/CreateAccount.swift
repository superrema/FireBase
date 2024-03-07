//
//  CreateAccount.swift
//  Really
//
//  Created by Remachann . on 21/11/1444 AH.
//

import SwiftUI
import FirebaseCore
import FirebaseFirestore
import FirebaseAuth


struct CreateAccount: View {
    @State var emaill = ""
    @State var password = ""
    var body: some View {
        
        NavigationView {
            VStack{
                
                Color.clear.background(.regularMaterial)
                VStack(alignment: .center, spacing: 16){
                    Text("Sign up")
                        .font(.largeTitle).bold()
                    TextField("Email", text: $emaill)
                    SecureField("Password", text: $password)
                       
                    Button("Go!"){
                        Auth.auth().createUser(withEmail: emaill, password: password) { authResult, error in
                          
                            
                            if error == nil {
                                print("تم انشاء  حساب جديد")
                            }
                            else{
                                print("حدث خطأ")
                            }
                        }
                    }
                    .buttonStyle(.bordered)
                    .tint(.accentColor)
                    .controlSize(.large)
                }
                
                .padding(20)
                .background(.ultraThinMaterial, in: RoundedRectangle(cornerRadius: 30, style: .continuous))
                .shadow(color: Color("Shadow").opacity(0.2), radius: 30, x: 0, y:30)
                .padding(.bottom,290)
                .background(
                    Image("Blob 1").offset(x:200, y: -100))
                .background(
                    Image("Waves 1").offset(x:0, y: 290))
                
            }
            
        }
        
    }
}


struct CreateAccount_Previews: PreviewProvider {
    static var previews: some View {
        CreateAccount()
    }
}

//
//  mailSender.swift
//  Quran
//
//  Created by Камиль on 07.09.2020.
//  Copyright © 2020 Kamil. All rights reserved.
//


import SwiftUI
import UIKit
import MessageUI

struct MailSender: View {
    @State private var showSheet = false
    @State var result: Result<MFMailComposeResult, Error>? = nil
    
    var body: some View {
            VStack {
                Text("Приложение создано ради Аллаха - любое распространение, копирование и т.п. не только не возбраняется, но и всячески приветствуется.")
                 .fixedSize(horizontal: false, vertical: true)
                    .padding(.bottom, 20)
                    .padding(.horizontal)
                .padding(.top, 20)
                
                HStack {
                    Spacer()
                    Button(action: {
                                self.suggestFeature()
                            }) {
                                Text("Написать о неточности или предложении")
                                    .foregroundColor(Color.white)
                                  
                                    .padding()
                                    .background(Color.blue)
                                    .cornerRadius(16)
                                    .frame(width: UIScreen.main.bounds.width - 20)
                            }
                    .sheet(isPresented: $showSheet) {
                        MailView(result: self.$result, newSubject: "Второй учитель", newMsgBody: "Напишите здесь ваше предложение или ошибку в приложении")
                    }
                    .padding(.bottom, 20)
                    Spacer()
                }
                Text("Камиль Сулейманов. 2021")
                    .font(.system(size: 10))
                .padding(.bottom, 20)
                
                Spacer()
            }
            .padding(.top, -60)
    }
    func suggestFeature() {
        if MFMailComposeViewController.canSendMail() {
            self.showSheet = true
        }
    }
}

struct mailSender_Previews: PreviewProvider {
    static var previews: some View {
        MailSender()
    }
}

struct MailView: UIViewControllerRepresentable {

    @Environment(\.presentationMode) var presentation
    @Binding var result: Result<MFMailComposeResult, Error>?
    
    let newSubject : String
    let newMsgBody : String

    class Coordinator: NSObject, MFMailComposeViewControllerDelegate {

        @Binding var presentation: PresentationMode
        @Binding var result: Result<MFMailComposeResult, Error>?

        init(presentation: Binding<PresentationMode>,
             result: Binding<Result<MFMailComposeResult, Error>?>) {
            _presentation = presentation
            _result = result
        }

        func mailComposeController(_ controller: MFMailComposeViewController,
                                   didFinishWith result: MFMailComposeResult,
                                   error: Error?) {
            defer {
                $presentation.wrappedValue.dismiss()
            }
            guard error == nil else {
                self.result = .failure(error!)
                return
            }
            self.result = .success(result)
        }
    }

    func makeCoordinator() -> Coordinator {
        return Coordinator(presentation: presentation,
                           result: $result)
    }

    func makeUIViewController(context: UIViewControllerRepresentableContext<MailView>) -> MFMailComposeViewController {
        let vc = MFMailComposeViewController()
        vc.mailComposeDelegate = context.coordinator
        vc.setToRecipients(["krakatoor@gmail.com"])
        vc.setSubject(newSubject)
        vc.setMessageBody(newMsgBody, isHTML: false)
        return vc
    }

    func updateUIViewController(_ uiViewController: MFMailComposeViewController,
                                context: UIViewControllerRepresentableContext<MailView>) {

    }
}

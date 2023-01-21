//
//  CardInfoView.swift
//  Portals_Ariuna
//
//  Created by Ariuna Banzarkhanova on 03/12/22.
//

import SwiftUI

struct CardInfoView: View {
    @Environment(\.dismiss) var dismiss
    @State var name = ""
    
    @State private var sourceType: UIImagePickerController.SourceType = .photoLibrary
    @State private var selectedImage: UIImage?
    @State private var isImagePickerDisplay = false
    
    var body: some View {
        NavigationStack{
            VStack {
                Spacer()
                if selectedImage != nil{
                    Image(uiImage: selectedImage!)
                        .resizable()
                        .aspectRatio(contentMode: .fit)
                        .clipShape(RoundedRectangle(cornerRadius: 20))
                        .frame(width: 227, height: 303)
                } else {
                    Button {
                        self.sourceType = .camera
                        isImagePickerDisplay.toggle()
                    } label: {
                        EmptyPhoto()
                    }
                }
                ZStack (alignment: .top){
                    Color("appColor")
                        .ignoresSafeArea()
                        .opacity(0.30)
                    HStack (alignment: .firstTextBaseline,spacing: 50){
                        VStack (alignment: .leading, spacing: 15){
                            Text("Name")
                            Text("Question")
                        }
                        VStack(alignment: .leading, spacing: 15){
                            TextField("Enter name", text: $name)
                            Text("Has a cat")
                        }
                    }
                    .padding()
                }
            }
            .navigationTitle("Card")
            .navigationBarTitleDisplayMode(.inline)
            .toolbar{
                ToolbarItem(placement: .primaryAction) {
                    Button("Save") {
                        //dismiss()
                    }
                }
            }
            .foregroundColor(.black)
            .sheet(isPresented: self.$isImagePickerDisplay) {
                ImagePickerView(selectedImage: self.$selectedImage, sourceType: self.sourceType)
            }
        }
    }
}

struct CardInfoView_Previews: PreviewProvider {
    static var previews: some View {
        CardInfoView()
    }
}

struct EmptyPhoto: View{
    var body: some View{
        ZStack{
            RoundedRectangle(cornerRadius: 20)
                .frame(width: 227, height: 303)
                .foregroundColor(.white)
            Image(systemName: "camera.fill")
                .resizable()
                .frame(width: 50.0, height: 40.0)
                .foregroundColor(Color("appColor"))
        }
    }
}

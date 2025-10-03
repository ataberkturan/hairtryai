//
//  SelectMediaContextMenu.swift
//  HairTryAI
//
//  Created by Ataberk Turan on 03/10/2025.
//

import SwiftUI
import PhotosUI

struct SelectPhotoContextMenu<Content: View>: View {
    // MARK: - Properties
    let label: Content
    @Binding var selectedImage: Image?
    
    // Privates
    @State private var showCamera = false
    @State private var showPhotoPicker = false
    @State private var selectedItem: PhotosPickerItem?
    
    // MARK: - Initializers
    init(selectedImage: Binding<Image?>, @ViewBuilder label: () -> Content) {
        self._selectedImage = selectedImage
        self.label = label()
    }
    
    // MARK: - Body
    var body: some View {
        Menu {
            Button {
                showCamera = true
            } label: {
                Label("Camera", systemImage: "camera")
            }
            
            Button {
                showPhotoPicker = true
            } label: {
                Label("Photo Library", systemImage: "photo.on.rectangle")
            }
        } label: {
            label
        }
        .fullScreenCover(isPresented: $showCamera) {
            ImagePicker(sourceType: .camera) { image in
                selectedImage = Image(uiImage: image)
            }
            .ignoresSafeArea()
        }
        .photosPicker(
            isPresented: $showPhotoPicker,
            selection: $selectedItem,
            matching: .images
        )
        .onChange(of: selectedItem) { _, newItem in
            Task {
                if let data = try? await newItem?.loadTransferable(type: Data.self),
                   let uiImage = UIImage(data: data) {
                    selectedImage = Image(uiImage: uiImage)
                }
            }
        }
    }
}

// MARK: - Preview
#Preview {
    @Previewable @State var profileImage: Image?

    VStack(spacing: 20) {
        SelectPhotoContextMenu(selectedImage: $profileImage) {
            Label("Select Photo", systemImage: "photo")
        }
    }
}

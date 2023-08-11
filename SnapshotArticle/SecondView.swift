//
//  SecondView.swift
//  SnapshotArticle
//
//  Created by Robert Klacso on 2023. 08. 02..
//

import SwiftUI

struct SecondView: View {
    var body: some View {
        VStack(spacing: 0) {
            Text("Second View is here!")
                .font(.title2)
                .frame(maxWidth: .infinity)
                .foregroundColor(.white)
                .background(.black.opacity(0.4))
            Spacer()
            Text("Nice little text")
                .font(.body)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(.black)
                .foregroundColor(.green)
            Text("With black background and foreground")
                .font(.body)
                .frame(maxWidth: .infinity, maxHeight: .infinity)
                .background(.black)
                .foregroundColor(.black)
            Spacer()
        }
        .ignoresSafeArea(edges: .bottom)
    }
}

struct SecondView_Previews: PreviewProvider {
    static var previews: some View {
        SecondView()
    }
}

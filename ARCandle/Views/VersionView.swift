//
//  VersionView.swift
//  ARCandle
//
//  Created by air on 2021/3/27.
//  Copyright © 2021 Apple. All rights reserved.
//

import SwiftUI

struct VersionView: View {
    var body: some View {
        VStack {
            Spacer()
            Image("round")
                .resizable()
                .frame(width: 96, height: 96)
                .aspectRatio(contentMode: .fit)
            Text("AR祈福")
                .font(.system(size: 20))
                .padding(.top, 16)
            Text("Version 3.0.4")
                .font(.system(size: 16))
                .foregroundColor(Color.secondary)
                .padding(.top, 2)
            Spacer()
            Spacer()
            Text("Copyright © 2021 AR Goodies")
                .font(.system(size: 12))
                .foregroundColor(Color.secondary)
                .padding()
        }
    }
}

struct VersionView_Previews: PreviewProvider {
    static var previews: some View {
        VersionView()
    }
}

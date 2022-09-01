//
//  HomeView.swift
//  Mentoring
//
//  Created by Pol Piella Abadia on 01/09/2022.
//

import SwiftUI

struct HomeView: View {
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Content")) {
                    NavigationLink {
                        Text("Obj")
                    } label: {
                        Text("Obj-C Module")
                    }
                }
            }
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

import SwiftUI

struct SessionsView: UIViewControllerRepresentable {
    func updateUIViewController(_ uiViewController: SessionsViewController, context: Context) {
        // NO-OP
    }
    
    func makeUIViewController(context: Context) -> SessionsViewController {
        SessionsViewController()
    }
}

struct HomeView: View {
    var body: some View {
        NavigationView {
            Form {
                Section(header: Text("Content")) {
                    NavigationLink {
                        SessionsView()
                    } label: {
                        Text("Obj-C Module")
                    }
                }
            }
            .navigationTitle("Mentoring App")
        }
    }
}

struct HomeView_Previews: PreviewProvider {
    static var previews: some View {
        HomeView()
    }
}

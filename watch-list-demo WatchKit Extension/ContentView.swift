import SwiftUI

struct ContentView: View {
    @EnvironmentObject var model: Model

    var body: some View {
        VStack {
            Text("Color List").font(.headline)
            // onDelete and onMove work inside a List,
            // but not inside a ScrollView.
            List {
                ForEach(model.colors, id: \.self) { color in
                    Text(color)
                        .foregroundColor(.blue)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
                // Swipe from right to left and tap red "X" button.
                .onDelete { model.deleteColors(at: $0) }
                // Press for a second and then drag up or down.
                .onMove { model.moveColors(from: $0, to: $1) }
                .frame(maxWidth: .infinity, alignment: .leading)
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

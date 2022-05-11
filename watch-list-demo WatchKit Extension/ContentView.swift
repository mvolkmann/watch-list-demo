import SwiftUI

struct ContentView: View {
    @EnvironmentObject var model: Model

    var body: some View {
        VStack {
            Text("Color List").font(.headline)
            ScrollView {
                ForEach(model.colors, id: \.self) { color in
                    Text(color)
                        .frame(maxWidth: .infinity, alignment: .leading)
                }
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

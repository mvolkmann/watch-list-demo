import SwiftUI

class Model: ObservableObject {
    @Published var colors: [String]
    
    init() {
        colors = [
            "Red",
            "Orange",
            "Yellow",
            "Green",
            "Blue",
            "Purple",
            "White",
            "Gray",
            "Black",
            "Brown",
            "Tan",
            "Pink",
            "Turquoise"
        ]
    }
    
    func deleteColors(at: IndexSet) {
        print("Model.deleteColor entered")
        /*
        for index in at.reversed() {
            colors.remove(at: index)
        }
        */
        colors.remove(atOffsets: at)
    }
    
    func moveColors(from: IndexSet, to: Int) {
        print("Model.moveColor entered")
        colors.move(fromOffsets: from, toOffset: to)
    }
}

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
}

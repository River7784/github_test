import SwiftUI

struct ContentView: View {
    @State private var numberOfRows = 5
    @State private var numberOfColumns = 5
    @State private var ladderResults: [Int] = []

    var body: some View {
        VStack {
            LadderView(numberOfRows: $numberOfRows, numberOfColumns: $numberOfColumns, ladderResults: $ladderResults)
                .padding()
            
            Button("Run Ladder") {
                ladderResults = runLadder()
            }
            .padding()
            
            Text("Results: \(ladderResults.map(String.init).joined(separator: ", "))")
                .padding()
        }
        .onAppear {
            ladderResults = runLadder()
        }
    }

    func runLadder() -> [Int] {
        var results = [Int]()
        for _ in 0..<numberOfRows {
            results.append(Int.random(in: 0..<numberOfColumns))
        }
        return results
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

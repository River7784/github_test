import SwiftUI

struct LadderView: View {
    @Binding var numberOfRows: Int
    @Binding var numberOfColumns: Int
    @Binding var ladderResults: [Int]

    var body: some View {
        VStack(spacing: 20) {
            ForEach(0..<numberOfRows, id: \.self) { row in
                HStack(spacing: 10) {
                    ForEach(0..<numberOfColumns - 1, id: \.self) { _ in
                        Rectangle()
                            .frame(width: 40, height: 2)
                            .foregroundColor(.blue)
                    }
                }
                .overlay(Circle().frame(width: 40, height: 40).foregroundColor(.red).offset(x: CGFloat(ladderResults[row] * 50)))
            }
        }
    }
}

struct LadderView_Previews: PreviewProvider {
    static var previews: some View {
        LadderView(numberOfRows: .constant(5), numberOfColumns: .constant(5), ladderResults: .constant([1, 2, 3, 0, 4]))
    }
}

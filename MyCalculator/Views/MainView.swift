import SwiftUI

struct MainView: View {
    @EnvironmentObject var viewModel: ViewModel
    
    var body: some View {
        ZStack {
            // MARK: Background
            Color.black
                .ignoresSafeArea()
            
            VStack(spacing: 12) {
                
                Spacer()
                // MARK: Display
                HStack {
                    Spacer()
                    Text(viewModel.value)
                        .foregroundColor(.white)
                        .font(.system(size: 90))
                        .fontWeight(.light)
                        .padding(.horizontal, 28)
                }
                
                // MARK: Buttons
                ForEach(viewModel.buttonsArray, id: \.self) { row in
                    HStack(spacing: 12) {
                        ForEach(row, id: \.self) { item in
                            Button {
                                viewModel.didTap(item: item)
                            } label: {
                                Text(item.rawValue)
                                    .frame(width: viewModel.buttonWidth(item: item), height: viewModel.buttonHeight())
                                    .foregroundColor(.white)
                                    .background(item.buttonColor)
                                    .font(.system(size: 35))
                                    .cornerRadius(40)
                            }
                        }
                    }
                }
            }
            .padding(.bottom)
        }
    }
}

#Preview {
    MainView()
        .environmentObject(ViewModel())
}

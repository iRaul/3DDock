import SwiftUI
import SwiftUIVisualEffects

private struct GroundReflectionViewModifier: ViewModifier {
    let offsetY: CGFloat
    func body(content: Content) -> some View {
        content
            .background(
                content
                    .mask(
                        LinearGradient(
                            gradient: Gradient(stops: [.init(color: .white, location: 0.0), .init(color: .clear, location: 0.6)]),
                            startPoint: .bottom,
                            endPoint: .top)
                    )
                    .scaleEffect(x: 1.0, y: -1.0, anchor: .bottom)
                    .opacity(0.45)
                    .offset(y: offsetY)
            )
    }
}

extension View {
    func reflection(offsetY: CGFloat = 1) -> some View {
        modifier(GroundReflectionViewModifier(offsetY: offsetY))
    }
}

struct ContentView: View {
    
    @State var iconArray: [String] = ["mail", "messages", "facetime", "mail"]
    
    var body: some View {
        ZStack {
            Image("bg2")
                .resizable()
                .ignoresSafeArea()
            
            VStack {
                Spacer()
                
                Rectangle()
                    .fill(.ultraThinMaterial)
                    .frame(width: 340, height: 70)
                    .border(LinearGradient(gradient: Gradient(colors: [.white.opacity(0), .white.opacity(0.3)]), startPoint: .top, endPoint: .bottom))
                    .cornerRadius(8)
                    .rotation3DEffect(.degrees(55), axis: (x: 1, y: 0, z: 0))
                    .shadow(color: Color(#colorLiteral(red: 0.6959119439, green: 0.5929848552, blue: 0.662648201, alpha: 1)), radius: 0, x: 0, y: 1)
                    .shadow(color: Color(#colorLiteral(red: 0.6959119439, green: 0.5929848552, blue: 0.662648201, alpha: 1)), radius: 0, x: 0, y: 1)
                    .shadow(color: Color(#colorLiteral(red: 0.6959119439, green: 0.5929848552, blue: 0.662648201, alpha: 1)), radius: 0, x: 0, y: 1)
                    .shadow(color: Color(#colorLiteral(red: 0.6959119439, green: 0.5929848552, blue: 0.662648201, alpha: 1)), radius: 0, x: 0, y: 1)
                    .overlay {
                        ScrollView(.horizontal, showsIndicators: false) {
                            HStack(spacing: 30) {
                                ForEach(iconArray,id: \.self) { icon in
                                    ZStack {
                                        Image(icon)
                                            .resizable()
                                            .scaledToFit()
                                            .frame(width: 50, height: 90)
                                            .reflection(offsetY: -45)
                                    }
                                }
                            }
                            .offset(y: -20)
                            .padding()
                        }
                    }
            }
        }
    }
}

struct ContentView_Previews: PreviewProvider {
    static var previews: some View {
        ContentView()
    }
}

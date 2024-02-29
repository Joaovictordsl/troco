import SwiftUI

struct SwiftUIView: View {
    @State private var nome = ""
    @State private var data = Date()
    @State private var isFormVisible = false
    
    var body: some View {
        VStack {
            if isFormVisible {
                Form {
                    Section(header: Text("Selecione o nome:")) {
                        TextField("Nome", text: $nome)
                    }
                    Section(header: Text("Selecione a data:")) {
                        DatePicker("Data", selection: $data, displayedComponents: .date)
                    }
                }
                .padding(.bottom, 300) // ajuste para evitar que o formulário fique coberto pelo teclado
            }
        }
        .modifier(KeyboardAwareModifier(onChange: { isVisible in
            self.isFormVisible = isVisible
        }))
    }
}

struct KeyboardAwareModifier: ViewModifier {
    @State private var offset: CGFloat = 0
    @State private var isVisible = false
    let onChange: (Bool) -> Void
    
    func body(content: Content) -> some View {
        content
            .padding(.bottom, offset)
            .onAppear {
                NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillShowNotification, object: nil, queue: .main) { notification in
                    guard let keyboardRect = notification.userInfo?[UIResponder.keyboardFrameEndUserInfoKey] as? CGRect else { return }
                    let window = UIApplication.shared.windows.first { $0.isKeyWindow }
                    let bottomInset = window?.safeAreaInsets.bottom ?? 0
                    offset = keyboardRect.height - bottomInset
                    isVisible = true
                    onChange(isVisible)
                }
                
                NotificationCenter.default.addObserver(forName: UIResponder.keyboardWillHideNotification, object: nil, queue: .main) { _ in
                    offset = 0
                    isVisible = false
                    onChange(isVisible)
                }
            }
            .onDisappear {
                NotificationCenter.default.removeObserver(self)
            }
    }
}

#Preview {
    SwiftUIView()
}

